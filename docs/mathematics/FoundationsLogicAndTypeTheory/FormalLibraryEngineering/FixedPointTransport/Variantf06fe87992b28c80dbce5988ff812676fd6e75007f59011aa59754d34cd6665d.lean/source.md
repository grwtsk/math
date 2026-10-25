# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTransport.Variantf06fe87992b28c80dbce5988ff812676fd6e75007f59011aa59754d34cd6665d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2dfa320be06bef3eb17e5d303910fbcfc9b38df` · SHA-256 `51f7e4b238474f37daaed096100dc1012a629ca7b36155f9e92d357c75d5ef01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperatorPathNaturality.Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.OperatorPathNaturality.Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d","mathematical_subject":"Foundations.Unclassified","original_sha256":"b27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/FixedPointTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PropertyTransport
import Mathematics.Operational.DiscreteFixedPoint

/-!
# Exact-fixedness transport

Transport of an operator state preserves exact fixedness only when the path
map commutes with the two versioned updates.  This adapter produces a
naturality witness for the fixed-point property alone; it grants no Lyapunov,
attraction, contraction, or persistence transport.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperatorPathNaturality.Variantb27e6b7d279094145c99995958a27e084a30af7079b94a267a4cb2f70ceb260d

namespace Mathematics.Operational

universe u v w

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    (operators : ∀ base, VersionedOperator (Fiber base))

/-- Exact operator-relative fixedness as an indexed fiber property. -/
def exactFixedPointProperty
    (authority : Concept.Profile) :
    Concept.FiberProperty Base
      (fun base ↦ (operators base).domain) where
  propertyId := { value := "property:operator-relative-exact-fixedness" }
  Holds := fun base state ↦
    Function.IsFixedPt (operators base).step state
  authority := authority

/--
The path action commutes with the exact source and target operators.  This is
the property-specific premise needed to transport fixedness.
-/
structure OperatorPathNaturality
    (action :
      Concept.PathAction Base
        (fun base ↦ (operators base).domain)) : Prop where
  step_commutes :
    ∀ {source target}
      (path : action.Path source target)
      (state : (operators source).domain),
      action.map path ((operators source).step state) =
        (operators target).step (action.map path state)

namespace OperatorPathNaturality

variable
    {operators : ∀ base, VersionedOperator (Fiber base)}
    {action :
      Concept.PathAction Base
        (fun base ↦ (operators base).domain)}

/-- Operator commutation becomes naturality for exact fixedness only. -/
theorem fixedPointNaturality
    (naturality : OperatorPathNaturality operators action)
    (authority : Concept.Profile) :
    Concept.PropertyNaturality action
      (exactFixedPointProperty operators authority) where
  natural := by
    intro source target path state fixed
    change
      (operators target).step (action.map path state) =
        action.map path state
    calc
      (operators target).step (action.map path state) =
          action.map path ((operators source).step state) :=
        (naturality.step_commutes path state).symm
      _ = action.map path state :=
        congrArg (action.map path) fixed

/-- A commuting path maps one exact fixed point to another exact fixed point. -/
def transportFixedPoint
    (naturality : OperatorPathNaturality operators action)
    {source target : Base}
    (path : action.Path source target)
    (point : CertifiedFixedPoint (operators source)) :
    CertifiedFixedPoint (operators target) where
  point := action.map path point.point
  fixed := by
    exact
      (naturality.fixedPointNaturality default).natural
        path point.point point.fixed

@[simp] theorem transportFixedPoint_point
    (naturality : OperatorPathNaturality operators action)
    {source target : Base}
    (path : action.Path source target)
    (point : CertifiedFixedPoint (operators source)) :
    (naturality.transportFixedPoint path point).point =
      action.map path point.point :=
  rfl

end OperatorPathNaturality

end Mathematics.Operational
```

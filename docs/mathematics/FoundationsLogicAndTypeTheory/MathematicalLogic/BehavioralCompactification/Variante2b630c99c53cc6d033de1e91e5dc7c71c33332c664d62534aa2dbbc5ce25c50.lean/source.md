# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.BehavioralCompactification.Variante2b630c99c53cc6d033de1e91e5dc7c71c33332c664d62534aa2dbbc5ce25c50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36f6c02786fdb241382c942ae9f46405feff0c1e` · SHA-256 `ea495c4beabb10ebbcc4c606034344f8e24acd24f10085132b138498d4bfd955`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteBehavioralIndexCertificate.Variant66936aefc141a42e44a1f0481c4b00763da99dcc6495d33f28871dc6b6c13d1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"66936aefc141a42e44a1f0481c4b00763da99dcc6495d33f28871dc6b6c13d1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.FiniteBehavioralIndexCertificate.Variant66936aefc141a42e44a1f0481c4b00763da99dcc6495d33f28871dc6b6c13d1d","mathematical_subject":"Logic.Foundations","original_sha256":"66936aefc141a42e44a1f0481c4b00763da99dcc6495d33f28871dc6b6c13d1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/BehavioralCompactification.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.BehavioralEquivalence

/-!
# Minimal continuation-relative behavioral quotient

The quotient is finite only when a finite-index certificate is supplied.  Its
universal property says every behaviorally sound finite abstraction refines
this quotient.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteBehavioralIndexCertificate.Variant66936aefc141a42e44a1f0481c4b00763da99dcc6495d33f28871dc6b6c13d1d

namespace Mathematics.MobiusOntology

universe u v w x

abbrev BehavioralCompactification
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :=
  Quotient (behavioralSetoid profile)

def behavioralProjection
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) :
    State → BehavioralCompactification profile :=
  Quotient.mk (behavioralSetoid profile)

/-- A finite code is exact precisely when it classifies behavioral classes. -/
structure FiniteBehavioralIndexCertificate
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label) where
  width : Nat
  code : State → Fin width
  exact :
    ∀ left right,
      code left = code right ↔
        BehaviorallyEquivalent profile left right

def BehaviorallySoundAbstraction
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction) : Prop :=
  ∀ {left right},
    abstract left = abstract right →
      BehaviorallyEquivalent profile left right

noncomputable def behavioralAbstractionFactor
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract) :
    Set.range abstract → BehavioralCompactification profile :=
  fun represented =>
    behavioralProjection profile
      (Classical.choose represented.property)

theorem behavioralAbstractionFactor_commutes
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract)
    (state : State) :
    behavioralAbstractionFactor profile abstract sound
        ⟨abstract state, ⟨state, rfl⟩⟩ =
      behavioralProjection profile state := by
  apply Quotient.sound
  apply sound
  exact Classical.choose_spec
    (show ∃ source, abstract source = abstract state from ⟨state, rfl⟩)

theorem behavioral_compactification_universal
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract) :
    ∃ factor : Set.range abstract → BehavioralCompactification profile,
      ∀ state,
        factor ⟨abstract state, ⟨state, rfl⟩⟩ =
          behavioralProjection profile state :=
  ⟨behavioralAbstractionFactor profile abstract sound,
    behavioralAbstractionFactor_commutes profile abstract sound⟩

theorem behavioralAbstractionFactor_unique
    {State : Type u} {Continuation : Type v} {Label : Type w}
    [Fintype Continuation]
    (profile : ContinuationProfile State Continuation Label)
    {Abstraction : Type x}
    (abstract : State → Abstraction)
    (sound : BehaviorallySoundAbstraction profile abstract)
    (candidate :
      Set.range abstract → BehavioralCompactification profile)
    (commutes :
      ∀ state,
        candidate ⟨abstract state, ⟨state, rfl⟩⟩ =
          behavioralProjection profile state) :
    candidate =
      behavioralAbstractionFactor profile abstract sound := by
  funext represented
  rcases represented with ⟨value, ⟨state, exactValue⟩⟩
  subst value
  rw [commutes]
  exact
    (behavioralAbstractionFactor_commutes
      profile abstract sound state).symm

/--
Auxiliary topological compactifications are independent of the behavioral
quotient and expose only separately certified properties.
-/
structure AuxiliaryCompactification
    (State : Type u) (Compact : Type v) where
  compactify : State → Compact

structure CompactificationContinuityCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact) : Prop where
  continuityStatement : Prop
  proof : continuityStatement

structure CompactificationInjectivityCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact) : Prop where
  injective : Function.Injective compactification.compactify

structure CompactificationExtensionCertificate
    {State : Type u} {Compact : Type v}
    (compactification : AuxiliaryCompactification State Compact)
    (transition : State → State) where
  extendedTransition : Compact → Compact
  commutes :
    ∀ state,
      extendedTransition (compactification.compactify state) =
        compactification.compactify (transition state)

end Mathematics.MobiusOntology
```

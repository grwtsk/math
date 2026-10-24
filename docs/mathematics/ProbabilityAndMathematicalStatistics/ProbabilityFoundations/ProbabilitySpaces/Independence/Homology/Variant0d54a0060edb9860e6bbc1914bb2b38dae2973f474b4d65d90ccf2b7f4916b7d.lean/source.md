# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Homology.Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `254e789d0e653b48641b04e939635223a7a6abe9` · SHA-256 `acb98c4436d97cefe65c381eb86d518806ee783af123247eb5855d4cb68665b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.FillingHomologySemantics.Variant6e9f83e49f0768fcdab6a57afdcbdf1e1bbefe50b784c9a9ec10981c1c123aa4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e9f83e49f0768fcdab6a57afdcbdf1e1bbefe50b784c9a9ec10981c1c123aa4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.FillingHomologySemantics.Variant6e9f83e49f0768fcdab6a57afdcbdf1e1bbefe50b784c9a9ec10981c1c123aa4","mathematical_subject":"Probability.Independence","original_sha256":"6e9f83e49f0768fcdab6a57afdcbdf1e1bbefe50b784c9a9ec10981c1c123aa4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/CosmeticSurgery/Homology.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.CosmeticSurgery.Core

/-!
# Conditional algebraic invariants of Dehn fillings

The elementary code `firstHomologyCode p` records the standard outcome of the
filling computation: `none` denotes the infinite cyclic case `p = 0`, while
`some |p|` denotes the finite cyclic order for `p ≠ 0`.  Connecting this code
to the actual first homology of a closed filling is geometric input, retained
in `FillingHomologySemantics`.

Likewise, the fundamental-group statement below is an explicit presentation
capability.  It remembers the peripheral word, its normal closure, the
quotient presentation, and invariance of that normal closure under a change of
basepoint path.  No completeness claim for an unlabeled fundamental group is
made.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.FillingHomologySemantics.Variant6e9f83e49f0768fcdab6a57afdcbdf1e1bbefe50b784c9a9ec10981c1c123aa4

namespace Surface.CosmeticSurgery

universe u v

/-- `none` means infinite cyclic; `some n` means finite cyclic of order `n`. -/
def firstHomologyCode (numerator : Int) : Option Nat :=
  if numerator = 0 then none else some numerator.natAbs

@[simp]
theorem firstHomologyCode_zero :
    firstHomologyCode 0 = none := by
  simp [firstHomologyCode]

@[simp]
theorem firstHomologyCode_of_ne_zero
    {numerator : Int}
    (h : numerator ≠ 0) :
    firstHomologyCode numerator = some numerator.natAbs := by
  simp [firstHomologyCode, h]

/-- The first-homology code predicted by the numerator of a marked slope. -/
def fillingFirstHomologyCode
    (T : OrientedKnotFillingTheory.{u})
    {K : T.Knot}
    (r : T.Slope K) : Option Nat :=
  firstHomologyCode (T.numerator r)

/--
An interpretation of the code as actual first homology.  `manifoldCode` is
part of the supplied homology semantics, not a construction performed here.
-/
structure FillingHomologySemantics
    (T : OrientedKnotFillingTheory.{u}) where
  FirstHomology : T.ClosedManifold → Type v
  HasCode : Type v → Option Nat → Prop
  manifoldCode : T.ClosedManifold → Option Nat
  manifold_code_represents_first_homology : ∀ M,
    HasCode (FirstHomology M) (manifoldCode M)
  filling_code : ∀ {K : T.Knot} (r : T.Slope K),
    manifoldCode (T.Filling K r) = fillingFirstHomologyCode T r
  oriented_homeomorphism_invariant : ∀ {M N : T.ClosedManifold},
    T.OrientedHomeomorphism M N → manifoldCode M = manifoldCode N

namespace FillingHomologySemantics

variable {T : OrientedKnotFillingTheory.{u}}

/-- Oriented-homeomorphic fillings have equal first-homology codes. -/
theorem filling_codes_eq_of_homeomorphism
    (H : FillingHomologySemantics.{u, v} T)
    {K : T.Knot} {r s : T.Slope K}
    (homeomorphism : T.FillingHomeomorphism K r s) :
    fillingFirstHomologyCode T r = fillingFirstHomologyCode T s := by
  rw [← H.filling_code r, ← H.filling_code s]
  exact H.oriented_homeomorphism_invariant homeomorphism

/--
For nonzero numerators, an oriented homeomorphism forces equality of their
absolute values.  No restriction on denominators is inferred.
-/
theorem natAbs_numerators_eq_of_homeomorphism
    (H : FillingHomologySemantics.{u, v} T)
    {K : T.Knot} {r s : T.Slope K}
    (hr : T.numerator r ≠ 0)
    (hs : T.numerator s ≠ 0)
    (homeomorphism : T.FillingHomeomorphism K r s) :
    (T.numerator r).natAbs = (T.numerator s).natAbs := by
  have hcodes := filling_codes_eq_of_homeomorphism H homeomorphism
  rw [fillingFirstHomologyCode, firstHomologyCode_of_ne_zero hr,
    fillingFirstHomologyCode, firstHomologyCode_of_ne_zero hs] at hcodes
  exact Option.some.inj hcodes

end FillingHomologySemantics

@[simp]
theorem plusTwo_firstHomologyCode
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) :
    fillingFirstHomologyCode T (T.plusTwo K) = some 2 := by
  rw [fillingFirstHomologyCode, (T.plusTwo_coefficients K).1]
  norm_num [firstHomologyCode]

@[simp]
theorem minusTwo_firstHomologyCode
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) :
    fillingFirstHomologyCode T (T.minusTwo K) = some 2 := by
  rw [fillingFirstHomologyCode, (T.minusTwo_coefficients K).1]
  norm_num [firstHomologyCode]

/-- Ordinary first homology does not distinguish the residual `+2` and `-2` pair. -/
theorem plusTwo_minusTwo_firstHomologyCodes_eq
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) :
    fillingFirstHomologyCode T (T.plusTwo K) =
      fillingFirstHomologyCode T (T.minusTwo K) := by
  simp

/--
The actual homology objects of the residual fillings have the same supplied
code.  This is the semantic, filling-level counterpart of the coefficient
calculation above.
-/
theorem residual_filling_firstHomology_codes_eq
    (T : OrientedKnotFillingTheory.{u})
    (H : FillingHomologySemantics.{u, v} T)
    (K : T.Knot) :
    H.manifoldCode (T.Filling K (T.plusTwo K)) =
      H.manifoldCode (T.Filling K (T.minusTwo K)) := by
  rw [H.filling_code, H.filling_code]
  exact plusTwo_minusTwo_firstHomologyCodes_eq T K

/--
Supplied torsion-linking-form semantics for the residual pair.  The equality
encodes the fact that `1/2 = -1/2` in `Q/Z`; this module deliberately does not
manufacture a concrete linking form from a filling presentation.
-/
structure ResidualLinkingFormSemantics
    (T : OrientedKnotFillingTheory.{u})
    (K : T.Knot) where
  LinkingCode : Type v
  code : T.ClosedManifold → LinkingCode
  plusTwo_eq_minusTwo :
    code (T.Filling K (T.plusTwo K)) = code (T.Filling K (T.minusTwo K))

namespace ResidualLinkingFormSemantics

variable {T : OrientedKnotFillingTheory.{u}} {K : T.Knot}

/-- The supplied torsion linking-form code also fails to distinguish `+2` and `-2`. -/
theorem residual_linking_codes_eq
    (L : ResidualLinkingFormSemantics.{u, v} T K) :
    L.code (T.Filling K (T.plusTwo K)) =
      L.code (T.Filling K (T.minusTwo K)) :=
  L.plusTwo_eq_minusTwo

end ResidualLinkingFormSemantics

/--
Explicit fundamental-group quotient semantics for Dehn filling.  The
`normalClosure` and `quotientPresentation` operations belong to the supplying
group model; `filling_presentation` is the actual van Kampen comparison.
-/
structure FundamentalGroupQuotientCapability
    (T : OrientedKnotFillingTheory.{u}) where
  ExteriorGroup : T.Knot → Type v
  FillingGroup : T.ClosedManifold → Type v
  PeripheralWord : T.Knot → Type v
  BasepointPath : T.Knot → Type v
  relationAt : ∀ {K : T.Knot},
    BasepointPath K → T.Slope K → PeripheralWord K
  NormalClosure : ∀ {K : T.Knot},
    ExteriorGroup K → PeripheralWord K → Type v
  QuotientPresentation : ∀ {K : T.Knot},
    ExteriorGroup K → Type v → Type v
  exteriorGroup : ∀ K, ExteriorGroup K
  quotientByPeripheralRelation : ∀ {K : T.Knot},
    BasepointPath K → T.Slope K → Type v
  quotient_definition : ∀ {K : T.Knot} (path : BasepointPath K)
      (r : T.Slope K),
    quotientByPeripheralRelation path r =
      QuotientPresentation (exteriorGroup K)
        (NormalClosure (exteriorGroup K) (relationAt path r))
  FillingGroupEquivalent : Type v → Type v → Prop
  filling_presentation : ∀ {K : T.Knot} (path : BasepointPath K)
      (r : T.Slope K),
    FillingGroupEquivalent (FillingGroup (T.Filling K r))
      (quotientByPeripheralRelation path r)
  NormalClosuresEqual : Type v → Type v → Prop
  ConjugatePeripheralWords : ∀ {K : T.Knot},
    PeripheralWord K → PeripheralWord K → Prop
  basepoint_change_conjugates : ∀ {K : T.Knot}
      (left right : BasepointPath K) (r : T.Slope K),
    ConjugatePeripheralWords (relationAt left r) (relationAt right r)
  conjugate_relations_have_equal_normal_closure : ∀ {K : T.Knot}
      {left right : PeripheralWord K},
    ConjugatePeripheralWords left right →
    NormalClosuresEqual
      (NormalClosure (exteriorGroup K) left)
      (NormalClosure (exteriorGroup K) right)

namespace FundamentalGroupQuotientCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- The filling group is presented by killing the retained peripheral relation. -/
theorem filling_group_is_peripheral_quotient
    (P : FundamentalGroupQuotientCapability.{u, v} T)
    {K : T.Knot}
    (path : P.BasepointPath K)
    (r : T.Slope K) :
    P.FillingGroupEquivalent (P.FillingGroup (T.Filling K r))
      (P.QuotientPresentation (P.exteriorGroup K)
        (P.NormalClosure (P.exteriorGroup K) (P.relationAt path r))) := by
  rw [← P.quotient_definition path r]
  exact P.filling_presentation path r

/-- Changing the boundary basepoint path only conjugates the relation and preserves its normal closure. -/
theorem normal_closure_independent_of_basepoint_path
    (P : FundamentalGroupQuotientCapability.{u, v} T)
    {K : T.Knot}
    (left right : P.BasepointPath K)
    (r : T.Slope K) :
    P.NormalClosuresEqual
      (P.NormalClosure (P.exteriorGroup K) (P.relationAt left r))
      (P.NormalClosure (P.exteriorGroup K) (P.relationAt right r)) :=
  P.conjugate_relations_have_equal_normal_closure
    (P.basepoint_change_conjugates left right r)

end FundamentalGroupQuotientCapability

end Surface.CosmeticSurgery
```

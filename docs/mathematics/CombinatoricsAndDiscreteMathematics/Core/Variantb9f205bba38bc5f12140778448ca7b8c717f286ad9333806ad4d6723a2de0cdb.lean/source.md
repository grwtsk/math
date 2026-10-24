# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantb9f205bba38bc5f12140778448ca7b8c717f286ad9333806ad4d6723a2de0cdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ed369069d2e65bb903692fe210c03e83d80397a` · SHA-256 `d1595366dcb13b41127235bc59f4013a3899ace03558349db3d6bbad7a150acf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrientedKnotFillingTheory.Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.OrientedKnotFillingTheory.Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"df7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/CosmeticSurgery/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Int.Basic
import Mathlib.Data.Finset.Basic
import Surface.SmoothFramedSurgery

/-!
# Abstract oriented Dehn-filling semantics

This domain layer is intentionally separate from the generic
`Surface.SmoothFramedSurgery` project.  It records the objects needed to state
the purely cosmetic surgery problem for knots in `S^3`: marked slopes,
oriented fillings, exterior symmetries, and the residual knot invariants.

The structure below is a semantic port, not a construction of smooth
three-manifolds.  In particular, a value of `OrientedKnotFillingTheory` must
supply the geometric meanings of its knot exteriors, filling manifolds, and
homeomorphisms.  Later modules isolate the additional theorems needed for
well-defined filling, homology, core recovery, the current reduction, and
algorithmic decidability.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrientedKnotFillingTheory.Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606

namespace Surface.CosmeticSurgery

universe u

/--
An abstract oriented knot-filling model.

Slopes are marked and depend on the knot.  `plusTwo` and `minusTwo` use the
positive-numerator convention: their coefficient pairs are `(2, 1)` and
`(2, -1)`, not representatives related by simultaneous sign reversal.
-/
structure OrientedKnotFillingTheory where
  Knot : Type u
  ClosedManifold : Type u
  Slope : Knot → Type u
  Filling : (K : Knot) → Slope K → ClosedManifold
  meridian : (K : Knot) → Slope K
  plusTwo : (K : Knot) → Slope K
  minusTwo : (K : Knot) → Slope K
  numerator : {K : Knot} → Slope K → Int
  denominator : {K : Knot} → Slope K → Int
  meridian_coefficients : ∀ K,
    numerator (meridian K) = 1 ∧ denominator (meridian K) = 0
  plusTwo_coefficients : ∀ K,
    numerator (plusTwo K) = 2 ∧ denominator (plusTwo K) = 1
  minusTwo_coefficients : ∀ K,
    numerator (minusTwo K) = 2 ∧ denominator (minusTwo K) = -1
  plusTwo_ne_minusTwo : ∀ K, plusTwo K ≠ minusTwo K
  OrientedHomeomorphism : ClosedManifold → ClosedManifold → Type u
  homeomorphismRefl : ∀ M, OrientedHomeomorphism M M
  homeomorphismSymm : ∀ {M N},
    OrientedHomeomorphism M N → OrientedHomeomorphism N M
  homeomorphismTrans : ∀ {M N P},
    OrientedHomeomorphism M N → OrientedHomeomorphism N P →
      OrientedHomeomorphism M P
  /-- Orientation-preserving self-homeomorphisms of the oriented knot exterior. -/
  OrientationPreservingExteriorSelfHomeomorphism : Knot → Type u
  actOnSlope : {K : Knot} →
    OrientationPreservingExteriorSelfHomeomorphism K → Slope K → Slope K
  Nontrivial : Knot → Prop
  HyperbolicKnot : Knot → Prop
  genus : Knot → Nat
  AlexanderPolynomialTrivial : Knot → Prop
  TauZero : Knot → Prop
  JonesAtFifthRootOne : Knot → Prop
  HyperbolicManifold : ClosedManifold → Prop

namespace OrientedKnotFillingTheory

variable (T : OrientedKnotFillingTheory)

/-- An actual orientation-preserving homeomorphism between two fillings. -/
abbrev FillingHomeomorphism
    (K : T.Knot) (r s : T.Slope K) : Type u :=
  T.OrientedHomeomorphism (T.Filling K r) (T.Filling K s)

/-- The proposition that two oriented fillings are homeomorphic. -/
def FillingsHomeomorphic
    (K : T.Knot) (r s : T.Slope K) : Prop :=
  Nonempty (T.FillingHomeomorphism K r s)

/-- A purely cosmetic pair has distinct marked slopes and an oriented homeomorphism. -/
def PurelyCosmeticPair
    (K : T.Knot) (r s : T.Slope K) : Prop :=
  r ≠ s ∧ T.FillingsHomeomorphic K r s

/-- A knot is a counterexample when it has at least one purely cosmetic pair. -/
def KnotCounterexample (K : T.Knot) : Prop :=
  ∃ r s : T.Slope K, T.PurelyCosmeticPair K r s

/-- The global conjecture is false exactly when some nontrivial knot is a counterexample. -/
def ConjectureFalse : Prop :=
  ∃ K : T.Knot, T.Nontrivial K ∧ T.KnotCounterexample K

/--
A pair is mundane when an orientation-preserving self-homeomorphism of the
unfilled exterior carries the first marked slope to the second.
-/
def MundanePair
    (K : T.Knot) (r s : T.Slope K) : Prop :=
  ∃ h : T.OrientationPreservingExteriorSelfHomeomorphism K,
    T.actOnSlope h r = s

/-- An exotic pair is cosmetic but not induced by an exterior symmetry. -/
def ExoticPair
    (K : T.Knot) (r s : T.Slope K) : Prop :=
  T.PurelyCosmeticPair K r s ∧ ¬ T.MundanePair K r s

/-- Opposite coefficients use the same numerator and opposite denominators. -/
def OppositeCoefficients
    (K : T.Knot) (r s : T.Slope K) : Prop :=
  T.numerator s = T.numerator r ∧
    T.denominator s = -T.denominator r

/-- The coefficient form of `q² ≡ -1 (mod p)` for a marked slope `p/q`. -/
def NiWuCongruence
    {K : T.Knot} (r : T.Slope K) : Prop :=
  ∃ multiple : Int,
    T.denominator r * T.denominator r + 1 =
      multiple * T.numerator r

/-- The same-knot residual invariant profile before hyperbolic replacement. -/
def FixedKnotResidualProfile (K : T.Knot) : Prop :=
  T.Nontrivial K ∧
    T.genus K = 2 ∧
    T.AlexanderPolynomialTrivial K ∧
    T.TauZero K ∧
    T.JonesAtFifthRootOne K

/-- The residual knot profile after the supplied hyperbolic-replacement theorem. -/
def ResidualKnotProfile (K : T.Knot) : Prop :=
  T.FixedKnotResidualProfile K ∧ T.HyperbolicKnot K

/-- The fixed-knot `+2` and `-2` residual pair, without changing the input knot. -/
def FixedKnotResidualCounterexample (K : T.Knot) : Prop :=
  T.FixedKnotResidualProfile K ∧
    T.FillingsHomeomorphic K (T.plusTwo K) (T.minusTwo K)

/--
The residual `+2` and `-2` counterexample package.  Hyperbolicity of the two closed
fillings is retained separately from hyperbolicity of the knot exterior.
-/
def ResidualCounterexample (K : T.Knot) : Prop :=
  T.ResidualKnotProfile K ∧
    T.HyperbolicManifold (T.Filling K (T.plusTwo K)) ∧
    T.HyperbolicManifold (T.Filling K (T.minusTwo K)) ∧
    T.FillingsHomeomorphic K (T.plusTwo K) (T.minusTwo K)

@[simp]
theorem plusTwo_opposite_minusTwo (K : T.Knot) :
    T.OppositeCoefficients K (T.plusTwo K) (T.minusTwo K) := by
  constructor
  · exact (T.minusTwo_coefficients K).1.trans (T.plusTwo_coefficients K).1.symm
  · rw [(T.minusTwo_coefficients K).2, (T.plusTwo_coefficients K).2]

/-- A residual package is itself a purely cosmetic pair. -/
theorem residualCounterexample_is_cosmetic
    {K : T.Knot}
    (h : T.ResidualCounterexample K) :
    T.PurelyCosmeticPair K (T.plusTwo K) (T.minusTwo K) :=
  ⟨T.plusTwo_ne_minusTwo K, h.2.2.2⟩

/-- The same-knot residual package is also a purely cosmetic pair. -/
theorem fixedKnotResidualCounterexample_is_cosmetic
    {K : T.Knot}
    (h : T.FixedKnotResidualCounterexample K) :
    T.PurelyCosmeticPair K (T.plusTwo K) (T.minusTwo K) :=
  ⟨T.plusTwo_ne_minusTwo K, h.2⟩

/-- The same-knot residual package supplies a counterexample for that knot. -/
theorem fixedKnotResidualCounterexample_is_knotCounterexample
    {K : T.Knot}
    (h : T.FixedKnotResidualCounterexample K) :
    T.KnotCounterexample K :=
  ⟨T.plusTwo K, T.minusTwo K,
    T.fixedKnotResidualCounterexample_is_cosmetic h⟩

/-- A residual package supplies a knot-level counterexample. -/
theorem residualCounterexample_is_knotCounterexample
    {K : T.Knot}
    (h : T.ResidualCounterexample K) :
    T.KnotCounterexample K :=
  ⟨T.plusTwo K, T.minusTwo K, T.residualCounterexample_is_cosmetic h⟩

/-- A residual package supplies a global counterexample. -/
theorem residualCounterexample_implies_conjectureFalse
    {K : T.Knot}
    (h : T.ResidualCounterexample K) :
    T.ConjectureFalse :=
  ⟨K, h.1.1.1, T.residualCounterexample_is_knotCounterexample h⟩

end OrientedKnotFillingTheory

end Surface.CosmeticSurgery
```

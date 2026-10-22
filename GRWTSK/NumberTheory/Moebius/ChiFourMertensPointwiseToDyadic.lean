/-
Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #731. Direct stacked parent: draft PR #701 at
`a8d7518867a20dc369847e978b203784d67bfa7d`.
-/
import GRWTSK.NumberTheory.Moebius.ChiFourMertensResidueDecomposition
import GRWTSK.NumberTheory.Moebius.MertensPointwiseToDyadicGeometric

/-!
# Pointwise chi-four Mertens cancellation to dyadic square-root energy

The exceptional kernel branch has been reduced exactly to the standard
one-point sum

`sum_(1 <= n <= x) mu(n) * chi_4(n)`.

This module records the standard pointwise square-root-plus-epsilon statement
as an explicit open premise and proves only its finite scale transport to the
existing dyadic energy interface.

For target `delta > 0`, the proof applies the pointwise premise at the already
audited exponent

`epsilon = delta / 8`

from the ordinary-Mertens transport.  On a dyadic block `X <= b < 2X`, the
endpoint is replaced by `2X`, the resulting constant factor is kept
explicit, and the pre-squared dyadic scale from PR #616 is reused.

No pointwise estimate, GRH theorem, Dirichlet explicit formula, zero-free
region, or RH theorem is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Standard pointwise square-root-plus-epsilon envelope for the exact
Mathlib-`chi_4` twisted Mertens prefix.

No value is constructed here. -/
def PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope : Prop :=
  ∀ ε : ℝ, 0 < ε →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ n : ℕ,
        ‖chiFourTwistedMertensPrefix n‖ ≤
          C * Real.sqrt (n : ℝ) * ((n : ℝ) ^ ε)

/-- One dyadic endpoint estimate obtained from the pointwise `chi_4` envelope.

The target loss `delta` is fed to the pointwise theorem at
`epsilon = delta/8`, exactly as in the ordinary-Mertens transport. -/
theorem chiFourTwistedMertens_le_dyadicScale
    {δ C : ℝ}
    (hδ : 0 < δ)
    (hC : 0 ≤ C)
    (hPoint :
      ∀ n : ℕ,
        ‖chiFourTwistedMertensPrefix n‖ ≤
          C * Real.sqrt (n : ℝ) *
            ((n : ℝ) ^ pointwiseMertensDyadicEpsilon δ))
    {j b : ℕ}
    (hb : b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1))) :
    ‖chiFourTwistedMertensPrefix b‖ ≤
      (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ := by
  have hbUpper : b < 2 ^ (j + 1) :=
    (Finset.mem_Ico.mp hb).2
  have hbpos : 0 < (b : ℝ) := by
    have hbLower := (Finset.mem_Ico.mp hb).1
    exact_mod_cast (lt_of_lt_of_le (by positivity : 0 < 2 ^ j) hbLower)
  have hUpper :
      (b : ℝ) ≤ 2 * (((2 ^ j : ℕ) : ℝ)) := by
    simpa using
      (cast_dyadicDescendant_le_upperModel
        (j := j) (b := b) (n := b) (t := 0)
        hbUpper le_rfl)
  have hα :
      0 ≤ pointwiseMertensDyadicExponent δ :=
    (pointwiseMertensDyadicExponent_pos hδ).le
  calc
    ‖chiFourTwistedMertensPrefix b‖ ≤
        C * Real.sqrt (b : ℝ) *
          ((b : ℝ) ^ pointwiseMertensDyadicEpsilon δ) :=
      hPoint b
    _ = C * ((b : ℝ) ^ pointwiseMertensDyadicExponent δ) := by
      rw [sqrt_mul_rpow_eq_totalExponent hbpos]
    _ ≤ C *
        ((2 * (((2 ^ j : ℕ) : ℝ))) ^
          pointwiseMertensDyadicExponent δ) := by
      apply mul_le_mul_of_nonneg_left _ hC
      exact Real.rpow_le_rpow (by positivity) hUpper hα
    _ = C *
        (pointwiseMertensDyadicConstantFactor δ *
          ((((2 ^ j : ℕ) : ℝ)) ^
            pointwiseMertensDyadicExponent δ)) := by
      have hgeom :=
        upperModel_rpow_eq_geometric
          j 0 hδ
      simp only [pow_zero, mul_one, Nat.cast_one, div_one] at hgeom
      rw [hgeom]
    _ ≤ C *
        (pointwiseMertensDyadicConstantFactor δ *
          dyadicMertensSquareRootEpsilonScale j δ) := by
      gcongr
      exact dyadic_totalExponent_le_parentScale j hδ
    _ = (C * pointwiseMertensDyadicConstantFactor δ) *
        dyadicMertensSquareRootEpsilonScale j δ := by
      ring

/-- The pointwise `chi_4` square-root-plus-epsilon envelope supplies the
existing dyadic `chi_4` square-root-energy proposition. -/
theorem dyadicChiFourTwistedMertensEnergy_of_pointwise
    (hPoint : PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope) :
    DyadicChiFourTwistedMertensSquareRootEnergy := by
  intro δ hδ
  obtain ⟨C, hC, hM⟩ :=
    hPoint (pointwiseMertensDyadicEpsilon δ)
      (by
        unfold pointwiseMertensDyadicEpsilon
        positivity)
  let K : ℝ :=
    C * pointwiseMertensDyadicConstantFactor δ
  refine ⟨K ^ 2, sq_nonneg K, ?_⟩
  intro j b hb
  have hbound :
      ‖chiFourTwistedMertensPrefix b‖ ≤
        K * dyadicMertensSquareRootEpsilonScale j δ := by
    dsimp [K]
    exact
      chiFourTwistedMertens_le_dyadicScale
        hδ hC hM hb
  have hK : 0 ≤ K := by
    dsimp [K, pointwiseMertensDyadicConstantFactor]
    positivity
  have hscale :
      0 ≤ dyadicMertensSquareRootEpsilonScale j δ :=
    dyadicMertensSquareRootEpsilonScale_nonneg j δ
  have hsq :
      ‖chiFourTwistedMertensPrefix b‖ ^ 2 ≤
        (K * dyadicMertensSquareRootEpsilonScale j δ) ^ 2 := by
    nlinarith [norm_nonneg (chiFourTwistedMertensPrefix b)]
  calc
    ‖chiFourTwistedMertensPrefix b‖ ^ 2 ≤
        (K * dyadicMertensSquareRootEpsilonScale j δ) ^ 2 :=
      hsq
    _ = K ^ 2 *
        dyadicMertensSquareRootEpsilonScale j δ ^ 2 := by
      ring
    _ ≤ K ^ 2 *
        ((((2 ^ j : ℕ) : ℝ)) *
          (((2 ^ j : ℕ) : ℝ) ^ δ)) := by
      exact mul_le_mul_of_nonneg_left
        (dyadicMertensSquareRootEpsilonScale_sq_le_target j hδ.le)
        (sq_nonneg K)
    _ = K ^ 2 * (((2 ^ j : ℕ) : ℝ)) *
        (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      ring

/-- Constructed proof-relevant scale-transport adapter. -/
def pointwiseChiFourToDyadicEnergyAdapter :
    ToChiFourTwistedMertensSquareRootEnergyAdapter
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope where
  toChiFourEnergy :=
    dyadicChiFourTwistedMertensEnergy_of_pointwise

/-- Existing pointwise ordinary-Mertens control plus pointwise `chi_4`
control supplies the full exceptional twisted-Mertens energy. -/
theorem twoKernelTwistedMertensEnergy_of_pointwiseOrdinary_and_pointwiseChiFour
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope) :
    DyadicTwoKernelTwistedMertensSquareRootEnergy :=
  twoKernelTwistedMertensEnergy_of_pointwise_and_chiFour
    hOrdinary
    (dyadicChiFourTwistedMertensEnergy_of_pointwise hChiFour)

/-- Conditional downstream composition with the unchanged two-unit and
regular-orbit analytic premises. -/
theorem naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regular
    (hOrdinary : OrdinaryMertensSquareRootPlusEpsilonEnvelope)
    (hChiFour :
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope)
    (hUnit : DyadicNaturalScaleTwoUnitHalfIndexBudget)
    (hRegular : DyadicNaturalScaleTwoNonunitRegularOrbitBudget) :
    DyadicNaturalScaleSquareModulusCongruenceL1 :=
  naturalScaleCongruenceL1_of_pointwise_chiFour_twoUnit_regular
    hOrdinary
    (dyadicChiFourTwistedMertensEnergy_of_pointwise hChiFour)
    hUnit hRegular

/-- Conservative source profile for a future Dirichlet-`L` or GRH-level
theorem proving the exact pointwise `chi_4` Mertens envelope.

A zero-free region or GRH label alone does not inhabit this profile. -/
structure PointwiseChiFourDirichletSourceData where
  theoremStatement : Prop
  exactMathlibChiFourMatched : Prop
  mobiusReciprocalLSeriesBridge : Prop
  positiveEndpointConventionMatched : Prop
  squareRootPlusEpsilonScaleMatched : Prop
  oneConstantForAllEndpoints : Prop
  finiteInitialRangeCovered : Prop

/-- Source proposition for a future Dirichlet-`L` proof of the pointwise
`chi_4` envelope. -/
def PointwiseChiFourDirichletSource
    (d : PointwiseChiFourDirichletSourceData) : Prop :=
  d.theoremStatement ∧
    d.exactMathlibChiFourMatched ∧
    d.mobiusReciprocalLSeriesBridge ∧
    d.positiveEndpointConventionMatched ∧
    d.squareRootPlusEpsilonScaleMatched ∧
    d.oneConstantForAllEndpoints ∧
    d.finiteInitialRangeCovered

/-- Proof-producing bridge from an external/source theorem to the exact
pointwise `chi_4` Mertens envelope. -/
structure ToPointwiseChiFourMertensEnvelopeAdapter
    (source : Prop) : Type where
  toPointwise :
    source →
      PointwiseChiFourTwistedMertensSquareRootPlusEpsilonEnvelope

abbrev PointwiseChiFourDirichletAdapter
    (d : PointwiseChiFourDirichletSourceData) :=
  ToPointwiseChiFourMertensEnvelopeAdapter
    (PointwiseChiFourDirichletSource d)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.chiFourTwistedMertens_le_dyadicScale
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.dyadicChiFourTwistedMertensEnergy_of_pointwise
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.pointwiseChiFourToDyadicEnergyAdapter
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.naturalScaleCongruenceL1_of_two_pointwiseMertens_twoUnit_regular

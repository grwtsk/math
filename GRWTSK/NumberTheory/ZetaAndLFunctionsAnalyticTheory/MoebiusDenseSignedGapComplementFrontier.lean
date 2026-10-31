/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointSparseGapAllRate
import Mathlib

/-!
# Source-exact sparse extraction and dense signed endpoint equivalence

An admissible sparse gap family has an all-positive-rate absolute bound
by the previous source and explicit diagonal/elementary absorption gates.
Consequently, the remaining signed complement has a one-sided all-rate
bound if and only if the original complete signed pickupCross has one.
This is a quantitative *obstruction to circular supplier design*, not
the desired independent arithmetic estimate.

The coefficient is the original Möbius source; no sign of a remaining
correlation is assumed, and the quarter-unit endpoint allowance is
retained. The proposed geometric/polynomial gap schedule is independent
of the requested positive rate; its cardinality check is separated.

No new RH theorem, axiom, root import, or native verification assertion.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleRoughSignedConsumerTransfer
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.MoebiusEndpointSparseGapAllRate
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

namespace GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier

/-- All-positive-rate upper estimates are closed under adding two
one-sided upper estimates. The same ε may be used for both, and the
starting threshold and constants are combined by maxima/sums. -/
theorem eventualAllRateUpper_add
    {f g : ℝ → ℝ}
    (hf : EventualAllRateUpper f)
    (hg : EventualAllRateUpper g) :
    EventualAllRateUpper (fun T => f T + g T) := by
  intro ε hε
  obtain ⟨Cf, Rf, hCf, hRf, hfT⟩ := hf ε hε
  obtain ⟨Cg, Rg, hCg, hRg, hgT⟩ := hg ε hε
  refine ⟨Cf + Cg, max Rf Rg, by positivity, by positivity, ?_⟩
  intro T hT
  have hTf : Rf ≤ T := (le_max_left _ _).trans hT
  have hTg : Rg ≤ T := (le_max_right _ _).trans hT
  have h1 := hfT T hTf
  have h2 := hgT T hTg
  nlinarith

/-- A pointwise one-sided comparison transports eventual upper estimates
without taking any absolute value of the target. -/
theorem eventualAllRateUpper_of_le
    {f g : ℝ → ℝ} (hfg : ∀ T, 0 ≤ T → f T ≤ g T)
    (hg : EventualAllRateUpper g) :
    EventualAllRateUpper f := by
  intro ε hε
  obtain ⟨C, R, hC, hR, hb⟩ := hg ε hε
  refine ⟨C, R, hC, hR, ?_⟩
  intro T hT
  exact (hfg T (hR.trans hT)).trans (hb T hT)

/-- Every all-rate absolutely bounded sparse packet has an all-rate
negative as well. This does not constrain the dense signed remainder. -/
theorem sparse_negative_allRate
    (A : ℝ → Finset ℕ)
    (hsmall : EventualAllRateUpper
      (fun T => |endpointGapSetCross (A T) T|)) :
    EventualAllRateUpper
      (fun T => -endpointGapSetCross (A T) T) := by
  apply eventualAllRateUpper_of_le
    (g := fun T => |endpointGapSetCross (A T) T|)
  · intro T hT
    exact neg_le_abs _
  · exact hsmall

/-- Complete one-sided all-positive-rate bounds for the original signed
endpoint cross and for the dense signed complement are equivalent once
the extracted sparse packet has all-positive-rate absolute cost. This
equivalence supplies no new source-specific arithmetic cancellation. -/
theorem signedComplement_allRate_iff_pickupCross
    (A : ℝ → Finset ℕ)
    (hsmall : EventualAllRateUpper
      (fun T => |endpointGapSetCross (A T) T|)) :
    EventualAllRateUpper
      (fun T => signedGapComplement (A T) T) ↔
    EventualAllRateUpper pickupCross := by
  constructor
  · intro hcomp
    have hsum := eventualAllRateUpper_add hsmall hcomp
    apply eventualAllRateUpper_of_le
      (g := fun T =>
        |endpointGapSetCross (A T) T| +
          signedGapComplement (A T) T)
    · intro T hT
      rw [pickupCross_eq_sparse_add_signedComplement (A T) T]
      linarith [le_abs_self (endpointGapSetCross (A T) T)]
    · exact hsum
  · intro hcross
    have hneg := sparse_negative_allRate A hsmall
    have hsum := eventualAllRateUpper_add hcross hneg
    simpa only [signedGapComplement, sub_eq_add_neg] using hsum

/-- The original quarter-unit endpoint quadrature error is an
all-positive-rate constant, with no arithmetical supplier hidden here. -/
theorem quarter_eventualAllRateUpper :
    EventualAllRateUpper (fun _ : ℝ => 1 / 4) := by
  intro ε hε
  refine ⟨1 / 4, 0, by norm_num, le_rfl, ?_⟩
  intro T hT
  have hExp : 1 ≤ Real.exp (ε * T) :=
    Real.one_le_exp (mul_nonneg hε.le hT)
  nlinarith

/-- One-sided all-positive-rate pickupCross and the exact endpoint
quadrature are equivalent, paying only the inherited 1/4 error. -/
theorem endpointSum_allRate_iff_pickupCross :
    EventualAllRateUpper endpointSum ↔
      EventualAllRateUpper pickupCross := by
  constructor
  · intro he
    have hbound := eventualAllRateUpper_add he quarter_eventualAllRateUpper
    apply eventualAllRateUpper_of_le
      (g := fun T => endpointSum T + 1 / 4)
    · intro T hT
      have hh := endpointSum_error hT
      have ha := (abs_le.mp hh).1
      linarith
    · exact hbound
  · intro hx
    have hbound := eventualAllRateUpper_add hx quarter_eventualAllRateUpper
    apply eventualAllRateUpper_of_le
      (g := fun T => pickupCross T + 1 / 4)
    · intro T hT
      have hh := endpointSum_error hT
      have ha := (abs_le.mp hh).2
      linarith
    · exact hbound

/-- This equivalence is the circularity test for ANY admissible sparse
family. The dense signed complement estimate is RH-facing but contains
the same all-positive-rate arithmetic difficulty as endpointSum; it
cannot be called independent merely by reindexing the gap set. -/
theorem signedComplement_allRate_iff_endpointSum
    (A : ℝ → Finset ℕ)
    (hsmall : EventualAllRateUpper
      (fun T => |endpointGapSetCross (A T) T|)) :
    EventualAllRateUpper
      (fun T => signedGapComplement (A T) T) ↔
    EventualAllRateUpper endpointSum := by
  exact (signedComplement_allRate_iff_pickupCross A hsmall).trans
    endpointSum_allRate_iff_pickupCross.symm

/-- The exact original quarter-unit endpoint error is never moved into
the arithmetic signed complement. Its one-sided consumption is explicit. -/
theorem endpointSum_le_dense_signedComplement
    (A : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    endpointSum T ≤
      |endpointGapSetCross A T| +
        signedGapComplement A T + 1 / 4 :=
  endpointSum_le_sparse_and_signedComplement A T hT

/-- A predetermined family of widely separated gaps: one gap 2^j for
every j from zero through floor(max T 0). Its cardinality is at most
floor(max T 0)+1, regardless of gaps exceeding the arithmetic cutoff. -/
def dyadicSparseGapSchedule (T : ℝ) : Finset ℕ :=
  (Finset.range (⌊max T 0⌋₊ + 1)).image (fun j : ℕ => 2 ^ j)

/-- Exact finite cardinality cost of the proposed dyadic schedule. -/
theorem dyadicSparseGapSchedule_card_le (T : ℝ) :
    (dyadicSparseGapSchedule T).card ≤ ⌊max T 0⌋₊ + 1 := by
  unfold dyadicSparseGapSchedule
  simpa using (Finset.card_image_le
    (s := Finset.range (⌊max T 0⌋₊ + 1))
    (f := fun j : ℕ => 2 ^ j))

/-- The concrete dyadic schedule has subexponential cardinality. This
is an elementary growth obligation, NOT a signed arithmetic estimate.
The source candidate keeps its exact quantified statement visible. -/
def DyadicScheduleSubexponential : Prop :=
  SubexponentialGapCardinality dyadicSparseGapSchedule

/-- This dyadic schedule satisfies every-positive-rate cardinality
control, uniformly in T, using only floor T <= T and exp x >= 1+x.
The schedule itself is fixed before the requested rate delta. -/
theorem dyadicScheduleSubexponential :
    DyadicScheduleSubexponential := by
  intro δ hδ
  refine ⟨1 + δ⁻¹, 0, by positivity, le_rfl, ?_⟩
  intro T hT
  have hmax : max T 0 = T := max_eq_left hT
  have hfloor : (((⌊max T 0⌋₊ : ℕ) : ℝ)) ≤ T := by
    have hf : (((⌊max T 0⌋₊ : ℕ) : ℝ)) ≤ max T 0 :=
      Nat.floor_le (by positivity)
    simpa [hmax] using hf
  have hcount : ((dyadicSparseGapSchedule T).card : ℝ) ≤ T + 1 := by
    have h := dyadicSparseGapSchedule_card_le T
    have hc : ((dyadicSparseGapSchedule T).card : ℝ) ≤
        (((⌊max T 0⌋₊ + 1 : ℕ) : ℝ)) := by
      exact_mod_cast h
    push_cast at hc
    linarith
  have hpositive : 0 ≤ (1 + δ⁻¹ : ℝ) := by positivity
  have hcancel : δ⁻¹ * δ = 1 := inv_mul_cancel₀ hδ.ne'
  have hscale : T + 1 ≤ (1 + δ⁻¹) * (δ * T + 1) := by
    have hdT : 0 ≤ δ * T := mul_nonneg hδ.le hT
    have hdInv : 0 ≤ δ⁻¹ := inv_nonneg.mpr hδ.le
    nlinarith [mul_nonneg hdInv hdT]
  have hExp := Real.add_one_le_exp (δ * T)
  have hCompare :
      (1 + δ⁻¹) * (δ * T + 1) ≤
        (1 + δ⁻¹) * Real.exp (δ * T) :=
    mul_le_mul_of_nonneg_left hExp hpositive
  exact hcount.trans (hscale.trans hCompare)

/-- A fully source-bound conditional return for the specified schedule.
The only new arithmetic hypothesis remains the complete signed
dense complement; the diagonal and polynomial/cardinality gates
are separately stated and priced. -/
theorem dyadicDenseSignedSupplier_implies_endpoint_allRate
    (hcard : DyadicScheduleSubexponential)
    (hdiag : OriginalDiagonalQuadraticUpper)
    (hpoly : QuadraticExponentialAbsorption)
    (hcomp : EventualAllRateUpper
      (fun T => signedGapComplement (dyadicSparseGapSchedule T) T)) :
    EventualAllRateUpper endpointSum := by
  have hsparse := sparse_family_endpoint_allRate
    dyadicSparseGapSchedule hcard hdiag hpoly
  intro ε hε
  obtain ⟨Cs, Rs, hCs, hRs, hs⟩ := hsparse ε hε
  obtain ⟨Cc, Rc, hCc, hRc, hc⟩ := hcomp ε hε
  refine ⟨Cs + Cc + 1 / 4, max Rs Rc, by positivity, by positivity, ?_⟩
  intro T hT
  have hTs : Rs ≤ T := (le_max_left _ _).trans hT
  have hTc : Rc ≤ T := (le_max_right _ _).trans hT
  have hT0 : 0 ≤ T := hRs.trans hTs
  have hmain := endpointSum_le_sparse_and_signedComplement
    (dyadicSparseGapSchedule T) T hT0
  have he : 1 ≤ Real.exp (ε * T) :=
    Real.one_le_exp (mul_nonneg hε.le hT0)
  have hss := hs T hTs
  have hcc := hc T hTc
  nlinarith

end GRWTSK.NumberTheory.MoebiusDenseSignedGapComplementFrontier

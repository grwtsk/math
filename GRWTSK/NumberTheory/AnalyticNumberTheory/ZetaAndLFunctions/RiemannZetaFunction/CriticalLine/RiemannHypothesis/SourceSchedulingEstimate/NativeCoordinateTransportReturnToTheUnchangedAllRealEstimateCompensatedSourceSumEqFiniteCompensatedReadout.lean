import FormalResearch.RiemannHypothesis.SourceSchedulingTransport
import FormalResearch.RiemannHypothesis.SourceHybridQuadrature
import FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell

/-!
# Native-coordinate transport return to the unchanged all-real estimate

CSE-RH16-20261007. Direction, selection, corrections and evaluation:
grwtsk contributors. These finite adapters and conditional consumer applications:
OpenAI Codex. The certificate's global arithmetic budget is unproved here.
No finite diagnostic establishes that all-real premise.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingEstimate

open SourceSchedulingTransport SourceKapitzaCompensatedReadout
open SourcePairing SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent

/-- The literal compensated sum is exactly the all-natural native C-coordinate readout. -/
theorem compensatedSourceSum_eq_native (A : ℝ) :
    compensatedSourceSum A =
      ∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊,
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
          sourceCorrelation explicitSecondDerivative A (Real.log n) := by
  unfold compensatedSourceSum primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < n := by
    have := (Finset.mem_Icc.mp hn).1
    omega
  rw [exponentialTest_log _ n hn0]
  ring

/-- K-C5's finite compensated readout matches S_A with every natural retained. -/
theorem compensatedSourceSum_eq_finiteCompensatedReadout (A : ℝ) :
    compensatedSourceSum A = SourceKapitzaSquareShell.finiteCompensatedReadout A
      ⌊Real.exp (2 * A)⌋₊ := by
  rw [compensatedSourceSum_eq_native]
  rfl

/-- The exact K-C5 comparison constant is nonnegative. -/
theorem tangentErrorConstant_nonneg : 0 ≤ SourceKapitzaSquareShell.tangentErrorConstant := by
  have hq := SourceKapitzaStorage.quadraticImpulse_sum_le 0
  norm_num at hq
  unfold SourceKapitzaSquareShell.tangentErrorConstant
  linarith

/-- The recovered K-C5 transfer is applied to S_A at its literal real cutoff. -/
theorem compensatedSourceSum_sub_tangent_abs_le (A : ℝ) (hA : 200 ≤ A) :
    |compensatedSourceSum A - SourceKapitzaSquareShell.tangentReadout A
      ⌊Real.exp (2 * A)⌋₊| ≤ SourceKapitzaSquareShell.tangentErrorConstant / A ^ 2 := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact SourceKapitzaSquareShell.finite_tangent_error hA _

/-- Any actual all-real signed tangent cap is returned through the unchanged #16 prefix. -/
theorem estimate_of_tangent_cap (R B : ℝ) (hR : 200 ≤ R)
    (hcap : ∀ A : ℝ, R ≤ A → SourceKapitzaSquareShell.tangentReadout A
      ⌊Real.exp (2 * A)⌋₊ ≤ B) : CorrelationAssembly.EstimateObligation := by
  apply SourceHybridQuadrature.estimate_of_compensated_cap R
    (B + SourceKapitzaSquareShell.tangentErrorConstant / R ^ 2) hR
  intro A hRA
  have hA := hR.trans hRA
  have he := (abs_le.mp (compensatedSourceSum_sub_tangent_abs_le A hA)).2
  have hR0 : 0 < R := by linarith
  have herror := div_le_div_of_nonneg_left tangentErrorConstant_nonneg
    (sq_pos_of_pos hR0) (show R ^ 2 ≤ A ^ 2 by nlinarith)
  linarith [hcap A hRA]

/-- Curvature five is used in native C_A coordinates, without an A^9 rescaling. -/
theorem native_transport_abs_le {ι : Type*} [Fintype ι]
    (A : ℝ) (hA : 200 ≤ A) (c b d : ι → ℝ) (P Q : ι → ι → ℝ)
    (hP : ∀ i j, 0 ≤ P i j) (hQ : ∀ j k, 0 ≤ Q j k)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i)
    (hr : ∀ j, inducedDrift c d P j = (∑ k, Q j k) - ∑ k, Q k j) :
    |readout c b d (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A))| ≤
        (5 / A ^ 2) * transportCost c P Q := by
  apply two_stage_abs_le c b d _ _ P Q (5 / A ^ 2) hP hQ hb hr
  · intro i j
    have ht := sourceCorrelation_linear_taylor_bound_five hA (c j) (c i - c j)
    simpa only [add_sub_cancel] using ht
  · intro j k
    have hg := sourceCorrelation_deriv_increment_bound_five hA (c k) (c j - c k)
    simpa only [add_sub_cancel] using hg

/-- This is a sufficient arithmetic supplier contract, with all affine and correction
loads retained in F and the additional comparison error E kept explicit. -/
def SourceTransportBudget (R F C E : ℝ) : Prop :=
  ∀ A : ℝ, R ≤ A → ∃ n : ℕ, ∃ c b d : Fin n → ℝ,
    ∃ P Q : Fin n → Fin n → ℝ,
      (∀ i j, 0 ≤ P i j) ∧ (∀ j k, 0 ≤ Q j k) ∧
      (∀ i, b i = (∑ j, P i j) - ∑ j, P j i) ∧
      (∀ j, inducedDrift c d P j = (∑ k, Q j k) - ∑ k, Q k j) ∧
      compensatedSourceSum A ≤ F +
        readout c b d (sourceCorrelation explicitSecondDerivative A)
          (deriv (sourceCorrelation explicitSecondDerivative A)) + E / A ^ 2 ∧
      transportCost c P Q ≤ C * A ^ 2

/-- A true all-real global supplier gives the compensated cap F+5C+E/R^2. -/
theorem compensated_cap_of_source_transport_cost (R F C E : ℝ)
    (hR : 200 ≤ R) (hE : 0 ≤ E) (hbudget : SourceTransportBudget R F C E) :
    ∀ A : ℝ, R ≤ A → compensatedSourceSum A ≤ F + 5 * C + E / R ^ 2 := by
  intro A hRA
  have hA : 200 ≤ A := hR.trans hRA
  have hA0 : 0 < A := by linarith
  have hR0 : 0 < R := by linarith
  rcases hbudget A hRA with ⟨n, c, b, d, P, Q, hP, hQ, hb, hr, hsource, hcost⟩
  have hread := native_transport_abs_le A hA c b d P Q hP hQ hb hr
  have hcost' : (5 / A ^ 2) * transportCost c P Q ≤ 5 * C := by
    calc
      _ ≤ (5 / A ^ 2) * (C * A ^ 2) :=
        mul_le_mul_of_nonneg_left hcost (by positivity)
      _ = 5 * C := by field_simp
  have herror : E / A ^ 2 ≤ E / R ^ 2 :=
    div_le_div_of_nonneg_left hE (sq_pos_of_pos hR0) (by nlinarith)
  linarith [le_abs_self
    (readout c b d (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A)))]

/-- Application to the existing original all-real #16 consumer, preserving its finite prefix. -/
theorem estimate_of_source_transport_cost (R F C E : ℝ)
    (hR : 200 ≤ R) (hE : 0 ≤ E) (hbudget : SourceTransportBudget R F C E) :
    CorrelationAssembly.EstimateObligation :=
  SourceHybridQuadrature.estimate_of_compensated_cap R (F + 5 * C + E / R ^ 2) hR
    (compensated_cap_of_source_transport_cost R F C E hR hE hbudget)

end FormalResearch.RiemannHypothesis.SourceSchedulingEstimate

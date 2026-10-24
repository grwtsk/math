# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceConservativeComparison.Variantf7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c424fded148cd540757faa8ed4ad0ae558d48584` · SHA-256 `f7d5857599adc21e9754849aac3704e8f03fa67e2a593aa0f0685e3ead315179`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceRelativeDistance
import FormalResearch.RiemannHypothesis.SourceSchedulingTransport
import FormalResearch.RiemannHypothesis.SourceCorrelationCellTransport
import FormalResearch.RiemannHypothesis.SourceKapitzaSquareShell

/-!
# Conservative finite comparison of the unchanged source

Nonnegative finite plans preserve both marginals exactly. Their costs use the
native source distance and the physical logarithmic displacement. Both shell
moments remain in the smoothing-error accounting; Gaussian bounds, when
supplied, retain the full coefficient masses. Existing cell transport and
source Taylor theorems are consumed without re-proving their source calculus.

CSE-RH16-20261007. Direction: grwtsk contributors.
Finite comparison adapters: OpenAI Codex. No uniform arithmetic cap is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceConservativeComparison

open scoped BigOperators
open SourcePairing SourceRelativeDistance SourceSchedulingTransport SourceCorrelationCurvatureFive
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

section Plan

variable {ι κ : Type*} [Fintype ι] [Fintype κ]

/-- Literal signed atomic readout. Physical square-root weights belong in these masses. -/
def matchedReadout (A : ℝ) (x : ι → ℝ) (y : κ → ℝ)
    (u : ι → ℝ) (v : κ → ℝ) : ℝ :=
  (∑ i, u i * sourceCorrelation explicitSecondDerivative A (x i)) -
    ∑ j, v j * sourceCorrelation explicitSecondDerivative A (y j)

/-- The plan mass in this module, with the following exact parameterization.

def planMass (P : ι → κ → ℝ) : ℝ := ∑ i, ∑ j, P i j
-/
def planMass (P : ι → κ → ℝ) : ℝ := ∑ i, ∑ j, P i j

/-- The source plan cost in this module, with the following exact parameterization.

def sourcePlanCost (A : ℝ) (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) : ℝ := ∑ i, ∑ j, P i j *
sourceDistance A (x i) (y j)
-/
def sourcePlanCost (A : ℝ) (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) : ℝ :=
  ∑ i, ∑ j, P i j * sourceDistance A (x i) (y j)

/-- The displacement cost in this module, with the following exact parameterization.

def displacementCost (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) : ℝ := ∑ i, ∑ j, P i j * |x i - y
j|
-/
def displacementCost (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) : ℝ :=
  ∑ i, ∑ j, P i j * |x i - y j|

/-- Both supplied marginals reconstruct the complete signed readout. -/
theorem matchedReadout_eq_plan (A : ℝ) (x : ι → ℝ) (y : κ → ℝ)
    (u : ι → ℝ) (v : κ → ℝ) (P : ι → κ → ℝ)
    (hu : ∀ i, ∑ j, P i j = u i) (hv : ∀ j, ∑ i, P i j = v j) :
    matchedReadout A x y u v = ∑ i, ∑ j, P i j *
      (sourceCorrelation explicitSecondDerivative A (x i) -
        sourceCorrelation explicitSecondDerivative A (y j)) := by
  simp only [mul_sub, Finset.sum_sub_distrib]
  rw [Finset.sum_comm (f := fun i j => P i j *
    sourceCorrelation explicitSecondDerivative A (y j))]
  simp only [← Finset.sum_mul, hu, hv, matchedReadout]

theorem matchedReadout_abs_le_sourcePlanCost {A : ℝ} (hA : 0 < A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ) (P : ι → κ → ℝ)
    (hP : ∀ i j, 0 ≤ P i j)
    (hu : ∀ i, ∑ j, P i j = u i) (hv : ∀ j, ∑ i, P i j = v j) :
    |matchedReadout A x y u v| ≤ sourcePlanCost A x y P := by
  rw [matchedReadout_eq_plan A x y u v P hu hv]
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  apply (Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)).trans
  apply Finset.sum_le_sum
  intro i _
  apply Finset.sum_le_sum
  intro j _
  rw [abs_mul, abs_of_nonneg (hP i j)]
  exact mul_le_mul_of_nonneg_left
    (sourceCorrelation_increment_le_distance hA (x i) (y j)) (hP i j)

theorem sourcePlanCost_le_displacement {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) (hP : ∀ i j, 0 ≤ P i j) :
    sourcePlanCost A x y P ≤ (Real.sqrt 5 / A) * displacementCost x y P := by
  unfold sourcePlanCost displacementCost
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_le_sum
  intro j _
  calc
    _ ≤ P i j * (Real.sqrt 5 * |x i - y j| / A) :=
      mul_le_mul_of_nonneg_left (sourceDistance_le_sharp hA (x i) (y j)) (hP i j)
    _ = _ := by ring

/-- The complete support diameter pays every unit of transported mass. -/
theorem sourcePlanCost_le_diameter {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (P : ι → κ → ℝ) (hP : ∀ i j, 0 ≤ P i j)
    (h : ℝ) (hdiam : ∀ i j, |x i - y j| ≤ h) :
    sourcePlanCost A x y P ≤ min (2 * planMass P)
      ((Real.sqrt 5 / A) * planMass P * h) := by
  apply le_min
  · unfold sourcePlanCost planMass
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro i _
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro j _
    calc
      _ ≤ P i j * 2 := mul_le_mul_of_nonneg_left
        (sourceDistance_le_two (by linarith) (x i) (y j)) (hP i j)
      _ = _ := by ring
  · apply (sourcePlanCost_le_displacement hA x y P hP).trans
    have hc : displacementCost x y P ≤ planMass P * h := by
      unfold displacementCost planMass
      simp only [Finset.sum_mul]
      exact Finset.sum_le_sum (fun i _ => Finset.sum_le_sum
        (fun j _ => mul_le_mul_of_nonneg_left (hdiam i j) (hP i j)))
    have hp : 0 < A := by linarith
    exact (mul_le_mul_of_nonneg_left hc (by positivity)).trans_eq (by ring)

/-- Exact feasible coupling class, including both original marginals. -/
def IsPlan (u : ι → ℝ) (v : κ → ℝ) (P : ι → κ → ℝ) : Prop :=
  (∀ i j, 0 ≤ P i j) ∧ (∀ i, ∑ j, P i j = u i) ∧ (∀ j, ∑ i, P i j = v j)

theorem planMass_eq_both_marginals (u : ι → ℝ) (v : κ → ℝ)
    (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    planMass P = ∑ i, u i ∧ planMass P = ∑ j, v j := by
  constructor
  · simp only [planMass, hP.2.1]
  · unfold planMass
    rw [Finset.sum_comm]
    simp only [hP.2.2]

/-- Finite Wasserstein comparison over this declared coupling class. -/
def transportDistance (u : ι → ℝ) (v : κ → ℝ)
    (cost : (ι → κ → ℝ) → ℝ) : ℝ :=
  sInf {z : ℝ | ∃ P : ι → κ → ℝ, IsPlan u v P ∧ cost P = z}

/-- The native wasserstein in this module, with the following exact parameterization.

def nativeWasserstein (A : ℝ) (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ) : ℝ :=
transportDistance u v (sourcePlanCost A x y)
-/
def nativeWasserstein (A : ℝ) (x : ι → ℝ) (y : κ → ℝ)
    (u : ι → ℝ) (v : κ → ℝ) : ℝ :=
  transportDistance u v (sourcePlanCost A x y)

/-- The displacement wasserstein in this module, with the following exact parameterization.

def displacementWasserstein (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ) : ℝ :=
transportDistance u v (displacementCost x y)
-/
def displacementWasserstein (x : ι → ℝ) (y : κ → ℝ)
    (u : ι → ℝ) (v : κ → ℝ) : ℝ :=
  transportDistance u v (displacementCost x y)

private theorem costSet_nonempty (u : ι → ℝ) (v : κ → ℝ)
    (cost : (ι → κ → ℝ) → ℝ) (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    {z : ℝ | ∃ Q : ι → κ → ℝ, IsPlan u v Q ∧ cost Q = z}.Nonempty :=
  ⟨cost P, P, hP, rfl⟩

private theorem sourceCostSet_bddBelow (A : ℝ) (x : ι → ℝ) (y : κ → ℝ)
    (u : ι → ℝ) (v : κ → ℝ) :
    BddBelow {z : ℝ | ∃ P : ι → κ → ℝ,
      IsPlan u v P ∧ sourcePlanCost A x y P = z} := by
  refine ⟨0, ?_⟩
  rintro z ⟨P, hP, rfl⟩
  exact Finset.sum_nonneg (fun i _ => Finset.sum_nonneg
    (fun j _ => mul_nonneg (hP.1 i j) (sourceDistance_nonneg A (x i) (y j))))

/-- Taking the infimum is justified by an actual feasible plan, including zero-mass plans. -/
theorem matchedReadout_abs_le_nativeWasserstein {A : ℝ} (hA : 0 < A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ)
    (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    |matchedReadout A x y u v| ≤ nativeWasserstein A x y u v := by
  apply le_csInf (costSet_nonempty u v (sourcePlanCost A x y) P hP)
  rintro z ⟨Q, hQ, rfl⟩
  exact matchedReadout_abs_le_sourcePlanCost hA x y u v Q hQ.1 hQ.2.1 hQ.2.2

/-- The sharp contraction is a comparison of exact infima over the same couplings. -/
theorem nativeWasserstein_le_displacementWasserstein {A : ℝ} (hA : 200 ≤ A)
    (x : ι → ℝ) (y : κ → ℝ) (u : ι → ℝ) (v : κ → ℝ)
    (P : ι → κ → ℝ) (hP : IsPlan u v P) :
    nativeWasserstein A x y u v ≤
      (Real.sqrt 5 / A) * displacementWasserstein x y u v := by
  have hp : 0 < A := by linarith
  have hc : 0 < Real.sqrt 5 / A := by positivity
  have hb : nativeWasserstein A x y u v / (Real.sqrt 5 / A) ≤
      displacementWasserstein x y u v := by
    apply le_csInf (costSet_nonempty u v (displacementCost x y) P hP)
    rintro z ⟨Q, hQ, rfl⟩
    apply (div_le_iff₀ hc).2
    have hmin : nativeWasserstein A x y u v ≤ sourcePlanCost A x y Q :=
      csInf_le (sourceCostSet_bddBelow A x y u v) ⟨Q, hQ, rfl⟩
    exact (hmin.trans (sourcePlanCost_le_displacement hA x y Q hQ.1)).trans_eq
      (mul_comm _ _)
  exact ((div_le_iff₀ hc).1 hb).trans_eq (mul_comm _ _)

end Plan

section Shell

variable {ι : Type*} [Fintype ι]

/-- Every coefficient in each of the two channels is charged by its own error. -/
theorem complete_shell_comparison_abs_le (c b d : ι → ℝ) (f g F G : ℝ → ℝ)
    (ε₀ ε₁ : ℝ) (hf : ∀ i, |f (c i) - F (c i)| ≤ ε₀)
    (hg : ∀ i, |g (c i) - G (c i)| ≤ ε₁) :
    |readout c b d f g - readout c b d F G| ≤
      ε₀ * (∑ i, |b i|) + ε₁ * ∑ i, |d i| := by
  have he : readout c b d f g - readout c b d F G =
      ∑ i, (b i * (f (c i) - F (c i)) + d i * (g (c i) - G (c i))) := by
    simp only [readout, ← Finset.sum_sub_distrib]
    apply Finset.sum_congr rfl
    intro i _
    ring
  rw [he]
  calc
    _ ≤ ∑ i, |b i * (f (c i) - F (c i)) + d i * (g (c i) - G (c i))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ i, (|b i| * ε₀ + |d i| * ε₁) := by
      apply Finset.sum_le_sum
      intro i _
      exact (abs_add_le _ _).trans (add_le_add
        (by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hf i) (abs_nonneg _))
        (by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hg i) (abs_nonneg _)))
    _ = _ := by rw [Finset.sum_add_distrib, ← Finset.sum_mul, ← Finset.sum_mul]; ring

/-- A Gaussian port must supply these two actual source bounds. The derivative mass survives. -/
theorem gaussian_shell_correction_abs_le {A : ℝ} (_hA : 200 ≤ A)
    (c b d : ι → ℝ) (F G : ℝ → ℝ) (s : ℝ) (_hs : 0 < s)
    (hf : ∀ i, |sourceCorrelation explicitSecondDerivative A (c i) - F (c i)| ≤
      5 * s / (2 * A ^ 2))
    (hg : ∀ i, |deriv (sourceCorrelation explicitSecondDerivative A) (c i) - G (c i)| ≤
      5 * Real.sqrt (2 / Real.pi) * Real.sqrt s / A ^ 2) :
    |readout c b d (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A)) - readout c b d F G| ≤
      (5 * s / (2 * A ^ 2)) * (∑ i, |b i|) +
        (5 * Real.sqrt (2 / Real.pi) * Real.sqrt s / A ^ 2) * ∑ i, |d i| := by
  exact complete_shell_comparison_abs_le c b d _ _ F G _ _ hf hg

end Shell

/-- An actual complete two-node readout retains its derivative moment with the plus sign. -/
theorem two_node_source_readout_abs_le {A : ℝ} (hA : 200 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A 0 -
      sourceCorrelation explicitSecondDerivative A 2 +
        2 * deriv (sourceCorrelation explicitSecondDerivative A) 0| ≤ 10 / A ^ 2 := by
  have h := sourceCorrelation_linear_taylor_bound_five hA 0 2
  have he : sourceCorrelation explicitSecondDerivative A 0 -
      sourceCorrelation explicitSecondDerivative A 2 +
        2 * deriv (sourceCorrelation explicitSecondDerivative A) 0 =
      -(sourceCorrelation explicitSecondDerivative A (0 + 2) -
        sourceCorrelation explicitSecondDerivative A 0 -
          2 * deriv (sourceCorrelation explicitSecondDerivative A) 0) := by
    simp only [zero_add]
    ring
  rw [he, abs_neg]
  convert h using 1
  ring

/-- Existing exact physical cell transport is consumed at the literal real source cutoff. -/
theorem all_real_cutoff_cell_price {A : ℝ} (hA : 200 ≤ A) :
    (∑ n ∈ Finset.Icc 1 ⌊Real.exp (2 * A)⌋₊,
      |SourceCorrelationCellTransport.cellCorrection A n|) ≤ 40 / A ^ 2 :=
  SourceCorrelationCellTransport.sum_cellCorrection_abs_le hA _

/-- Source-specific smoothing comparison: every integer, physical mass and tangent drift is paid. -/
theorem finite_tangent_comparison_abs_le (A : ℝ) (N : ℕ) (F G : ℝ → ℝ)
    (ε₀ ε₁ : ℝ)
    (hf : ∀ n ∈ Finset.Icc 2 N,
      |sourceCorrelation explicitSecondDerivative A
        (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))| ≤ ε₀)
    (hg : ∀ n ∈ Finset.Icc 2 N,
      |deriv (sourceCorrelation explicitSecondDerivative A)
        (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))| ≤ ε₁) :
    |SourceKapitzaSquareShell.tangentReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      ε₀ * (∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
      ε₁ * ∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
          |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  unfold SourceKapitzaSquareShell.tangentReadout
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (sourceCorrelation explicitSecondDerivative A
            (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            deriv (sourceCorrelation explicitSecondDerivative A)
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) -
        (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
          (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
            (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 2 N,
        (|(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| * ε₀ +
          |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
            |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| * ε₁) := by
      apply Finset.sum_le_sum
      intro n hn
      rw [← mul_sub, abs_mul, mul_assoc, ← mul_add]
      apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
      have he : sourceCorrelation explicitSecondDerivative A
          (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            deriv (sourceCorrelation explicitSecondDerivative A)
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
          (F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
            (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) =
          (sourceCorrelation explicitSecondDerivative A
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
            F (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            (deriv (sourceCorrelation explicitSecondDerivative A)
                (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) -
              G (Real.log (SourceKapitzaSquareShell.shellEndpoint N n))) := by ring
      rw [he]
      exact (abs_add_le _ _).trans (add_le_add (hf n hn)
        (by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hg n hn) (abs_nonneg _)))
    _ = _ := by simp only [Finset.sum_add_distrib, ← Finset.sum_mul]; ring

end FormalResearch.RiemannHypothesis.SourceConservativeComparison
```

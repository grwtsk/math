/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMScaleDependentPrimeFiniteException
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

/-!
# Original chosen prime in EVERY shell: positive Dirichlet geometric squeeze

Each chosenPrime s is the original genuine Möbius prime in the source
shell (2^s,2^(s+1)]. It has ORIGINAL coefficient mu(p_s)=-1.

For sigma>0, the actual positive Dirichlet mass is between
  (2^-sigma) * sum_(s<j)(2^-sigma)^s
and
                  sum_(s<j)(2^-sigma)^s.
The sharp common radial boundary as sigma tends to zero is 1/log2,
not 1/log4 (which belonged to the every-SECOND-shell subselector).
This finite estimate requires no Mertens or prime-distribution
result beyond the already used Bertrand selection.

Combined with CMScaleDependentPrimeFiniteException, the COMPLETE
movingBank high source is the infinite original chosen-prime Dirichlet
subseries plus an ENTIRE finite first-five-shell correction. The global
half-plane holomorphy and positive radial limit are paper-derived but
remain explicitly OPEN Lean Props, not fake theorem instances.

No zero-free result, RH, GRH or low-sector cancellation is claimed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeAllShellDirichletSqueeze

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeBankWitness
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeFiniteException

def onePerShellRatio (σ : ℝ) : ℝ :=
  Real.exp (-σ * Real.log 2)

theorem onePerShellRatio_pos (σ : ℝ) :
    0 < onePerShellRatio σ := by
  unfold onePerShellRatio
  positivity

theorem onePerShellRatio_lt_one {σ : ℝ} (hσ : 0 < σ) :
    onePerShellRatio σ < 1 := by
  unfold onePerShellRatio
  have hlog : 0 < Real.log (2 : ℝ) :=
    Real.log_pos (by norm_num)
  have hneg : -σ * Real.log 2 < 0 := by nlinarith
  simpa only [Real.exp_zero] using Real.exp_lt_exp.mpr hneg

private theorem two_pow_neg_sigma_eq_ratio (σ : ℝ) (s : ℕ) :
    (((2 ^ s : ℕ) : ℝ)) ^ (-σ) =
      onePerShellRatio σ ^ s := by
  rw [Nat.cast_pow,
    Real.rpow_def_of_pos (by positivity : (0 : ℝ) < (2 : ℝ) ^ s),
    Real.log_pow]
  unfold onePerShellRatio
  rw [← Real.exp_nat_mul]
  congr 1
  ring

def originalPrimePowerMass (σ : ℝ) (j : ℕ) : ℝ :=
  ∑ s ∈ Finset.range j, ((chosenPrime s : ℕ) : ℝ) ^ (-σ)

/-- Upper from the genuine original integer n>2^s. -/
theorem chosenPrimePower_le_geometric {σ : ℝ} (hσ : 0 < σ) (s : ℕ) :
    ((chosenPrime s : ℝ)) ^ (-σ) ≤ onePerShellRatio σ ^ s := by
  have hbase : (0 : ℝ) < (((2 ^ s : ℕ) : ℝ)) := by positivity
  have hle : (((2 ^ s : ℕ) : ℝ)) ≤ (chosenPrime s : ℝ) := by
    exact_mod_cast (chosenPrime_gt s).le
  calc
    (chosenPrime s : ℝ) ^ (-σ) ≤
        (((2 ^ s : ℕ) : ℝ)) ^ (-σ) :=
      Real.rpow_le_rpow_of_nonpos hbase hle (by linarith)
    _ = onePerShellRatio σ ^ s := two_pow_neg_sigma_eq_ratio σ s

/-- Lower from the genuine original endpoint n<=2^(s+1).
It retains the original p_s rather than using a substitute prime. -/
theorem chosenPrimePower_ge_geometric {σ : ℝ} (hσ : 0 < σ) (s : ℕ) :
    (2 : ℝ) ^ (-σ) * onePerShellRatio σ ^ s ≤
      (chosenPrime s : ℝ) ^ (-σ) := by
  have hpos : (0 : ℝ) < (chosenPrime s : ℝ) := by
    exact_mod_cast (chosenPrime_prime s).pos
  have hle : (chosenPrime s : ℝ) ≤
      2 * (((2 ^ s : ℕ) : ℝ)) := by
    exact_mod_cast chosenPrime_le s
  have heq :
      (2 * (((2 ^ s : ℕ) : ℝ))) ^ (-σ) =
        (2 : ℝ) ^ (-σ) * onePerShellRatio σ ^ s := by
    rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
      (by positivity : 0 ≤ (((2 ^ s : ℕ) : ℝ)))]
    rw [two_pow_neg_sigma_eq_ratio]
  calc
    (2 : ℝ) ^ (-σ) * onePerShellRatio σ ^ s =
        (2 * (((2 ^ s : ℕ) : ℝ))) ^ (-σ) := heq.symm
    _ ≤ (chosenPrime s : ℝ) ^ (-σ) :=
      Real.rpow_le_rpow_of_nonpos hpos hle (by linarith)

/-- The complete finite original prime source has a two-sided
NONNEGATIVE mass squeeze, not an assumed signed-correlation theorem. -/
theorem onePerShellMass_sandwich {σ : ℝ} (hσ : 0 < σ) (j : ℕ) :
    (2 : ℝ) ^ (-σ) *
        (∑ s ∈ Finset.range j, onePerShellRatio σ ^ s) ≤
      originalPrimePowerMass σ j ∧
      originalPrimePowerMass σ j ≤
        ∑ s ∈ Finset.range j, onePerShellRatio σ ^ s := by
  constructor
  · unfold originalPrimePowerMass
    rw [Finset.mul_sum]
    apply Finset.sum_le_sum
    intro s hs
    exact chosenPrimePower_ge_geometric hσ s
  · unfold originalPrimePowerMass
    apply Finset.sum_le_sum
    intro s hs
    exact chosenPrimePower_le_geometric hσ s

/-- Uniform positive-rate bound independent of truncation, but
NOT of the real exponent sigma as sigma tends to zero. -/
theorem onePerShellPowerMass_uniform {σ : ℝ} (hσ : 0 < σ) (j : ℕ) :
    originalPrimePowerMass σ j ≤
      (1 - onePerShellRatio σ)⁻¹ := by
  have hnonneg := (onePerShellRatio_pos σ).le
  have hlt := onePerShellRatio_lt_one hσ
  calc
    originalPrimePowerMass σ j ≤
        ∑ s ∈ Finset.range j, onePerShellRatio σ ^ s :=
      (onePerShellMass_sandwich hσ j).2
    _ ≤ ∑' s : ℕ, onePerShellRatio σ ^ s :=
      (summable_geometric_of_lt_one hnonneg hlt).sum_le_tsum
        (Finset.range j) (fun s hs => pow_nonneg hnonneg _)
    _ = (1 - onePerShellRatio σ)⁻¹ :=
      tsum_geometric_of_lt_one hnonneg hlt

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMScaleDependentPrimeAllShellDirichletSqueeze

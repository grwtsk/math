/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MobiusWeightedPrefixPNTReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicPrimeLogarithmicDensity
import Mathlib

/-!
# A verified-input fixed-power gain and the signed high-prime window seam

The exact finite and rational theorems here use the original Mobius /
Liouville prefix and prime-valuation source modules. External proof
comparison: GTimG/QuasiRiemannTracker pull/102 at immutable source
ad7b7edd47bee2fdff34165da5cc14cc0331db2c, Main.lean blob
ea52b389645935c66daa8416a29b20ac0555a3df.
The external verify/admission checks passed, but that PR is unmerged.

The bound at the verified source exponent does not become a local Lean
theorem just from this arithmetic comparison. The separate classical
zero-free-to-summatory analytic transfer is not claimed compiled.

A generic exact centered window identity preserves the signed high-prime
correction: originalMobius = squarefreeSmallPrime - 2 * signedLargePrime.
No fixed exponent or RH assertion is imported or proved from that identity.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.PadicMobiusHighPrimeFixedPower

/-- Currently merged tracker bound, at its exact published rational. -/
def mergedTheta : ℝ :=
  (8733819666133 : ℝ) / 10000000000000

/-- External theorem in green-checked but still open PR #102. -/
def checkedProposalTheta : ℝ :=
  (87338196661320751993 : ℝ) / 100000000000000000000

/-- A rational working threshold strictly between the PR and merged ones. -/
def workingTheta : ℝ :=
  (87338196661325 : ℝ) / 100000000000000

/-- The fixed energy power corresponding to workingTheta. -/
def workingEnergyPower : ℝ :=
  (7467639332265 : ℝ) / 10000000000000

/-- Pure rational comparison. This is NOT a proof of analytic nonvanishing,
a Liouville partial-sum bound, or a weighted energy bound. -/
theorem exact_strict_fixed_power_gain :
    checkedProposalTheta < workingTheta ∧
    workingTheta < mergedTheta ∧
    workingEnergyPower = 2 * workingTheta - 1 ∧
    workingEnergyPower < 2 * mergedTheta - 1 := by
  norm_num [checkedProposalTheta, workingTheta, mergedTheta, workingEnergyPower]

/-- Retain a literal (X,X+H] finite inventory without any periodic
projection or a changed source endpoint. -/
def windowSignedSum (f : ℕ → ℝ) (X H : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ioc X (X + H), f n

/-- A coefficient-level identity remains exact after finite windowing.
The genuine equality μ=U_y−2V_y is a separate arithmetic fact;
it is not replaced here by a conclusion without hypotheses. -/
theorem window_source_sub_two
    (f u v : ℕ → ℝ) (X H : ℕ)
    (h : ∀ n ∈ Finset.Ioc X (X + H), f n = u n - 2 * v n) :
    windowSignedSum f X H =
      windowSignedSum u X H - 2 * windowSignedSum v X H := by
  unfold windowSignedSum
  calc
    (∑ n ∈ Finset.Ioc X (X + H), f n) =
        ∑ n ∈ Finset.Ioc X (X + H), (u n - 2 * v n) := by
      apply Finset.sum_congr rfl
      intro n hn
      exact h n hn
    _ = _ := by
      rw [Finset.sum_sub_distrib]
      simp only [← Finset.mul_sum]

/-- Exact signed centering; absolute values are taken ONLY after the
original positive/negative contributions have been recombined. -/
theorem centered_tail_abs_le
    (small mobius tail mean : ℝ)
    (h : mobius = small - 2 * tail) :
    |tail - mean / 2| ≤
      (|small - mean| + |mobius|) / 2 := by
  have heq : (small - mean) - mobius = 2 * (tail - mean / 2) := by
    linarith
  have htri : |(small - mean) - mobius| ≤
      |small - mean| + |mobius| := abs_sub_le _ _
  rw [heq, abs_mul] at htri
  norm_num at htri
  linarith

/-- Transfer independently supplied small-prime and actual Möbius bounds
to the signed large-prime correction WITHOUT assuming its desired bound. -/
theorem centered_tail_le_of_independent_bounds
    (small mobius tail mean C D scale : ℝ)
    (h : mobius = small - 2 * tail)
    (hsmall : |small - mean| ≤ C * scale)
    (hmobius : |mobius| ≤ D * scale) :
    |tail - mean / 2| ≤ ((C + D) / 2) * scale := by
  have hcenter := centered_tail_abs_le small mobius tail mean h
  linarith

/-- The same exact signed centering at the actual integer window.
This is the relevant reusable seam for y = log(X+H). -/
theorem centered_window_tail_abs_le
    (X H : ℕ) (f u v : ℕ → ℝ) (mean : ℝ)
    (h : ∀ n ∈ Finset.Ioc X (X + H), f n = u n - 2 * v n) :
    |windowSignedSum v X H - mean / 2| ≤
      (|windowSignedSum u X H - mean| +
        |windowSignedSum f X H|) / 2 := by
  exact centered_tail_abs_le
    (windowSignedSum u X H)
    (windowSignedSum f X H)
    (windowSignedSum v X H) mean
    (window_source_sub_two f u v X H h)

end GRWTSK.NumberTheory.PadicMobiusHighPrimeFixedPower

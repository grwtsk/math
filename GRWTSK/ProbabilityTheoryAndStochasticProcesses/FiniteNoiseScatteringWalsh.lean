/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.FiniteNoiseScatteringClasses
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.CyclicBernoulliComparison

/-!
# Exact return to the original empirical uniform/Bernoulli comparator

The input masses below are the actual rational `empiricalPattern` values,
cast into the new real finite-kernel interface. The full-event supremum is
proved equal to half-L1 on those very masses. Thus the new comparison consumes
the original source correlation energy, rather than a renamed surrogate.

For a cyclic window, the original r/N boundary allowance survives. Scattering
and detector channels are downstream transformations; their reference-law
displacement is retained. No fictitious stochastic output sample is introduced.
The source root inventory, complete Boolean pattern alphabet and all nonempty
Walsh correlations remain unchanged.

Historical dependencies at inspected math main
0cf75805c602fceeb09047af1036a7df54f2baf4:
FiniteWalshBernoulliTV.lean blob 57623c7339c949576e601378f2696b54a47e6475;
CyclicBernoulliComparison.lean blob 043adcaf8d9b46b0d30235b634c5b742f3f8eecc.
The inherited arithmetic correlation supplier is NOT supplied here. The
integer-numerator `Noise.lean` spectral multiplier is not silently identified
with this probabilistic kernel. That normalization bridge remains separate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering.Walsh

open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.WalshEnergy
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.BernoulliTV
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic.CyclicBernoulli

variable {I B : Type*} [Fintype I] [DecidableEq I] [Fintype B]

/-- Source-locked cast of actual empirical masses; no new sample is created. -/
def empiricalReal (roots : Finset ℕ) (x : ℕ → I → Bool) (a : I → Bool) : ℝ :=
  ((empiricalPattern roots (Finset.univ : Finset I) x a : ℚ) : ℝ)

def booleanReference (_ : I → Bool) : ℝ := 1 / (2 : ℝ) ^ Fintype.card I

theorem booleanReference_eq_uniform :
    booleanReference (I := I) = uniform (A := I → Bool) := by
  funext a
  simp [booleanReference, uniform, Fintype.card_fun]

/-- Zero signed mass is inherited from the exact original Walsh source. -/
theorem empirical_zero_mass (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → I → Bool) :
    (∑ a, (empiricalReal roots x a - booleanReference a)) = 0 := by
  classical
  have hc : (2 : ℝ) ^ Fintype.card I ≠ 0 := by positivity
  have hscaled (a : I → Bool) : sourceScaledDefectReal roots hroots x a =
      (2 : ℝ) ^ Fintype.card I * (empiricalReal roots x a - booleanReference a) := by
    unfold sourceScaledDefectReal empiricalReal booleanReference
    push_cast
    field_simp [hc] <;> ring
  have h := sourceScaledDefectReal_sum_zero roots hroots x
  simp_rw [hscaled] at h
  rw [← Finset.mul_sum] at h
  exact (mul_eq_zero.mp h).resolve_left hc

/-- Exact observation identity with the existing all-event comparator. -/
theorem empirical_tv_eq_existing (roots : Finset ℕ) (hroots : 0 < roots.card)
    (x : ℕ → I → Bool) :
    tv (empiricalReal roots x) booleanReference = empiricalVsUniformTV roots hroots x := by
  classical
  calc
    _ = eventSup (empiricalReal roots x) booleanReference :=
      (eventSup_eq_tv _ _ (empirical_zero_mass roots hroots x)).symm
    _ = _ := rfl

/-- The main reusable extension: real output laws after noise/scattering,
using the ORIGINAL empirical full-window correlation energy as input. -/
theorem empirical_noise_scattering_bound (roots : Finset ℕ)
    (hroots : 0 < roots.card) (x : ℕ → I → Bool)
    (K : Kernel (I → Bool) B) (reference : B → ℝ) :
    tv (push K (empiricalReal roots x)) reference ≤
      Real.sqrt (((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ)) / 2 +
        tv (push K booleanReference) reference := by
  have h := tv_reference_le K (empiricalReal roots x) booleanReference reference
  rw [empirical_tv_eq_existing roots hroots x] at h
  exact h.trans (add_le_add_right
    (empiricalVsUniformTV_le_sqrt_momentEnergy roots hroots x) _)

/-- Uniform-preserving noise pays no reference displacement, but does not
supply a bound for the original source correlations. -/
theorem empirical_preserving_bound (roots : Finset ℕ)
    (hroots : 0 < roots.card) (x : ℕ → I → Bool)
    (K : Kernel (I → Bool) (I → Bool))
    (hK : Preserves K booleanReference) :
    tv (push K (empiricalReal roots x)) booleanReference ≤
      Real.sqrt (((nonemptyMomentEnergy roots hroots x : ℚ) : ℝ)) / 2 := by
  change push K booleanReference = booleanReference at hK
  simpa only [hK, tv_self, add_zero] using
    empirical_noise_scattering_bound roots hroots x K booleanReference

/-- Original cyclic seam error, full source energy and channel displacement
are all charged. The finite window is NOT replaced by one-bit marginals. -/
theorem cyclic_noise_scattering_bound (a : ℕ → Bool) (shifts : Finset ℕ)
    (N r : ℕ) (hroots : 0 < (Finset.range N).card)
    (hr : r ≤ N) (hshifts : ∀ h ∈ shifts, h ≤ r)
    (K : Kernel (({h : ℕ // h ∈ shifts}) → Bool) B) (reference : B → ℝ) :
    tv (push K (empiricalReal (Finset.range N) (cyclicSelected a shifts N))) reference ≤
      Real.sqrt (((nonemptyMomentEnergy (Finset.range N) hroots
        (ordinarySelected a shifts) : ℚ) : ℝ)) / 2 + (r : ℝ) / (N : ℝ) +
          tv (push K booleanReference) reference := by
  classical
  have h := tv_reference_le K
    (empiricalReal (Finset.range N) (cyclicSelected a shifts N)) booleanReference reference
  rw [empirical_tv_eq_existing (Finset.range N) hroots (cyclicSelected a shifts N)] at h
  exact h.trans (add_le_add_right
    (cyclicEmpiricalVsUniformTV_le a shifts N r hroots hr hshifts) _)

end GRWTSK.ProbabilityAndMathematicalStatistics.FiniteNoiseScattering.Walsh

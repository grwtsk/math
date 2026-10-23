/-
Copyright (c) 2026 R. A. Jacob Martone. All rights reserved.
Original contributions: MIT (repository LICENSE).
Schwartz cutoff mathematical source: Alex Kontorovich, Terry Tao,
and PrimeNumberTheoremAnd contributors (upstream Apache-2.0).
Maintained Wiener source commit:
127b50e33f6033e2147921167a117af96d9ba4ea.
Formalization assistance: OpenAI ChatGPT.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQuantitativeSchwartzError
import Mathlib.Geometry.Manifold.PartitionOfUnity
import Mathlib.Analysis.Distribution.TemperateGrowth
import Mathlib.Analysis.Distribution.SchwartzSpace.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Actual compact Schwartz cutoffs for Wiener--Ikehara

This module does NOT merely assume compact Schwartz approximants.
It constructs one smooth real cutoff c with
 * c=1 on [-1,1];
 * 0<=c<=1 everywhere;
 * support(c)=(-2,2), hence compact support closure;
then it constructs the actual rescaled functions c_R(x)=c(x/(R+1)).

The pinned smooth Urysohn theorem builds c, and
HasCompactSupport.hasTemperateGrowth supplies actual polynomial
derivative growth at each R. The pinned SchwartzMap.smulLeftCLM then
defines genuine Schwartz truncations g_R=c_R*g. Their support is
compact and for every fixed x they eventually equal g(x) exactly.

This closes CONSTRUCTION, compact support, and pointwise eventual
agreement. It deliberately does NOT claim convergence g_R->g in the
full Schwartz topology merely from pointwise convergence.
The still-independent quantitative obligation is to bound every
Schwartz seminorm of g-g_R, including ALL iterated derivatives,
and show that bound tends to zero as R->infinity.

The separate q=1 Wiener remainder additivity and uniform error
estimate must also be composed before limiting_cor_schwartz.
No new field equivalent to the missing theorem is introduced.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis

open Real Set Filter SchwartzMap

/-- A REAL, genuinely proven pinned smooth Urysohn witness. The
outer interval is open, and the exact inner core is closed. -/
theorem wienerBaseSchwartzCutoff_exists :
    ∃ c : ℝ → ℝ,
      ContDiff ℝ ∞ c ∧
      HasCompactSupport c ∧
      (∀ x : ℝ, 0 ≤ c x ∧ c x ≤ 1) ∧
      (∀ x ∈ Set.Icc (-1 : ℝ) 1, c x = 1) ∧
      Function.support c = Set.Ioo (-2 : ℝ) 2 := by
  have hsubset :
      Set.Icc (-1 : ℝ) 1 ⊆ Set.Ioo (-2 : ℝ) 2 := by
    intro x hx
    exact ⟨by linarith [hx.1], by linarith [hx.2]⟩
  obtain ⟨c, hc, hrange, hsupp, hone⟩ :=
    exists_contMDiff_support_eq_eq_one_iff
      (I := modelWithCornersSelf ℝ ℝ) (n := ∞)
      (s := Set.Ioo (-2 : ℝ) 2)
      (t := Set.Icc (-1 : ℝ) 1)
      isOpen_Ioo isClosed_Icc hsubset
  have hcompact : HasCompactSupport c := by
    apply HasCompactSupport.of_support_subset_isCompact
      (K := Set.Icc (-2 : ℝ) 2) isCompact_Icc
    rw [hsupp]
    exact Set.Ioo_subset_Icc_self
  refine ⟨c, hc.contDiff, hcompact, ?_, ?_, hsupp⟩
  · intro x
    exact hrange (Set.mem_range_self x)
  · intro x hx
    exact (hone x).mp hx

/-- Choose the ACTUAL mathematical witness supplied by the preceding
existence theorem, not an opaque externally assumed cutoff. -/
noncomputable def wienerBaseSchwartzCutoff : ℝ → ℝ :=
  Classical.choose wienerBaseSchwartzCutoff_exists

theorem wienerBaseSchwartzCutoff_smooth :
    ContDiff ℝ ∞ wienerBaseSchwartzCutoff :=
  (Classical.choose_spec wienerBaseSchwartzCutoff_exists).1

theorem wienerBaseSchwartzCutoff_compact :
    HasCompactSupport wienerBaseSchwartzCutoff :=
  (Classical.choose_spec wienerBaseSchwartzCutoff_exists).2.1

theorem wienerBaseSchwartzCutoff_range (x : ℝ) :
    0 ≤ wienerBaseSchwartzCutoff x ∧
      wienerBaseSchwartzCutoff x ≤ 1 :=
  (Classical.choose_spec wienerBaseSchwartzCutoff_exists).2.2.1 x

theorem wienerBaseSchwartzCutoff_core
    {x : ℝ} (hx : x ∈ Set.Icc (-1 : ℝ) 1) :
    wienerBaseSchwartzCutoff x = 1 :=
  (Classical.choose_spec wienerBaseSchwartzCutoff_exists).2.2.2.1 x hx

theorem wienerBaseSchwartzCutoff_support :
    Function.support wienerBaseSchwartzCutoff =
      Set.Ioo (-2 : ℝ) 2 :=
  (Classical.choose_spec wienerBaseSchwartzCutoff_exists).2.2.2.2

/-- Always scale by positive natural R+1: no exceptional R=0
denominator, and no loss of compactness at the initial index. -/
def wienerScaledSchwartzCutoff (R : ℕ) (x : ℝ) : ℝ :=
  wienerBaseSchwartzCutoff (x / ((R + 1 : ℕ) : ℝ))

theorem wienerScaledSchwartzCutoff_smooth (R : ℕ) :
    ContDiff ℝ ∞ (wienerScaledSchwartzCutoff R) := by
  exact wienerBaseSchwartzCutoff_smooth.comp
    (contDiff_id.div_const ((R + 1 : ℕ) : ℝ))

theorem wienerScaledSchwartzCutoff_compact (R : ℕ) :
    HasCompactSupport (wienerScaledSchwartzCutoff R) := by
  have hr : (((R + 1 : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast Nat.succ_ne_zero R
  have h := wienerBaseSchwartzCutoff_compact.comp_smul
    (inv_ne_zero hr)
  simpa only [wienerScaledSchwartzCutoff, div_eq_mul_inv,
    smul_eq_mul, mul_comm] using h

theorem wienerScaledSchwartzCutoff_temperate (R : ℕ) :
    Function.HasTemperateGrowth (wienerScaledSchwartzCutoff R) :=
  (wienerScaledSchwartzCutoff_compact R).hasTemperateGrowth
    (wienerScaledSchwartzCutoff_smooth R)

/-- Compactly supported cutoff in Schwartz space, using the PINNED
continuous linear multiplier by a function of temperate growth.
No unproved compatibility with the Schwartz topology is inserted. -/
def wienerCompactSchwartzTruncation
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) : 𝓢(ℝ, ℂ) :=
  SchwartzMap.smulLeftCLM ℂ (wienerScaledSchwartzCutoff R) g

theorem wienerCompactSchwartzTruncation_apply
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) (x : ℝ) :
    wienerCompactSchwartzTruncation g R x =
      wienerScaledSchwartzCutoff R x • g x := by
  exact SchwartzMap.smulLeftCLM_apply_apply
    (wienerScaledSchwartzCutoff_temperate R) g x

/-- The resulting Schwartz truncation has ACTUAL compact support.
This is stronger than merely saying its pointwise values eventually
agree with g at each fixed x. -/
theorem wienerCompactSchwartzTruncation_compact
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) :
    HasCompactSupport (wienerCompactSchwartzTruncation g R :
      ℝ → ℂ) := by
  have heq :
      (wienerCompactSchwartzTruncation g R : ℝ → ℂ) =
        (wienerScaledSchwartzCutoff R • (g : ℝ → ℂ)) := by
    funext x
    simpa only [Pi.smul_apply'] using
      wienerCompactSchwartzTruncation_apply g R x
  rw [heq]
  exact (wienerScaledSchwartzCutoff_compact R).smul_right

/-- The cutoff is exactly one on the expanding closed core
[-(R+1),R+1]. This is a literal pointwise theorem for every R. -/
theorem wienerScaledSchwartzCutoff_one_on
    (R : ℕ) {x : ℝ}
    (hx : |x| ≤ ((R + 1 : ℕ) : ℝ)) :
    wienerScaledSchwartzCutoff R x = 1 := by
  have hr : (0 : ℝ) < ((R + 1 : ℕ) : ℝ) := by positivity
  have habs := (abs_le.mp hx)
  have hleft :
      (-1 : ℝ) ≤ x / ((R + 1 : ℕ) : ℝ) :=
    (le_div_iff₀ hr).2 (by linarith [habs.1])
  have hright :
      x / ((R + 1 : ℕ) : ℝ) ≤ (1 : ℝ) :=
    (div_le_iff₀ hr).2 (by linarith [habs.2])
  exact wienerBaseSchwartzCutoff_core ⟨hleft, hright⟩

/-- At every fixed x the actual compact truncation eventually
equals the original Schwartz function IDENTICALLY, not merely
approaches it numerically. This does not by itself prove
convergence in the entire Schwartz topology. -/
theorem wienerCompactSchwartzTruncation_eventually_pointwise
    (g : 𝓢(ℝ, ℂ)) (x : ℝ) :
    ∀ᶠ R : ℕ in atTop,
      wienerCompactSchwartzTruncation g R x = g x := by
  filter_upwards [eventually_ge_atTop ⌈|x|⌉₊] with R hR
  have hbound : |x| ≤ ((R + 1 : ℕ) : ℝ) := by
    calc
      |x| ≤ (⌈|x|⌉₊ : ℝ) := Nat.le_ceil _
      _ ≤ (R : ℝ) := by exact_mod_cast hR
      _ ≤ ((R + 1 : ℕ) : ℝ) := by
        exact_mod_cast Nat.le_succ R
  rw [wienerCompactSchwartzTruncation_apply,
    wienerScaledSchwartzCutoff_one_on R hbound]
  exact one_smul ℝ (g x)

/-- Honest weaker consequence: pointwise convergence follows from
the actual eventually-equal theorem. The missing topological
estimate for all iterated Schwartz seminorms is not promoted. -/
theorem wienerCompactSchwartzTruncation_tendsto_pointwise
    (g : 𝓢(ℝ, ℂ)) (x : ℝ) :
    Tendsto (fun R : ℕ =>
      wienerCompactSchwartzTruncation g R x)
      atTop (𝓝 (g x)) :=
  tendsto_nhds_of_eventually_eq
    (wienerCompactSchwartzTruncation_eventually_pointwise g x)

/-- Exact agreement of the Schwartz cutoff and the original test
on the entire CLOSED expanding core, at every finite R. -/
theorem wienerCompactSchwartzTruncation_agrees_on_core
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) {x : ℝ}
    (hx : |x| ≤ ((R + 1 : ℕ) : ℝ)) :
    wienerCompactSchwartzTruncation g R x = g x := by
  rw [wienerCompactSchwartzTruncation_apply,
    wienerScaledSchwartzCutoff_one_on R hx]
  exact one_smul ℝ (g x)

/-- The actual truncation ERROR vanishes identically on the
expanding core. This is the key support input for the remaining
Schwartz weighted-derivative tail estimate. -/
theorem wienerCompactSchwartzTruncation_error_zero_on_core
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) {x : ℝ}
    (hx : |x| ≤ ((R + 1 : ℕ) : ℝ)) :
    (g - wienerCompactSchwartzTruncation g R) x = 0 := by
  change g x - wienerCompactSchwartzTruncation g R x = 0
  rw [wienerCompactSchwartzTruncation_agrees_on_core g R hx]
  exact sub_self _

/-- A quantitative support separation, not just pointwise eventual
agreement: every point of the truncation error support has radius
STRICTLY larger than R+1. -/
theorem wienerCompactSchwartzTruncation_error_support_far
    (g : 𝓢(ℝ, ℂ)) (R : ℕ) :
    Function.support
        (g - wienerCompactSchwartzTruncation g R : ℝ → ℂ) ⊆
      {x : ℝ | ((R + 1 : ℕ) : ℝ) < |x|} := by
  intro x hx
  by_contra hnot
  have hbound : |x| ≤ ((R + 1 : ℕ) : ℝ) :=
    le_of_not_gt hnot
  have hzero :=
    wienerCompactSchwartzTruncation_error_zero_on_core g R hbound
  exact hx hzero

end GRWTSK.RiemannHypothesis

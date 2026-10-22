/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Elementary counterexample formalization assistance: OpenAI.
Mathlib upstream results retain their original attribution and license. -/
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact fixed-form versus growing-shift quantifier obstruction

Owner: grwtsk/math#441; related finite Walsh owner #630 and draft PR #638.
Direct parent head: 28e070b53d87b73f1d765c97de9061350fba28af.

For an abstract rational-valued correlation family, the diagonal spike
  F(N,h) = 1 if N=h*h, 0 otherwise
vanishes EVENTUALLY for each fixed h. More strongly, each fixed h has
an all-horizon bound |F(N,h)| <= (h*h+1)/(N+1), with one COMMON power
exponent 1 but h-dependent constant h*h+1.

Nevertheless, on the growing sublinear window
  N=k*k, 1<=h<=k,
the chosen shift h=k has F(k*k,k)=1 at EVERY positive k.
The seam fraction is k/(k*k)=1/k and tends to zero as k grows.

This shows that pointwise fixed-shift decay, EVEN WITH a common
power-saving exponent, does not logically imply growing-shift uniform
decay. It does not assert that the diagonal spike arises from
Liouville, Moebius, or any multiplicative function. It is a
counterexample to QUANTIFIER EXCHANGE ONLY, not a counterexample to
Chowla's conjecture or any arithmetic theorem.

The source is independent of the existing uncompiled Walsh stack and
the external OpenAI Result 007 theorem/port.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.FixedShiftUniformityObstruction

open scoped BigOperators

/-- A finite, rational-valued diagonal error with a peak exactly
at N=h². This is an abstract family, NOT a Liouville correlation. -/
def squareShiftSpike (N h : ℕ) : ℚ :=
  if N = h * h then 1 else 0

/-- Every fixed shift has no spike past its unique square cutoff. -/
theorem squareShiftSpike_zero_after_square (N h : ℕ)
    (hN : h * h < N) : squareShiftSpike N h = 0 := by
  have hne : N ≠ h * h := Nat.ne_of_gt hN
  simp [squareShiftSpike, hne]

/-- Pointwise fixed-shift eventual cancellation is exact, not just
asymptotic: after h² the abstract correlation is identically zero. -/
theorem squareShiftSpike_fixed_eventually_zero (h : ℕ) :
    ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N → squareShiftSpike N h = 0 := by
  refine ⟨h * h + 1, ?_⟩
  intro N hN
  exact squareShiftSpike_zero_after_square N h (by omega)

/-- At the square cutoff and corresponding growing shift, the
correlation is exactly one. -/
theorem squareShiftSpike_diagonal_peak (k : ℕ) :
    squareShiftSpike (k * k) k = 1 := by
  simp [squareShiftSpike]

/-- Even a COMMON polynomial decay exponent does not rescue
uniformity when the implied constant depends on the shift:
C_h = h²+1 is valid at EVERY N. -/
theorem squareShiftSpike_fixed_power_envelope (N h : ℕ) :
    |squareShiftSpike N h| ≤
      (((h * h + 1 : ℕ) : ℚ) / ((N + 1 : ℕ) : ℚ)) := by
  by_cases hdiag : N = h * h
  · subst N
    have hpos : (0 : ℚ) < ((h * h + 1 : ℕ) : ℚ) := by
      exact_mod_cast Nat.succ_pos (h * h)
    simp [squareShiftSpike, div_self (ne_of_gt hpos)]
  · have hnonneg :
        (0 : ℚ) ≤ (((h * h + 1 : ℕ) : ℚ) / ((N + 1 : ℕ) : ℚ)) := by
      positivity
    simpa [squareShiftSpike, hdiag] using hnonneg

/-- The spike is contained in the natural growing window 1<=h<=k
at the square cutoff N=k², with no boundary/label ambiguity. -/
theorem squareShiftSpike_growing_window_peak (k : ℕ) (hk : 0 < k) :
    ∃ h ∈ Finset.Icc 1 k, squareShiftSpike (k * k) h = 1 := by
  refine ⟨k, Finset.mem_Icc.mpr ⟨hk, le_rfl⟩, ?_⟩
  exact squareShiftSpike_diagonal_peak k

/-- The growing shift is SUBLINEAR relative to the square cutoff:
k/k²=1/k for each positive k. -/
theorem squareShiftSpike_sublinear_ratio (k : ℕ) (hk : 0 < k) :
    (k : ℚ) / ((k * k : ℕ) : ℚ) = 1 / (k : ℚ) := by
  have hkq : (k : ℚ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hk
  simp only [Nat.cast_mul]
  field_simp [hkq]

/-- The finite growing-window quantitative target, with NO hidden
exchange between the N and h quantifiers. -/
def EventuallySmallOnSquareWindow (F : ℕ → ℕ → ℚ)
    (epsilon : ℚ) : Prop :=
  ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
    ∀ h ∈ Finset.Icc 1 k, |F (k * k) h| ≤ epsilon

/-- No threshold below one can uniformly control the diagonal family
on square-root-sized shift windows, however late the horizon begins. -/
theorem squareShiftSpike_not_uniform_on_sublinear_window
    (epsilon : ℚ) (hepsilon : epsilon < 1) :
    ¬ EventuallySmallOnSquareWindow squareShiftSpike epsilon := by
  rintro ⟨K, hK⟩
  let k : ℕ := max 1 K
  have hk : 1 ≤ k := le_max_left 1 K
  have hKk : K ≤ k := le_max_right 1 K
  have hmem : k ∈ Finset.Icc 1 k :=
    Finset.mem_Icc.mpr ⟨hk, le_rfl⟩
  have hbound := hK k hKk k hmem
  have hfalse : (1 : ℚ) ≤ epsilon := by
    simpa [squareShiftSpike] using hbound
  linarith

/-- A concrete REFUTATION of an abstract fixed-form-to-growing-shift
power-saving implication. The antecedent has one shared exponent 1;
only its constants vary with the individual fixed form. -/
theorem fixed_power_saving_does_not_imply_sublinear_uniformity :
    ¬ (∀ F : ℕ → ℕ → ℚ,
      (∀ N h : ℕ,
        |F N h| ≤ (((h * h + 1 : ℕ) : ℚ) / ((N + 1 : ℕ) : ℚ))) →
      EventuallySmallOnSquareWindow F (1 / 2 : ℚ)) := by
  intro himp
  have huniform :=
    himp squareShiftSpike squareShiftSpike_fixed_power_envelope
  exact (squareShiftSpike_not_uniform_on_sublinear_window
    (1 / 2 : ℚ) (by norm_num)) huniform

end GRWTSK.NumberTheory.FixedShiftUniformityObstruction

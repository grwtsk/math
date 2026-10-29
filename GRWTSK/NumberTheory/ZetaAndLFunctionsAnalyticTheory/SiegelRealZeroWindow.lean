/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source statements:
  OpenAI, "Uniform exclusion of Landau–Siegel zeros" (October 1, 2026),
  and "The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8"
  (September 30, 2026), openai/math at
  1581d4cbdd69a0faf34b2089614fe2a814316a6a.
Original OpenAI manuscripts and Lean source are independent upstream work;
no OAI theorem or external proof is imported into this file.
-/
import Mathlib

/-!
# Uniform Siegel gaps and bounded-conductor zero-free windows

The two upstream analytic claims below are represented as distinct
PROPOSITIONS, not as axioms or locally established analytic facts.

* `HasDirichletSevenEighthsZeroFree`: the exact pole-excluded statement
  for all Dirichlet characters and all moduli of positive size.
* `HasUniformRealZeroGap`: the exact primitive/nonprincipal/real-character,
  real-zero, absolute-constant statement from the Siegel source.

The strongest new mathematical comparison shows that the first
proposition implies the second with the *explicit* constant
`Real.log 3 / 8`, because q >= 3 and every real zero is then <= 7/8.

The independent equivalence between a single modulus-wise logarithmic
gap and common zero-free windows for all conductors q <= Q is useful to
connect the exact analytic source to finite-parameter verification tasks.
None of these lemmas proves either analytic proposition, any form of RH,
or a Farey character-channel reconstruction.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SiegelRealZeroWindow

/-- Source-level Dirichlet seven-eighths zero-free proposition.

The only exceptional case omitted is the principal-character pole at s=1.
This is a supplied analytic premise, NOT a proof of a zero-free region. -/
def HasDirichletSevenEighthsZeroFree : Prop :=
  ∀ (q : ℕ) [NeZero q],
    ∀ (χ : DirichletCharacter ℂ q) (s : ℂ),
      (7 / 8 : ℝ) < s.re →
      ¬ (χ = 1 ∧ s = 1) →
      χ.LFunction s ≠ 0

/-- Source-level uniform Landau–Siegel real-zero-gap proposition.
One absolute c is chosen *before* all conductors, characters and zeros.
Both even and odd primitive nonprincipal real-valued characters are allowed.
No numerical value of c is assumed. -/
def HasUniformRealZeroGap : Prop :=
  ∃ c : ℝ, 0 < c ∧
    ∀ (q : ℕ) [NeZero q], 3 ≤ q →
      ∀ χ : DirichletCharacter ℂ q,
        χ.IsPrimitive → χ ≠ 1 →
        (∀ a : ZMod q, (χ a).im = 0) →
        ∀ β : ℝ, 0 < β → β < 1 →
          χ.LFunction (β : ℂ) = 0 →
          c ≤ (1 - β) * Real.log (q : ℝ)

/-- Common *conductor-bounded* real-zero-free windows.

The same positive c works for every Q >= 3 and every primitive,
nonprincipal real character whose conductor 3 <= q <= Q.
Nothing is asserted about nonreal zeros or omitted character classes. -/
def HasUniformBoundedConductorWindow : Prop :=
  ∃ c : ℝ, 0 < c ∧
    ∀ (Q : ℕ), 3 ≤ Q →
      ∀ (q : ℕ) [NeZero q], 3 ≤ q → q ≤ Q →
        ∀ χ : DirichletCharacter ℂ q,
          χ.IsPrimitive → χ ≠ 1 →
          (∀ a : ZMod q, (χ a).im = 0) →
          ∀ β : ℝ, 0 < β → β < 1 →
            1 - c / Real.log (Q : ℝ) < β →
            χ.LFunction (β : ℂ) ≠ 0

/-- Comparison with the stronger upstream Dirichlet 7/8 source.

The supplied half-plane nonvanishing hypothesis gives an EXPLICIT
absolute Siegel constant log(3)/8. This does not assert that the
upstream 7/8 theorem has been independently kernel-accepted. -/
theorem sevenEighths_implies_explicit_real_zero_gap
    (hSeven : HasDirichletSevenEighthsZeroFree)
    (q : ℕ) [NeZero q] (hq : 3 ≤ q)
    (χ : DirichletCharacter ℂ q)
    (_hPrimitive : χ.IsPrimitive) (hNonprincipal : χ ≠ 1)
    (_hReal : ∀ a : ZMod q, (χ a).im = 0)
    (β : ℝ) (_hβpos : 0 < β) (_hβlt : β < 1)
    (hZero : χ.LFunction (β : ℂ) = 0) :
    Real.log (3 : ℝ) / 8 ≤ (1 - β) * Real.log (q : ℝ) := by
  have hβupper : β ≤ (7 / 8 : ℝ) := by
    by_contra hnot
    have hβgt : (7 / 8 : ℝ) < β := lt_of_not_ge hnot
    have hpoint : (7 / 8 : ℝ) < (β : ℂ).re := by
      simpa using hβgt
    have hpole : ¬ (χ = 1 ∧ (β : ℂ) = 1) := by
      intro h
      exact hNonprincipal h.1
    exact (hSeven q χ (β : ℂ) hpoint hpole) hZero
  have hdelta : (1 / 8 : ℝ) ≤ 1 - β := by
    linarith
  have hqcast : (3 : ℝ) ≤ (q : ℝ) := by
    exact_mod_cast hq
  have hlogBound : Real.log (3 : ℝ) ≤ Real.log (q : ℝ) :=
    Real.log_le_log (by norm_num) hqcast
  have hlogPos : 0 ≤ Real.log (q : ℝ) :=
    (Real.log_pos (by norm_num : (1 : ℝ) < 3)).le.trans hlogBound
  calc
    Real.log (3 : ℝ) / 8 =
        (1 / 8 : ℝ) * Real.log (3 : ℝ) := by ring
    _ ≤ (1 / 8 : ℝ) * Real.log (q : ℝ) :=
      mul_le_mul_of_nonneg_left hlogBound (by norm_num)
    _ ≤ (1 - β) * Real.log (q : ℝ) :=
      mul_le_mul_of_nonneg_right hdelta hlogPos

/-- The 7/8 nonvanishing source, IF PROVED, supplies the real-zero-gap
source with a witness that does not depend on q, character, or beta. -/
theorem sevenEighths_implies_uniform_real_zero_gap
    (hSeven : HasDirichletSevenEighthsZeroFree) :
    HasUniformRealZeroGap := by
  refine ⟨Real.log (3 : ℝ) / 8, ?_, ?_⟩
  · exact div_pos (Real.log_pos (by norm_num : (1 : ℝ) < 3)) (by norm_num)
  · intro q _ hq χ hPrimitive hNonprincipal hReal β hβpos hβlt hZero
    exact sevenEighths_implies_explicit_real_zero_gap
      hSeven q hq χ hPrimitive hNonprincipal hReal
      β hβpos hβlt hZero

/-- A modulus-wise Siegel gap gives a common zero-free window for
ALL primitive real characters with conductors between 3 and Q.

The logarithm denominator is positive since Q >= 3. -/
theorem uniform_gap_implies_bounded_conductor_window
    (hGap : HasUniformRealZeroGap) :
    HasUniformBoundedConductorWindow := by
  obtain ⟨c, hc, hBound⟩ := hGap
  refine ⟨c, hc, ?_⟩
  intro Q hQ q _ hq hqQ χ hPrimitive hNonprincipal hReal β hβpos hβlt hWindow
  have hqPos : (0 : ℝ) < (q : ℝ) := by
    have hp : 0 < q := lt_of_lt_of_le (by norm_num : 0 < 3) hq
    exact_mod_cast hp
  have hQgt : (1 : ℝ) < (Q : ℝ) := by
    have hQ' : 1 < Q := lt_of_lt_of_le (by norm_num : 1 < 3) hQ
    exact_mod_cast hQ'
  have hlogQ : 0 < Real.log (Q : ℝ) := Real.log_pos hQgt
  have hqQcast : (q : ℝ) ≤ (Q : ℝ) := by
    exact_mod_cast hqQ
  have hlogle : Real.log (q : ℝ) ≤ Real.log (Q : ℝ) :=
    Real.log_le_log hqPos hqQcast
  intro hZero
  have hsource : c ≤ (1 - β) * Real.log (q : ℝ) :=
    hBound q hq χ hPrimitive hNonprincipal hReal
      β hβpos hβlt hZero
  have hdelta : 0 ≤ 1 - β := sub_nonneg.mpr hβlt.le
  have hshared : c ≤ (1 - β) * Real.log (Q : ℝ) :=
    le_trans hsource (mul_le_mul_of_nonneg_left hlogle hdelta)
  have hfraction : c / Real.log (Q : ℝ) ≤ 1 - β :=
    (div_le_iff₀ hlogQ).2 hshared
  linarith

/-- Conversely, apply the all-conductor window at Q=q.
Thus the window formulation is genuinely equivalent to the source
absolute-gap formulation, rather than merely a weaker consequence. -/
theorem bounded_conductor_window_implies_uniform_gap
    (hWindow : HasUniformBoundedConductorWindow) :
    HasUniformRealZeroGap := by
  obtain ⟨c, hc, hZeroFree⟩ := hWindow
  refine ⟨c, hc, ?_⟩
  intro q _ hq χ hPrimitive hNonprincipal hReal β hβpos hβlt hZero
  have hqgt : (1 : ℝ) < (q : ℝ) := by
    have hq' : 1 < q := lt_of_lt_of_le (by norm_num : 1 < 3) hq
    exact_mod_cast hq'
  have hlogq : 0 < Real.log (q : ℝ) := Real.log_pos hqgt
  by_contra hnot
  have hlt : (1 - β) * Real.log (q : ℝ) < c :=
    lt_of_not_ge hnot
  have hwindow : 1 - c / Real.log (q : ℝ) < β := by
    have hdelta : 1 - β < c / Real.log (q : ℝ) :=
      (lt_div_iff₀ hlogq).2 hlt
    linarith
  exact (hZeroFree q hq q hq (le_refl q)
    χ hPrimitive hNonprincipal hReal
    β hβpos hβlt hwindow) hZero

/-- Exact statement alignment: conductor-uniform real-zero windows
are equivalent to the non-explicit Siegel gap as source propositions. -/
theorem uniform_gap_iff_bounded_conductor_window :
    HasUniformRealZeroGap ↔ HasUniformBoundedConductorWindow :=
  ⟨uniform_gap_implies_bounded_conductor_window,
    bounded_conductor_window_implies_uniform_gap⟩

/-- Full logical chain from the stronger Dirichlet 7/8 source
to a common real-zero exclusion window at every conductor cap. -/
theorem sevenEighths_implies_bounded_conductor_window
    (hSeven : HasDirichletSevenEighthsZeroFree) :
    HasUniformBoundedConductorWindow :=
  uniform_gap_implies_bounded_conductor_window
    (sevenEighths_implies_uniform_real_zero_gap hSeven)

end GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.SiegelRealZeroWindow

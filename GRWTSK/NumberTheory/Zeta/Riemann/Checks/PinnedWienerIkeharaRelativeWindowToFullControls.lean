/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerIkeharaRelativeWindowToFull
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedWienerIkeharaRelativeWindowToFullControls

open GRWTSK.RiemannHypothesis Filter Finset

/-- Replay the exact finite left-closed, right-open cutoff partition. -/
theorem literal_range_partition
    (f : ℕ → ℝ) {k N : ℕ} (hk : k ≤ N) :
    (∑ n ∈ Finset.range N, f n) =
      (∑ n ∈ Finset.range k, f n) +
      (∑ n ∈ Finset.Ico k N, f n) :=
  tauberian_relative_window_exact_partition f hk

/-- The early-prefix estimate uses the SAME fixed Chebyshev budget C
before quantifying over the cutoff and stage. -/
theorem omitted_prefix_bound
    (f : ℕ → ℝ) (C : ℝ)
    (hC : 0 ≤ C)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    {k N : ℕ} (hN : 0 < N) :
    (∑ n ∈ Finset.range k, f n) / (N : ℝ) ≤
      C * ((k : ℝ) / (N : ℝ)) :=
  tauberian_omitted_prefix_le f C hC hprefix hN

/-- Replay the genuine quantified Tauberian theorem, WITHOUT proving its
separate input family of relative-window limits. -/
theorem actual_generic_dewindowing
    (f : ℕ → ℝ) (A C : ℝ)
    (hC : 0 ≤ C)
    (hf : ∀ n : ℕ, 0 ≤ f n)
    (hprefix : ∀ N : ℕ,
      (∑ n ∈ Finset.range N, f n) ≤ C * (N : ℝ))
    (hwindows : TauberianRelativeWindowLimits f A) :
    Tendsto
      (fun N : ℕ => (∑ n ∈ Finset.range N, f n) / (N : ℝ))
      atTop (nhds A) :=
  tauberian_relativeWindows_to_fullCumulative
    f A C hC hf hprefix hwindows

/-- A hostile condition: zero coefficients cannot be presented as
relative-window limits with a false nonzero target. -/
theorem zero_sequence_rejects_unit_windowLimit :
    ¬ TauberianRelativeWindowLimits (fun _ : ℕ => (0 : ℝ)) 1 := by
  intro h
  have hhalf := h ((1 : ℝ) / 2) (by norm_num) (by norm_num)
  have hone :
      Tendsto (fun _ : ℕ => (0 : ℝ))
        atTop (nhds ((1 : ℝ) / 2)) := by
    simpa using hhalf
  have hzero :
      Tendsto (fun _ : ℕ => (0 : ℝ))
        atTop (nhds (0 : ℝ)) :=
    tendsto_const_nhds
  have hfalse : ((1 : ℝ) / 2) = 0 :=
    tendsto_nhds_unique hone hzero
  norm_num at hfalse

/-- The actual pinned Λ conclusion still CONSUMES the independent
interval theorem, never a source/metadata assertion. -/
theorem actual_lambda_dewindowing
    (hwindows : PinnedVonMangoldtRelativeIntervalLimits) :
    Tendsto
      (fun N : ℕ =>
        pinnedVonMangoldtRangeSum N / (N : ℝ))
      atTop (nhds (1 : ℝ)) :=
  pinnedVonMangoldtWeakPNT_of_intervalLimits hwindows

/-- Precise historical input still absent locally.
All these are source obligations, not hidden proof constructors. -/
def remainingIntervalWienerIkeharaObligations : List String :=
  ["prove or port genuine WienerIkeharaInterval_discrete' relative interval theorem",
   "keep exact [ceil(delta*N), N) finite window and residue normalization",
   "replay the generic epsilon dewindowing proof against exact pinned Mathlib",
   "verify q=1 analytic inputs and the historical Fourier smoothness closure",
   "obtain an accepted #100 kernel/axiom receipt for the complete stack",
   "keep the negative fixed integer-psi capacity audit separate from RH"]

/-- Hostile gates; these strings do not create theorem evidence.
A single fixed delta may suffice via a different iterative contraction,
but is NOT the input proved or assumed by this particular theorem. -/
def prohibitedPromotions : List String :=
  ["one relative window at a finite N -> full limit without any atTop theorem",
   "ceiling cutoff <= N for EVERY N without the eventual bound",
   "Ico turned into Icc or a floor cutoff without a boundary proof",
   "Chebyshev growth bound alone -> interval convergence",
   "continuity of pole-subtracted auxiliary alone -> window limits without Wiener-Ikehara",
   "a source-defined interval-limit proposition -> an inhabitant of that proposition",
   "zero coefficients plus target A=1 -> legitimate interval-limit source",
   "local dewindowing proof -> imported old-version Fourier Tauberian theorem",
   "conditional WeakPNT -> unconditional PNT or RH",
   "source draft -> kernel accepted without exact-head Lean/Lake replay"]

end GRWTSK.RiemannHypothesis.Checks.PinnedWienerIkeharaRelativeWindowToFullControls

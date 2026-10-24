# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.FiniteCubicZetaApproximation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46ddd85c851d0748432a29612e952f385ce02433` · SHA-256 `2b2724d20e5494da9b9af5b1f35ebcb1f8a5084730622443aac3def379e374e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaIdentity

set_option autoImplicit false

/-!
# Finite Euler--Maclaurin approximants of the actual zeta source

N terms at 1,...,N and the terminal point L=N+1 are kept distinct. The
independently specified analytic tail is the omitted cubic cell remainder,
not an error defined by subtracting a desired zeta value. The finite slope
is differentiated explicitly; no derivative of a magnitude inequality is used.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation

open Set Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.Complex.IntervalMellinKernel
open CubicPowerSummation CubicRemainder CubicRemainderHolomorphic CubicZetaIdentity

noncomputable section

def cutoff (N : ℕ) : ℝ := (N : ℝ) + 1

def terminalFactor (N : ℕ) (s : ℂ) : ℂ :=
  (cutoff N : ℂ) / (s - 1) + 1 / 2 + s / (12 * (cutoff N : ℂ))

def terminalSlope (N : ℕ) (s : ℂ) : ℂ :=
  -(cutoff N : ℂ) / (s - 1) ^ 2 + 1 / (12 * (cutoff N : ℂ))

/-- A finite formula only; its terminal correction is not an omitted-tail certificate. -/
def approximation (N : ℕ) (s : ℂ) : ℂ :=
  (∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-s)) +
    terminalFactor N s * logPower (cutoff N) (-s)

/-- The minus logarithm, rational-factor derivative and terminal powers all remain. -/
def approximationSlope (N : ℕ) (s : ℂ) : ℂ :=
  (∑ i : Fin N, -(Real.log ((i.1 : ℝ) + 1) : ℂ) *
    logPower ((i.1 : ℝ) + 1) (-s)) +
    (terminalSlope N s * logPower (cutoff N) (-s) +
      terminalFactor N s * (-(Real.log (cutoff N) : ℂ) * logPower (cutoff N) (-s)))

/-- The same independently defined cell prefix as in CubicRemainder. -/
def cellPrefix (N : ℕ) (s : ℂ) : ℂ :=
  ∑ k ∈ Finset.range N, cellRemainder ((k : ℝ) + 1) (-s)

def analyticTail (N : ℕ) (s : ℂ) : ℂ :=
  -(s * (s + 1) * (s + 2)) * (cubicRemainder s - cellPrefix N s)

theorem cutoff_pos (N : ℕ) : 0 < cutoff N := by unfold cutoff; positivity

/-- Parameter differentiation is entire even before using positivity of the base. -/
theorem hasDerivAt_negative_power (t : ℝ) (s : ℂ) :
    HasDerivAt (fun w : ℂ => logPower t (-w))
      (-(Real.log t : ℂ) * logPower t (-s)) s := by
  have h := (((hasDerivAt_id s).neg).mul_const (Real.log t : ℂ)).cexp
  simpa [logPower, mul_comm, mul_left_comm, mul_assoc] using h

theorem hasDerivAt_terminalFactor (N : ℕ) (s : ℂ) (hs : s ≠ 1) :
    HasDerivAt (terminalFactor N) (terminalSlope N s) s := by
  have hd := (((hasDerivAt_const s (cutoff N : ℂ)).div
    ((hasDerivAt_id s).sub_const 1) (sub_ne_zero.mpr hs)).add_const (1 / 2)).add
      ((hasDerivAt_id s).div_const (12 * (cutoff N : ℂ)))
  convert hd using 1 <;> (try rfl) <;> (try dsimp [terminalFactor, terminalSlope]) <;> ring

theorem hasDerivAt_approximation (N : ℕ) (s : ℂ) (hs : s ≠ 1) :
    HasDerivAt (approximation N) (approximationSlope N s) s := by
  have hp := HasDerivAt.fun_sum (fun i (_ : i ∈ (Finset.univ : Finset (Fin N))) =>
    hasDerivAt_negative_power ((i.1 : ℝ) + 1) s)
  exact hp.add ((hasDerivAt_terminalFactor N s hs).mul
    (hasDerivAt_negative_power (cutoff N) s))

/-- Positive-axis normalization at the two shifted terminal powers. -/
theorem terminal_power_identities (t : ℝ) (ht : 0 < t) (s : ℂ) :
    logPower t (1 - s) = (t : ℂ) * logPower t (-s) ∧
      logPower t (-s - 1) = logPower t (-s) / (t : ℂ) := by
  have he : Complex.exp (Real.log t : ℂ) = (t : ℂ) := by
    rw [← Complex.ofReal_exp, Real.exp_log ht]
  constructor
  · unfold logPower
    rw [show (1 - s) * (Real.log t : ℂ) =
      (Real.log t : ℂ) + (-s) * (Real.log t : ℂ) by ring, Complex.exp_add, he]
  · unfold logPower
    rw [show (-s - 1) * (Real.log t : ℂ) =
      (-s) * (Real.log t : ℂ) - (Real.log t : ℂ) by ring, Complex.exp_sub, he]

/-- Exact actual-source identity, including the sign of the COMPLETE omitted cells. -/
theorem zeta_sub_approximation (N : ℕ) (s : ℂ) (hσ : -2 < s.re) (hs : s ≠ 1) :
    riemannZeta s - approximation N s = analyticTail N s := by
  have hfinite := finite_zeta_telescope s hs N
  have hsource := zeta_eq_cubic s hσ hs
  have ht := terminal_power_identities (cutoff N) (cutoff_pos N) s
  change (∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s)) =
    (1 - logPower (cutoff N) (1 - s)) / (s - 1) +
    (1 - logPower (cutoff N) (-s)) / 2 +
    s * (1 - logPower (cutoff N) (-s - 1)) / 12 -
    s * (s + 1) * (s + 2) * cellPrefix N s at hfinite
  rw [ht.1, ht.2] at hfinite
  unfold approximation
  have hsum : (∑ i : Fin N, logPower ((i.1 : ℝ) + 1) (-s)) =
      ∑ k ∈ Finset.range N, logPower ((k : ℝ) + 1) (-s) :=
    Fin.sum_univ_eq_sum_range (fun k => logPower ((k : ℝ) + 1) (-s)) N
  rw [hsum, hfinite, hsource]
  unfold terminalFactor analyticTail
  have hL : (cutoff N : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr (cutoff_pos N).ne'
  field_simp [sub_ne_zero.mpr hs, hL]
  <;> ring

/-- Finite prefixes are entire in the complex parameter. -/
theorem analyticAt_cellPrefix (N : ℕ) (s : ℂ) : AnalyticAt ℂ (cellPrefix N) s := by
  induction N with
  | zero =>
      have he : cellPrefix 0 = fun _ : ℂ => (0 : ℂ) := by funext w; simp [cellPrefix]
      rw [he]
      exact analyticAt_const
  | succ N ih =>
      have he : cellPrefix (N + 1) = fun w =>
          cellPrefix N w + cellRemainder ((N : ℝ) + 1) (-w) := by
        funext w
        simp [cellPrefix, Finset.sum_range_succ]
      rw [he]
      exact ih.add ((differentiable_cell ((N : ℝ) + 1) (by have h := Nat.cast_nonneg (α := ℝ) N; linarith)).analyticAt s)

/-- The tail itself is analytic at one; only restoration of raw zeta excludes the pole. -/
theorem analyticAt_analyticTail (N : ℕ) (s : ℂ) (hs : -2 < s.re) :
    AnalyticAt ℂ (analyticTail N) s := by
  have hR := (analyticOnNhd_cubicRemainder s hs).sub (analyticAt_cellPrefix N s)
  exact (((analyticAt_id.mul (analyticAt_id.add analyticAt_const)).mul
    (analyticAt_id.add analyticAt_const)).neg).mul hR

/-- Differentiate a LOCAL IDENTITY, not a pointwise norm bound. -/
theorem slope_defect_eq_deriv_tail (N : ℕ) (c : ℂ) (hσ : -2 < c.re) (hc : c ≠ 1) :
    deriv riemannZeta c - approximationSlope N c = deriv (analyticTail N) c := by
  have he : (fun s => riemannZeta s - approximation N s) =ᶠ[𝓝 c] analyticTail N := by
    filter_upwards [(isOpen_lt continuous_const Complex.continuous_re).mem_nhds hσ,
      isOpen_compl_singleton.mem_nhds hc] with s hs hne
    exact zeta_sub_approximation N s hs hne
  have hd := ((analyticOn_riemannZeta c hc).differentiableAt.hasDerivAt).sub
    (hasDerivAt_approximation N c hc)
  exact (hd.congr_of_eventuallyEq he.symm).deriv.symm

end
end GRWTSK.RiemannHypothesis.FiniteCubicZetaApproximation
```

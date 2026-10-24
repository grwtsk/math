# Complete source: GRWTSK.NumberTheory.TruncatedMoebiusSeries.Variant00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7ffcc08f55d70580d8cbb58abde2c8de1a93e2f9` · SHA-256 `00a7544b908c5cd9f3a7d710014a47a2b9a9dd806553d92f66423bac00034d22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain upstream authorship and Apache-2.0 licensing. -/
import GRWTSK.NumberTheory.FunctionFieldArithmetic.ComplexMoebiusCast
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.Linearity

/-!
# Dirichlet transform of complete truncated Mobius coefficients

Human mathematical direction: grwtsk contributors.
Formal recovery: OpenAI Codex. 
All ordered factors and squareful outputs are retained. No growth witness.
-/
namespace GRWTSK.NumberTheory.LSeries
open GRWTSK.NumberTheory.ArithmeticFunctions
open scoped ArithmeticFunction.Moebius ArithmeticFunction.zeta

/-- The Dirichlet polynomial of the actual closed cutoff. -/
noncomputable def closedMoebiusSeries (U : ℕ) (s : ℂ) : ℂ :=
  LSeries (closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) s

/-- The complete integer high-factor coefficients, coerced to complex values. -/
noncomputable def highMoebiusSeries (U : ℕ) (s : ℂ) : ℂ :=
  LSeries (fun n => (highMoebiusCoefficient U n : ℂ)) s

/-- The actual closed cutoff is absolutely summable on the initial half-plane. -/
theorem closed_moebius_summable (U : ℕ) {s : ℂ} (hs : 1 < s.re) :
    LSeriesSummable (closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) s := by
  apply LSeriesSummable_of_bounded_of_one_lt_re (m := 1) _ hs
  intro n hn
  change ‖(if n ≤ U then (μ n : ℂ) else 0)‖ ≤ 1
  split_ifs
  · norm_cast
    exact ArithmeticFunction.abs_moebius_le_one
  · simp

/-- Complete source recognition, before any continuation or contour shift. -/
theorem high_moebius_series_initial (U : ℕ) {s : ℂ} (hs : 1 < s.re) :
    highMoebiusSeries U s =
      (LSeries (μ : ArithmeticFunction ℂ) s - closedMoebiusSeries U s) ^ 2 *
        riemannZeta s := by
  let g : ArithmeticFunction ℂ := closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U
  let h : ArithmeticFunction ℂ := (μ : ArithmeticFunction ℂ) - g
  have hg : LSeriesSummable (g : ℕ → ℂ) s := closed_moebius_summable U hs
  have hm : LSeriesSummable (μ : ArithmeticFunction ℂ) s :=
    ArithmeticFunction.LSeriesSummable_moebius_iff.mpr hs
  have hz : LSeriesSummable (ζ : ArithmeticFunction ℂ) s :=
    ArithmeticFunction.LSeriesSummable_zeta_iff.mpr hs
  have hzeta : LSeries (ζ : ArithmeticFunction ℂ) s = riemannZeta s := by
    change LSeries (fun n => ((ζ : ArithmeticFunction ℕ) n : ℂ)) s = riemannZeta s
    exact ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs
  have hh : LSeriesSummable (h : ℕ → ℂ) s := LSeriesSummable.sub hm hg
  have hsub : LSeries (h : ℕ → ℂ) s =
      LSeries (μ : ArithmeticFunction ℂ) s - LSeries (g : ℕ → ℂ) s :=
    LSeries_sub hm hg
  calc
    highMoebiusSeries U s =
        LSeries (fun n => (h * h * (ζ : ArithmeticFunction ℂ)) n) s := by
      exact congrArg (fun f : ℕ → ℂ => LSeries f s) (high_moebius_complex_function U)
    _ = LSeries (fun n => (h * h) n) s * LSeries (ζ : ArithmeticFunction ℂ) s :=
      ArithmeticFunction.LSeries_mul' (f := h * h) (g := (ζ : ArithmeticFunction ℂ))
        (ArithmeticFunction.LSeriesSummable_mul hh hh) hz
    _ = (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) * riemannZeta s := by
      calc
        _ = (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) *
            LSeries (ζ : ArithmeticFunction ℂ) s :=
          congrArg (fun a : ℂ => a * LSeries (ζ : ArithmeticFunction ℂ) s)
            (ArithmeticFunction.LSeries_mul' (f := h) (g := h) hh hh)
        _ = _ := congrArg (fun a : ℂ =>
          (LSeries (h : ℕ → ℂ) s * LSeries (h : ℕ → ℂ) s) * a) hzeta
    _ = (LSeries (μ : ArithmeticFunction ℂ) s - closedMoebiusSeries U s) ^ 2 *
        riemannZeta s := by
      rw [hsub]
      simp only [closedMoebiusSeries, g, pow_two]

/-- The actual inverse gives the exact meromorphic expression on Re(s)>1. -/
theorem high_moebius_series_reciprocal (U : ℕ) {s : ℂ} (hs : 1 < s.re) :
    highMoebiusSeries U s = (riemannZeta s)⁻¹ - 2 * closedMoebiusSeries U s +
      riemannZeta s * closedMoebiusSeries U s ^ 2 := by
  have hz : riemannZeta s ≠ 0 := riemannZeta_ne_zero_of_one_lt_re hs
  have hm : LSeries (μ : ArithmeticFunction ℂ) s = (riemannZeta s)⁻¹ := by
    have hi : riemannZeta s * LSeries (μ : ArithmeticFunction ℂ) s = 1 := by
      rw [← ArithmeticFunction.LSeries_zeta_eq_riemannZeta hs]
      exact ArithmeticFunction.LSeries_zeta_mul_Lseries_moebius hs
    calc
      LSeries (μ : ArithmeticFunction ℂ) s =
          (riemannZeta s)⁻¹ * (riemannZeta s * LSeries (μ : ArithmeticFunction ℂ) s) := by
        rw [← mul_assoc, inv_mul_cancel₀ hz, one_mul]
      _ = (riemannZeta s)⁻¹ := by rw [hi, mul_one]
  rw [high_moebius_series_initial U hs, hm]
  field_simp
  ring

end GRWTSK.NumberTheory.LSeries
```

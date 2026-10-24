# Complete source: GRWTSK.NumberTheory.SourceActualEulerPotentialZetaPhaseNative01.Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5391ff3c91e706f99dc381289d18afeb0837ab8` · SHA-256 `d538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualEulerPotentialPhase
import Mathlib.NumberTheory.EulerProduct.DirichletLSeries

/-!
The authentic absolutely convergent full Mangoldt logarithmic potential on Re s>1.
Its genuine Euler-product exponential and a fixed actual c=4 phase test are right-line
arithmetic diagnostics. No critical continuation, retained-bulk cap, or RH claim.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualEulerPotentialZetaPhase
open Complex Filter
open SourceActualEulerLogarithmicPrimitive SourceActualEulerPotentialPhase
noncomputable section

private def coeff (n : ℕ) : ℂ :=
  ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ)

private theorem coeff_norm_le (n : ℕ) : ‖coeff n‖ ≤ 1 := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp [coeff]
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [coeff]
  have hn2 : 2 ≤ n := by omega
  have hl : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn2)
  rw [coeff, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (div_nonneg ArithmeticFunction.vonMangoldt_nonneg hl.le)]
  exact (div_le_one hl).mpr ArithmeticFunction.vonMangoldt_le_log

/-- Literal full actual logarithmic coefficient L-series, not a transform defined by a target. -/
def actualFullPrimeLogPotential (s : ℂ) : ℂ := LSeries coeff s

/-- Genuine absolute convergence of the actual full coefficient series. -/
theorem actualFullPrimeLogPotential_summable (s : ℂ) (hs : 1 < s.re) :
    LSeriesSummable coeff s :=
  LSeriesSummable_of_bounded_of_one_lt_re (fun n _ => coeff_norm_le n) hs

/-- Authentic Euler product: no choice of a principal complex logarithm is asserted. -/
theorem actualFullPrimeLogPotential_exp_eq_zeta (s : ℂ) (hs : 1 < s.re) :
    Complex.exp (actualFullPrimeLogPotential s) = riemannZeta s := by
  have h := LogDirichlet.riemannZeta_eq_exp_LSeries hs
  convert! h using 1
  unfold actualFullPrimeLogPotential coeff
  congr 1
  funext n
  push_cast
  rfl

private theorem term_eq_exp (n : ℕ) (s : ℂ) :
    LSeries.term coeff s n = coeff n * Complex.exp (-s*(Real.log n:ℂ)) := by
  rcases eq_or_ne n 0 with rfl | hn
  · simp [coeff]
  have hp : 0 < (n:ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
  have hlog : Complex.log (n:ℂ) = (Real.log (n:ℝ):ℂ) :=
    (Complex.ofReal_log hp.le).symm
  rw [hlog]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  ring

/-- Closed actual prefixes converge as EVERY REAL radius tends to infinity. -/
theorem actualClosedPrimeLogPotential_tendsto_full (s : ℂ) (hs : 1 < s.re) :
    Tendsto (fun A : ℝ => actualClosedPrimeLogPotential A s) atTop
      (𝓝 (actualFullPrimeLogPotential s)) := by
  have h := (actualFullPrimeLogPotential_summable s hs).hasSum.tendsto_sum_nat
  have he : Tendsto (fun A : ℝ => Real.exp (2*A)) atTop atTop :=
    Real.tendsto_exp_atTop.comp (tendsto_id.const_mul_atTop (by norm_num : 0 < (2:ℝ)))
  have hn : Tendsto (fun A : ℝ => ⌊Real.exp (2*A)⌋₊+1) atTop atTop :=
    (tendsto_add_atTop_nat 1).comp (Nat.tendsto_floor_atTop.comp he)
  convert! h.comp hn using 1
  funext A
  simp only [actualClosedPrimeLogPotential, actualFullPrimeLogPotential,
    term_eq_exp, coeff]

/-- The actual full Euler potential has a strictly negative real phase at this fixed right-line point. -/
theorem actualFullPrimeLogPotential_re_negative :
    (actualFullPrimeLogPotential ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)).re ≤ -1/48 := by
  have hs : 1 < ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I).re := by norm_num
  have ht := Complex.continuous_re.continuousAt.tendsto.comp
    (actualClosedPrimeLogPotential_tendsto_full _ hs)
  exact le_of_tendsto ht (by
    filter_upwards [eventually_ge_atTop (1:ℝ)] with A hA
    exact actualClosedPrimeLogPotential_re_negative_right_line A hA)

/-- Concrete genuine zeta modulus upper at one actual right-line phase, independent of A. -/
theorem actualZeta_norm_at_prime_two_phase_le :
    ‖riemannZeta ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I)‖ ≤ Real.exp (-1/48) := by
  have hs : 1 < ((4:ℂ)+((Real.pi/Real.log 2:ℝ):ℂ)*I).re := by norm_num
  rw [← actualFullPrimeLogPotential_exp_eq_zeta _ hs, Complex.norm_exp]
  exact Real.exp_le_exp.mpr actualFullPrimeLogPotential_re_negative

end
end FormalResearch.RiemannHypothesis.SourceActualEulerPotentialZetaPhase
```

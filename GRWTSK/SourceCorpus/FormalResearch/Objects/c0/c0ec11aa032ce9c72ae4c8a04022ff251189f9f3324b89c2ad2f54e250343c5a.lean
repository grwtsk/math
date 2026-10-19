import Mathlib.NumberTheory.LSeries.Nonvanishing

open Complex MeasureTheory Set
open scoped ComplexConjugate

example (s : ℂ) : completedRiemannZeta₀ (conj s) = conj (completedRiemannZeta₀ s) := by
  unfold completedRiemannZeta₀ HurwitzZeta.completedHurwitzZetaEven₀ WeakFEPair.Λ₀ mellin
  rw [map_div₀, map_ofNat, ← integral_conj]
  congr 1
  refine setIntegral_congr_fun measurableSet_Ioi fun x hx => ?_
  simp only [smul_eq_mul, map_mul]
  congr 1
  · rw [cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)),
      cpow_def_of_ne_zero (ofReal_ne_zero.mpr (ne_of_gt hx)), ← exp_conj, map_mul,
      ← ofReal_log (le_of_lt hx)]
    simp
  · simp [WeakFEPair.f_modif, HurwitzZeta.hurwitzEvenFEPair]

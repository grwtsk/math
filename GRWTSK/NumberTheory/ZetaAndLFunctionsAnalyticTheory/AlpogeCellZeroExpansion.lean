/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Analysis.Calculus.Deriv.Inv
import Mathlib.Tactic

/-! # Weighted Mellin residues and Fourier coefficients of two-level masks -/
namespace GRWTSK.NumberTheory.AlpogeCellZeroExpansion
open Complex Finset
open scoped BigOperators

/-- The residue at one after multiplication by the square of the local parameter.
The holomorphic numerator h is z times the negative logarithmic derivative. -/
theorem residue_at_one {h : ℂ → ℂ} {c b a : ℂ} (hv : h 0 = b)
    (hd : HasDerivAt h c 0) (v : ℂ) :
    HasDerivAt (fun z : ℂ => a * exp (z*v) * h z / (1+z)) (a*(c+b*(v-1))) 0 := by
  have hx := (((hasDerivAt_id (0:ℂ)).mul_const v).cexp.const_mul a).mul hd
  have hh := hx.div ((hasDerivAt_id (0:ℂ)).const_add 1) (by simp)
  convert hh using 1
  · rfl
  · simp [hv, Pi.mul_apply]
    ring

/-- The ramified kernel at zero has opposite denominator slope. Here h is
z times the positive logarithmic derivative, with its actual order at zero. -/
theorem residue_at_zero {h : ℂ → ℂ} {c b v : ℂ} (hv : h 0 = b)
    (hd : HasDerivAt h c 0) :
    HasDerivAt (fun z : ℂ => exp (z*v) * h z / (1-z)) (c+b*(1+v)) 0 := by
  have hx := ((hasDerivAt_id (0:ℂ)).mul_const v).cexp.mul hd
  have hh := hx.div ((hasDerivAt_id (0:ℂ)).const_sub 1) (by simp)
  convert hh using 1
  · rfl
  · simp [hv, Pi.mul_apply]
    ring

/-- Fourier response of two weight levels for an arbitrary character table.
The two complex values can be evaluated at a nonreal Dirichlet zero. -/
theorem two_level_transform {ι : Type*} [Fintype ι] [DecidableEq ι]
    (U : Finset ι) (χ : ι → ℂ) (b v : ℂ) :
    ∑ i : ι, χ i * (if i ∈ U then b else v) =
      v*(∑ i : ι, χ i) + (b-v)*(∑ i ∈ U, χ i) := by
  classical
  have h : ∀ i, χ i * (if i ∈ U then b else v) =
      v*χ i + (if i ∈ U then (b-v)*χ i else 0) := by
    intro i; split_ifs <;> ring
  simp_rw [h]
  rw [sum_add_distrib,← mul_sum]
  simp [← mul_sum]

end GRWTSK.NumberTheory.AlpogeCellZeroExpansion

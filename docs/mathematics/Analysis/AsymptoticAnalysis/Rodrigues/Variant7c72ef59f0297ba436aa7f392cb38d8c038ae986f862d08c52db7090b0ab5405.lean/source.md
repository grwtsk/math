# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Rodrigues.Variant7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f876424d785c866272bb0f4d4b9a16619e6bb4a` · SHA-256 `7c72ef59f0297ba436aa7f392cb38d8c038ae986f862d08c52db7090b0ab5405`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Tactic

/-!
# Rodrigues' matrix exponential

This module proves the analytic identity from the exponential, sine, and
cosine power series, then instantiates it for the explicit matrix of
`v ↦ ω × v` on real Euclidean three-space.  The only public theorem specimen
is `rodrigues_matrix_exp`; supporting proof lemmas remain private.
-/

open scoped Matrix Nat
open NormedSpace

public section

namespace Surface.Rotation

noncomputable section

/-- A real axis-angle vector with its Euclidean norm. -/
abbrev RotationVector3 := EuclideanSpace ℝ (Fin 3)

/-- The matrix of the linear map `v ↦ ω × v`, in standard coordinates. -/
def crossProductMatrix (ω : RotationVector3) : Matrix (Fin 3) (Fin 3) ℝ :=
  !![0, -ω 2, ω 1;
     ω 2, 0, -ω 0;
     -ω 1, ω 0, 0]

/-- `(1 - cos θ) / θ²`, continuously extended by `cosc 0 = 1/2`. -/
def cosc (θ : ℝ) : ℝ :=
  if θ = 0 then (1 : ℝ) / 2 else (1 - Real.cos θ) / θ ^ 2

@[simp]
private theorem cosc_zero : cosc 0 = (1 : ℝ) / 2 := by
  simp [cosc]

private theorem cosc_of_ne_zero {θ : ℝ} (hθ : θ ≠ 0) :
    cosc θ = (1 - Real.cos θ) / θ ^ 2 := by
  simp [cosc, hθ]

/-- `cosc` is half the square of `sinc` at the half-angle. -/
private theorem cosc_eq_sinc_half_sq (θ : ℝ) :
    cosc θ = Real.sinc (θ / 2) ^ 2 / 2 := by
  by_cases hθ : θ = 0
  · subst θ
    norm_num
  · rw [cosc_of_ne_zero hθ,
      Real.sinc_of_ne_zero (div_ne_zero hθ (by norm_num : (2 : ℝ) ≠ 0)), div_pow,
      Real.sin_sq_eq_half_sub]
    have hhalf : 2 * (θ / 2) = θ := by ring
    rw [hhalf]
    field_simp [hθ]

/-- The removable value in `cosc` makes the coefficient continuous. -/
@[fun_prop]
private theorem continuous_cosc : Continuous cosc := by
  rw [show cosc = fun θ : ℝ => Real.sinc (θ / 2) ^ 2 / 2 from
    funext cosc_eq_sinc_half_sq]
  fun_prop

variable {A : Type*} [NormedRing A] [NormedAlgebra ℝ A]

/-- If an algebra element has zero cube, its exponential truncates at degree two. -/
private theorem exp_of_cube_eq_zero (x : A) (hx : x ^ 3 = 0) :
    exp x = 1 + x + (2 : ℝ)⁻¹ • x ^ 2 := by
  rw [exp_eq_tsum ℝ]
  change (∑' n : ℕ, ((n ! : ℝ)⁻¹ • x ^ n)) = _
  rw [tsum_eq_sum (s := Finset.range 3)]
  · norm_num [Finset.sum_range_succ, Nat.factorial]
  · intro n hn
    simp only [Finset.mem_range, not_lt] at hn
    rw [pow_eq_zero_of_le hn hx, smul_zero]

/-- Odd powers reduce to the span of the generator under the cubic relation. -/
private theorem odd_power_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    x ^ (2 * n + 1) = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        x ^ (2 * (n + 1) + 1) = x ^ (2 * n + 1) * x ^ 2 := by
          rw [← pow_add]
          congr 1
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) * x ^ 2 := by rw [ih]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • (x * x ^ 2)) := by
          rw [smul_mul_assoc]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 3) := by
          congr 1
          exact (pow_succ' x 2).symm
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • ((-(θ ^ 2)) • x)) := by rw [hcube]
        _ = (((-1 : ℝ) ^ n * θ ^ (2 * n) * (-(θ ^ 2))) • x) := by
          rw [smul_smul]
        _ = (((-1 : ℝ) ^ (n + 1) * θ ^ (2 * (n + 1))) • x) := by
          congr 1
          rw [pow_succ, show 2 * (n + 1) = 2 * n + 2 by omega, pow_add]
          ring

/-- Positive even powers reduce to the span of the squared generator. -/
private theorem even_power_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    x ^ (2 * n + 2) = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 2) := by
  calc
    x ^ (2 * n + 2) = x ^ (2 * n + 1) * x := by rw [pow_succ]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x) * x := by
      rw [odd_power_of_cube x θ hcube n]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • (x * x)) := by
      rw [smul_mul_assoc]
    _ = (((-1 : ℝ) ^ n * θ ^ (2 * n)) • x ^ 2) := by rw [pow_two]

private theorem expSeries_odd_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    expSeries ℝ A (2 * n + 1) (fun _ => x) =
      (((-1 : ℝ) ^ n * θ ^ (2 * n) / ((2 * n + 1)! : ℝ)) • x) := by
  rw [expSeries_apply_eq, odd_power_of_cube x θ hcube n, smul_smul]
  congr 1
  simp only [div_eq_mul_inv]
  ring

private theorem expSeries_even_tail_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) (n : ℕ) :
    expSeries ℝ A (2 * n + 2) (fun _ => x) =
      (((-1 : ℝ) ^ n * θ ^ (2 * n) / ((2 * n + 2)! : ℝ)) • x ^ 2) := by
  rw [expSeries_apply_eq, even_power_of_cube x θ hcube n, smul_smul]
  congr 1
  simp only [div_eq_mul_inv]
  ring

/-- The shifted cosine series with its constant term removed. -/
private theorem hasSum_cos_tail (θ : ℝ) :
    HasSum
      (fun n : ℕ =>
        (-1 : ℝ) ^ (n + 1) * θ ^ (2 * (n + 1)) / ((2 * (n + 1))! : ℝ))
      (Real.cos θ - 1) := by
  simpa [Finset.sum_range_succ] using
    ((hasSum_nat_add_iff' 1).2 (Real.hasSum_cos θ))

private theorem hasSum_expSeries_odd_of_cube (x : A) (θ : ℝ) (hθ : θ ≠ 0)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    HasSum (fun n : ℕ => expSeries ℝ A (2 * n + 1) (fun _ => x))
      (Real.sinc θ • x) := by
  have hs := ((Real.hasSum_sin θ).div_const θ).smul_const x
  rw [Real.sinc_of_ne_zero hθ]
  convert! hs using 1
  ext n : 1
  rw [expSeries_odd_of_cube x θ hcube n, pow_succ]
  congr 1
  field_simp

private theorem hasSum_expSeries_even_tail_of_cube (x : A) (θ : ℝ) (hθ : θ ≠ 0)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    HasSum (fun n : ℕ => expSeries ℝ A (2 * (n + 1)) (fun _ => x))
      (cosc θ • x ^ 2) := by
  have hc := ((hasSum_cos_tail θ).div_const (-(θ ^ 2))).smul_const (x ^ 2)
  convert! hc using 1
  · ext n : 1
    rw [show 2 * (n + 1) = 2 * n + 2 by omega,
      expSeries_even_tail_of_cube x θ hcube n]
    congr 1
    rw [pow_add θ (2 * n) 2, pow_succ (-1 : ℝ) n]
    field_simp
  · rw [cosc_of_ne_zero hθ]
    congr 1
    field_simp
    ring

private theorem hasSum_expSeries_even_of_cube (x : A) (θ : ℝ) (hθ : θ ≠ 0)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    HasSum (fun n : ℕ => expSeries ℝ A (2 * n) (fun _ => x))
      (1 + cosc θ • x ^ 2) := by
  have he := hasSum_expSeries_even_tail_of_cube x θ hθ hcube
  simpa [expSeries_apply_eq] using
    (HasSum.zero_add
      (f := fun n : ℕ => expSeries ℝ A (2 * n) (fun _ => x)) he)

private theorem hasSum_expSeries_of_cube_of_ne_zero (x : A) (θ : ℝ) (hθ : θ ≠ 0)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    HasSum (fun n : ℕ => expSeries ℝ A n (fun _ => x))
      (1 + Real.sinc θ • x + cosc θ • x ^ 2) := by
  have he := hasSum_expSeries_even_of_cube x θ hθ hcube
  have ho := hasSum_expSeries_odd_of_cube x θ hθ hcube
  have h := HasSum.even_add_odd
    (f := fun n : ℕ => expSeries ℝ A n (fun _ => x)) he ho
  convert h using 1
  abel

variable [CompleteSpace A]

private theorem exp_eq_rodrigues_of_cube_of_ne_zero (x : A) (θ : ℝ) (hθ : θ ≠ 0)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    exp x = 1 + Real.sinc θ • x + cosc θ • x ^ 2 := by
  exact (expSeries_hasSum_exp x).unique
    (hasSum_expSeries_of_cube_of_ne_zero x θ hθ hcube)

/-- The generic analytic identity, including the nilpotent `θ = 0` branch. -/
private theorem exp_eq_rodrigues_of_cube (x : A) (θ : ℝ)
    (hcube : x ^ 3 = (-(θ ^ 2)) • x) :
    exp x = 1 + Real.sinc θ • x + cosc θ • x ^ 2 := by
  by_cases hθ : θ = 0
  · subst θ
    have hx : x ^ 3 = 0 := by simpa using hcube
    rw [exp_of_cube_eq_zero x hx]
    simp [cosc]
  · exact exp_eq_rodrigues_of_cube_of_ne_zero x θ hθ hcube

/-- Multiplication by the displayed matrix is the coordinate cross product. -/
private theorem crossProductMatrix_mulVec (ω : RotationVector3) (u v w : ℝ) :
    (crossProductMatrix ω).mulVec ![u, v, w] =
      ![ω 1 * w - ω 2 * v, ω 2 * u - ω 0 * w, ω 0 * v - ω 1 * u] := by
  ext i
  fin_cases i <;>
    simp [crossProductMatrix, Matrix.mulVec, dotProduct, Fin.sum_univ_succ] <;> ring

/-- The explicit cross-product matrix satisfies `Ω³ = -‖ω‖² Ω`. -/
private theorem crossProductMatrix_cube (ω : RotationVector3) :
    crossProductMatrix ω ^ 3 = (-(‖ω‖ ^ 2)) • crossProductMatrix ω := by
  have hnorm : ‖ω‖ ^ 2 = ω 0 ^ 2 + ω 1 ^ 2 + ω 2 ^ 2 := by
    rw [EuclideanSpace.real_norm_sq_eq]
    simp [Fin.sum_univ_succ]
    ring
  rw [hnorm]
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [crossProductMatrix, Matrix.mul_apply, Fin.sum_univ_succ, pow_succ] <;> ring

/--
For `ω ∈ ℝ³`, let `Ω = [ω]×` and `θ = ‖ω‖`. Then the matrix exponential is
exactly the Rodrigues polynomial, with continuous coefficient values at zero.
-/
@[surface_novel, surface_published]
theorem rodrigues_matrix_exp (ω : RotationVector3) :
    let Ω := crossProductMatrix ω
    let θ := ‖ω‖
    exp Ω = 1 + Real.sinc θ • Ω + cosc θ • Ω ^ 2 := by
  dsimp only
  open scoped Matrix.Norms.Operator in
    exact exp_eq_rodrigues_of_cube (crossProductMatrix ω) ‖ω‖
      (crossProductMatrix_cube ω)

end

end Surface.Rotation
```

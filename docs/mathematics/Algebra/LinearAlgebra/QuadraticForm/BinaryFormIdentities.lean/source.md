# Complete source: GRWTSK.LinearAlgebra.QuadraticForm.BinaryFormIdentities

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be2142bec0a6719178660e958b1a18c3e1360009` · SHA-256 `6fef64b3d68ccea14b1761fa21fcbadf6831ba8f4c5c6fb71e0de77b0172b23a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Proof-source assistance: ChatGPT.
Candidate scalar proof source; not compiled. No arithmetic estimate is assumed
true by these algebraic identities. The analytic kernel adapter is in the note.
-/
import Mathlib

set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Resolvent.EndpointLowCenter

def determinant (g o : ℝ) : ℝ := 2*g^2-o^2

def quadratic (g o x y : ℝ) : ℝ := g*x^2+2*o*x*y+2*g*y^2

theorem complete_square (g o x y : ℝ) :
    g * quadratic g o x y = (g*x+o*y)^2 + determinant g o*y^2 := by
  unfold quadratic determinant
  ring

theorem quadratic_nonneg (g o x y : ℝ) (hg : 0 < g)
    (hd : 0 ≤ determinant g o) : 0 ≤ quadratic g o x y := by
  have h := mul_nonneg hd (sq_nonneg y)
  have he := complete_square g o x y
  nlinarith [sq_nonneg (g*x+o*y)]

theorem shifted_quadratic (g o x y a b : ℝ) :
    quadratic g o (x-a) (y-b) = quadratic g o x y
      -2*(a*(g*x+o*y)+b*(o*x+2*g*y))+quadratic g o a b := by
  unfold quadratic
  ring

theorem solved_energy (g o a b z₁ z₂ : ℝ)
    (h₁ : g*a+o*b=z₁) (h₂ : o*a+2*g*b=z₂) :
    quadratic g o a b = a*z₁+b*z₂ := by
  calc
    quadratic g o a b = a*(g*a+o*b)+b*(o*a+2*g*b) := by
      unfold quadratic
      ring
    _ = a*z₁+b*z₂ := by rw [h₁,h₂]

theorem endpoint_inverse_left (g o z₁ z₂ : ℝ)
    (hd : determinant g o ≠ 0) :
    g*((2*g*z₁-o*z₂)/determinant g o)
      +o*((g*z₂-o*z₁)/determinant g o)=z₁ := by
  have hd' : 2*g^2-o^2 ≠ 0 := hd
  unfold determinant
  field_simp [hd']
  <;> ring

theorem endpoint_inverse_right (g o z₁ z₂ : ℝ)
    (hd : determinant g o ≠ 0) :
    o*((2*g*z₁-o*z₂)/determinant g o)
      +2*g*((g*z₂-o*z₁)/determinant g o)=z₂ := by
  have hd' : 2*g^2-o^2 ≠ 0 := hd
  unfold determinant
  field_simp [hd']
  <;> ring

/-- Removing a calibrated endpoint vector retains its exact center energy. -/
theorem residual_reconstruction (g o a b z₁ z₂ L : ℝ)
    (h₁ : g*a+o*b=z₁) (h₂ : o*a+2*g*b=z₂) :
    L-2*(a*z₁+b*z₂)+quadratic g o a b = L-(a*z₁+b*z₂) := by
  rw [solved_energy g o a b z₁ z₂ h₁ h₂]
  ring

/-- The rational lower-minor slack used for all m >= 4. -/
theorem lower_minor_slack :
    ((8:ℝ)/9-1/5)*(16/9-1/5)-1=176/2025 := by norm_num

end GRWTSK.Analysis.Resolvent.EndpointLowCenter
```

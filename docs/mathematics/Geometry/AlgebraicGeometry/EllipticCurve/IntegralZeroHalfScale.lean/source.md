# Complete source: GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `609276cf175e47a03afaa7032c1f1cb36db3ec8c` · SHA-256 `22e598509502ac8fb1fe85aa038416557dacfe1a9e9fa79b90f4d699408626ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The fixed change (2,0,1,0), with no source permutation or quadratic twist.
An integral output exists in the declared parameters B-A=4k+1, AB=16m.
The integer k is signed: restricting it to Nat would omit A>B cases.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale

open WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Integral coefficients for Y^2+XY=X^3+kX^2-mX. -/
def model (k m : ℤ) : WeierstrassCurve ℤ where
  a₁ := 1
  a₂ := k
  a₃ := 0
  a₄ := -m
  a₆ := 0

/-- New-to-old x=4X, y=8Y+4X. Scale 2 is only a rational unit here. -/
def zeroChange : VariableChange ℚ where
  u := Units.mk0 2 (by norm_num)
  r := 0
  s := 1
  t := 0

/-- All five coefficients of the ACTUAL change, before any reduction claim. -/
theorem variableChange_model (A B k m : ℤ)
    (hd : B-A=4*k+1) (hm : A*B=16*m) :
    zeroChange • freyWeierstrass (A : ℚ) (B : ℚ) = (model k m).baseChange ℚ := by
  have hdq : (B : ℚ)-(A : ℚ)=4*(k : ℚ)+1 := by exact_mod_cast hd
  have hmq : (A : ℚ)*(B : ℚ)=16*(m : ℚ) := by exact_mod_cast hm
  ext <;> norm_num [zeroChange, model, freyWeierstrass,
    WeierstrassCurve.variableChange_def, WeierstrassCurve.baseChange] <;> nlinarith

theorem model_c4 (k m : ℤ) :
    (model k m).c₄ = (4*k+1)^2+48*m := by
  simp only [model, WeierstrassCurve.c₄, WeierstrassCurve.b₂, WeierstrassCurve.b₄]
  ring

theorem model_delta (k m : ℤ) :
    (model k m).Δ = m^2*((4*k+1)^2+64*m) := by
  simp only [model, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

theorem parameter_c4 (A B k m : ℤ) (hd : B-A=4*k+1) (hm : A*B=16*m) :
    (model k m).c₄ = A^2+A*B+B^2 := by
  rw [model_c4]
  calc
    (4*k+1)^2+48*m = (B-A)^2+3*(A*B) := by rw [hd,hm]; ring
    _ = A^2+A*B+B^2 := by ring

theorem parameter_delta (A B k m : ℤ) (hd : B-A=4*k+1) (hm : A*B=16*m) :
    (model k m).Δ = (m*(A+B))^2 := by
  rw [model_delta, ← hd]
  have h : (B-A)^2+64*m=(A+B)^2 := by nlinarith [hm]
  rw [h]
  ring

/-- The unit-c4 criterion is available even when m is even. -/
theorem c4_not_dvd_two (k m : ℤ) : ¬ (2 : ℤ) ∣ (model k m).c₄ := by
  have h : (model k m).c₄ = 2*(8*k^2+4*k+24*m)+1 := by rw [model_c4]; ring
  rw [h]
  omega

theorem delta_even_iff (k m : ℤ) :
    (2 : ℤ) ∣ (model k m).Δ ↔ (2 : ℤ) ∣ m := by
  have hm : m % 2 = 0 ∨ m % 2 = 1 := by omega
  rcases hm with hm | hm <;>
    simp [model_delta, Int.dvd_iff_emod_eq_zero, Int.add_emod,
      Int.mul_emod, pow_two, hm]

def toNew (P : ℚ × ℚ) : ℚ × ℚ := (P.1/4,(P.2-P.1)/8)

def toOld (P : ℚ × ℚ) : ℚ × ℚ := (4*P.1,8*P.2+4*P.1)

theorem toOld_toNew (P : ℚ × ℚ) : toOld (toNew P)=P := by
  rcases P with ⟨x,y⟩
  ext <;> dsimp [toOld,toNew] <;> ring

theorem toNew_toOld (P : ℚ × ℚ) : toNew (toOld P)=P := by
  rcases P with ⟨x,y⟩
  ext <;> dsimp [toOld,toNew] <;> ring

/-- The same labels, not a relabelled branch set. -/
theorem branch_coordinates (A B : ℚ) :
    toNew (0,0)=(0,0) ∧ toNew (A,0)=(A/4,-A/8) ∧
      toNew (-B,0)=(-B/4,B/8) := by
  constructor
  · ext <;> dsimp [toNew] <;> ring
  constructor <;> ext <;> dsimp [toNew] <;> ring

end GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale
```

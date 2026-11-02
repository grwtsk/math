/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The honest archimedean C2 norm/coboundary obstruction

Complex conjugation acts as an involution c on the actual real
Galois coefficient module. In the usual two-periodic Tate complex,
the even cycles are fixed points modulo N = 1+c and the odd cycles
are ker N modulo c-1. If doubling is bijective (the p-odd profile),
both groups vanish by explicit averaging. At p=2 this averaging
cannot be silently used.

The results below are algebraic under the stated doubling hypotheses.
A genuine elliptic real-place instance must still supply the source
Galois action and matching Tate-cohomology comparison; a finite
ZMod 2 hostile witness is not claimed to be an elliptic curve.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.ArchimedeanInvolution

variable {M : Type*} [AddCommGroup M]

structure Involution (M : Type*) [AddCommGroup M] where
  op : M →+ M
  square : ∀ x, op (op x) = x

/-- At an odd p, doubling is invertible on p-primary torsion
coefficient groups and on Z_p-modules. Keep that input explicit. -/
def UniqueHalf (M : Type*) [AddCommGroup M] : Prop :=
  Function.Bijective (fun x : M => (2 : ℕ) • x)

/-- Every c-invariant cochain lies in the norm image when 2
is invertible. This discharges the EVEN C2 Tate quotient
at the algebraic level, without erasing H0 itself. -/
theorem Involution.fixed_is_norm (I : Involution M)
    (hhalf : UniqueHalf M) (x : M) (hx : I.op x = x) :
    ∃ y : M, y + I.op y = x := by
  obtain ⟨y, hy⟩ := hhalf.2 x
  have hcy : I.op y = y := hhalf.1 (by
    calc
      (2 : ℕ) • I.op y = I.op ((2 : ℕ) • y) :=
        (map_nsmul I.op 2 y).symm
      _ = I.op x := by rw [hy]
      _ = x := hx
      _ = (2 : ℕ) • y := hy.symm)
  refine ⟨y, ?_⟩
  calc
    y + I.op y = y + y := by rw [hcy]
    _ = (2 : ℕ) • y := by simp [two_nsmul]
    _ = x := hy

/-- An anti-invariant cochain is an ACTUAL (c-1)-boundary when
doubling is bijective. This is the ODD C2 Tate quotient. -/
theorem Involution.anti_fixed_is_boundary (I : Involution M)
    (hhalf : UniqueHalf M) (x : M) (hx : I.op x = -x) :
    ∃ y : M, I.op y - y = x := by
  obtain ⟨y, hy⟩ := hhalf.2 x
  have hcy : I.op y = -y := hhalf.1 (by
    calc
      (2 : ℕ) • I.op y = I.op ((2 : ℕ) • y) :=
        (map_nsmul I.op 2 y).symm
      _ = I.op x := by rw [hy]
      _ = -x := hx
      _ = (2 : ℕ) • (-y) := by rw [smul_neg, hy])
  refine ⟨-y, ?_⟩
  calc
    I.op (-y) - (-y) = y + y := by rw [map_neg, hcy]; abel
    _ = (2 : ℕ) • y := by simp [two_nsmul]
    _ = x := hy

/-! p=2 hostile model: c=id on Z/2, so both the even fixed
class and odd norm-zero class survive, with no averaging inverse. -/

private def hostileTwo : Involution (ZMod 2) where
  op := AddMonoidHom.id _
  square _ := rfl

theorem two_primary_hostile :
    ((1 : ZMod 2) + hostileTwo.op 1 = 0) ∧
    (¬ ∃ y : ZMod 2, hostileTwo.op y - y = 1) ∧
    (¬ ∃ y : ZMod 2, y + hostileTwo.op y = 1) := by
  constructor
  · norm_num [hostileTwo]
  constructor
  · rintro ⟨y, hy⟩
    have h : (0 : ZMod 2) = 1 := by
      simpa [hostileTwo] using hy
    norm_num at h
  · rintro ⟨y, hy⟩
    have h : (0 : ZMod 2) = 1 := by
      simpa [hostileTwo] using hy
    norm_num at h

end GRWTSK.CategoryTheoryHomologicalAlgebra.ArchimedeanInvolution

/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source comparison and local attribution: grwtsk contributors.
AI-assisted formalization candidate. Independent mathematical review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExactTorsionFrobeniusClasses
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticFiniteFieldTorsionRHReturn
import Mathlib

/-!
# Fixed torsion points, the exact original Frobenius trace, and order divisibility

This closes one source-level implication that the preceding exact-order torsion
and finite-field numerator files left implicit. The exact consumer is the old
`FiniteEulerWindow.frobeniusTrace q N = (q:ℤ)+1-(N:ℤ)` together with the
original `TorsionFrobeniusSpin.TorsionLevel W N` and
`ExactTorsionFrobenius.ExactOrder W n P`.

For ANY native Weierstrass point-group additive equivalence φ satisfying the
specified elliptic Frobenius characteristic relation

   φ²(P) - a_q φ(P) + [q]P = 0,

its fixed points P satisfy [q+1-a_q]P=[N]P=0. In particular an EXACT
order-n fixed point has n dividing the authentic parameter N. There is
no claim that the abstract φ is the geometric q-power Frobenius, nor that
its fixed locus is the full rational point group E(F_q). Those are separate
geometric-return fields and must not be inferred from the characteristic
polynomial or a nonnegative torsion heat kernel.

This result uses the arithmetic characteristic identity only: the Hasse
inequality and arbitrary choices of complex roots are NOT premises. The
subtype of fixed points embeds into the existing native N-kernel, but the
reverse inclusion is generally false. In the tested F_25 example with
q=5, a=-3, N=9, all 27 F_25-points are killed by 9 while only 9 are
fixed by the 5-power Frobenius. This boundary prevents an invalid
fixed-count identity from entering the elliptic zeta numerator.

Original source: Silverman, The Arithmetic of Elliptic Curves (2nd ed.),
V.2, Frobenius characteristic polynomial and rational-point kernel;
predecessor math source `EllipticFiniteFieldTorsionRHReturn.lean`
(blob 8566095de2626564ef367f23949604672088fbe4) and
`EllipticExactTorsionFrobeniusClasses.lean`
(blob 8d96c41f567ab2cc359fa0dd11af9935ffda3390).
Standard elementary group and ring calculations; no originality claim.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedOrder

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius

/-- The algebraic Frobenius characteristic input, MINUS the extraneous
Hasse-spectrum-root witness in the predecessor's joint source. This is not
a field automorphism constructor. Its trace and scalar are the exact
existing count-derived integers, not independent labeled parameters. -/
structure FrobeniusCharacteristicPort
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    (q N : ℕ) where
  action : W.Point ≃+ W.Point
  characteristic : ∀ P : W.Point,
    action (action P) - (frobeniusTrace q N : ℤ) • action P +
      (q : ℤ) • P = 0

/-- Forget the root packet from the old source without changing its
native point action or characteristic equation. -/
def characteristicPortOfFullSource
    {F : Type*} [Field F] {W : WeierstrassCurve F} [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusTorsionSource W q N) :
    FrobeniusCharacteristicPort W q N where
  action := S.action
  characteristic := S.characteristic

namespace FrobeniusCharacteristicPort
variable {F : Type*} [Field F] {W : WeierstrassCurve F} [W.IsElliptic]
variable {q N : ℕ}

/-- Every fixed point is killed by the count parameter N, derived from
the unchanged characteristic equation instead of asserted by a field. -/
theorem fixed_annihilated (S : FrobeniusCharacteristicPort W q N)
    (P : W.Point) (hfixed : S.action P = P) : N • P = 0 := by
  have htwice : S.action (S.action P) = P := by
    rw [hfixed, hfixed]
  have hc : P - (frobeniusTrace q N : ℤ) • P + (q : ℤ) • P = 0 := by
    simpa only [htwice, hfixed] using S.characteristic P
  have hscalar : (N : ℤ) = (1 : ℤ) - frobeniusTrace q N + (q : ℤ) := by
    simp [frobeniusTrace] <;> ring
  have hsmul : (N : ℤ) • P =
      P - (frobeniusTrace q N : ℤ) • P + (q : ℤ) • P := by
    rw [hscalar]
    simp only [add_zsmul, sub_zsmul, one_zsmul]
    abel
  simpa only [natCast_zsmul] using hsmul.trans hc

/-- Fixed-point fiber of the SUPPLIED additive-equivalence port. This
is not named E(F_q) without an actual geometric identification. -/
def FixedFiber (S : FrobeniusCharacteristicPort W q N) : Type _ :=
  { P : W.Point // S.action P = P }

/-- Every source-fixed point is an actual point of the original N-kernel.
This mapping retains the original native Weierstrass point, not just an
order label or a count. -/
def toCountKernel (S : FrobeniusCharacteristicPort W q N) :
    FixedFiber S → TorsionLevel W N :=
  fun P => ⟨P.1, S.fixed_annihilated P.1 P.2⟩

/-- Embedding a fixed point into the N-torsion carrier loses no point
identity. It need not be surjective onto the N-kernel. -/
theorem toCountKernel_injective (S : FrobeniusCharacteristicPort W q N) :
    Function.Injective (toCountKernel S) := by
  intro P Q h
  apply Subtype.ext
  exact congrArg Subtype.val h

/-- The first characteristic polynomial consequence is already a
single-count finite injection bound, WHEN both actual fibers are finite. -/
theorem fixed_card_le_count_kernel (S : FrobeniusCharacteristicPort W q N)
    [Fintype (FixedFiber S)] [Fintype (TorsionLevel W N)] :
    Fintype.card (FixedFiber S) ≤ Fintype.card (TorsionLevel W N) :=
  Fintype.card_le_of_injective (toCountKernel S) S.toCountKernel_injective

/-- The actual unique order of a positive exact-order point is the
Mathlib additive order. This compares with Mathlib rather than defining
an incompatible surrogate order. -/
theorem exactOrder_eq_addOrderOf (n : ℕ) (P : W.Point)
    (h : ExactOrder W n P) : addOrderOf P = n := by
  have hdvd : addOrderOf P ∣ n :=
    addOrderOf_dvd_of_nsmul_eq_zero h.2.1
  have hpos : 0 < addOrderOf P := Nat.pos_of_dvd_of_pos hdvd h.1
  have hle : addOrderOf P ≤ n := Nat.le_of_dvd h.1 hdvd
  have hge : n ≤ addOrderOf P := by
    by_contra hn
    have hlt : addOrderOf P < n := lt_of_not_ge hn
    exact h.2.2 (addOrderOf P) hpos hlt (addOrderOf_nsmul_eq_zero P)
  exact Nat.le_antisymm hle hge

/-- No exact-order class can contain a fixed point unless its exact
positive order divides the actual original count parameter N. -/
theorem fixed_exact_order_dvd_count (S : FrobeniusCharacteristicPort W q N)
    (n : ℕ) (P : ExactClass W n) (hfixed : S.action P.1 = P.1) :
    n ∣ N := by
  have horder := exactOrder_eq_addOrderOf n P.1 P.2
  rw [← horder]
  exact addOrderOf_dvd_of_nsmul_eq_zero (S.fixed_annihilated P.1 hfixed)

/-- Equivalently, any exact-order class with n not dividing N is
DISJOINT from the fixed-point locus, independent of a positive spin form. -/
theorem no_fixed_exact_order_of_not_dvd (S : FrobeniusCharacteristicPort W q N)
    (n : ℕ) (hnd : ¬ n ∣ N) (P : ExactClass W n) :
    S.action P.1 ≠ P.1 := by
  intro hf
  exact hnd (S.fixed_exact_order_dvd_count n P hf)

end FrobeniusCharacteristicPort
end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedOrder

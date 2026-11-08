/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source proof candidate; independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFrobeniusFixedFieldRealization
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFrobeniusDegreeNorm
import Mathlib

/-!
# Genuine 1-Frobenius^k kernel, isogeny degree and ORIGINAL extensionTrace

This source never replaces the actual targets:
  GeometricFixedPointReturn.geometricFixedCounts W k,
  GeometricFixedPointReturn.FrobeniusDegreeReturn W q N,
  FiniteFieldTorsionRH.ExtensionCountSource q N counts.

The first new theorem identifies the literal *geometric* fixed fiber
with the kernel of the *actual native additive-group map*
  1 - geometricPointFrobeniusPower W k.
It uses the underlying Weierstrass addition, not an unrelated finite
permutation or spin matrix, and requires NO isogeny-degree assumption.

The classical algebraic-geometric proof of the remaining source identity:
Let pi be the genuine elliptic q-Frobenius over Kbar and V its genuine
algebraic-isogeny dual. Silverman III.6 and V.2 give:
  pi V = V pi = [q],     pi + V = [a],   a=q+1-#E(K).
Then pi^k + V^k = [t_k] with t_0=2, t_1=a and
  t_(k+2) = a*t_(k+1)-q*t_k.
For psi_k = 1-pi^k, the true dual is 1-V^k, and
  psi_k * dual(psi_k) = [degree psi_k].
Multiplication gives
  [degree psi_k] = [1-pi^k-V^k+(pi V)^k]
                 = [q^k+1-t_k].
The embedding Z -> End(E) is faithful, so
  degree(1-pi^k) = q^k+1-extensionTrace q N k.
For k>0, d(pi^k)=0, so d(1-pi^k)=1. Thus the map
is separable and its kernel has exactly its degree's number of
geometric points. The kernel is precisely Fix(pi^k), including
infinity. Finally E(F_(q^k)) = Fix(pi^k) by the literal fixed-field
and native-point comparison in FrobeniusFixedFieldRealization.

The algebraic norm equality is formally derived without Hasse in
`FrobeniusDegreeNorm.originalSignedCount_eq_rootNorm`; the fixed
kernel equivalence is derived below from actual native point maps;
and the field/point descent is derived in FrobeniusFixedFieldRealization.

The *geometric isogeny provider* still must deliver two authentic facts:
  (1) `#ker(1-pi^k) = degree(1-pi^k)` for k>0 (separability);
  (2) `degree(1-pi^k) = norm(1-alpha^k)` in the actual isogeny degree,
      from dual Frobenius / Weil pairing and its trace normalization.
Neither is asserted from a fake endomorphism or an arbitrary form.
The `IsogenyDegreePort` below keeps these INDEPENDENT premises at the
native point map and geometric curve. It is not a proved native
isogeny construction and has no inhabitant produced in this file.
The genuine provider is represented by AINTLIB's `Isogeny` family,
not compiled against the local Lean 4.34.1 / Mathlib revision here.

If both geometric obligations are supplied, this file PROVES the old
`FrobeniusDegreeReturn`, the old `ExtensionCountSource`, and (for any
actual extension field embedded with q^k elements) the count identity
for its exact native Weierstrass point set. No Hasse or RH assumption
is used to derive these trace identities. The existing finite-field RH
consumer still separately requires authentic Hasse/purity.

Primary sources: Silverman, The Arithmetic of Elliptic Curves, 2nd ed.,
III.4.10, III.6.1-6.2, V.2.3-2.4; AINTLIB
CBirkbeck/AINTLIB@c3bc9bfafaf32cf281da174a7ec287c1e56acc99,
`HasseWeil/Isogeny/Dual/Canonical.lean`,
`HasseWeil/HasseBound/WeilPairing/DetDeg.lean`.
No claim that these upstream APIs compile in grwtsk/math or that their
external axiom audits were rerun in this session.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusIsogenyDegreeReturn

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusDegreeNorm
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedFieldRealization
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFixedPointReturn
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- The actual additive point endomorphism `id - Frob_q^k` on the
native geometric elliptic curve. This is NOT yet the corresponding
algebraic `Isogeny` with a pullback and algebraic degree. -/
noncomputable def oneSubGeometricFrobenius (k : ℕ) :
    (W.baseChange (Closure K)).toAffine.Point →+
      (W.baseChange (Closure K)).toAffine.Point :=
  AddMonoidHom.id _ - geometricPointFrobeniusPower W k

/-- Exact native point value of 1-Frobenius^k. -/
theorem oneSubGeometricFrobenius_apply (k : ℕ)
    (P : (W.baseChange (Closure K)).toAffine.Point) :
    oneSubGeometricFrobenius W k P =
      P - geometricPointFrobeniusPower W k P := by
  simp [oneSubGeometricFrobenius]

/-- The *literal* previous GeometricFixedFiber is EQUAL AS A TYPE (up to
native subtype equivalence) to the kernel of the genuine point map
1-Frobenius^k, for every k, including k=0. -/
noncomputable def fixedFiberEquivOneSubKernel (k : ℕ) :
    GeometricFixedFiber W k ≃
      (oneSubGeometricFrobenius W k).ker where
  toFun P := ⟨P.1, by
    change P.1 - geometricPointFrobeniusPower W k P.1 = 0
    exact sub_eq_zero.mpr P.2.symm⟩
  invFun P := ⟨P.1, by
    have h : P.1 - geometricPointFrobeniusPower W k P.1 = 0 := by
      simpa only [oneSubGeometricFrobenius_apply] using P.2
    exact (sub_eq_zero.mp h).symm⟩
  left_inv P := Subtype.ext rfl
  right_inv P := Subtype.ext rfl

/-- The fixed-point cardinal is EXACTLY the kernel cardinal of the
original geometric Frobenius endomorphism. -/
theorem geometricFixedCounts_eq_ker_card (k : ℕ) :
    geometricFixedCounts W k =
      Nat.card (oneSubGeometricFrobenius W k).ker :=
  Nat.card_congr (fixedFiberEquivOneSubKernel W k)

/-- The precise two-leaf port for **genuine algebraic-isogeny** geometry.
`degree k` must be the degree of 1-Frob^k as an ALGEBRAIC isogeny;
it cannot be an arbitrary positive quadratic-form normalization.
The two proof fields correspond to two independent established
elliptic-geometric facts: separable kernel degree and dual norm.
No inhabitant is constructed without the actual isogeny provider. -/
structure IsogenyDegreePort where
  degree : ℕ → ℕ
  separable_kernel_degree : ∀ k : ℕ, 0 < k →
    Nat.card (oneSubGeometricFrobenius W k).ker = degree k
  genuine_dual_degree_norm : ∀ k : ℕ, 0 < k →
    (degree k : ℂ) =
      (1 - sourceAlpha (Fintype.card K) (Nat.card W.toAffine.Point) ^ k) *
      (1 - sourceBeta (Fintype.card K) (Nat.card W.toAffine.Point) ^ k)

/-- New consuming theorem: the two exact isogeny facts above force the
repository's OLD FrobeniusDegreeReturn, with native q and N.
No restated all-k count identity is a premise. -/
theorem originalFrobeniusDegreeReturn (D : IsogenyDegreePort W) :
    FrobeniusDegreeReturn W (Fintype.card K) (Nat.card W.toAffine.Point) := by
  intro k hk
  have hcount : geometricFixedCounts W k = D.degree k :=
    (geometricFixedCounts_eq_ker_card W k).trans
      (D.separable_kernel_degree k hk)
  have hcomplex : ((geometricFixedCounts W k : ℤ) : ℂ) =
      (signedExtensionCount (Fintype.card K) (Nat.card W.toAffine.Point) k : ℂ) := by
    calc
      ((geometricFixedCounts W k : ℤ) : ℂ) = (D.degree k : ℂ) := by
        exact_mod_cast hcount
      _ = (1 - sourceAlpha (Fintype.card K) (Nat.card W.toAffine.Point) ^ k) *
            (1 - sourceBeta (Fintype.card K) (Nat.card W.toAffine.Point) ^ k) :=
        D.genuine_dual_degree_norm k hk
      _ = (signedExtensionCount (Fintype.card K) (Nat.card W.toAffine.Point) k : ℂ) :=
        originalSignedCount_eq_rootNorm (Fintype.card K) (Nat.card W.toAffine.Point) k
  have hInt : (geometricFixedCounts W k : ℤ) =
      signedExtensionCount (Fintype.card K) (Nat.card W.toAffine.Point) k := by
    exact_mod_cast hcomplex
  simpa only [signedExtensionCount] using hInt

/-- Explicitly return to the original `ExtensionCountSource`, not a new
renamed statement or a finite test. -/
theorem originalExtensionCountSource (D : IsogenyDegreePort W) :
    ExtensionCountSource (Fintype.card K) (Nat.card W.toAffine.Point)
      (geometricFixedCounts W) :=
  originalExtensionCountSource_of_degree W (Fintype.card K)
    (Nat.card W.toAffine.Point) (originalFrobeniusDegreeReturn W D)

variable {M : Type*} [Field M] [Fintype M] [Algebra K M]
variable [(W.baseChange M).toAffine.IsElliptic]

/-- A TRUE degree provider together with an ACTUAL embedded finite
extension of cardinality q^k gives the original point-count identity
for the NATIVE elliptic-curve group over that field (including infinity).
The field/fixed-point equivalence is NOT taken as an extra premise. -/
theorem nativeExtensionPointCount_of_isogenyDegree
    (D : IsogenyDegreePort W)
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k) :
    (Nat.card ((W.baseChange M).toAffine.Point) : ℤ) =
      (Fintype.card K : ℤ) ^ k + 1 -
        extensionTrace (Fintype.card K) (Nat.card W.toAffine.Point) k := by
  rw [← fixed_count_eq_extension_point_count W k hk j hcard]
  exact originalFrobeniusDegreeReturn W D k hk

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusIsogenyDegreeReturn

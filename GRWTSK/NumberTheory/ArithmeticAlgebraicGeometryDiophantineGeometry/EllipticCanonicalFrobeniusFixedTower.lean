/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Authors: grwtsk contributors.
AI-assisted formalization candidate / INDEPENDENT_MATHEMATICAL_REVIEW_NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFrobeniusFixedFieldRealization
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticGeometricFrobeniusTorsionTransport
import Mathlib.FieldTheory.Finite.Extension
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib

/-!
# Canonical Frobenius-fixed extension fields and the divisibility tower

This closes an actual source parameter of the predecessor
`FrobeniusFixedFieldRealization.fixedPointComparisonOfEmbedding`:
there, for each k>0, the finite field M, the K-embedding M -> AlgebraicClosure K,
and the cardinal identity `#M=(#K)^k` were separately supplied.
Here all three are **constructed** from Mathlib's native
`FiniteField.Extension K p k`, `FiniteField.natCard_extension`, and
`IsAlgClosed.lift`. A finite Weierstrass affine-or-infinity point type has
an explicit finite coordinate description (one infinity plus a subtype
of pairs). Therefore the ORIGINAL geometric fixed fiber of the actual
coordinate Frobenius is finite for every k>0.

An independent new return establishes functoriality of the literal
fixed fields and points: m|n implies Fix(Frob_q^m) injects into
Fix(Frob_q^n), preserving every original point, and hence its finite
cardinality is at most that of the larger fixed locus. The source is
exactly `GenuineGeometricFrobenius.fieldFrobeniusPower` and
`geometricPointFrobeniusPower`, not an unrelated permutation.

Mathematical proof: write q=#K. Choose p=char K and k>0. The degree-k
finite extension M=FiniteField.Extension K p k satisfies #M=q^k.
It embeds as a K-field into AlgebraicClosure K. The existing source
comparison identifies E(M) bijectively with actual Fix(Frob_q^k).
As E(M) is the infinity point plus nonsingular ordered pairs from
M x M, E(M) and the fixed fiber are finite. No isogeny-degree premise,
Hasse inequality, spectral purity or positive Markov kernel is used.

For m|n, say n=m*r. A coordinate satisfying x^(q^m)=x also satisfies
x^((q^m)^r)=x by induction, hence x^(q^n)=x. The same holds for y;
the infinity point is fixed. This supplies a literal subtype inclusion
rather than an equality or an unverified cardinal coincidence.

Boundary checks: k=0 is EXCLUDED from finiteness. Frob^0=id on
E(AlgebraicClosure K), an infinite point set. No finite-flat
characteristic-primary torsion scheme is reconstructed. Finite fixed
loci and their tower monotonicity DO NOT imply the isogeny-degree
identity, Frobenius trace recurrence, Hasse, finite-field RH, or
classical zeta RH/Dirichlet GRH. Those remain separate consumers.

Source pins: grwtsk/math@eef4e69aac22d8e6495052b391ed381b80f5eda0,
Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612,
`FiniteField.Extension`/`natCard_extension`, `IsAlgClosed.lift`,
`WeierstrassCurve.Affine.nonsingularPointEquiv` and prior
`FrobeniusFixedFieldRealization.fixedPointComparisonOfEmbedding`.
The assertions are standard finite-field facts, not claimed novel.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.CanonicalFrobeniusFixedTower

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedFieldRealization
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFixedPointReturn

/-! ## Finite native point types, without any supplied Fintype on the curve -/

/-- A finite coefficient field yields finite genuine affine-or-infinity
Weierstrass points, by the original `nonsingularPointEquiv`.
No elliptic-isogeny theorem, point-count oracle or curve-order axiom. -/
theorem finiteAffinePoints {F : Type*} [Field F] [Finite F]
    (W : WeierstrassCurve F) : Finite W.toAffine.Point := by
  classical
  letI : Finite
      (WithZero {xy : F × F // W.toAffine.Nonsingular xy.1 xy.2}) := inferInstance
  exact Finite.of_equiv _ (W.toAffine.nonsingularPointEquiv).symm

/-- The native projective model is also finite once its *existing*
Mathlib projective-affine group equivalence is available. -/
theorem finiteProjectivePoints {F : Type*} [Field F] [Finite F]
    (W : WeierstrassCurve F) [W.IsElliptic] : Finite W.Point := by
  classical
  letI : Finite W.toAffine.Point := finiteAffinePoints W
  exact Finite.of_equiv _
    (WeierstrassCurve.Projective.Point.toAffineAddEquiv W).symm.toEquiv

/-! ## Actual positive-level Frobenius fixed-point finiteness -/

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- No user-supplied extension field, K-embedding or cardinal equality.
The required field is a native `FiniteField.Extension` with the actual
characteristic extracted from the finite field K. -/
theorem finiteGeometricFixedFiber (k : ℕ) (hk : 0 < k) :
    Finite (GeometricFixedFiber W k) := by
  classical
  obtain ⟨p, hchar, _e, hp, _hq⟩ := FiniteField.card' K
  letI : Fact p.Prime := ⟨hp⟩
  letI : CharP K p := hchar
  letI : NeZero k := ⟨Nat.ne_of_gt hk⟩
  let M : Type := FiniteField.Extension K p k
  letI : Fintype M := Fintype.ofFinite M
  letI : (W.baseChange M).toAffine.IsElliptic := inferInstance
  have hcard : Fintype.card M = (Fintype.card K) ^ k := by
    simpa only [Fintype.card_eq_nat_card] using
      (FiniteField.natCard_extension K p k)
  let j : M →ₐ[K] Closure K := IsAlgClosed.lift
  letI : Finite ((W.baseChange M).toAffine.Point) :=
    finiteAffinePoints (W.baseChange M)
  exact Finite.of_equiv _
    (fixedPointComparisonOfEmbedding W k hk j hcard).toFixed

/-- A usable finite enumeration instance for the true geometric
Frobenius fixed-point fiber, available for EACH k>0. It is classical,
not a claim that field elements have an effective numerical listing. -/
noncomputable def geometricFixedFintype (k : ℕ) (hk : 0 < k) :
    Fintype (GeometricFixedFiber W k) := by
  letI := finiteGeometricFixedFiber W k hk
  exact Fintype.ofFinite _

/-- Every positive-power Frobenius fixed locus contains the actual
point at infinity, so its genuine finite cardinality is positive. -/
theorem geometricFixedCounts_pos (k : ℕ) (hk : 0 < k) :
    0 < geometricFixedCounts W k := by
  classical
  letI := geometricFixedFintype W k hk
  haveI : Nonempty (GeometricFixedFiber W k) := ⟨fixedInfinity W k⟩
  simpa only [geometricFixedCounts, Nat.card_eq_fintype_card] using
    (Fintype.card_pos : 0 < Fintype.card (GeometricFixedFiber W k))

/-! ## The authentic extension-degree divisibility order -/

/-- A coordinate fixed by q^m-Frobenius is fixed by q^n-Frobenius
whenever m divides n. No assumption on m or n besides divisibility. -/
theorem fieldFixed_of_dvd (m n : ℕ) (hmn : m ∣ n)
    (x : Closure K)
    (hx : fieldFrobeniusPower (K := K) m x = x) :
    fieldFrobeniusPower (K := K) n x = x := by
  rcases hmn with ⟨r, rfl⟩
  rw [fieldFrobeniusPower_apply] at hx ⊢
  have hi : ∀ j : ℕ, x ^ ((Fintype.card K ^ m) ^ j) = x := by
    intro j
    induction j with
    | zero => simp
    | succ j ih =>
        rw [pow_succ, pow_mul, ih, hx]
  simpa only [pow_mul] using hi r

/-- The genuine elliptic infinity point is retained, and each
non-infinite point is fixed iff its original two coordinates are fixed.
Consequently m|n gives the *actual* fixed-point inclusion. -/
theorem geometricPointFixed_of_dvd (m n : ℕ) (hmn : m ∣ n)
    (P : (W.baseChange (Closure K)).toAffine.Point)
    (hm : geometricPointFrobeniusPower W m P = P) :
    geometricPointFrobeniusPower W n P = P := by
  classical
  rcases P with _ | ⟨x, y, h⟩
  · exact geometricPointFrobeniusPower_zero W n
  · have hxy : fieldFrobeniusPower (K := K) m x = x ∧
        fieldFrobeniusPower (K := K) m y = y := by
      simpa only [geometricPointFrobeniusPower,
        WeierstrassCurve.Affine.Point.map_some,
        WeierstrassCurve.Affine.Point.some.injEq] using hm
    have hnxy : fieldFrobeniusPower (K := K) n x = x ∧
        fieldFrobeniusPower (K := K) n y = y :=
      ⟨fieldFixed_of_dvd m n hmn x hxy.1,
        fieldFixed_of_dvd m n hmn y hxy.2⟩
    simpa only [geometricPointFrobeniusPower,
      WeierstrassCurve.Affine.Point.map_some,
      WeierstrassCurve.Affine.Point.some.injEq] using hnxy

/-- Exact point-preserving embedding between the ORIGINAL fixed fibers,
not a map between detached cardinality labels. -/
def fixedFiberInclusion (m n : ℕ) (hmn : m ∣ n) :
    GeometricFixedFiber W m → GeometricFixedFiber W n :=
  fun P => ⟨P.1, geometricPointFixed_of_dvd W m n hmn P.1 P.2⟩

/-- The inclusion does not identify two originally distinct points. -/
theorem fixedFiberInclusion_injective (m n : ℕ) (hmn : m ∣ n) :
    Function.Injective (fixedFiberInclusion W m n hmn) := by
  intro P Q h
  exact Subtype.ext (congrArg Subtype.val h)

/-- Identity in the positive-degree fixed-locus inclusion system. -/
@[simp] theorem fixedFiberInclusion_self (m : ℕ)
    (P : GeometricFixedFiber W m) :
    fixedFiberInclusion W m m (dvd_refl m) P = P := by
  apply Subtype.ext
  rfl

/-- Path composition preserves the exact underlying elliptic point.
There is no dependence on a choice of divisor witnesses. -/
theorem fixedFiberInclusion_comp (m n r : ℕ)
    (hmn : m ∣ n) (hnr : n ∣ r)
    (P : GeometricFixedFiber W m) :
    fixedFiberInclusion W n r hnr (fixedFiberInclusion W m n hmn P) =
      fixedFiberInclusion W m r (dvd_trans hmn hnr) P := by
  apply Subtype.ext
  rfl

/-- Literal fixed-point counts are monotone along divisibility of
positive extension degrees. This is source-exact and Hasse-independent. -/
theorem geometricFixedCounts_le_of_dvd
    (m n : ℕ) (hm : 0 < m) (hn : 0 < n) (hmn : m ∣ n) :
    geometricFixedCounts W m ≤ geometricFixedCounts W n := by
  classical
  letI := geometricFixedFintype W m hm
  letI := geometricFixedFintype W n hn
  simpa only [geometricFixedCounts, Nat.card_eq_fintype_card] using
    Fintype.card_le_of_injective (fixedFiberInclusion W m n hmn)
      (fixedFiberInclusion_injective W m n hmn)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.CanonicalFrobeniusFixedTower

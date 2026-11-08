/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source formalization candidate; independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticGeometricFixedPointReturn
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib

/-!
# Geometric q^k-Frobenius fixed fields and native elliptic point descent

This is a SOURCE-EXACT attempt to discharge the previous
`GenuineGeometricFrobenius.ExtensionFixedFieldSource` and
`GeometricFixedPointReturn.FixedPointComparison`, not to introduce new
point types or a new Frobenius operation.

Fix K=F_q, L=AlgebraicClosure K and a genuine finite field extension
M/K of size q^k (k>0), together with its actual K-algebra embedding
j : M -> L. The roots of X^(q^k)-X in L are AT MOST q^k in number.
The image of M has exactly q^k members, all fixed by q^k-Frobenius
by the native `FiniteField.pow_card`. Therefore the image is exactly
the fixed field. No irreducibility/derivative assumption or arbitrary
point-count oracle is needed for this finite comparison.

The genuine native Weierstrass affine-or-infinity point map induced by
j then identifies E(M) with the *literal* `GeometricFixedFiber W k`:
zero/infinity is fixed, and an affine point is fixed precisely when
both of its actual coordinates belong to the image of j. Injectivity
of j returns nonsingularity of the original M-point. The resulting
bijection preserves source point identities and is NOT a fake numerical
cardinality match.

The main theorems take the real extension embedding and cardinality
as explicit arguments. They do not prove that an arbitrary offered
finite field is the right q^k extension. Canonical existence of M is
provided by Mathlib's `FiniteField.Extension`, but a separate final
instantiation must match its field instances and embedding into L.

The independent elliptic isogeny degree formula, necessary to convert
these genuine fixed-point counts into `ExtensionCountSource`, is NOT
proved here. See `EllipticFrobeniusDegreeNorm` for the completed
purely algebraic Frobenius norm identity. No finite Markov or spin
positivity is used.

Comparison: CBirkbeck/AINTLIB@c3bc9bfafaf32cf281da174a7ec287c1e56acc99,
`HasseWeil/Foundation/Curves/Frobenius/FrobeniusFixedLocus.lean`
(blob 1107ec2e28a5c2591b63c2a2888efafdcb230b57) and
`FrobeniusFixedPoint.lean` (blob 5caa1af5fe1001ad9e7d6b962612838da2b4c99c).
Those proofs cover k=1 over K; the source argument here treats any
specified finite extension M of cardinality q^k. Upstream source
is Apache-2.0; no upstream source text has been copied into this file.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedFieldRealization

open Polynomial
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFixedPointReturn

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]
variable {M : Type*} [Field M] [Fintype M] [Algebra K M]

/-- The actual embedding of a specified finite extension into the
actual native algebraic closure. -/
noncomputable def finiteExtensionImage (j : M →ₐ[K] Closure K) : Finset (Closure K) :=
  Finset.univ.image j

/-- For k>0, the q^k fixed field is exactly the image of ANY finite
K-extension M of cardinality q^k under an actual K-embedding.
The polynomial-root bound and the full image inclusion are both
proved directly, not requested as an oracle. -/
theorem fieldFrobeniusPower_fixed_iff_embedding
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k)
    (x : Closure K) :
    fieldFrobeniusPower (K := K) k x = x ↔ ∃ y : M, j y = x := by
  classical
  let p : (Closure K)[X] := X ^ ((Fintype.card K) ^ k) - X
  let image : Finset (Closure K) := Finset.univ.image j
  let roots : Finset (Closure K) := p.roots.toFinset
  have hq : 1 < Fintype.card K := Fintype.one_lt_card
  have hqk : 1 < (Fintype.card K) ^ k :=
    one_lt_pow₀ hq (by omega)
  have hpne : p ≠ 0 := Polynomial.X_pow_sub_X_ne_zero (R := Closure K) hqk
  have hpdegree : p.natDegree = (Fintype.card K) ^ k :=
    Polynomial.natDegree_X_pow_sub_X (R := Closure K) hqk
  have hmem (z : Closure K) : z ∈ roots ↔ z ^ ((Fintype.card K) ^ k) = z := by
    change z ∈ p.roots.toFinset ↔ _
    rw [Multiset.mem_toFinset, Polynomial.mem_roots hpne, Polynomial.IsRoot.def]
    simp [p]
  have himage : image.card = (Fintype.card K) ^ k := by
    change (Finset.univ.image j).card = _
    rw [Finset.card_image_of_injective _ j.injective, Finset.card_univ, hcard]
  have hsub : image ⊆ roots := by
    intro z hz
    obtain ⟨y, _, rfl⟩ := Finset.mem_image.mp hz
    rw [hmem]
    rw [← hcard, ← map_pow, FiniteField.pow_card]
  have hrootbound : roots.card ≤ (Fintype.card K) ^ k := by
    calc
      roots.card ≤ p.roots.card := Multiset.toFinset_card_le _
      _ ≤ p.natDegree := Polynomial.card_roots' _
      _ = (Fintype.card K) ^ k := hpdegree
  have himage_eq : image = roots :=
    Finset.eq_of_subset_of_card_le hsub (by omega)
  rw [fieldFrobeniusPower_apply, ← hmem x, ← himage_eq]
  simp [image, Finset.mem_image]

/-- The old `ExtensionFixedFieldSource` with every field-equality
premise DISCHARGED from a real embedding and its true cardinality. -/
noncomputable def extensionFixedFieldSourceOfEmbedding
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k) :
    ExtensionFixedFieldSource (K := K) M k where
  embedding := j
  cardinality := hcard
  exact_image := fieldFrobeniusPower_fixed_iff_embedding k hk j hcard

variable (W : WeierstrassCurve K)
variable [W.toAffine.IsElliptic]
variable [(W.baseChange M).toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- Genuine source-preserving point base change induced by j. -/
noncomputable def includeExtensionPoints (j : M →ₐ[K] Closure K) :
    (W.baseChange M).toAffine.Point →+
      (W.baseChange (Closure K)).toAffine.Point :=
  WeierstrassCurve.Affine.Point.map (W' := W.toAffine) j

/-- Fixed point means BOTH original affine coordinates are fixed,
or the distinguished point at infinity is fixed. We reuse the old
geometricPointFrobeniusPower rather than substituting another action. -/
theorem pointFrobenius_fixed_iff_range
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k)
    (P : (W.baseChange (Closure K)).toAffine.Point) :
    geometricPointFrobeniusPower W k P = P ↔
      P ∈ Set.range (includeExtensionPoints W j) := by
  classical
  rcases P with _ | ⟨x, y, h⟩
  · constructor
    · intro _
      exact ⟨0, by simp [includeExtensionPoints]⟩
    · intro _
      exact geometricPointFrobeniusPower_zero W k
  · change
      WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
        (fieldFrobeniusPower (K := K) k).toAlgHom
        (.some x y h) = .some x y h ↔ _
    rw [WeierstrassCurve.Affine.Point.map_some, WeierstrassCurve.Affine.Point.some.injEq]
    rw [fieldFrobeniusPower_fixed_iff_embedding k hk j hcard x,
      fieldFrobeniusPower_fixed_iff_embedding k hk j hcard y]
    constructor
    · rintro ⟨⟨x₀, rfl⟩, ⟨y₀, rfl⟩⟩
      refine ⟨.some x₀ y₀ ?_, ?_⟩
      · exact (WeierstrassCurve.Affine.baseChange_nonsingular
          W.toAffine j.injective x₀ y₀).mp h
      · simp [includeExtensionPoints, WeierstrassCurve.Affine.Point.map_some]
    · rintro ⟨Q, hQ⟩
      rcases Q with _ | ⟨x₀, y₀, h₀⟩
      · simp [includeExtensionPoints] at hQ
      · rw [includeExtensionPoints, WeierstrassCurve.Affine.Point.map_some,
          WeierstrassCurve.Affine.Point.some.injEq] at hQ
        exact ⟨⟨x₀, hQ.1⟩, ⟨y₀, hQ.2⟩⟩

/-- A real equivalence between the full E(M) and the original fixed
Frobenius^k subtype. It preserves every actual native point through
WeierstrassCurve.Affine.Point.map. -/
noncomputable def fixedPointComparisonOfEmbedding
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k) :
    FixedPointComparison W M k := by
  classical
  let f : (W.baseChange M).toAffine.Point → GeometricFixedFiber W k :=
    fun P => ⟨includeExtensionPoints W j P,
      (pointFrobenius_fixed_iff_range W k hk j hcard _).2 ⟨P, rfl⟩⟩
  have hf_inj : Function.Injective f := by
    intro P Q h
    exact (WeierstrassCurve.Affine.Point.map_injective
      (W' := W.toAffine) (f := j)) (congrArg Subtype.val h)
  have hf_surj : Function.Surjective f := by
    intro P
    obtain ⟨Q, hQ⟩ :=
      (pointFrobenius_fixed_iff_range W k hk j hcard P.1).1 P.2
    refine ⟨Q, Subtype.ext ?_⟩
    exact hQ
  exact {
    field := extensionFixedFieldSourceOfEmbedding k hk j hcard
    toFixed := Equiv.ofBijective f ⟨hf_inj, hf_surj⟩
    source_map := fun P => rfl }

/-- The original source's fixed-point cardinal comparison follows from
an actual field embedding and field size. No auxiliary count value. -/
theorem fixed_count_eq_extension_point_count
    (k : ℕ) (hk : 0 < k) (j : M →ₐ[K] Closure K)
    (hcard : Fintype.card M = (Fintype.card K) ^ k) :
    Nat.card (GeometricFixedFiber W k) =
      Nat.card ((W.baseChange M).toAffine.Point) :=
  fixed_card_eq_native_extension W M k
    (fixedPointComparisonOfEmbedding W k hk j hcard)

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FrobeniusFixedFieldRealization

# Complete source: GRWTSK.Topology.GeneralTopology.CharacterSpace.Variant04020d7828fce0a6d13e698675b581618b6c2fbbd71d68df84eb5d5201292303

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0202702d8b0943875abde77fdc64e27b0e6d4bf6` · SHA-256 `a559ee2e21bb53c34d2b6281cd04d2351562540b1a1f7d8720dc92536bb102ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CharacterSpace.Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CharacterSpace.Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed","mathematical_subject":"Topology.GeneralTopology","original_sha256":"dd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Algebra/Module/Spaces/CharacterSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Frédéric Dupuis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Frédéric Dupuis
-/
module

public import Mathlib.Algebra.Algebra.Spectrum.Basic
public import Mathlib.Topology.Algebra.Module.Spaces.WeakDual
public import Mathlib.Topology.ContinuousMap.Algebra

/-!
# Character space of a topological algebra

The character space of a topological algebra is the subset of elements of the weak dual that
are also algebra homomorphisms. This space is used in the Gelfand transform, which gives an
isomorphism between a commutative C⋆-algebra and continuous functions on the character space
of the algebra. This, in turn, is used to construct the continuous functional calculus on
C⋆-algebras.


## Implementation notes

We define `WeakDual.characterSpace 𝕜 A` as a subset of the weak dual, which automatically puts the
correct topology on the space. We then define `WeakDual.CharacterSpace.toAlgHom` which provides the
algebra homomorphism corresponding to any element. We also provide `WeakDual.CharacterSpace.toCLM`
which provides the element as a continuous linear map. (Even though `WeakDual 𝕜 A` is a type copy of
`A →L[𝕜] 𝕜`, this is often more convenient.)

## Tags

character space, Gelfand transform, functional calculus

-/


namespace GRWTSK.Topology.GeneralTopology.CharacterSpace.Variantdd3246b6bff05b4a9c0d5b2e99eb7a60552f77757e47a8d7363a14c1a915f0ed

@[expose] public section


namespace WeakDual

/-- The character space of a topological algebra is the subset of elements of the weak dual that
are also algebra homomorphisms. -/
def characterSpace (𝕜 : Type*) (A : Type*) [CommSemiring 𝕜] [TopologicalSpace 𝕜] [ContinuousAdd 𝕜]
    [ContinuousConstSMul 𝕜 𝕜] [NonUnitalNonAssocSemiring A] [TopologicalSpace A] [Module 𝕜 A] :=
  {φ : WeakDual 𝕜 A | φ ≠ 0 ∧ ∀ x y : A, φ (x * y) = φ x * φ y}

variable {𝕜 : Type*} {A : Type*}

-- Even though the capitalization of the namespace differs, it doesn't matter
-- because there is no dot notation since `characterSpace` is only a type via `CoeSort`.
namespace CharacterSpace

section NonUnitalNonAssocSemiring

variable [CommSemiring 𝕜] [TopologicalSpace 𝕜] [ContinuousAdd 𝕜] [ContinuousConstSMul 𝕜 𝕜]
  [NonUnitalNonAssocSemiring A] [TopologicalSpace A] [Module 𝕜 A]

@[macro_inline]
noncomputable instance instFunLike : FunLike (characterSpace 𝕜 A) A 𝕜 where
  coe φ := ((φ : WeakDual 𝕜 A) : A → 𝕜)
  coe_injective φ ψ h := by ext1; apply DFunLike.ext; exact congr_fun h

/-- Elements of the character space are continuous linear maps. -/
instance instContinuousLinearMapClass : ContinuousLinearMapClass (characterSpace 𝕜 A) 𝕜 A 𝕜 where
  map_smulₛₗ φ := (φ : WeakDual 𝕜 A).map_smul
  map_add φ := (φ : WeakDual 𝕜 A).map_add
  map_continuous φ := (φ : WeakDual 𝕜 A).cont

/-- This has to come after `WeakDual.CharacterSpace.instFunLike`, otherwise the right-hand side
gets coerced via `Subtype.val` instead of directly via `DFunLike`. -/
@[simp, norm_cast]
protected theorem coe_coe (φ : characterSpace 𝕜 A) : ⇑(φ : WeakDual 𝕜 A) = (φ : A → 𝕜) :=
  rfl

@[ext]
theorem ext {φ ψ : characterSpace 𝕜 A} (h : ∀ x, φ x = ψ x) : φ = ψ :=
  DFunLike.ext _ _ h

/-- An element of the character space, as a continuous linear map. -/
def toCLM (φ : characterSpace 𝕜 A) : A →L[𝕜] 𝕜 :=
  (φ : WeakDual 𝕜 A)

@[simp]
theorem coe_toCLM (φ : characterSpace 𝕜 A) : ⇑(toCLM φ) = φ :=
  rfl

/-- Elements of the character space are non-unital algebra homomorphisms. -/
instance instNonUnitalAlgHomClass : NonUnitalAlgHomClass (characterSpace 𝕜 A) 𝕜 A 𝕜 :=
  { CharacterSpace.instContinuousLinearMapClass with
    map_smulₛₗ := fun φ => map_smul φ
    map_zero := fun φ => map_zero φ
    map_mul := fun φ => φ.prop.2 }

/-- An element of the character space, as a non-unital algebra homomorphism. -/
noncomputable def toNonUnitalAlgHom (φ : characterSpace 𝕜 A) : A →ₙₐ[𝕜] 𝕜 where
  toFun := (φ : A → 𝕜)
  map_mul' := map_mul φ
  map_smul' := map_smul φ
  map_zero' := map_zero φ
  map_add' := map_add φ

@[simp]
theorem coe_toNonUnitalAlgHom (φ : characterSpace 𝕜 A) : ⇑(toNonUnitalAlgHom φ) = φ :=
  rfl

set_option backward.isDefEq.respectTransparency false in
instance instIsEmpty [Subsingleton A] : IsEmpty (characterSpace 𝕜 A) :=
  ⟨fun φ => φ.prop.1 <|
    ContinuousLinearMap.ext fun x => by
      rw [show x = 0 from Subsingleton.elim x 0, map_zero, map_zero] ⟩

variable (𝕜 A)

theorem union_zero :
    characterSpace 𝕜 A ∪ {0} = {φ : WeakDual 𝕜 A | ∀ x y : A, φ (x * y) = φ x * φ y} :=
  le_antisymm (by
      rintro φ (hφ | rfl)
      · exact hφ.2
      · exact fun _ _ => by exact (zero_mul (0 : 𝕜)).symm)
    fun φ hφ => Or.elim (em <| φ = 0) Or.inr fun h₀ => Or.inl ⟨h₀, hφ⟩

/-- The `characterSpace 𝕜 A` along with `0` is always a closed set in `WeakDual 𝕜 A`. -/
theorem union_zero_isClosed [T2Space 𝕜] [ContinuousMul 𝕜] :
    IsClosed (characterSpace 𝕜 A ∪ {0}) := by
  simp only [union_zero, Set.ofPred_forall]
  exact
    isClosed_iInter fun x =>
      isClosed_iInter fun y =>
        isClosed_eq (eval_continuous _) <| (eval_continuous _).mul (eval_continuous _)

end NonUnitalNonAssocSemiring

section Unital

variable [CommRing 𝕜] [NoZeroDivisors 𝕜] [TopologicalSpace 𝕜] [ContinuousAdd 𝕜]
  [ContinuousConstSMul 𝕜 𝕜] [TopologicalSpace A] [Semiring A] [Algebra 𝕜 A]

/-- In a unital algebra, elements of the character space are algebra homomorphisms. -/
instance instAlgHomClass : AlgHomClass (characterSpace 𝕜 A) 𝕜 A 𝕜 :=
  haveI map_one' : ∀ φ : characterSpace 𝕜 A, φ 1 = 1 := fun φ => by
    have h₁ : φ 1 * (1 - φ 1) = 0 := by rw [mul_sub, sub_eq_zero, mul_one, ← map_mul φ, one_mul]
    rcases mul_eq_zero.mp h₁ with (h₂ | h₂)
    · have : ∀ a, φ (a * 1) = 0 := fun a => by simp only [map_mul φ, h₂, mul_zero]
      exact False.elim (φ.prop.1 <| ContinuousLinearMap.ext <| by simpa only [mul_one] using! this)
    · exact (sub_eq_zero.mp h₂).symm
  { CharacterSpace.instNonUnitalAlgHomClass with
    map_one := map_one'
    commutes := fun φ r => by
      rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_self, RingHom.id_apply]
      rw [map_smul, smul_eq_mul, map_one' φ, mul_one] }

/-- An element of the character space of a unital algebra, as an algebra homomorphism. -/
@[simps]
noncomputable def toAlgHom (φ : characterSpace 𝕜 A) : A →ₐ[𝕜] 𝕜 :=
  { toNonUnitalAlgHom φ with
    map_one' := map_one φ
    commutes' := AlgHomClass.commutes φ }

theorem eq_set_map_one_map_mul [Nontrivial 𝕜] :
    characterSpace 𝕜 A = {φ : WeakDual 𝕜 A | φ 1 = 1 ∧ ∀ x y : A, φ (x * y) = φ x * φ y} := by
  ext φ
  refine ⟨?_, ?_⟩
  · rintro hφ
    lift φ to characterSpace 𝕜 A using hφ
    exact ⟨map_one φ, map_mul φ⟩
  · rintro ⟨hφ₁, hφ₂⟩
    refine ⟨?_, hφ₂⟩
    rintro rfl
    exact zero_ne_one hφ₁

/-- under suitable mild assumptions on `𝕜`, the character space is a closed set in
`WeakDual 𝕜 A`. -/
protected theorem isClosed [Nontrivial 𝕜] [T2Space 𝕜] [ContinuousMul 𝕜] :
    IsClosed (characterSpace 𝕜 A) := by
  rw [eq_set_map_one_map_mul, Set.ofPred_and]
  refine IsClosed.inter (isClosed_eq (eval_continuous _) continuous_const) ?_
  simpa only [(union_zero 𝕜 A).symm] using union_zero_isClosed _ _

end Unital

section Ring

variable [CommRing 𝕜] [NoZeroDivisors 𝕜] [TopologicalSpace 𝕜] [ContinuousAdd 𝕜]
  [ContinuousConstSMul 𝕜 𝕜] [TopologicalSpace A] [Ring A] [Algebra 𝕜 A]

theorem apply_mem_spectrum [Nontrivial 𝕜] (φ : characterSpace 𝕜 A) (a : A) : φ a ∈ spectrum 𝕜 a :=
  AlgHom.apply_mem_spectrum φ a

theorem ext_ker {φ ψ : characterSpace 𝕜 A} (h : RingHom.ker φ = RingHom.ker ψ) : φ = ψ := by
  ext x
  have : x - algebraMap 𝕜 A (ψ x) ∈ RingHom.ker φ := by
    simpa only [h, RingHom.mem_ker, map_sub, AlgHomClass.commutes] using! sub_self (ψ x)
  rwa [RingHom.mem_ker, map_sub, AlgHomClass.commutes, sub_eq_zero] at this

end Ring

end CharacterSpace

section Kernel

variable [Field 𝕜] [TopologicalSpace 𝕜] [ContinuousAdd 𝕜] [ContinuousConstSMul 𝕜 𝕜]
variable [Ring A] [TopologicalSpace A] [Algebra 𝕜 A]

/-- The `RingHom.ker` of `φ : characterSpace 𝕜 A` is maximal. -/
instance ker_isMaximal (φ : characterSpace 𝕜 A) : (RingHom.ker φ).IsMaximal :=
  RingHom.ker_isMaximal_of_surjective φ fun z ↦ ⟨algebraMap 𝕜 A z, by simp [AlgHomClass.commutes]⟩

end Kernel

section GelfandTransform

open ContinuousMap

variable (𝕜 A) [CommRing 𝕜] [NoZeroDivisors 𝕜] [TopologicalSpace 𝕜] [IsTopologicalRing 𝕜]
  [TopologicalSpace A] [Semiring A] [Algebra 𝕜 A]

/-- The **Gelfand transform** is an algebra homomorphism (over `𝕜`) from a topological `𝕜`-algebra
`A` into the `𝕜`-algebra of continuous `𝕜`-valued functions on the `characterSpace 𝕜 A`.
The character space itself consists of all algebra homomorphisms from `A` to `𝕜`. -/
@[simps]
noncomputable def gelfandTransform : A →ₐ[𝕜] C(characterSpace 𝕜 A, 𝕜) where
  toFun a :=
    { toFun := fun φ => φ a
      continuous_toFun := (eval_continuous a).comp continuous_induced_dom }
  map_one' := by ext a; simp only [coe_mk, coe_one, Pi.one_apply, map_one a]
  map_mul' a b := by ext; simp only [map_mul, coe_mk, coe_mul, Pi.mul_apply]
  map_zero' := by ext; simp only [map_zero, coe_mk, coe_zero, Pi.zero_apply]
  map_add' a b := by ext; simp only [map_add, coe_mk, coe_add, Pi.add_apply]
  commutes' k := by ext; simp [AlgHomClass.commutes]

end GelfandTransform

end WeakDual
```

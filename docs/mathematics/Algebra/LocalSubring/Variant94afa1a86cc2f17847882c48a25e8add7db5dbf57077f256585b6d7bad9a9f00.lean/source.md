# Complete source: GRWTSK.Algebra.LocalSubring.Variant94afa1a86cc2f17847882c48a25e8add7db5dbf57077f256585b6d7bad9a9f00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c19fe2dbad2b98526a496814a27222356bc1d2bc` · SHA-256 `8ba6646de7df0e737187d08b51eaa73b700dc3600d72e76f55d9c34441036220`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LocalSubring.Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.LocalSubring.Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/LocalSubring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang, Yaël Dillies, Javier López-Contreras. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang, Yaël Dillies, Javier López-Contreras
-/
import Mathlib.Tactic.FieldSimp
import Mathlib.RingTheory.LocalRing.RingHom.Basic
import Mathlib.RingTheory.Localization.AtPrime


/-!
# Local subrings of fields

# Main result
- `LocalSubring` : The class of local subrings of a commutative ring.
- `LocalSubring.ofPrime`: The localization of a subring as a `LocalSubring`.
-/


namespace GRWTSK.Algebra.LocalSubring.Variantc04d81d17f10b66277b0f8114da77fd77bfc05614f519679c8935647d9ecf293

open IsLocalRing Set

variable {R S : Type*} [CommRing R] [CommRing S]
variable {K : Type*} [Field K]

instance [Nontrivial S] (f : R →+* S) (s : Subring R) [IsLocalRing s] : IsLocalRing (s.map f) :=
  .of_surjective' (f.restrict s _ (fun _ ↦ Set.mem_image_of_mem f))
    (fun ⟨_, a, ha, e⟩ ↦ ⟨⟨a, ha⟩, Subtype.ext e⟩)

instance isLocalRing_top [IsLocalRing R] : IsLocalRing (⊤ : Subring R) :=
  Subring.topEquiv.symm.isLocalRing

variable (R) in
/-- The class of local subrings of a commutative ring. -/
@[ext]
structure LocalSubring where
  /-- The underlying subring of a local subring. -/
  toSubring : Subring R
  [isLocalRing : IsLocalRing toSubring]

namespace LocalSubring

attribute [instance] isLocalRing

lemma toSubring_injective : Function.Injective (toSubring (R := R)) := by
  rintro ⟨a, b⟩ ⟨c, d⟩ rfl; rfl

/-- Copy of a local subring with a new `carrier` equal to the old one.
Useful to fix definitional equalities. -/
protected def copy (S : LocalSubring R) (s : Set R) (hs : s = ↑S.toSubring) : LocalSubring R :=
  LocalSubring.mk (S.toSubring.copy s hs) (isLocalRing := hs ▸ S.2)

/-- The image of a `LocalSubring` as a `LocalSubring`. -/
@[simps! toSubring]
def map [Nontrivial S] (f : R →+* S) (s : LocalSubring R) : LocalSubring S :=
  mk (s.1.map f)

/-- The range of a ringhom from a local ring as a `LocalSubring`. -/
@[simps! toSubring]
def range [IsLocalRing R] [Nontrivial S] (f : R →+* S) : LocalSubring S :=
  .copy (map f (mk ⊤)) f.range (by ext x; exact congr(x ∈ $(Set.image_univ.symm)))

/--
The domination order on local subrings.
`A` dominates `B` if and only if `B ≤ A` (as subrings) and `m_A ∩ B = m_B`.
-/
@[stacks 00I9]
instance : PartialOrder (LocalSubring R) where
  le A B := ∃ h : A.1 ≤ B.1, IsLocalHom (Subring.inclusion h)
  le_refl a := ⟨le_rfl, ⟨fun _ ↦ id⟩⟩
  le_trans A B C h₁ h₂ := ⟨h₁.1.trans h₂.1, @RingHom.isLocalHom_comp _ _ _ _ _ _ _ _ h₂.2 h₁.2⟩
  le_antisymm A B h₁ h₂ := toSubring_injective (le_antisymm h₁.1 h₂.1)

/-- `A` dominates `B` if and only if `B ≤ A` (as subrings) and `m_A ∩ B = m_B`. -/
lemma le_def {A B : LocalSubring R} :
    A ≤ B ↔ ∃ h : A.toSubring ≤ B.toSubring, IsLocalHom (Subring.inclusion h) := Iff.rfl

lemma toSubring_mono : Monotone (toSubring (R := R)) :=
  fun _ _ e ↦ e.1

section ofPrime

variable (A : Subring K) (P : Ideal A) [P.IsPrime]

/-- The localization of a subring at a prime, as a local subring.
Also see `Localization.subalgebra.ofField` -/
noncomputable
def ofPrime (A : Subring K) (P : Ideal A) [P.IsPrime] : LocalSubring K :=
  range (IsLocalization.lift (M := P.primeCompl) (S := Localization.AtPrime P)
    (g := A.subtype) (by simp [Ideal.primeCompl, not_imp_not]))

lemma le_ofPrime : A ≤ (ofPrime A P).toSubring := by
  intro x hx
  exact ⟨algebraMap A _ ⟨x, hx⟩, by simp⟩

noncomputable
instance : Algebra A (ofPrime A P).toSubring := (Subring.inclusion (le_ofPrime A P)).toAlgebra

instance : IsScalarTower A (ofPrime A P).toSubring K := .of_algebraMap_eq (fun _ ↦ rfl)

/-- The localization of a subring at a prime is indeed isomorphic to its abstract localization. -/
noncomputable
def ofPrimeEquiv : Localization.AtPrime P ≃ₐ[A] (ofPrime A P).toSubring := by
  refine AlgEquiv.ofInjective (IsLocalization.liftAlgHom (M := P.primeCompl)
    (S := Localization.AtPrime P) (f := Algebra.ofId A K) _) ?_
  intro x y e
  obtain ⟨x, s, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl x
  obtain ⟨y, t, rfl⟩ := IsLocalization.mk'_surjective P.primeCompl y
  have H (x : P.primeCompl) : x.1 ≠ 0 := by aesop
  have : x.1 = y.1 * t.1.1⁻¹ * s.1.1 := by
    simpa [IsLocalization.lift_mk', Algebra.ofId_apply, H,
      Algebra.algebraMap_ofSubring_apply, IsUnit.coe_liftRight] using congr($e * s.1.1)
  rw [IsLocalization.mk'_eq_iff_eq]
  congr 1
  ext
  field_simp [H t, this, mul_comm]

instance : IsLocalization.AtPrime (ofPrime A P).toSubring P :=
  IsLocalization.isLocalization_of_algEquiv _ (ofPrimeEquiv A P)

end ofPrime

end LocalSubring
```

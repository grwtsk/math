# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.CochainComplex.Variant825d3c18ed28bea14ae677891a4cd76b5b6bb826fd940769c01a7294d2541521

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1088f6d858e07df08db2ad27545e115645baf715` · SHA-256 `4cf61bb3d528ac2658a7b5226dbe275d1e7669dab83f248ff2a80a757a7af56c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncLE.Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.TruncLE.Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Embedding/CochainComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Embedding.TruncLEHomology
import Mathlib.Algebra.Homology.HomotopyCategory.SingleFunctors
import Mathlib.Algebra.Homology.HomotopyCategory.ShiftSequence

/-!
# Truncations on cochain complexes indexed by the integers.

In this file, we introduce abbreviations for the canonical truncations
`CochainComplex.truncLE`, `CochainComplex.truncGE` of cochain
complexes indexed by `ℤ`, as well as the conditions
`CochainComplex.IsStrictlyLE`, `CochainComplex.IsStrictlyGE`,
`CochainComplex.IsLE`, and `CochainComplex.IsGE`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TruncLE.Variant5d7fbcc6cc5ac846af35d8cb77cfdf23fa1820bdbd4b262a060175a4d6ffd14a

open CategoryTheory Category Limits ComplexShape ZeroObject

namespace CochainComplex

variable {C : Type*} [Category C]

open HomologicalComplex

section HasZeroMorphisms

variable [HasZeroMorphisms C] (K L : CochainComplex C ℤ) (φ : K ⟶ L) (e : K ≅ L)

section

variable [HasZeroObject C] [∀ i, K.HasHomology i] [∀ i, L.HasHomology i]

/-- If `K : CochainComplex C ℤ`, this is the canonical truncation `≤ n` of `K`. -/
noncomputable abbrev truncLE (n : ℤ) : CochainComplex C ℤ :=
  HomologicalComplex.truncLE K (embeddingUpIntLE n)

/-- If `K : CochainComplex C ℤ`, this is the canonical truncation `≥ n` of `K`. -/
noncomputable abbrev truncGE (n : ℤ) : CochainComplex C ℤ :=
  HomologicalComplex.truncGE K (embeddingUpIntGE n)

/-- The canonical map `K.truncLE n ⟶ K` for `K : CochainComplex C ℤ`. -/
noncomputable def ιTruncLE (n : ℤ) : K.truncLE n ⟶ K :=
  HomologicalComplex.ιTruncLE K (embeddingUpIntLE n)

/-- The canonical map `K ⟶ K.truncGE n` for `K : CochainComplex C ℤ`. -/
noncomputable def πTruncGE (n : ℤ) : K ⟶ K.truncGE n :=
  HomologicalComplex.πTruncGE K (embeddingUpIntGE n)

section

variable {K L}

/-- The morphism `K.truncLE n ⟶ L.truncLE n` induced by a morphism `K ⟶ L`. -/
noncomputable abbrev truncLEMap (n : ℤ) : K.truncLE n ⟶ L.truncLE n :=
  HomologicalComplex.truncLEMap φ (embeddingUpIntLE n)

/-- The morphism `K.truncGE n ⟶ L.truncGE n` induced by a morphism `K ⟶ L`. -/
noncomputable abbrev truncGEMap (n : ℤ) : K.truncGE n ⟶ L.truncGE n :=
  HomologicalComplex.truncGEMap φ (embeddingUpIntGE n)

@[reassoc (attr := simp)]
lemma ιTruncLE_naturality (n : ℤ) :
    truncLEMap φ n ≫ L.ιTruncLE n = K.ιTruncLE n ≫ φ := by
  apply HomologicalComplex.ιTruncLE_naturality

@[reassoc (attr := simp)]
lemma πTruncGE_naturality (n : ℤ) :
    K.πTruncGE n ≫ truncGEMap φ n = φ ≫ L.πTruncGE n := by
  apply HomologicalComplex.πTruncGE_naturality

end

end

/-- The condition that a cochain complex `K` is strictly `≥ n`. -/
abbrev IsStrictlyGE (n : ℤ) := K.IsStrictlySupported (embeddingUpIntGE n)

/-- The condition that a cochain complex `K` is strictly `≤ n`. -/
abbrev IsStrictlyLE (n : ℤ) := K.IsStrictlySupported (embeddingUpIntLE n)

/-- The condition that a cochain complex `K` is (cohomologically) `≥ n`. -/
abbrev IsGE (n : ℤ) := K.IsSupported (embeddingUpIntGE n)

/-- The condition that a cochain complex `K` is (cohomologically) `≤ n`. -/
abbrev IsLE (n : ℤ) := K.IsSupported (embeddingUpIntLE n)

lemma isZero_of_isStrictlyGE (n i : ℤ) (hi : i < n) [K.IsStrictlyGE n] :
    IsZero (K.X i) :=
  isZero_X_of_isStrictlySupported K (embeddingUpIntGE n) i
    (by simpa only [notMem_range_embeddingUpIntGE_iff] using hi)

lemma isZero_of_isStrictlyLE (n i : ℤ) (hi : n < i) [K.IsStrictlyLE n] :
    IsZero (K.X i) :=
  isZero_X_of_isStrictlySupported K (embeddingUpIntLE n) i
    (by simpa only [notMem_range_embeddingUpIntLE_iff] using hi)

lemma exactAt_of_isGE (n i : ℤ) (hi : i < n) [K.IsGE n] :
    K.ExactAt i :=
  exactAt_of_isSupported K (embeddingUpIntGE n) i
    (by simpa only [notMem_range_embeddingUpIntGE_iff] using hi)

lemma exactAt_of_isLE (n i : ℤ) (hi : n < i) [K.IsLE n] :
    K.ExactAt i :=
  exactAt_of_isSupported K (embeddingUpIntLE n) i
    (by simpa only [notMem_range_embeddingUpIntLE_iff] using hi)

lemma isZero_of_isGE (n i : ℤ) (hi : i < n) [K.IsGE n] [K.HasHomology i] :
    IsZero (K.homology i) :=
  (K.exactAt_of_isGE n i hi).isZero_homology

lemma isZero_of_isLE (n i : ℤ) (hi : n < i) [K.IsLE n] [K.HasHomology i] :
    IsZero (K.homology i) :=
  (K.exactAt_of_isLE n i hi).isZero_homology

lemma isStrictlyGE_iff (n : ℤ) :
    K.IsStrictlyGE n ↔ ∀ (i : ℤ) (_ : i < n), IsZero (K.X i) := by
  constructor
  · intro _ i hi
    exact K.isZero_of_isStrictlyGE n i hi
  · intro h
    refine IsStrictlySupported.mk (fun i hi ↦ ?_)
    rw [notMem_range_embeddingUpIntGE_iff] at hi
    exact h i hi

lemma isStrictlyLE_iff (n : ℤ) :
    K.IsStrictlyLE n ↔ ∀ (i : ℤ) (_ : n < i), IsZero (K.X i) := by
  constructor
  · intro _ i hi
    exact K.isZero_of_isStrictlyLE n i hi
  · intro h
    refine IsStrictlySupported.mk (fun i hi ↦ ?_)
    rw [notMem_range_embeddingUpIntLE_iff] at hi
    exact h i hi

lemma isGE_iff (n : ℤ) :
    K.IsGE n ↔ ∀ (i : ℤ) (_ : i < n), K.ExactAt i := by
  constructor
  · intro _ i hi
    exact K.exactAt_of_isGE n i hi
  · intro h
    refine IsSupported.mk (fun i hi ↦ ?_)
    rw [notMem_range_embeddingUpIntGE_iff] at hi
    exact h i hi

lemma isLE_iff (n : ℤ) :
    K.IsLE n ↔ ∀ (i : ℤ) (_ : n < i), K.ExactAt i := by
  constructor
  · intro _ i hi
    exact K.exactAt_of_isLE n i hi
  · intro h
    refine IsSupported.mk (fun i hi ↦ ?_)
    rw [notMem_range_embeddingUpIntLE_iff] at hi
    exact h i hi

lemma isStrictlyLE_of_le (p q : ℤ) (hpq : p ≤ q) [K.IsStrictlyLE p] :
    K.IsStrictlyLE q := by
  rw [isStrictlyLE_iff]
  intro i hi
  apply K.isZero_of_isStrictlyLE p
  omega

lemma isStrictlyGE_of_ge (p q : ℤ) (hpq : p ≤ q) [K.IsStrictlyGE q] :
    K.IsStrictlyGE p := by
  rw [isStrictlyGE_iff]
  intro i hi
  apply K.isZero_of_isStrictlyGE q
  omega

lemma isLE_of_le (p q : ℤ) (hpq : p ≤ q) [K.IsLE p] :
    K.IsLE q := by
  rw [isLE_iff]
  intro i hi
  apply K.exactAt_of_isLE p
  omega

lemma isGE_of_ge (p q : ℤ) (hpq : p ≤ q) [K.IsGE q] :
    K.IsGE p := by
  rw [isGE_iff]
  intro i hi
  apply K.exactAt_of_isGE q
  omega

section

variable {K L}

include e

lemma isStrictlyLE_of_iso (n : ℤ) [K.IsStrictlyLE n] : L.IsStrictlyLE n := by
  apply isStrictlySupported_of_iso e

lemma isStrictlyGE_of_iso (n : ℤ) [K.IsStrictlyGE n] : L.IsStrictlyGE n := by
  apply isStrictlySupported_of_iso e

lemma isLE_of_iso (n : ℤ) [K.IsLE n] : L.IsLE n := by
  apply isSupported_of_iso e

lemma isGE_of_iso (n : ℤ) [K.IsGE n] : L.IsGE n := by
  apply isSupported_of_iso e

end

section

variable [HasZeroObject C]

/-- A cochain complex that is both strictly `≤ n` and `≥ n` is isomorphic to
a complex `(single _ _ n).obj M` for some object `M`. -/
lemma exists_iso_single (n : ℤ) [K.IsStrictlyGE n] [K.IsStrictlyLE n] :
    ∃ (M : C), Nonempty (K ≅ (single _ _ n).obj M) :=
  ⟨K.X n, ⟨{
      hom := mkHomToSingle (𝟙 _) (fun i (hi : i + 1 = n) ↦
        (K.isZero_of_isStrictlyGE n i (by omega)).eq_of_src _ _)
      inv := mkHomFromSingle (𝟙 _) (fun i (hi : n + 1 = i) ↦
        (K.isZero_of_isStrictlyLE n i (by omega)).eq_of_tgt _ _)
      hom_inv_id := by
        ext i
        obtain hi | rfl | hi := lt_trichotomy i n
        · apply (K.isZero_of_isStrictlyGE n i (by omega)).eq_of_src
        · simp
        · apply (K.isZero_of_isStrictlyLE n i (by omega)).eq_of_tgt
      inv_hom_id := by aesop }⟩⟩

instance (A : C) (n : ℤ) :
    IsStrictlyGE ((single C (ComplexShape.up ℤ) n).obj A) n := by
  rw [isStrictlyGE_iff]
  intro i hi
  exact isZero_single_obj_X _ _ _ _ (by omega)

instance (A : C) (n : ℤ) :
    IsStrictlyLE ((single C (ComplexShape.up ℤ) n).obj A) n := by
  rw [isStrictlyLE_iff]
  intro i hi
  exact isZero_single_obj_X _ _ _ _ (by omega)

variable [∀ i, K.HasHomology i] [∀ i, L.HasHomology i] (n : ℤ)

instance [K.IsStrictlyGE n] : IsIso (K.πTruncGE n) := by dsimp [πTruncGE]; infer_instance

instance [K.IsStrictlyLE n] : IsIso (K.ιTruncLE n) := by dsimp [ιTruncLE]; infer_instance

lemma isIso_πTruncGE_iff : IsIso (K.πTruncGE n) ↔ K.IsStrictlyGE n := by
  apply HomologicalComplex.isIso_πTruncGE_iff

lemma isIso_ιTruncLE_iff : IsIso (K.ιTruncLE n) ↔ K.IsStrictlyLE n := by
  apply HomologicalComplex.isIso_ιTruncLE_iff

lemma quasiIso_πTruncGE_iff : QuasiIso (K.πTruncGE n) ↔ K.IsGE n :=
  quasiIso_πTruncGE_iff_isSupported K (embeddingUpIntGE n)

lemma quasiIso_ιTruncLE_iff : QuasiIso (K.ιTruncLE n) ↔ K.IsLE n :=
  quasiIso_ιTruncLE_iff_isSupported K (embeddingUpIntLE n)

instance [K.IsGE n] : QuasiIso (K.πTruncGE n) := by
  rw [quasiIso_πTruncGE_iff]
  infer_instance

instance [K.IsLE n] : QuasiIso (K.ιTruncLE n) := by
  rw [quasiIso_ιTruncLE_iff]
  infer_instance

variable {K L}

lemma quasiIso_truncGEMap_iff :
    QuasiIso (truncGEMap φ n) ↔ ∀ (i : ℤ) (_ : n ≤ i), QuasiIsoAt φ i := by
  rw [HomologicalComplex.quasiIso_truncGEMap_iff]
  constructor
  · intro h i hi
    obtain ⟨k, rfl⟩ := Int.le.dest hi
    exact h k _ rfl
  · rintro h i i' rfl
    exact h _ (by dsimp; omega)

lemma quasiIso_truncLEMap_iff :
    QuasiIso (truncLEMap φ n) ↔ ∀ (i : ℤ) (_ : i ≤ n), QuasiIsoAt φ i := by
  rw [HomologicalComplex.quasiIso_truncLEMap_iff]
  constructor
  · intro h i hi
    obtain ⟨k, rfl⟩ := Int.le.dest hi
    exact h k _ (by dsimp; omega)
  · rintro h i i' rfl
    exact h _ (by dsimp; omega)

end

end HasZeroMorphisms

section Preadditive

variable [Preadditive C]

instance [HasZeroObject C] (A : C) (n : ℤ) : ((singleFunctor C n).obj A).IsStrictlyGE n :=
  inferInstanceAs (IsStrictlyGE ((single C (ComplexShape.up ℤ) n).obj A) n)

instance [HasZeroObject C] (A : C) (n : ℤ) : ((singleFunctor C n).obj A).IsStrictlyLE n :=
  inferInstanceAs (IsStrictlyLE ((single C (ComplexShape.up ℤ) n).obj A) n)

variable (K : CochainComplex C ℤ)

lemma isStrictlyLE_shift (n : ℤ) [K.IsStrictlyLE n] (a n' : ℤ) (h : a + n' = n) :
    (K⟦a⟧).IsStrictlyLE n' := by
  rw [isStrictlyLE_iff]
  intro i hi
  exact IsZero.of_iso (K.isZero_of_isStrictlyLE n _ (by omega)) (K.shiftFunctorObjXIso a i _ rfl)

lemma isStrictlyGE_shift (n : ℤ) [K.IsStrictlyGE n] (a n' : ℤ) (h : a + n' = n) :
    (K⟦a⟧).IsStrictlyGE n' := by
  rw [isStrictlyGE_iff]
  intro i hi
  exact IsZero.of_iso (K.isZero_of_isStrictlyGE n _ (by omega)) (K.shiftFunctorObjXIso a i _ rfl)

section

variable [CategoryWithHomology C]

lemma isLE_shift (n : ℤ) [K.IsLE n] (a n' : ℤ) (h : a + n' = n) : (K⟦a⟧).IsLE n' := by
  rw [isLE_iff]
  intro i hi
  rw [exactAt_iff_isZero_homology]
  exact IsZero.of_iso (K.isZero_of_isLE n (a + i) (by omega))
    (((homologyFunctor C _ (0 : ℤ)).shiftIso a i _ rfl).app K)

lemma isGE_shift (n : ℤ) [K.IsGE n] (a n' : ℤ) (h : a + n' = n) : (K⟦a⟧).IsGE n' := by
  rw [isGE_iff]
  intro i hi
  rw [exactAt_iff_isZero_homology]
  exact IsZero.of_iso (K.isZero_of_isGE n (a + i) (by omega))
    (((homologyFunctor C _ (0 : ℤ)).shiftIso a i _ rfl).app K)

end

end Preadditive

end CochainComplex
```

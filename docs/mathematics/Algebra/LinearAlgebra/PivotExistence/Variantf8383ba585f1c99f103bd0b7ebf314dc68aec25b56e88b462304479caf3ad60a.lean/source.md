# Complete source: GRWTSK.Algebra.LinearAlgebra.PivotExistence.Variantf8383ba585f1c99f103bd0b7ebf314dc68aec25b56e88b462304479caf3ad60a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `adf3edbd6fd3f1bdd6ef017d7b952795ca9a265b` · SHA-256 `eff567151006a1fc7687c907d91ed22caa1f000b1838a92e3958d6248986d2ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DetNeZeroOfIndependentColumns.Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DetNeZeroOfIndependentColumns.Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/0e758eb255363eabc11a932344efd4db91b18fc32b99b4f8a82782d3b6a073b1/FormalResearch/PositiveAtlas/Grassmannian/PivotExistence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotNormalization
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
import Mathlib.Order.Hom.PowersetCard

/-!
# Nonzero increasing pivots from full row rank

An independent subfamily is extracted from the actual column span and then
ordered by its finite set of indices. No echelon or nonzero-pivot certificate
is assumed. The selection is a logical existence construction over real data,
not an executable rank-testing or canonical-pivot algorithm.
-/


namespace GRWTSK.Algebra.LinearAlgebra.DetNeZeroOfIndependentColumns.Variant8e7dbf29561f220816838f483bbab066214935635fd38b74380f404964e2aa3e

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

variable {k n : ℕ}

/-- Column linear independence forces a square real matrix to have nonzero determinant. -/
theorem det_ne_zero_of_independent_columns (M : Matrix (Fin k) (Fin k) ℝ)
    (hM : LinearIndependent ℝ M.col) : Matrix.det M ≠ 0 := by
  have hi : Function.Injective M.transpose.vecMul := by
    apply Matrix.vecMul_injective_iff.mpr
    exact hM
  intro hz
  have hzt : Matrix.det M.transpose = 0 := by
    simpa only [Matrix.det_transpose] using hz
  obtain ⟨v, hv, hzero⟩ :=
    (Matrix.exists_vecMul_eq_zero_iff (M := M.transpose)).mpr hzt
  apply hv
  apply hi
  exact hzero.trans (Matrix.zero_vecMul M.transpose).symm

/-- Repeated column selections have zero determinant, including all rank-deficient cases. -/
theorem columnMinor_eq_zero_of_not_injective (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : ¬ Function.Injective c) : columnMinor A c = 0 := by
  classical
  obtain ⟨i, j, hij, hne⟩ : ∃ i j, c i = c j ∧ i ≠ j := by
    simpa only [Function.Injective, not_forall, not_imp] using hc
  apply Matrix.det_zero_of_column_eq hne
  intro l
  change A l (c i) = A l (c j)
  rw [hij]

/-- A nonzero selected minor cannot repeat a column index. -/
theorem injective_of_columnMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (hc : columnMinor A c ≠ 0) : Function.Injective c := by
  by_contra h
  exact hc (columnMinor_eq_zero_of_not_injective A c h)

/-- An injective selection is an increasing selection followed by a permutation. -/
theorem exists_ordered_selection (c : Fin k → Fin n) (hc : Function.Injective c) :
    ∃ (I : Fin k ↪o Fin n) (e : Equiv.Perm (Fin k)), ∀ j, c j = I (e j) := by
  classical
  let f : Fin k ↪ Fin n := ⟨c, hc⟩
  let s : Set.powersetCard (Fin n) k := Set.powersetCard.ofFinEmb k (Fin n) f
  let I : Fin k ↪o Fin n := Set.powersetCard.ofFinEmbEquiv.symm s
  have hm : ∀ j, c j ∈ s := by
    intro j
    change c j ∈ Set.powersetCard.ofFinEmb k (Fin n) f
    exact (Set.powersetCard.mem_ofFinEmb_iff_mem_range k (Fin n) f (c j)).mpr
      ⟨j, rfl⟩
  have hr : ∀ j, ∃ l, I l = c j := by
    intro j
    exact (Set.powersetCard.mem_range_ofFinEmbEquiv_symm_iff_mem s (c j)).mpr (hm j)
  choose e he using hr
  have hei : Function.Injective e := by
    intro i j hij
    apply hc
    calc
      c i = I (e i) := (he i).symm
      _ = I (e j) := congrArg I hij
      _ = c j := he j
  let p : Equiv.Perm (Fin k) :=
    Equiv.ofBijective e (Finite.injective_iff_bijective.mp hei)
  exact ⟨I, p, fun j => (he j).symm⟩

/-- Permuting selected columns has the usual common determinant-sign factor. -/
theorem columnMinor_comp_perm (A : Matrix (Fin k) (Fin n) ℝ)
    (c : Fin k → Fin n) (e : Equiv.Perm (Fin k)) :
    columnMinor A (fun j => c (e j)) =
      (Equiv.Perm.sign e : ℝ) * columnMinor A c := by
  exact Matrix.det_permute' e (columnSubmatrix A c)

/-- Full row rank supplies actual independent columns, not an assumed pivot. -/
theorem exists_independent_column_selection (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) :
    ∃ c : Fin k → Fin n, Function.Injective c ∧ LinearIndependent ℝ (A.col ∘ c) := by
  classical
  have hdim : Module.finrank ℝ (Submodule.span ℝ (Set.range A.col)) = k := by
    rw [← Matrix.rank_eq_finrank_span_cols, hA]
  have hex := Submodule.exists_fun_fin_finrank_span_eq ℝ (Set.range A.col)
  rw [hdim] at hex
  obtain ⟨v, hv, _, hlin⟩ := hex
  choose c hc using hv
  have he : A.col ∘ c = v := funext hc
  have hinj : Function.Injective c := by
    intro i j hij
    apply hlin.injective
    rw [← hc i, ← hc j, hij]
  exact ⟨c, hinj, he.symm ▸ hlin⟩

/-- An arbitrary full-rank real frame has a nonzero selected maximal minor. -/
theorem exists_columnMinor_ne_zero_of_rank (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) : ∃ c : Fin k → Fin n, columnMinor A c ≠ 0 := by
  obtain ⟨c, _, hlin⟩ := exists_independent_column_selection A hA
  refine ⟨c, det_ne_zero_of_independent_columns (columnSubmatrix A c) ?_⟩
  exact hlin

/-- Sorting independent columns constructs a nonzero increasing maximal minor. -/
theorem exists_orderedMinor_ne_zero_of_rank (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) : ∃ I : Fin k ↪o Fin n, orderedMinor A I ≠ 0 := by
  obtain ⟨c, hc⟩ := exists_columnMinor_ne_zero_of_rank A hA
  obtain ⟨I, e, he⟩ := exists_ordered_selection c (injective_of_columnMinor_ne_zero A c hc)
  refine ⟨I, ?_⟩
  intro hz
  have hce : c = fun j => I (e j) := funext he
  apply hc
  rw [hce, columnMinor_comp_perm]
  change (Equiv.Perm.sign e : ℝ) * orderedMinor A I = 0
  rw [hz, mul_zero]

/-- Full row rank is equivalent to existence of a nonzero selected minor. -/
theorem rank_eq_iff_exists_columnMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ) :
    A.rank = k ↔ ∃ c : Fin k → Fin n, columnMinor A c ≠ 0 := by
  constructor
  · exact exists_columnMinor_ne_zero_of_rank A
  · rintro ⟨c, hc⟩
    exact rank_eq_of_columnMinor_ne_zero A c hc

/-- The rank criterion uses increasing minors and remains valid when k exceeds n. -/
theorem rank_eq_iff_exists_orderedMinor_ne_zero (A : Matrix (Fin k) (Fin n) ℝ) :
    A.rank = k ↔ ∃ I : Fin k ↪o Fin n, orderedMinor A I ≠ 0 := by
  constructor
  · exact exists_orderedMinor_ne_zero_of_rank A
  · rintro ⟨I, hI⟩
    exact rank_eq_of_columnMinor_ne_zero A I hI

/-- On the nonnegative locus full rank gives a positive, not merely nonzero, pivot. -/
theorem exists_orderedMinor_pos_of_rank_nonneg (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) (hn : AllOrderedMinorsNonneg A) :
    ∃ I : Fin k ↪o Fin n, 0 < orderedMinor A I := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A hA
  exact ⟨I, lt_of_le_of_ne (hn I) (Ne.symm hI)⟩

/-- Every full-rank frame has a chart with an actually constructed unique normal form. -/
theorem exists_ordered_pivot_normal_form (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) :
    ∃ I : Fin k ↪o Fin n, orderedMinor A I ≠ 0 ∧
      ∃! B : Matrix (Fin k) (Fin n) ℝ,
        columnSubmatrix B I = 1 ∧ frameRowSpace B = frameRowSpace A := by
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A hA
  exact ⟨I, hI, existsUnique_pivotNormalized A I hI⟩

/-- Frame full rank supplies its exact row-subspace dimension without a chosen chart. -/
theorem finrank_frameRowSpace_of_rank (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A.rank = k) : Module.finrank ℝ (frameRowSpace A) = k := by
  obtain ⟨c, hc⟩ := exists_columnMinor_ne_zero_of_rank A hA
  exact finrank_frameRowSpace_of_columnMinor_ne_zero A c hc

end

end FormalResearch.PositiveAtlas.Grassmannian
```

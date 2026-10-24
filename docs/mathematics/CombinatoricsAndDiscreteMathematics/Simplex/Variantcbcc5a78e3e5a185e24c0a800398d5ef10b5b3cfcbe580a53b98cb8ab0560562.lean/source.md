# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Simplex.Variantcbcc5a78e3e5a185e24c0a800398d5ef10b5b3cfcbe580a53b98cb8ab0560562

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cc7acd37c292a2cb8fda401c598dc997a85dca7` · SHA-256 `9bfb36b624b1a72cc4c46a2ae6e3e4cd31e7001139e41c606b14bc1664f524e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SimplexPoint.Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SimplexPoint.Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Probability/Simplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic

/-!
# Finite simplex semantics

This module is the provider-neutral finite simplex layer used by the exact
Gamma--Dirichlet and spectral-transport developments.  A simplex point is not
an occupancy mask, ownership mask, or raster state; correspondence with those
runtime objects is stated separately.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SimplexPoint.Variant0fa9931be90482a3cf32f6b026c5f538f41eeed0a66247df79e23841ad6dffe1

namespace BitMatrix.Probability

open scoped BigOperators

/-- A nonnegative normalized weight family on a finite index type. -/
structure SimplexPoint (I : Type*) [Fintype I] where
  weight : I → ℝ
  nonnegative : ∀ i, 0 ≤ weight i
  normalized : ∑ i, weight i = 1

namespace SimplexPoint

variable {I J : Type*} [Fintype I] [Fintype J]

instance instCoeFunSimplexPoint : CoeFun (SimplexPoint I) (fun _ => I → ℝ) :=
  ⟨SimplexPoint.weight⟩

@[ext]
theorem ext {left right : SimplexPoint I}
    (weights : ∀ i, left i = right i) : left = right := by
  cases left with
  | mk leftWeight leftNonnegative leftNormalized =>
      cases right with
      | mk rightWeight rightNonnegative rightNormalized =>
          have equality : leftWeight = rightWeight := funext weights
          subst rightWeight
          rfl

/-- Relabel a simplex point along a finite equivalence. -/
def reindex (equivalence : I ≃ J) (point : SimplexPoint I) : SimplexPoint J where
  weight j := point (equivalence.symm j)
  nonnegative j := point.nonnegative _
  normalized := by
    rw [Equiv.sum_comp equivalence.symm point.weight]
    exact point.normalized

@[simp]
theorem reindex_apply (equivalence : I ≃ J) (point : SimplexPoint I) (j : J) :
    reindex equivalence point j = point (equivalence.symm j) :=
  rfl

@[simp]
theorem reindex_refl (point : SimplexPoint I) :
    reindex (Equiv.refl I) point = point := by
  ext i
  rfl

@[simp]
theorem reindex_trans {K : Type*} [Fintype K]
    (left : I ≃ J) (right : J ≃ K) (point : SimplexPoint I) :
    reindex right (reindex left point) = reindex (left.trans right) point := by
  ext k
  rfl

/-- Barycentric combination of simplex points. -/
def barycentric
    (outer : SimplexPoint I) (inner : I → SimplexPoint J) : SimplexPoint J where
  weight j := ∑ i, outer i * inner i j
  nonnegative j := Finset.sum_nonneg fun i _ =>
    mul_nonneg (outer.nonnegative i) ((inner i).nonnegative j)
  normalized := by
    calc
      (∑ j, ∑ i, outer i * inner i j) =
          ∑ i, ∑ j, outer i * inner i j := Finset.sum_comm
      _ = ∑ i, outer i * ∑ j, inner i j := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.mul_sum]
      _ = ∑ i, outer i := by simp [SimplexPoint.normalized]
      _ = 1 := outer.normalized

@[simp]
theorem barycentric_apply
    (outer : SimplexPoint I) (inner : I → SimplexPoint J) (j : J) :
    barycentric outer inner j = ∑ i, outer i * inner i j :=
  rfl

/-- Merge refined coordinates along a finite labeling map.  Surjectivity is
not needed for normalization: unused coarse coordinates simply receive zero
mass. -/
def merge [DecidableEq I] (label : J → I) (point : SimplexPoint J) :
    SimplexPoint I where
  weight i := ∑ j, if label j = i then point j else 0
  nonnegative i := Finset.sum_nonneg fun j _ => by
    split
    · exact point.nonnegative j
    · exact le_rfl
  normalized := by
    classical
    calc
      (∑ i, ∑ j, if label j = i then point j else 0) =
          ∑ j, ∑ i, if label j = i then point j else 0 := Finset.sum_comm
      _ = ∑ j, point j := by simp
      _ = 1 := point.normalized

@[simp]
theorem merge_apply [DecidableEq I]
    (label : J → I) (point : SimplexPoint J) (i : I) :
    merge label point i = ∑ j, if label j = i then point j else 0 :=
  rfl

/-- Hierarchical field/carrier weights on a dependent sum. -/
def hierarchical {Carrier : I → Type*} [∀ i, Fintype (Carrier i)]
    (field : SimplexPoint I)
    (within : ∀ i, SimplexPoint (Carrier i)) :
    SimplexPoint (Σ i, Carrier i) where
  weight site := field site.1 * within site.1 site.2
  nonnegative site :=
    mul_nonneg (field.nonnegative site.1) ((within site.1).nonnegative site.2)
  normalized := by
    rw [Fintype.sum_sigma]
    calc
      (∑ i, ∑ carrier, field i * within i carrier) =
          ∑ i, field i * ∑ carrier, within i carrier := by
        apply Finset.sum_congr rfl
        intro i _
        rw [Finset.mul_sum]
      _ = ∑ i, field i := by simp [SimplexPoint.normalized]
      _ = 1 := field.normalized

@[simp]
theorem hierarchical_apply {Carrier : I → Type*} [∀ i, Fintype (Carrier i)]
    (field : SimplexPoint I)
    (within : ∀ i, SimplexPoint (Carrier i))
    (site : Σ i, Carrier i) :
    hierarchical field within site = field site.1 * within site.1 site.2 :=
  rfl

end SimplexPoint

/-- The open simplex: every coordinate is strictly positive. -/
structure InteriorSimplexPoint (I : Type*) [Fintype I]
    extends SimplexPoint I where
  positive : ∀ i, 0 < weight i

namespace InteriorSimplexPoint

variable {I J : Type*} [Fintype I] [Fintype J]

instance instCoeFunInteriorSimplexPoint :
    CoeFun (InteriorSimplexPoint I) (fun _ => I → ℝ) :=
  ⟨fun point => point.weight⟩

@[ext]
theorem ext {left right : InteriorSimplexPoint I}
    (weights : ∀ i, left i = right i) : left = right := by
  cases left with
  | mk leftSimplex leftPositive =>
      cases right with
      | mk rightSimplex rightPositive =>
          have equality : leftSimplex = rightSimplex :=
            SimplexPoint.ext weights
          subst rightSimplex
          rfl

/-- Relabel an open-simplex point along an equivalence. -/
def reindex (equivalence : I ≃ J) (point : InteriorSimplexPoint I) :
    InteriorSimplexPoint J where
  toSimplexPoint := point.toSimplexPoint.reindex equivalence
  positive j := point.positive (equivalence.symm j)

@[simp]
theorem reindex_apply (equivalence : I ≃ J)
    (point : InteriorSimplexPoint I) (j : J) :
    reindex equivalence point j = point (equivalence.symm j) :=
  rfl

end InteriorSimplexPoint

end BitMatrix.Probability
```

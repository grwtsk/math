# Complete source: GRWTSK.Topology.GeneralTopology.ProdApproximation.Variante9432f60f33ae92ebcaad0879a72fb9551099422ae268a8f660a66daf86c9004

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc032db74af61d6e896727431be16214e66dcc76` · SHA-256 `d8998edfa0a14a23b625fea14dbdce8307b0b92c430a772e5ecebbd239c6a5eb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ExistsFiniteSumSmulApproximationOfMemUniformity.Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ExistsFiniteSumSmulApproximationOfMemUniformity.Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7","mathematical_subject":"Topology.GeneralTopology","original_sha256":"7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/UniformSpace/ProdApproximation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Topology.Algebra.Indicator
import Mathlib.Topology.ContinuousMap.Algebra
import Mathlib.Topology.Separation.DisjointCover

/-!
# Uniform approximation by products

We show that if `X, Y` are compact Hausdorff spaces with `X` profinite, then any continuous function
on `X × Y` valued in a ring (with a uniform structure) can be uniformly approximated by finite
sums of functions of the form `f x * g y`.
-/


namespace GRWTSK.Topology.GeneralTopology.ExistsFiniteSumSmulApproximationOfMemUniformity.Variant7bb0425a8ee4ab0e29d723baae5f08c0f763151e02f9abf34d08a47d385d95e7

open UniformSpace

open scoped Uniformity

namespace ContinuousMap

variable {X Y R V : Type*}
  [TopologicalSpace X] [TotallyDisconnectedSpace X] [T2Space X] [CompactSpace X]
  [TopologicalSpace Y] [CompactSpace Y]
  [AddCommGroup V] [UniformSpace V] [IsUniformAddGroup V] {S : Set (V × V)}

/-- A continuous function on `X × Y`, taking values in an `R`-module with a uniform structure,
can be uniformly approximated by sums of functions of the form `(x, y) ↦ f x • g y`.

Note that no continuity properties are assumed either for multiplication on `R`, or for the scalar
multiplication of `R` on `V`. -/
lemma exists_finite_sum_smul_approximation_of_mem_uniformity [TopologicalSpace R]
    [MonoidWithZero R] [MulActionWithZero R V] (f : C(X × Y, V)) (hS : S ∈ 𝓤 V) :
    ∃ (n : ℕ) (g : Fin n → C(X, R)) (h : Fin n → C(Y, V)),
    ∀ x y, (f (x, y), ∑ i, g i x • h i y) ∈ S := by
  have hS' : {(f, g) | ∀ y, (f y, g y) ∈ S} ∈ 𝓤 C(Y, V) :=
    (mem_compactConvergence_entourage_iff _).mpr
      ⟨_, _, isCompact_univ, hS, by simp only [Set.mem_univ, true_implies, subset_refl]⟩
  obtain ⟨n, U, v, hv⟩ := exists_finite_sum_const_indicator_approximation_of_mem_nhds_diagonal
    f.curry (nhdsSet_diagonal_le_uniformity hS')
  refine ⟨n, fun i ↦ ⟨_, (U i).isClopen.continuous_indicator <| continuous_const (y := 1)⟩,
    v, fun x y ↦ ?_⟩
  convert hv x y using 2
  simp only [sum_apply]
  congr 1 with i
  by_cases hi : x ∈ U i <;> simp [hi]

/-- A continuous function on `X × Y`, taking values in a ring `R` equipped with a uniformity
compatible with addition, can be uniformly approximated by sums of functions of the form
`(x, y) ↦ f x * g y`.

Note that no assumption is needed relating the multiplication on `R` to the uniformity. -/
lemma exists_finite_sum_mul_approximation_of_mem_uniformity [Ring R] [UniformSpace R]
    [IsUniformAddGroup R] (f : C(X × Y, R)) {S : Set (R × R)} (hS : S ∈ 𝓤 R) :
    ∃ (n : ℕ) (g : Fin n → C(X, R)) (h : Fin n → C(Y, R)),
    ∀ x y, (f (x, y), ∑ i, g i x * h i y) ∈ S :=
  exists_finite_sum_smul_approximation_of_mem_uniformity f hS

end ContinuousMap
```

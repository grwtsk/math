# traceForm_dualSubmodule_adjoin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0304c0e-1ac5-96ed-df78-cb21a7f6d8f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99ed4c22-c643-713f-cfb4-e2e13c886031",
  "kind": "lemma",
  "lexical_name": "traceForm_dualSubmodule_adjoin",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "traceform-dualsubmodule-adjoin--6ac2fe6655625226d499c690",
  "source": {
    "blob": "3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 481,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ac2fe6655625226d499c6907eb44f4a43c66ca8ea68997503e58f6246852966",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ed4c22-c643-713f-cfb4-e2e13c886031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traceForm_dualSubmodule_adjoin
    {x : L} (hx : Algebra.adjoin K {x} = ⊤) (hAx : IsIntegral A x) :
    (traceForm K L).dualSubmodule (Subalgebra.toSubmodule (Algebra.adjoin A {x})) =
      (aeval x (derivative <| minpoly K x) : L)⁻¹ •
        (Subalgebra.toSubmodule (Algebra.adjoin A {x})) := by
  classical
  have hKx : IsIntegral K x := Algebra.IsIntegral.isIntegral x
  let pb := (Algebra.adjoin.powerBasis' hKx).map
    ((Subalgebra.equivOfEq _ _ hx).trans (Subalgebra.topEquiv))
  have pbgen : pb.gen = x := by simp [pb]
  have hpb : ⇑(LinearMap.BilinForm.dualBasis (traceForm K L) _ pb.basis) = _ :=
    _root_.funext (traceForm_dualBasis_powerBasis_eq pb)
  have : (Subalgebra.toSubmodule (Algebra.adjoin A {x})) =
      Submodule.span A (Set.range pb.basis) := by
    rw [← span_range_natDegree_eq_adjoin (minpoly.monic hAx) (minpoly.aeval _ _)]
    congr; ext y
    have : natDegree (minpoly A x) = natDegree (minpoly K x) := by
      rw [minpoly.isIntegrallyClosed_eq_field_fractions' K hAx, (minpoly.monic hAx).natDegree_map]
    simp only [Finset.coe_image, Finset.coe_range, Set.mem_image, Set.mem_Iio, Set.mem_range,
      pb.basis_eq_pow, pbgen]
    simp only [PowerBasis.map_dim, adjoin.powerBasis'_dim, this]
    exact ⟨fun ⟨a, b, c⟩ ↦ ⟨⟨a, b⟩, c⟩, fun ⟨⟨a, b⟩, c⟩ ↦ ⟨a, b, c⟩⟩
  clear_value pb
  conv_lhs => rw [this]
  rw [← span_coeff_minpolyDiv hAx, LinearMap.BilinForm.dualSubmodule_span_of_basis,
    Submodule.smul_span, hpb]
  show _ = Submodule.span A (_ '' _)
  simp only [← Set.range_comp, smul_eq_mul, div_eq_inv_mul, pbgen,
    minpolyDiv_eq_of_isIntegrallyClosed K hAx]
  apply le_antisymm <;> rw [Submodule.span_le]
  · rintro _ ⟨i, rfl⟩; exact Submodule.subset_span ⟨i, rfl⟩
  · rintro _ ⟨i, rfl⟩
    by_cases hi : i < pb.dim
    · exact Submodule.subset_span ⟨⟨i, hi⟩, rfl⟩
    · rw [Function.comp_apply, coeff_eq_zero_of_natDegree_lt, mul_zero]
      · exact zero_mem _
      rw [← pb.natDegree_minpoly, pbgen, ← natDegree_minpolyDiv_succ hKx,
        ← Nat.succ_eq_add_one] at hi
      exact le_of_not_lt hi

end

variable (L) {B}

open Polynomial Pointwise in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variantba664bf46e47c65a743eeddf1a37ec246e796f0e367c94b5aaed3db6d9bde604.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec12de3aaa151a4eb2b414e8e2373dfd9b75e57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

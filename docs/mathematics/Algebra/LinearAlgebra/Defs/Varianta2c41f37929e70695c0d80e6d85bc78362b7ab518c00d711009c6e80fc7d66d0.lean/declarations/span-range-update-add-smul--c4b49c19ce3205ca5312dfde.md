# span_range_update_add_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f852213d-1f63-5890-cabc-8e8724ebeabe",
  "kind": "lemma",
  "lexical_name": "span_range_update_add_smul",
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
  "slug": "span-range-update-add-smul--c4b49c19ce3205ca5312dfde",
  "source": {
    "blob": "29f56a3fa4b45053eb08e6e8f1dfc19d1294b988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 577,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4b49c19ce3205ca5312dfdeb9e5a1c3529d6fe95c36feff4d90bf1d472d2e7b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f852213d-1f63-5890-cabc-8e8724ebeabe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma span_range_update_add_smul (hij : i ≠ j) (v : ι → M) (r : R) :
    span R (Set.range (Function.update v j (v j + r • v i))) = span R (Set.range v) := by
  refine le_antisymm ?_ ?_ <;> simp only [span_le, Set.range_subset_iff, SetLike.mem_coe] <;>
    intro k <;> obtain rfl | hjk := eq_or_ne j k
  · rw [update_self]
    exact add_mem (subset_span ⟨j, rfl⟩) <| smul_mem _ _ <| subset_span ⟨i, rfl⟩
  · exact subset_span ⟨k, (update_of_ne hjk.symm ..).symm⟩
  · nth_rw 2 [← add_sub_cancel_right (v j) (r • v i)]
    exact sub_mem (subset_span ⟨j, update_self ..⟩)
      (smul_mem _ _ (subset_span ⟨i, update_of_ne hij ..⟩))
  · exact subset_span ⟨k, update_of_ne hjk.symm ..⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Varianta2c41f37929e70695c0d80e6d85bc78362b7ab518c00d711009c6e80fc7d66d0.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29f56a3fa4b45053eb08e6e8f1dfc19d1294b988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

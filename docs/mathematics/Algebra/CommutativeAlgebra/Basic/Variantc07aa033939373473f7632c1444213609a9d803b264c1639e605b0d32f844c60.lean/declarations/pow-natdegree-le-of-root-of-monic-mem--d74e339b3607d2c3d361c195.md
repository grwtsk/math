# pow_natDegree_le_of_root_of_monic_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5db52add84b23e8474d2eb41be2bd66d7cd7a8a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a839c664-fcaf-1663-0cd2-48956357368d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0ef9d8b-9315-9218-015b-a9d3e4699493",
  "kind": "theorem",
  "lexical_name": "pow_natDegree_le_of_root_of_monic_mem",
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
  "slug": "pow-natdegree-le-of-root-of-monic-mem--d74e339b3607d2c3d361c195",
  "source": {
    "blob": "e5db52add84b23e8474d2eb41be2bd66d7cd7a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 121,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d74e339b3607d2c3d361c19533b4b256788e7ab152a3aac095fe45f6818ade41",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ef9d8b-9315-9218-015b-a9d3e4699493`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_natDegree_le_of_root_of_monic_mem (hf : f.IsWeaklyEisensteinAt 𝓟)
    {x : R} (hroot : IsRoot f x) (hmo : f.Monic) :
    ∀ i, f.natDegree ≤ i → x ^ i ∈ 𝓟 := by
  intro i hi
  obtain ⟨k, hk⟩ := exists_add_of_le hi
  rw [hk, pow_add]
  suffices x ^ f.natDegree ∈ 𝓟 by exact mul_mem_right (x ^ k) 𝓟 this
  rw [IsRoot.def, eval_eq_sum_range, Finset.range_add_one,
    Finset.sum_insert Finset.notMem_range_self, Finset.sum_range, hmo.coeff_natDegree, one_mul] at
    *
  rw [eq_neg_of_add_eq_zero_left hroot, Ideal.neg_mem_iff]
  exact Submodule.sum_mem _ fun i _ => mul_mem_right _ _ (hf.mem (Fin.is_lt i))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc07aa033939373473f7632c1444213609a9d803b264c1639e605b0d32f844c60.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5db52add84b23e8474d2eb41be2bd66d7cd7a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# sum_incMatrix_apply_of_mem_edgeSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c1dbfbbc2cac5939adb140e865e936aee25a7fb0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d86b14f-760c-4c85-d6bd-2b6776d3c00d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34504773-6335-91a4-e542-f42fd296b79d",
  "kind": "theorem",
  "lexical_name": "sum_incMatrix_apply_of_mem_edgeSet",
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
  "slug": "sum-incmatrix-apply-of-mem-edgeset--eba6916ff2eeadcf1c72fdb1",
  "source": {
    "blob": "c1dbfbbc2cac5939adb140e865e936aee25a7fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba6916ff2eeadcf1c72fdb1f67e61b744dfca191c0027125e4389c9fbd31363",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34504773-6335-91a4-e542-f42fd296b79d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_incMatrix_apply_of_mem_edgeSet :
    e ∈ G.edgeSet → ∑ a, G.incMatrix R a e = 2 := by
  classical
    refine' e.ind _
    intro a b h
    rw [mem_edgeSet] at h
    rw [← Nat.cast_two, ← card_doubleton h.ne]
    simp only [incMatrix_apply', sum_boole, mk'_mem_incidenceSet_iff, h, true_and_iff]
    congr 2
    ext e
    simp only [mem_filter, mem_univ, true_and_iff, mem_insert, mem_singleton]
#align simple_graph.sum_inc_matrix_apply_of_mem_edge_set SimpleGraph.sum_incMatrix_apply_of_mem_edgeSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/IncMatrix/Variantc10474d23a2a11fd1c1a3b0c4ecff744a2666ce9c05c9df20c7a37b7d078115e.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1dbfbbc2cac5939adb140e865e936aee25a7fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

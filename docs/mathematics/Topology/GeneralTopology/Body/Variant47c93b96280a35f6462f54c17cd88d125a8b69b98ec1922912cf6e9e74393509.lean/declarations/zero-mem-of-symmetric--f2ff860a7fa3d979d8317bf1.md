# zero_mem_of_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "09fdf4e500a3c288e6056bac584e76813ed455a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b47ab195-b9ec-67cd-e81d-34b7e14f6a94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:051690a0-360e-d5f4-0cff-d87240778ed9",
  "kind": "theorem",
  "lexical_name": "zero_mem_of_symmetric",
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
  "slug": "zero-mem-of-symmetric--f2ff860a7fa3d979d8317bf1",
  "source": {
    "blob": "09fdf4e500a3c288e6056bac584e76813ed455a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2ff860a7fa3d979d8317bf19a4b67d6be1c84270e115359d58887897676cfea",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:051690a0-360e-d5f4-0cff-d87240778ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_mem_of_symmetric (K : ConvexBody V) (h_symm : ∀ x ∈ K, -x ∈ K) : 0 ∈ K := by
  obtain ⟨x, hx⟩ := K.nonempty
  rw [show 0 = (1/2 : ℝ) • x + (1/2 : ℝ) • (- x) by field_simp]
  apply convex_iff_forall_pos.mp K.convex hx (h_symm x hx)
  all_goals linarith

section ContinuousAdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Body/Variant47c93b96280a35f6462f54c17cd88d125a8b69b98ec1922912cf6e9e74393509.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09fdf4e500a3c288e6056bac584e76813ed455a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# StructureGroupoid.mem_iff_of_eqOnSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b585e5d057f3ae5cd756a2438c2011a9488bab64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4faafeb9-d907-d2d7-e89d-bd5024e4deeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0499adb-c837-b200-311b-46fdacfe1e66",
  "kind": "theorem",
  "lexical_name": "StructureGroupoid.mem_iff_of_eqOnSource",
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
  "slug": "structuregroupoid-mem-iff-of-eqonsource--60d80ff631ca85005612e565",
  "source": {
    "blob": "b585e5d057f3ae5cd756a2438c2011a9488bab64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d80ff631ca85005612e56550092ecc04916b207cd94a68af97911aae0f2db5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0499adb-c837-b200-311b-46fdacfe1e66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StructureGroupoid.mem_iff_of_eqOnSource {G : StructureGroupoid H}
    {e e' : OpenPartialHomeomorph H H} (h : e ≈ e') : e ∈ G ↔ e' ∈ G :=
  ⟨fun he ↦ G.mem_of_eqOnSource he (Setoid.symm h), fun he' ↦ G.mem_of_eqOnSource he' h⟩

/-- Partial order on the set of groupoids, given by inclusion of the members of the groupoid. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StructureGroupoid/Variant211422b50edb9ce7680ec30bd4cb05198d286ed55ab5ca397542039c3b1f858a.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b585e5d057f3ae5cd756a2438c2011a9488bab64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

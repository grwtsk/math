# notMem_hyperfilter_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7478028c-d415-2332-4659-0545c5d34fd1",
  "kind": "theorem",
  "lexical_name": "notMem_hyperfilter_of_finite",
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
  "slug": "notmem-hyperfilter-of-finite--a2ac1b10b9e86fdd40541747",
  "source": {
    "blob": "1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ac1b10b9e86fdd40541747e9135c3d6ff69cd7088a462112ad8310e34e2933",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7478028c-d415-2332-4659-0545c5d34fd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem notMem_hyperfilter_of_finite {s : Set α} (hf : s.Finite) : s ∉ hyperfilter α := fun hy =>
  compl_notMem hy <| hyperfilter_le_cofinite hf.compl_mem_cofinite

@[deprecated (since := "2025-05-24")]
alias nmem_hyperfilter_of_finite := notMem_hyperfilter_of_finite

alias _root_.Set.Finite.notMem_hyperfilter := notMem_hyperfilter_of_finite

@[deprecated (since := "2025-05-24")]
alias _root_.Set.Finite.nmem_hyperfilter := _root_.Set.Finite.notMem_hyperfilter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

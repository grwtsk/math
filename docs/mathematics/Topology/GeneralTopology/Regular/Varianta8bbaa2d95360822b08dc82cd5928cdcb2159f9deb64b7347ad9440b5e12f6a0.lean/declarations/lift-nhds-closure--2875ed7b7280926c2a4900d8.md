# lift'_nhds_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8b9bb6a7ff7df35d51aee4dba345015529b15de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6b7bb5fd-ec39-317e-bd92-2cb56fd5b509",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:607532fc-6808-d15f-1f50-177a3170c886",
  "kind": "theorem",
  "lexical_name": "lift'_nhds_closure",
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
  "slug": "lift-nhds-closure--2875ed7b7280926c2a4900d8",
  "source": {
    "blob": "a8b9bb6a7ff7df35d51aee4dba345015529b15de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 154,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2875ed7b7280926c2a4900d8a5a99c0eadadba38398369433b2c80d896f26329",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:607532fc-6808-d15f-1f50-177a3170c886`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift'_nhds_closure (x : X) : (𝓝 x).lift' closure = 𝓝 x :=
  (closed_nhds_basis x).lift'_closure_eq_self fun _ => And.right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Varianta8bbaa2d95360822b08dc82cd5928cdcb2159f9deb64b7347ad9440b5e12f6a0.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b9bb6a7ff7df35d51aee4dba345015529b15de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

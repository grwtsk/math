# disjoint_diag_offDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8acfa9846a52059432c84bca3b6fab226649f8e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 366,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:edee3eb1-18ef-ad90-d866-97a273252b17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4e10a9a-7f5c-eba4-1114-b28e5760c89f",
  "kind": "theorem",
  "lexical_name": "disjoint_diag_offDiag",
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
  "slug": "disjoint-diag-offdiag--f56ba0fa18aeb8addae84223",
  "source": {
    "blob": "f8acfa9846a52059432c84bca3b6fab226649f8e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 366,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f56ba0fa18aeb8addae8422305abb31c21157c9067db44704349d773919e8fa0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e10a9a-7f5c-eba4-1114-b28e5760c89f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_diag_offDiag : Disjoint s.diag s.offDiag :=
  disjoint_filter_filter_neg (s ×ˢ s) (s ×ˢ s) (fun a => a.1 = a.2)
#align finset.disjoint_diag_off_diag Finset.disjoint_diag_offDiag

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant3430e0b5119c7d5a54f1e5d6d77bb19b14cb6b8753da99065a7aeade06689a57.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8acfa9846a52059432c84bca3b6fab226649f8e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

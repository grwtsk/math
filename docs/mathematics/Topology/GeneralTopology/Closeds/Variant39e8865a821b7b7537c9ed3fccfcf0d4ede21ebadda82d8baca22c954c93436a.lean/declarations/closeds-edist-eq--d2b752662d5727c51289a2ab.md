# Closeds.edist_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a402978-44e1-9264-cd9c-53e75a623c3b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44fba6b1-f85b-29a2-6ecd-0a552bbcdaab",
  "kind": "theorem",
  "lexical_name": "Closeds.edist_eq",
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
  "slug": "closeds-edist-eq--d2b752662d5727c51289a2ab",
  "source": {
    "blob": "0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2b752662d5727c51289a2ab1fdc0dbb896f06b57772c160db584e9c0aba9566",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44fba6b1-f85b-29a2-6ecd-0a552bbcdaab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Closeds.edist_eq {s t : Closeds α} : edist s t = hausdorffEdist (s : Set α) t :=
  rfl
#align emetric.closeds.edist_eq EMetric.Closeds.edist_eq

/-- In a complete space, the type of closed subsets is complete for the
Hausdorff edistance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

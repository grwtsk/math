# filter_mem_eq_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74acec4d-3347-f252-7b36-3e56c86b4744",
  "kind": "lemma",
  "lexical_name": "filter_mem_eq_of_subset",
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
  "slug": "filter-mem-eq-of-subset--a41f3bcc2e2b82bca3e8c974",
  "source": {
    "blob": "9b4228470b147646f2b1b66d7d924a714dcdd6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 238,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variantc8cc2fddfd4fefba7af572b48194a648e9826dc0e35a33630d8b274b538ae63f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a41f3bcc2e2b82bca3e8c9741406eb0190a4c5726c5a010e06e1e4912fc45bd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variantc8cc2fddfd4fefba7af572b48194a648e9826dc0e35a33630d8b274b538ae63f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74acec4d-3347-f252-7b36-3e56c86b4744`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma filter_mem_eq_of_subset [DecidablePred (· ∈ s)] (hst : s ⊆ t) :
    t.filter (· ∈ s) = s := by
  grind

end Filter

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variantc8cc2fddfd4fefba7af572b48194a648e9826dc0e35a33630d8b274b538ae63f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variantc8cc2fddfd4fefba7af572b48194a648e9826dc0e35a33630d8b274b538ae63f.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4228470b147646f2b1b66d7d924a714dcdd6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

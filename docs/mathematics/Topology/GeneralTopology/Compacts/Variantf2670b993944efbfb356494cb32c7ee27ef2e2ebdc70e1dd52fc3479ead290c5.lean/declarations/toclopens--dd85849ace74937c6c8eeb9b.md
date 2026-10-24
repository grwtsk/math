# toClopens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c79d1335f53790ce0cff4a7062486ab610085127315a35187df37a1b000a1106",
  "kind": "def",
  "lexical_name": "toClopens",
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
  "slug": "toclopens--dd85849ace74937c6c8eeb9b",
  "source": {
    "blob": "585fabdce4937a5c6c8a0a6d3c5f0fb018ba5405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 492,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variantf2670b993944efbfb356494cb32c7ee27ef2e2ebdc70e1dd52fc3479ead290c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd85849ace74937c6c8eeb9bf72ce25ba00024ed8d3616a66bec6aea4511a083",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variantf2670b993944efbfb356494cb32c7ee27ef2e2ebdc70e1dd52fc3479ead290c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c79d1335f53790ce0cff4a7062486ab610085127315a35187df37a1b000a1106`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toClopens [T2Space α] (s : CompactOpens α) : Clopens α :=
  ⟨s, s.isOpen, s.isCompact.isClosed⟩
#align topological_space.compact_opens.to_clopens TopologicalSpace.CompactOpens.toClopens

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variantf2670b993944efbfb356494cb32c7ee27ef2e2ebdc70e1dd52fc3479ead290c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variantf2670b993944efbfb356494cb32c7ee27ef2e2ebdc70e1dd52fc3479ead290c5.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585fabdce4937a5c6c8a0a6d3c5f0fb018ba5405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

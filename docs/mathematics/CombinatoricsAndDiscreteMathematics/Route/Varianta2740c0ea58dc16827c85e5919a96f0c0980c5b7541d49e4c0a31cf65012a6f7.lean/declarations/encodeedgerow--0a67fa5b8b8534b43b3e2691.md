# encodeEdgeRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69849c88a737d5981916cfc2f9d062f3757fd6a9b304431dd6cffa1c9cb55f7a",
  "kind": "def",
  "lexical_name": "encodeEdgeRow",
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
  "slug": "encodeedgerow--0a67fa5b8b8534b43b3e2691",
  "source": {
    "blob": "04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1074,
    "line": 1065,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a67fa5b8b8534b43b3e26914188bd7c44c2a5c5942af43a5008d40d39e12449",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69849c88a737d5981916cfc2f9d062f3757fd6a9b304431dd6cffa1c9cb55f7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def encodeEdgeRow
    (contract : RoutingContract Host EdgeId)
    (edge : DeclaredEdge Host EdgeId) : CanonicalBytes :=
  encodeU32LE (contract.hostCode.code edge.source) ++
  encodeI32LE edge.tension ++
  encodeU32LE edge.tieBreak ++
  encodeU32LE (contract.edgeCode.code edge.edgeId) ++
  encodeU32LE (contract.hostCode.code edge.target)

/-- Exact contract preimage.  The digest field is excluded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Varianta2740c0ea58dc16827c85e5919a96f0c0980c5b7541d49e4c0a31cf65012a6f7.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04dc91043f2e0e5d96a144dac5d7ca90d0c4a1b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

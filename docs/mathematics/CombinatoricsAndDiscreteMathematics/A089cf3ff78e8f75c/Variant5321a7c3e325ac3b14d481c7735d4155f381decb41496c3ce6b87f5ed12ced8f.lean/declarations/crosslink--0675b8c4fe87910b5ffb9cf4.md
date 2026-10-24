# CrossLink

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c13eafe91b3ff591d3afa242a7441821d7dec5560ae68235b8c59efb8859a064",
  "kind": "structure",
  "lexical_name": "CrossLink",
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
  "slug": "crosslink--0675b8c4fe87910b5ffb9cf4",
  "source": {
    "blob": "314a3f5276cdd7d4d638580cc17c3e7654c090c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A089cf3ff78e8f75c/Variant5321a7c3e325ac3b14d481c7735d4155f381decb41496c3ce6b87f5ed12ced8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0675b8c4fe87910b5ffb9cf4ebdd338461cdd38890b8988ae8303f73efe4a952",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A089cf3ff78e8f75c/Variant5321a7c3e325ac3b14d481c7735d4155f381decb41496c3ce6b87f5ed12ced8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c13eafe91b3ff591d3afa242a7441821d7dec5560ae68235b8c59efb8859a064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossLink where
  id : StableId
  relationId : RelationId
  sourceCanonicalOccurrenceId : ProjectionOccurrenceId
  targetCanonicalOccurrenceId : ProjectionOccurrenceId
  relationType : RelationKindId
  authorityName : String
  provenance : Finset StableId
  displayPolicy : StableId
  deriving DecidableEq

end Mathematics.Projection
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A089cf3ff78e8f75c/Variant5321a7c3e325ac3b14d481c7735d4155f381decb41496c3ce6b87f5ed12ced8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A089cf3ff78e8f75c/Variant5321a7c3e325ac3b14d481c7735d4155f381decb41496c3ce6b87f5ed12ced8f.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `314a3f5276cdd7d4d638580cc17c3e7654c090c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

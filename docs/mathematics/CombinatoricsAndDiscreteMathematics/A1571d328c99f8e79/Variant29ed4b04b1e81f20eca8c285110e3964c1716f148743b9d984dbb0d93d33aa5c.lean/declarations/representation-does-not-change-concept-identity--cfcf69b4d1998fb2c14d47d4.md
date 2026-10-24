# representation_does_not_change_concept_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5b1eedd-37c0-1597-4006-20d84c7e342f",
  "kind": "theorem",
  "lexical_name": "representation_does_not_change_concept_identity",
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
  "slug": "representation-does-not-change-concept-identity--cfcf69b4d1998fb2c14d47d4",
  "source": {
    "blob": "52568d7dbb9a487d1cd559abfeaf8da71ea7923b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 24,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A1571d328c99f8e79/Variant29ed4b04b1e81f20eca8c285110e3964c1716f148743b9d984dbb0d93d33aa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfcf69b4d1998fb2c14d47d4160587ac1305a3ebff2487c8f6685a5b956f9f68",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A1571d328c99f8e79/Variant29ed4b04b1e81f20eca8c285110e3964c1716f148743b9d984dbb0d93d33aa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5b1eedd-37c0-1597-4006-20d84c7e342f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem representation_does_not_change_concept_identity
    (concept : Record) (representations : Finset RepresentationId) :
    (concept.withRealizations representations).id = concept.id :=
  withRealizations_id concept representations

end Ledger

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A1571d328c99f8e79/Variant29ed4b04b1e81f20eca8c285110e3964c1716f148743b9d984dbb0d93d33aa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A1571d328c99f8e79/Variant29ed4b04b1e81f20eca8c285110e3964c1716f148743b9d984dbb0d93d33aa5c.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52568d7dbb9a487d1cd559abfeaf8da71ea7923b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

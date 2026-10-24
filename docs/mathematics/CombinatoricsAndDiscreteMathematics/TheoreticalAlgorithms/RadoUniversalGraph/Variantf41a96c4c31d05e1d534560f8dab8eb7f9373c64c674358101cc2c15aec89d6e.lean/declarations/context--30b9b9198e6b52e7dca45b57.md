# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70ac704555e29d4824c45c5b0ae9945810f789a527c6e6b92a57dfa02f3bb080",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--30b9b9198e6b52e7dca45b57",
  "source": {
    "blob": "872c4bde746bbd623a95539e4837ef3ff233df63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30b9b9198e6b52e7dca45b57cede485f01cd164d0baac2f7d71881eebe2dbcd7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70ac704555e29d4824c45c5b0ae9945810f789a527c6e6b92a57dfa02f3bb080`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  Vertex : Type u
  ExternalGraph : Type u
  ExternalVertex : ExternalGraph -> Type u
  Adj : Vertex -> Vertex -> Prop
  ExternalAdj : ∀ G : ExternalGraph, ExternalVertex G -> ExternalVertex G -> Prop
  CountableAmbient : Prop
  CountableExternal : ExternalGraph -> Prop
  GraphSymmetric : Prop
  GraphIrreflexive : Prop
  ExternalGraphSymmetric : ExternalGraph -> Prop
  ExternalGraphIrreflexive : ExternalGraph -> Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variantf41a96c4c31d05e1d534560f8dab8eb7f9373c64c674358101cc2c15aec89d6e.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `872c4bde746bbd623a95539e4837ef3ff233df63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

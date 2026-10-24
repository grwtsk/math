# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32f8a3f802d89c7da474ff1e83b614e9eb001c14adce06a246e7aa10318276e1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--9a1c51e1ca0eb248ecc531f2",
  "source": {
    "blob": "a4f96edd3c05c2e320bbb03046b627d69e02fd08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 202,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a1c51e1ca0eb248ecc531f25177737ce267aea64829d43cc5bf44d1867660a9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32f8a3f802d89c7da474ff1e83b614e9eb001c14adce06a246e7aa10318276e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (S : E →L[ℂ] E) (α : ℝ) (r : E) : regularizedMass S α r = α * (inner ℂ r (Ring.inverse (S + (α : ℂ) • (1 : E →L[ℂ] E)) r)).re := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventStatements/Variant906cdb743a1880069aaae20b23c614f8f6c163ce8f98d248a3025d4c418a3ef4.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4f96edd3c05c2e320bbb03046b627d69e02fd08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

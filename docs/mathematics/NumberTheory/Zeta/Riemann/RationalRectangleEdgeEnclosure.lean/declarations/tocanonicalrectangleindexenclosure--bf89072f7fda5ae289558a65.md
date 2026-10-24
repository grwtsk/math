# toCanonicalRectangleIndexEnclosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a5848902f74371290d0b71beeeccfcc4fb3daf90bb83bbeb3e06575dae046c4",
  "kind": "def",
  "lexical_name": "toCanonicalRectangleIndexEnclosure",
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
  "slug": "tocanonicalrectangleindexenclosure--bf89072f7fda5ae289558a65",
  "source": {
    "blob": "03e91067d479a26a99b7d3ab0faa8f62ffcac67b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf89072f7fda5ae289558a65d16e66b5d8d4006723205010c0c544c2dc0257c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a5848902f74371290d0b71beeeccfcc4fb3daf90bb83bbeb3e06575dae046c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (report : RectangleEdgeEnclosure N) :
    CanonicalRectangleIndexEnclosure N where
  interval := report.indexInterval
  argument_principle :=
    CanonicalRectangleCompleteRegularization.normalizedRectangleIndex_eq_expected N
  contains_index := report.indexInterval_contains

/-- Decidable count isolation after edge aggregation and the exact
pole/trivial/two-sign correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RationalRectangleEdgeEnclosure.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e91067d479a26a99b7d3ab0faa8f62ffcac67b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

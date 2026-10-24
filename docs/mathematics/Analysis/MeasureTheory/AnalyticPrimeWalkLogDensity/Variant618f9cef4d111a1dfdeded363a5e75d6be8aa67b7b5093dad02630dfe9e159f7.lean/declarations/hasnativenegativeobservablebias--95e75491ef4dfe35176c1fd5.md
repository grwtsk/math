# HasNativeNegativeObservableBias

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:886de41b518c0376140bb06bc4d82331048d895edb469aace9d62d7114e42fdb",
  "kind": "def",
  "lexical_name": "HasNativeNegativeObservableBias",
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
  "slug": "hasnativenegativeobservablebias--95e75491ef4dfe35176c1fd5",
  "source": {
    "blob": "4b1c123bff2d7859c4ef6aef166df2bc28c7c475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 201,
    "path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95e75491ef4dfe35176c1fd55968e593d2ca81d9c22f08b4958e4d147b39547b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:886de41b518c0376140bb06bc4d82331048d895edb469aace9d62d7114e42fdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HasNativeNegativeObservableBias
    (model : AnalyticBridgeHypotheses) : Prop :=
  HasHarmonicNegativeBias (negativeIndexedObservableEvent model)

/-- Expanding the finite mass exposes the requested indicator-weighted sum. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1c123bff2d7859c4ef6aef166df2bc28c7c475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

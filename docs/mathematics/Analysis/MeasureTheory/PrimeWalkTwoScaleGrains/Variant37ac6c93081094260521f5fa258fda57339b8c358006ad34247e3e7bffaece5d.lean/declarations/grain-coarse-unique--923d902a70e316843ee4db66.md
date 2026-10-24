# grain_coarse_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62188663-5e9e-dd46-712f-4666dc90c814",
  "kind": "theorem",
  "lexical_name": "grain_coarse_unique",
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
  "slug": "grain-coarse-unique--923d902a70e316843ee4db66",
  "source": {
    "blob": "d4333173e4d8df399f1452162cb6df346a8b71a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 269,
    "path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:923d902a70e316843ee4db669f9b0cc5a218fc7aee829d7a720bff8060270411",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62188663-5e9e-dd46-712f-4666dc90c814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grain_coarse_unique
    (certificate : RobustTwoScaleGrains
      Point FineTube CoarseTube Grain volume)
    (grain : Grain) (hgrain : grain ∈ certificate.grains)
    (coarse : CoarseTube) (hcoarse : coarse ∈ certificate.coarseTubes)
    (hcontain : certificate.geometry.grainCarrier grain ⊆
      certificate.geometry.coarseCarrier coarse)
    (hangle : certificate.geometry.directionAngle grain coarse ≤
      2 * certificate.parameters.rho) :
    coarse = certificate.grainToCoarse grain :=
  certificate.grain_assigned_unique grain hgrain coarse hcoarse hcontain hangle

/-- Spatial superlevel set of a caller-supplied square function. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PrimeWalkTwoScaleGrains/Variant37ac6c93081094260521f5fa258fda57339b8c358006ad34247e3e7bffaece5d.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4333173e4d8df399f1452162cb6df346a8b71a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

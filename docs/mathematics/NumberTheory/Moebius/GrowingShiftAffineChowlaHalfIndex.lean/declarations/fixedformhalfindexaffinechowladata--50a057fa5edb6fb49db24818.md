# FixedFormHalfIndexAffineChowlaData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f65ac60f08d771ca2f7b89737c47f4d06211388197f78abb0aa43e64ba78bff",
  "kind": "structure",
  "lexical_name": "FixedFormHalfIndexAffineChowlaData",
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
  "slug": "fixedformhalfindexaffinechowladata--50a057fa5edb6fb49db24818",
  "source": {
    "blob": "9242ab7f752131ddfcc560324898aab75bf0f927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 397,
    "path": "GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50a057fa5edb6fb49db24818425e95c250cff78deac55fa0a848a983243d4d5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f65ac60f08d771ca2f7b89737c47f4d06211388197f78abb0aa43e64ba78bff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FixedFormHalfIndexAffineChowlaData where
  fixedAffineFormTheorem : Prop
  formsTwoMPlusConstantsMatched : Prop
  additiveTwistOrResidueCompatibility : Prop
  growingShiftUniformity : Prop
  growingSquareModulusUniformity : Prop
  doubledFrequencyCoverage : Prop
  parityClassUniformity : Prop
  exactEndpointSupportUniformity : Prop
  frequencyModulusEndpointAggregation : Prop
  oneConstantPerExponent : Prop

/-- Proposition exposed by a fixed-form source plus every missing bridge. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/GrowingShiftAffineChowlaHalfIndex.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9242ab7f752131ddfcc560324898aab75bf0f927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# GlobalLocalRelaxationSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6995f68308ce83b94a7bf368cf7f8e21379ef71f9367dd5f05ec829abb4898a2",
  "kind": "structure",
  "lexical_name": "GlobalLocalRelaxationSquare",
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
  "slug": "globallocalrelaxationsquare--1c9fc8908fc780eba893064e",
  "source": {
    "blob": "f998f116db782e586c560fe444f7aae915b4a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1c9fc8908fc780eba893064eff39786410ae5ab2d3d7eaca12ad7cc4d816f36a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6995f68308ce83b94a7bf368cf7f8e21379ef71f9367dd5f05ec829abb4898a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalLocalRelaxationSquare
    {State : Type uState}
    (G : KnownMaximalState State)
    (region : AbsoluteRegion G) where
  horizon : Nat
  version : DAF.Version
  globalReference : G.Coord → ℝ
  localReference : region.LocalCoord → ℝ
  globalOperator : (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ)
  localOperator :
    (region.LocalCoord → ℝ) →ₗ[ℝ]
      (region.LocalCoord → ℝ)
  referenceSquare :
    restrictSignal region globalReference = localReference
  operatorSquare :
    ∀ y,
      restrictSignal region (globalOperator y) =
        localOperator (restrictSignal region y)
  metricRestrictionCompatible : Prop
  metricRestrictionCompatible_proof : metricRestrictionCompatible
  torsionRestrictionCompatible : Prop
  torsionRestrictionCompatible_proof : torsionRestrictionCompatible
  boundaryOverlapCompatible : Prop
  boundaryOverlapCompatible_proof : boundaryOverlapCompatible

namespace GlobalLocalRelaxationSquare

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {region : AbsoluteRegion G}

/-- Global fixed-horizon reconstruction in absolute coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f998f116db782e586c560fe444f7aae915b4a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

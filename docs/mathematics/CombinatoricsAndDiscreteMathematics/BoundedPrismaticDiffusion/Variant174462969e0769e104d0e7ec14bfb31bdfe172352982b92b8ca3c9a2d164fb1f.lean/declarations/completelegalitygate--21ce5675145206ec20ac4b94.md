# CompleteLegalityGate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be5d1359658e4346e7ba56618563fcdc2d0db8ad968714d832da26375efabaec",
  "kind": "structure",
  "lexical_name": "CompleteLegalityGate",
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
  "slug": "completelegalitygate--21ce5675145206ec20ac4b94",
  "source": {
    "blob": "39d9e3bcf87be3e456d722f74b1fe28e0c22cf98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21ce5675145206ec20ac4b942b02dd1b24cca15b5a6e1c732db0521a3e8eae44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be5d1359658e4346e7ba56618563fcdc2d0db8ad968714d832da26375efabaec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CompleteLegalityGate
    {V : Type uV} [Fintype V] [DecidableEq V]
    (terrain : Terrain V)
    (boundary : BoundaryState V)
    extends DAF.Geometry.LegalNeighborSystem terrain boundary where
  exactGlobalLocus : V → V → Prop
  adjacencyBoundaryConservation : V → V → Prop
  obstacleCapacityConservation : V → V → Prop
  booleanSupportActionAgreement : V → V → Prop
  orientationAgreement : V → V → Prop
  binaryChargeCompatible : V → V → Prop
  windowOverlapCompatible : V → V → Prop
  matrixProjectionCompatible : V → V → Prop
  rasterMeshCompatible : V → V → Prop
  torsionModelCompatible : V → V → Prop
  determinantApplicable : V → V → Prop
  prismaticRealizationCompatible : V → V → Prop
  globalRulesetCompatible : V → V → Prop
  exactGlobalLocus_proof : ∀ {x y}, admitted x y → exactGlobalLocus x y
  adjacencyBoundaryConservation_proof :
    ∀ {x y}, admitted x y → adjacencyBoundaryConservation x y
  obstacleCapacityConservation_proof :
    ∀ {x y}, admitted x y → obstacleCapacityConservation x y
  booleanSupportActionAgreement_proof :
    ∀ {x y}, admitted x y → booleanSupportActionAgreement x y
  orientationAgreement_proof :
    ∀ {x y}, admitted x y → orientationAgreement x y
  binaryChargeCompatible_proof :
    ∀ {x y}, admitted x y → binaryChargeCompatible x y
  windowOverlapCompatible_proof :
    ∀ {x y}, admitted x y → windowOverlapCompatible x y
  matrixProjectionCompatible_proof :
    ∀ {x y}, admitted x y → matrixProjectionCompatible x y
  rasterMeshCompatible_proof :
    ∀ {x y}, admitted x y → rasterMeshCompatible x y
  torsionModelCompatible_proof :
    ∀ {x y}, admitted x y → torsionModelCompatible x y
  determinantApplicable_proof :
    ∀ {x y}, admitted x y → determinantApplicable x y
  prismaticRealizationCompatible_proof :
    ∀ {x y}, admitted x y → prismaticRealizationCompatible x y
  globalRulesetCompatible_proof :
    ∀ {x y}, admitted x y → globalRulesetCompatible x y

namespace CompleteLegalityGate

variable {V : Type uV} [Fintype V] [DecidableEq V]
variable {terrain : Terrain V} {boundary : BoundaryState V}

/-- Complete legality is an explicit thirteen-way conjunction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BoundedPrismaticDiffusion/Variant174462969e0769e104d0e7ec14bfb31bdfe172352982b92b8ca3c9a2d164fb1f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d9e3bcf87be3e456d722f74b1fe28e0c22cf98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# PartitionGlobalLocalRelaxationSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:095cbaa358df63223639147ff59f92114273a2777192d2c8e2ed63193674dc52",
  "kind": "structure",
  "lexical_name": "PartitionGlobalLocalRelaxationSystem",
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
  "slug": "partitiongloballocalrelaxationsystem--b6d1388b68b0126570f83d3d",
  "source": {
    "blob": "f998f116db782e586c560fe444f7aae915b4a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 297,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6d1388b68b0126570f83d3d669adfc3a90803d5a288b04897ce988a84000f2d",
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

Occurrence: `declaration:095cbaa358df63223639147ff59f92114273a2777192d2c8e2ed63193674dc52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PartitionGlobalLocalRelaxationSystem
    (partition : GlobalAvalanchePartition tree) where
  horizon : Nat
  version : DAF.Version
  globalReference : G.Coord → ℝ
  globalOperator : (G.Coord → ℝ) →ₗ[ℝ] (G.Coord → ℝ)
  localReference : ∀ node, (tree.region node).LocalCoord → ℝ
  localOperator : ∀ node,
    ((tree.region node).LocalCoord → ℝ) →ₗ[ℝ]
      ((tree.region node).LocalCoord → ℝ)
  referenceSquare : ∀ node,
    restrictSignal (tree.region node) globalReference = localReference node
  operatorSquare : ∀ node y,
    restrictSignal (tree.region node) (globalOperator y) =
      localOperator node (restrictSignal (tree.region node) y)
  metricRestrictionCompatible : tree.Node → Prop
  metricRestrictionCompatible_proof :
    ∀ node, metricRestrictionCompatible node
  torsionRestrictionCompatible : tree.Node → Prop
  torsionRestrictionCompatible_proof :
    ∀ node, torsionRestrictionCompatible node
  boundaryOverlapCompatible : tree.Node → Prop
  boundaryOverlapCompatible_proof :
    ∀ node, boundaryOverlapCompatible node

namespace PartitionGlobalLocalRelaxationSystem

/-- Recover the already-proved one-region square at any partition node. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f998f116db782e586c560fe444f7aae915b4a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

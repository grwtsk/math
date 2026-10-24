# InvolutivePrismaticMove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:655dafeaa1ed7bc977edf3a19aaf1a3fd82a7e4b3a44eb145731dd67bf787a09",
  "kind": "structure",
  "lexical_name": "InvolutivePrismaticMove",
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
  "slug": "involutiveprismaticmove--4bf94e53142b42628bf9a08e",
  "source": {
    "blob": "494317ba07150c012c50a9f2d3f6cc692d04c41f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 46,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4bf94e53142b42628bf9a08ec59d1622ea1e966f3de13cb83aad79c6ea653e24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:655dafeaa1ed7bc977edf3a19aaf1a3fd82a7e4b3a44eb145731dd67bf787a09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InvolutivePrismaticMove
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (V : Type uV) [Fintype V] [DecidableEq V]
    (F : DAF.Fabric.Fabric)
    (P : DAF.Prismatic.Theory)
    (before after : DAF.Prismatic.SourceRealization F P) where
  terrainMove : DAF.Terrain.TerrainMove G V
  terrainLegality : DAF.Terrain.TerrainMoveLegality terrainMove
  involution : CertifiedInvolution V
  supportInsideLocus :
    letI := G.coordDecEq
    ∀ v, v ∈ involution.support →
      terrainMove.vertexGlobal v ∈ terrainMove.locus.coordinates
  matrix : BinaryInvolutionProjection V
  matrix_source : matrix.source = involution
  orientationAgreement : Prop
  orientationAgreement_proof : orientationAgreement
  sourceChange : DAF.Prismatic.SourceRealization.Hom before after
  realizationSquare : Prop
  realizationSquare_proof : realizationSquare
  determinant : IntegralDeterminantApplicability matrix

namespace InvolutivePrismaticMove

variable
    {State : Type uState}
    {G : DAF.Terrain.KnownMaximalState State}
    {V : Type uV} [Fintype V] [DecidableEq V]
    {F : DAF.Fabric.Fabric}
    {P : DAF.Prismatic.Theory}
    {before after : DAF.Prismatic.SourceRealization F P}

/-- Every moved finite vertex belongs to the exact terrain locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/InvolutivePrismaticMove/Variant3f22b541fdcb518c1e610af4a2260aa15ce597b206d13556dc8e3da76641b73f.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `494317ba07150c012c50a9f2d3f6cc692d04c41f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

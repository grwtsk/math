# exampleDirectedEdgeRelaxation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b09e9fc5eb6b8040ba2d85355637aec3c64a4b365b0bc7beea9281d4ee7c9c25",
  "kind": "def",
  "lexical_name": "exampleDirectedEdgeRelaxation",
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
  "slug": "exampledirectededgerelaxation--1772a0d68f0b5d41070dd775",
  "source": {
    "blob": "68461bc7dca7cd80578d6149f122989e2b1284f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NullBalancedEdgeCircleExamples/Variantdfeb8e2d093bdfa7f5c5191b094da55061ed6286f6a74da92c768a9ca8c021c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1772a0d68f0b5d41070dd775237a48362e9b9dc73b89e32929445f290c875e4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NullBalancedEdgeCircleExamples/Variantdfeb8e2d093bdfa7f5c5191b094da55061ed6286f6a74da92c768a9ca8c021c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b09e9fc5eb6b8040ba2d85355637aec3c64a4b365b0bc7beea9281d4ee7c9c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleDirectedEdgeRelaxation :
    DirectedEdgeRelaxation binaryDirectionSystem where
  edgeTree := fun e => Tree.var e
  relaxedTree := fun _ =>
    EdgeRelaxation.FuzzyTree.eval
      EdgeRelaxation.relaxedValuation
      EdgeRelaxation.activeRootTree
  relaxedAtNull := True
  relaxedAtNullProof := trivial
  nonCrispAtNull :=
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.activeRootTree)
  nonCrispAtNullProof :=
    EdgeRelaxation.activeRootTree_relaxed_not_crisp_from_finite_tree
  compatibleWithLine3 := True
  compatibleWithLine3Proof := trivial

/-- Example local analytic limit certificate with toy completion `Nat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NullBalancedEdgeCircleExamples/Variantdfeb8e2d093bdfa7f5c5191b094da55061ed6286f6a74da92c768a9ca8c021c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NullBalancedEdgeCircleExamples/Variantdfeb8e2d093bdfa7f5c5191b094da55061ed6286f6a74da92c768a9ca8c021c0.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68461bc7dca7cd80578d6149f122989e2b1284f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

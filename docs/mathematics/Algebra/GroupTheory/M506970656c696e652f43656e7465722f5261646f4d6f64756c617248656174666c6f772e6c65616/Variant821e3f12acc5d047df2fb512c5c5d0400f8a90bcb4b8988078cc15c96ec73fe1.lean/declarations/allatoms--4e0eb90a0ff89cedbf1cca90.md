# allAtoms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a17f80fb9ce75c9738edf0e2b024846843a13c9c67cfe5ddbe1478fe59a6d782",
  "kind": "def",
  "lexical_name": "allAtoms",
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
  "slug": "allatoms--4e0eb90a0ff89cedbf1cca90",
  "source": {
    "blob": "28a6cca751fa4377a4945d4006349b1063e73970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 824,
    "line": 801,
    "path": "GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e0eb90a0ff89cedbf1cca902f5ac6774bb583cf520bbbb9bed6b9b22ccb88e3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a17f80fb9ce75c9738edf0e2b024846843a13c9c67cfe5ddbe1478fe59a6d782`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–824.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def allAtoms : List Atom :=
  [ Atom.ambientRadoGraph
  , Atom.radoExtensionProperty
  , Atom.subsetAndInducedGraph
  , Atom.treeProjection
  , Atom.quotientFiberPartition
  , Atom.hybridWeightGraph
  , Atom.normalizedLaplacianHeatflow
  , Atom.countableExhaustionLimit
  , Atom.heatCentroidCore
  , Atom.upperHalfPlaneCoordinates
  , Atom.qExpansionCarrier
  , Atom.orbitSymmetricEvenWeights
  , Atom.modularRepresentationLabel
  , Atom.modularTransformationConsistency
  , Atom.parentResidueEquation
  , Atom.witnessInsertion
  , Atom.montgomeryPairRegularizer
  , Atom.ellipticCurveTraceShadow
  , Atom.finiteTerminationCriterion
  , Atom.algorithmOutputAssembly
  , Atom.totalObjectiveAndConvergence
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/M506970656c696e652f43656e7465722f5261646f4d6f64756c617248656174666c6f772e6c65616/Variant821e3f12acc5d047df2fb512c5c5d0400f8a90bcb4b8988078cc15c96ec73fe1.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28a6cca751fa4377a4945d4006349b1063e73970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

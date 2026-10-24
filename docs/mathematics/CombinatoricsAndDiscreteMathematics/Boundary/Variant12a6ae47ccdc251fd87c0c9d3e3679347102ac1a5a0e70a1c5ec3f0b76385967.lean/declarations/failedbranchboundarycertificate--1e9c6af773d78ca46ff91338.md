# FailedBranchBoundaryCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b2b361448b216e1edf3a520fbd272719fc5f8cc0a60d5694b60c22982a8838a",
  "kind": "structure",
  "lexical_name": "FailedBranchBoundaryCertificate",
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
  "slug": "failedbranchboundarycertificate--1e9c6af773d78ca46ff91338",
  "source": {
    "blob": "6094c4b051d720db368be11060ea9739703e4498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e9c6af773d78ca46ff91338949bd5be12d651f250683129d8ace5cac53f74a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b2b361448b216e1edf3a520fbd272719fc5f8cc0a60d5694b60c22982a8838a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FailedBranchBoundaryCertificate
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint}
    {constraints : Finset Constraint}
    (branch : RootedBranch tree) where
  boundaryNode : Node
  boundaryMember :
    boundaryNode ∈ branch.nodes
  boundary :
    FirstInfeasibleBoundary
      tree semantics constraints boundaryNode
  uniqueOnBranch :
    ∀ candidate,
      candidate ∈ branch.nodes →
      FirstInfeasibleBoundary
        tree semantics constraints candidate →
      candidate = boundaryNode

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6094c4b051d720db368be11060ea9739703e4498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

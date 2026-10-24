# exampleSharedTraceLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d0c293ed50c2dc55db58d90881dbf7ef96c547bd2eff637f63a7446de1f6cd9",
  "kind": "def",
  "lexical_name": "exampleSharedTraceLocus",
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
  "slug": "examplesharedtracelocus--1057286ff23f5e88ee0d054c",
  "source": {
    "blob": "c4d06a05f04c058d90f6098980b412e6e6f8f1a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 978,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1057286ff23f5e88ee0d054cfbd7941f855fe8ab5596d6e0847439c15d662f38",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d0c293ed50c2dc55db58d90881dbf7ef96c547bd2eff637f63a7446de1f6cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 978–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleSharedTraceLocus : SharedTraceLocus where
  scale := exampleTraceScale
  pdepth := examplePrismaticDepth
  leftMobius := exampleLeftSide
  rightEuler := exampleRightSide
  mobiusCert := exampleMobiusCert
  divisorCert := exampleDivisorCert
  samePrimeSupport := rfl
  hypercubeToValuationBox := exampleSquareFreeEmbedding
  sameBooleanSupport := True
  sameValuationSupport := True
  errorBudget := exampleErrorBudget
  margins := exampleMargins
  admissible := exampleAdmissibleTraceDepth

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ZetaTraceZKP/Variant763c0f7ad0cf13ad53cbe05d4dfbc72cd52fab91467c74a5b99ee945778ce146.lean#L978).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4d06a05f04c058d90f6098980b412e6e6f8f1a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

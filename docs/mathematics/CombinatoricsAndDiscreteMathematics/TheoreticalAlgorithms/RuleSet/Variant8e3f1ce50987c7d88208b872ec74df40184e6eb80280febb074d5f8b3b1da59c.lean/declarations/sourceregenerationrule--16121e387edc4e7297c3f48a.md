# SourceRegenerationRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c988bf2541c53f31c4ec7ea79f03c8eca37ad25c4f7418937b2f3ec39222bec",
  "kind": "structure",
  "lexical_name": "SourceRegenerationRule",
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
  "slug": "sourceregenerationrule--16121e387edc4e7297c3f48a",
  "source": {
    "blob": "c1e5cac1151159a2ad45233df705e79f1c23a05e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 16,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleSet/Variant8e3f1ce50987c7d88208b872ec74df40184e6eb80280febb074d5f8b3b1da59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16121e387edc4e7297c3f48af8778408be37750d7ef6856179f56c66a66dd561",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleSet/Variant8e3f1ce50987c7d88208b872ec74df40184e6eb80280febb074d5f8b3b1da59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c988bf2541c53f31c4ec7ea79f03c8eca37ad25c4f7418937b2f3ec39222bec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SourceRegenerationRule where
  ruleName : String
  inputModules : List String
  outputModule : String
  requiredFrames : List Frame
  requiredPoles : List PolarSplitPaddingPole
  requiredIntegrityChecks : List TensoralIntegrity
  requiredCurvatureBalances : List CurvatureBalance
  requiredObligations : List TheoremCreationObligation
  emittedDeclarationNames : List String
  preservesClaimBoundary : Prop
  preservesProofStatus : Prop
  preservesTrustedStatus : Prop
  noMigrationResidue : Prop
  claimBoundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleSet/Variant8e3f1ce50987c7d88208b872ec74df40184e6eb80280febb074d5f8b3b1da59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuleSet/Variant8e3f1ce50987c7d88208b872ec74df40184e6eb80280febb074d5f8b3b1da59c.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1e5cac1151159a2ad45233df705e79f1c23a05e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

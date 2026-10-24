# AttentionErrorBudget.residuals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:505813fa94632cfeb7ea5f51dba169d074600b949b65dc050d79e5242b8fe6cb",
  "kind": "def",
  "lexical_name": "AttentionErrorBudget.residuals",
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
  "slug": "attentionerrorbudget-residuals--e933e022db37bc8844debfba",
  "source": {
    "blob": "da3d1ddd81242b6af4f9ab66012bc86d77249b0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e933e022db37bc8844debfba06dd7f4b468e1518569dbac381f9576fe506ec73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:505813fa94632cfeb7ea5f51dba169d074600b949b65dc050d79e5242b8fe6cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AttentionErrorBudget.residuals
    (budget : AttentionErrorBudget) :
    List (ResidualBound Unit) :=
  [
    budget.sequence.toResidualBound
      .sequenceApproximation,
    budget.depth.toResidualBound
      .depthNormalization,
    budget.interchange.toResidualBound
      .interchange,
    budget.block.toResidualBound
      .blockCondensation,
    budget.arithmetic.toResidualBound
      .sequenceArithmetic,
    budget.mps.toResidualBound
      .mpsFactorization,
    budget.decoder.toResidualBound
      .decoderSemantic,
    budget.condensation.toResidualBound
      .continuationCoverage,
    budget.rebirth.toResidualBound
      .reproductiveBehavior
  ]

/-- Propagated total of the nine already-transported observation channels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorBudget/Variant769ab47d9db86eaa2fd2226ea9b5aa73b59a21f97633019c146ad3d8c48cec8a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da3d1ddd81242b6af4f9ab66012bc86d77249b0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

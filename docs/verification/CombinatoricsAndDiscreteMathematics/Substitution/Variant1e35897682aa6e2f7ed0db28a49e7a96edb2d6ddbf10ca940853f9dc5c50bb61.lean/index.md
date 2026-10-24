# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Substitution.Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96f96269e0352171c182ce1632dd1cbd55ea993f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96f96269e0352171c182ce1632dd1cbd55ea993f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.ContextualEquivalence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.SemanticTokenization.Phrase` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReplacementSite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/replacementsite--bc9a79682d8f0813a0f21959.md) | 10 | `declaration-track:bc9a79682d8f0813a0f21959d7a6568af9d51dad4c926112f668bcecd841a0cd` |
| 2 | `structure` | [SubstitutedText](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/substitutedtext--f9fc9d8d3fd11f85d2299c87.md) | 16 | `declaration-track:f9fc9d8d3fd11f85d2299c879cefe2293b8004da2eb06e7c497f19da243ec5cd` |
| 3 | `structure` | [SubstitutionCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/substitutioncertificate--9a46617703726659df83171e.md) | 21 | `declaration-track:9a46617703726659df83171eb2be7d5e1e03e93fd11955952063c695070d275e` |
| 4 | `structure` | [ContextualSynonymyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/contextualsynonymycertificate--4392548bbcf98be51668e7e2.md) | 45 | `declaration-track:4392548bbcf98be51668e7e20a1ea8d7a090e4f45df6d90e3d79c59e961f3566` |
| 5 | `theorem` | [synonymy_requires_substitution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/synonymy-requires-substitution--95af9aa09df6b6e4029d3726.md) | 59 | `result-track:95af9aa09df6b6e4029d3726d04c2c22d12d97cc4aba6d2fa9cb2b5c8c7a7e9f` |
| 6 | `structure` | [GlobalSynonymyCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/declarations/globalsynonymycertificate--c23331f3f145929a7eb88026.md) | 67 | `declaration-track:c23331f3f145929a7eb88026d6855eacae44956ff0a740a498d7f936bd89443f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

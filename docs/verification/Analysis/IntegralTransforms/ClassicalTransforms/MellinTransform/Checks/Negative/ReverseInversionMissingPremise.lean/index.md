# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Negative.ReverseInversionMissingPremise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abfb90ef73f4fc0fc3b1dfd9c836b9dcf39f0392",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/index.md) · [Full source](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abfb90ef73f4fc0fc3b1dfd9c836b9dcf39f0392`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.ReverseInversion`](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ReverseInversion.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointSpike](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike--cc3f407bc4b9aa78a0257552.md) | 12 | `declaration-track:cc3f407bc4b9aa78a025755249a529c4775a91708c3b34edc089b38533ed52d6` |
| 2 | `lemma` | [pointSpike_on_line](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-on-line--6f2894376cfeee6786f86280.md) | 14 | `result-track:6f2894376cfeee6786f8628083a6c3d9f2311c53b08503819f4a3eeca4aa5b0a` |
| 3 | `lemma` | [pointSpike_line_ae_zero](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-line-ae-zero--76bc5c8f828ff1339e05d75c.md) | 18 | `result-track:76bc5c8f828ff1339e05d75cc1ee9b12802dfc628f665dea325e516da376a95d` |
| 4 | `lemma` | [pointSpike_line_integrable](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-line-integrable--6ec9d3cc29ce997624600c3e.md) | 24 | `result-track:6ec9d3cc29ce997624600c3edd617a2309e1180933b6a07fc5f8dbd686003818` |
| 5 | `lemma` | [zero_mellin_convergent](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/zero-mellin-convergent--36353e637350f32150e5c33c.md) | 29 | `result-track:36353e637350f32150e5c33ccdc65dd5912a2e7021ae9334e77c4c3cb37365a2` |
| 6 | `lemma` | [pointSpike_inverse](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-inverse--d629802a15d957d7fc1356b4.md) | 32 | `result-track:d629802a15d957d7fc1356b40327959707db52395e6ed99c3b8e5c91bc28949a` |
| 7 | `lemma` | [pointSpike_not_recovered](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-not-recovered--dfddc92abd33207fe48e5109.md) | 39 | `result-track:dfddc92abd33207fe48e5109349866b30bf264de44d34654f1baadbbb43e393e` |
| 8 | `lemma` | [pointSpike_line_not_continuous](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/pointspike-line-not-continuous--d7c2d5bbdb969bedb3e19251.md) | 43 | `result-track:d7c2d5bbdb969bedb3e19251dfa4245274436fb8fbb1e697be6706c9c4dd371c` |
| 9 | `example` | [(anonymous)](../../../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Negative/ReverseInversionMissingPremise.lean/declarations/example--84c6a1d3ac74b751d707e34e.md) | 55 | `declaration-track:84c6a1d3ac74b751d707e34ecb0c1b0315c326843ebccb3ffd9fd3f4809fddff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

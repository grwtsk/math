# Verification target: GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b0aecaada254d4b9f2409f9780320169bbf0fc2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b0aecaada254d4b9f2409f9780320169bbf0fc2`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianAnnularSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianAnnularSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianCoupledSeparation.lean/index.md) — import line 17; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.GaussianWindowSeminorms`](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianWindowSeminorms.lean/index.md) — import line 18; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianSlotWindow](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianslotwindow--767712aa2799c6ee07d78569.md) | 31 | `declaration-track:767712aa2799c6ee07d785691a465a0b9c6be74ed8e0f5a7a9e138e802316493` |
| 2 | `def` | [gaussianSlotSlope](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianslotslope--6f211c0d6dfa13b3606bae17.md) | 34 | `declaration-track:6f211c0d6dfa13b3606bae17ca97a9fb7fb39a584d133e946692567a50934a94` |
| 3 | `def` | [gaussianSlotPoint](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianslotpoint--a747d31ea4f9e54aa91cc2ec.md) | 37 | `declaration-track:a747d31ea4f9e54aa91cc2ec924b91a43a9393b9fa2380f0f217dc24e4cd8a56` |
| 4 | `lemma` | [gaussianSlot_argument](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianslot-argument--7adf8c63f9203f67f7b5358a.md) | 42 | `result-track:7adf8c63f9203f67f7b5358a003b671c979da9a1ffc208b05a83bcb6ee0425a7` |
| 5 | `lemma` | [logPhase_neg_argument](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/logphase-neg-argument--318ca2a05a56ec34d1b98b5f.md) | 51 | `result-track:318ca2a05a56ec34d1b98b5f63190f9a5383c679b97bb8e1710786a2b69f9fa9` |
| 6 | `lemma` | [gaussianSlot_product](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianslot-product--a71e570b71ffabb38428c6ca.md) | 57 | `result-track:a71e570b71ffabb38428c6ca28e8f40343357916d7f294a9b83c1c0bdc29acc9` |
| 7 | `def` | [logPhaseTwist](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/logphasetwist--4e77e967d432b1edc2c55f15.md) | 68 | `declaration-track:4e77e967d432b1edc2c55f15de4e08b03fdb99d755ddd99c536d8c93feb2b1a3` |
| 8 | `lemma` | [logPhaseTwist_compact](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/logphasetwist-compact--34e90c0b2d8b8058e6647e0d.md) | 70 | `result-track:34e90c0b2d8b8058e6647e0d72551d524e0b97bd6073f6fd03179f8afecc2bdc` |
| 9 | `lemma` | [gaussianFixedWindow_rootWeight_twist](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianfixedwindow-rootweight-twist--46d33100951a2e4dd5cca32c.md) | 74 | `result-track:46d33100951a2e4dd5cca32c04185875d634c0bc1e83c9e0a7c64e453d879037` |
| 10 | `lemma` | [gaussianFixedWindow_twist_compact](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussianfixedwindow-twist-compact--5485d88cbc53a33ea6a24e8f.md) | 81 | `result-track:5485d88cbc53a33ea6a24e8f169135172e7d694cfd90775033b82745e99277f1` |
| 11 | `lemma` | [dyadicAnnulus_log_support](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/dyadicannulus-log-support--9e1d411048f1a6c8b3b6688d.md) | 86 | `result-track:9e1d411048f1a6c8b3b6688de8a86c053dce7fad352d5efbf06799420bdac750` |
| 12 | `lemma` | [gaussian_annular_integrable](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussian-annular-integrable--50c5554bd01f41a735e9f73f.md) | 108 | `result-track:50c5554bd01f41a735e9f73f5c1476e44d19a8bf096828580617c5952d36aaa1` |
| 13 | `theorem` | [gaussian_selected_slot_family](../../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianAnnularSeparation.lean/declarations/gaussian-selected-slot-family--5de206bd768245eef93ca302.md) | 119 | `result-track:5de206bd768245eef93ca3028d1269fb4c189dce9808f5f91b4cdb24b875adc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

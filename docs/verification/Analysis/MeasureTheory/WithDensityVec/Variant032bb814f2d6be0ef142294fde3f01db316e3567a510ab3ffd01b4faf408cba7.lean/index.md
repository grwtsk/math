# Verification target: GRWTSK.Analysis.MeasureTheory.WithDensityVec.Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d576c13e2f8671f4716f3526118d6829418ef92a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d576c13e2f8671f4716f3526118d6829418ef92a`.

Source path: `GRWTSK/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity--87707f21283ac0afb160a323.md) | 50 | `declaration-track:87707f21283ac0afb160a323f6efd085ee1d8be995460ed87c3b4150cb3bfbbd` |
| 2 | `lemma` | [withDensity_apply](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity-apply--8713d8cb20e26de4f076b30a.md) | 59 | `result-track:8713d8cb20e26de4f076b30acb816fe92ad768b1d1e06af63b416941b259c268` |
| 3 | `lemma` | [withDensity_apply_univ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity-apply-univ--f119e6a8cc9ec8bb0651d88e.md) | 63 | `result-track:f119e6a8cc9ec8bb0651d88e054a7f04e1ad4df30921583540bc74b68d6f1f49` |
| 4 | `lemma` | [withDensity_zero_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity-zero-vectormeasure--6304b25e4638b8f729ad1b82.md) | 69 | `result-track:6304b25e4638b8f729ad1b82fcfeb4598042007e13cfd7d82b25350d62298ec3` |
| 5 | `lemma` | [withDensity_zero](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity-zero--e7560d916b541574d3337cb0.md) | 74 | `result-track:e7560d916b541574d3337cb08b3ac94467d9fbb144f074547cf2fe4c40a114f8` |
| 6 | `lemma` | [withDensity_congr](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/withdensity-congr--c3aefd296c70cb949a5c9803.md) | 78 | `result-track:c3aefd296c70cb949a5c98035c5460d9d0c5e45cd8264ef46f98c36693583d50` |
| 7 | `lemma` | [restrict_withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/restrict-withdensity--a720142823ff371b8a298aaa.md) | 88 | `result-track:a720142823ff371b8a298aaa3ae99505db28d63510269abdd14e7dd142723a3e` |
| 8 | `lemma` | [variation_WithDensity_le](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/variation-withdensity-le--42285deb1144666224ca870e.md) | 96 | `result-track:42285deb1144666224ca870eab1015c25b21a0dcba77b77f632f309aa0c37a73` |
| 9 | `lemma` | [variation_withDensity'](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/variation-withdensity--ee7010ac0646d6ac651d842c.md) | 114 | `result-track:ee7010ac0646d6ac651d842cd5902ad4a24d3f4cbc5b7a1c0787d6479dc171a7` |
| 10 | `lemma` | [variation_withDensity](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/variation-withdensity--ec87982eb930c0afeafc8de0.md) | 362 | `result-track:ec87982eb930c0afeafc8de0854a5528267079f8c4a759b4d53b024510aa5d49` |
| 11 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.WithDensity.Variant1f2841140c45ce1cff9812159a0c85b322ef8afef1e3fb58be003a07d4d3fbca.MeasureTheory.Measure.variation_withDensityᵥ](../../../../../mathematics/Analysis/MeasureTheory/WithDensityVec/Variant032bb814f2d6be0ef142294fde3f01db316e3567a510ab3ffd01b4faf408cba7.lean/declarations/root-grwtsk-analysis-measuretheory-withdensity-variant1f2841140c45ce1cff--b7210f9b3f399cf121b58ae1.md) | 374 | `result-track:b7210f9b3f399cf121b58ae11ecb12c759353d25cfd047ca77e8fc65e2d1405d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

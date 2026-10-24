# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Rademacher.Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eefc47f46ea17a2ed77b12d9df7e92450bdf9de2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eefc47f46ea17a2ed77b12d9df7e92450bdf9de2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [memLp_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/memlp-linederiv--6b8f1ef74cee0af6bca98b2c.md) | 76 | `result-track:6b8f1ef74cee0af6bca98b2c199b18f814d7e005f108ce0dfffb48378d70030a` |
| 2 | `theorem` | [ae_lineDifferentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-linedifferentiableat--2c6ebf2c0a9b9554f4fc2f05.md) | 83 | `result-track:2c6ebf2c0a9b9554f4fc2f0521d7675ca733d180860c1fbac323c997d0ceecd8` |
| 3 | `theorem` | [locallyIntegrable_lineDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/locallyintegrable-linederiv--d845b0c073b793e87991cebd.md) | 100 | `result-track:d845b0c073b793e87991cebdbf613cc7f488995b27301ac49ffa89f67169460f` |
| 4 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--d7b78b16d76e26a25061213c.md) | 113 | `result-track:d7b78b16d76e26a25061213c2c84293a95a7dce240071736fdd4b55edf4d6447` |
| 5 | `theorem` | [integral_inv_smul_sub_mul_tendsto_integral_lineDeriv_mul'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/integral-inv-smul-sub-mul-tendsto-integral-linederiv-mul--5fc01f5068b3df579bcd1aa9.md) | 135 | `result-track:5fc01f5068b3df579bcd1aa93c16eb85f7f7a0edcd49fb636e15aff62b9245b0` |
| 6 | `theorem` | [integral_lineDeriv_mul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/integral-linederiv-mul-eq--d333b547fa560f1b5fe49412.md) | 179 | `result-track:d333b547fa560f1b5fe4941224b2cd58c22d607171931e6864d078cc0fb7fdc6` |
| 7 | `theorem` | [ae_lineDeriv_sum_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-linederiv-sum-eq--6990c2ab85895882e3264f26.md) | 214 | `result-track:6990c2ab85895882e3264f26de7617ef3cc844d3a6887d72f7ff9c951775e422` |
| 8 | `theorem` | [ae_exists_fderiv_of_countable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-exists-fderiv-of-countable--8eb01592ad953707397afe63.md) | 255 | `result-track:8eb01592ad953707397afe631a2fdd60a853a5ebf3d9fc802af3500b2b294033` |
| 9 | `theorem` | [hasFDerivAt_of_hasLineDerivAt_of_closure](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/hasfderivat-of-haslinederivat-of-closure--95177bc74b530beb84513bd6.md) | 274 | `result-track:95177bc74b530beb84513bd65dac420312db2eae3e7ff9d19a7aa05c46451183` |
| 10 | `theorem` | [ae_differentiableAt_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiableat-of-real--359fae18bad196c14c6a7caf.md) | 330 | `result-track:359fae18bad196c14c6a7cafac70662687860c177376815dad7131af167aa2e1` |
| 11 | `theorem` | [ae_differentiableWithinAt_of_mem_of_real](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiablewithinat-of-mem-of-real--c06e50e14bd72305123f12f5.md) | 349 | `result-track:c06e50e14bd72305123f12f5252322461e81274712c9fbbf1d1646cd9f28f331` |
| 12 | `theorem` | [ae_differentiableWithinAt_of_mem_pi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiablewithinat-of-mem-pi--5baf38d7dad859702eb10d97.md) | 359 | `result-track:5baf38d7dad859702eb10d97d148419f79b3c5750fa494d21320277d1003f5a1` |
| 13 | `theorem` | [ae_differentiableWithinAt_of_mem](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiablewithinat-of-mem--81c8005568764beee2e21d84.md) | 371 | `result-track:81c8005568764beee2e21d841029bf011589ba45b40adbaceaf846ade8231643` |
| 14 | `theorem` | [ae_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiablewithinat--d3c565f71abba19a82fbd105.md) | 385 | `result-track:d3c565f71abba19a82fbd105ad661042f540c253523a9044341b5e71c4a2fc95` |
| 15 | `theorem` | [LipschitzWith.ae_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/lipschitzwith-ae-differentiableat--043dd49c0f84d0178ae5a440.md) | 395 | `result-track:043dd49c0f84d0178ae5a4405495d952e818abc896862439435fdc5a8c9c80e9` |
| 16 | `theorem` | [ae_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/ae-differentiableat-norm--a8c9bd98a79aee567c028df3.md) | 402 | `result-track:a8c9bd98a79aee567c028df332935c12eb51f2ea247999d7d8bf859184670836` |
| 17 | `theorem` | [dense_differentiableAt_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/declarations/dense-differentiableat-norm--e3cab3293a240cbfe5e1bd00.md) | 408 | `result-track:e3cab3293a240cbfe5e1bd003152c30c5b9d8524e2c9872d3094fa25364e500b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

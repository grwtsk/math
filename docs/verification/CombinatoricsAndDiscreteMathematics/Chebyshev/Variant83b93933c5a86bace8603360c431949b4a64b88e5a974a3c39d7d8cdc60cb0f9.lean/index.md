# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Chebyshev.Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2249ff1dd5074f750395340eef02d3804af87b3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2249ff1dd5074f750395340eef02d3804af87b3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Module` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fintype` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_sum_le_card_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/monovaryon-sum-smul-sum-le-card-smul-sum--62bac031986b1ad697609c97.md) | 75 | `result-track:62bac031986b1ad697609c97d4bb6b53a24605ad84bf803dda616a2f53e52dfc` |
| 2 | `theorem` | [AntivaryOn.card_smul_sum_le_sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/antivaryon-card-smul-sum-le-sum-smul-sum--c0f978a78fddad4151a5c3f8.md) | 85 | `result-track:c0f978a78fddad4151a5c3f8d0f3bcd3d53e9a21d290aaa737662b56f6eed9f2` |
| 3 | `theorem` | [Monovary.sum_smul_sum_le_card_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/monovary-sum-smul-sum-le-card-smul-sum--e601d8b4e4adceaa31807289.md) | 94 | `result-track:e601d8b4e4adceaa31807289d421740f55aa4c552c68671096b7ea9089fc3167` |
| 4 | `theorem` | [Antivary.card_smul_sum_le_sum_smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/antivary-card-smul-sum-le-sum-smul-sum--3c391651011496ab0bfcced1.md) | 101 | `result-track:3c391651011496ab0bfcced1e71a7345cd6f378b3fd7dd3598a6d15b59e8a1c2` |
| 5 | `theorem` | [MonovaryOn.sum_mul_sum_le_card_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/monovaryon-sum-mul-sum-le-card-mul-sum--2855f6a11ece547802f30dfc.md) | 121 | `result-track:2855f6a11ece547802f30dfcc5cf391a7821605834589723d97f4510d8a6642a` |
| 6 | `theorem` | [AntivaryOn.card_mul_sum_le_sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/antivaryon-card-mul-sum-le-sum-mul-sum--05fbe273342ea22a0bfd5dc4.md) | 129 | `result-track:05fbe273342ea22a0bfd5dc49cca9c2534461648e6edce86a65d6ffccdc06525` |
| 7 | `lemma` | [pow_sum_le_card_mul_sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/pow-sum-le-card-mul-sum-pow--10e1a7e63d48444441b01668.md) | 135 | `result-track:10e1a7e63d48444441b01668a5114f0a73b82ed22d627947b59108ab26f75789` |
| 8 | `theorem` | [sq_sum_le_card_mul_sum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/sq-sum-le-card-mul-sum-sq--2c982ef09b4ec794fbb88dfa.md) | 152 | `result-track:2c982ef09b4ec794fbb88dfa712ea66f5b1eeba0a4ae36f4f90a72927d42dbef` |
| 9 | `theorem` | [Multiset.sq_sum_le_card_mul_sum_sq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/multiset-sq-sum-le-card-mul-sum-sq--4023c144fd640e7b8a90c450.md) | 158 | `result-track:4023c144fd640e7b8a90c45025ac84d51e9cbe2c4dbce1f44782e7a321a92ef2` |
| 10 | `theorem` | [Monovary.sum_mul_sum_le_card_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/monovary-sum-mul-sum-le-card-mul-sum--51bf843306742651061442e0.md) | 169 | `result-track:51bf843306742651061442e0aa9cbb9016e61b0263d9272c31cadf187a45d024` |
| 11 | `theorem` | [Antivary.card_mul_sum_le_sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/antivary-card-mul-sum-le-sum-mul-sum--502ce4c46fc38fac482768a6.md) | 176 | `result-track:502ce4c46fc38fac482768a646f8c72e0f151e41e647285cc574a0b498720068` |
| 12 | `lemma` | [pow_sum_div_card_le_sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/pow-sum-div-card-le-sum-pow--32bf9609f653ee37600a1aeb.md) | 186 | `result-track:32bf9609f653ee37600a1aebdc08604476a68cc47073fb3b28ce9ac68335b837` |
| 13 | `theorem` | [sum_div_card_sq_le_sum_sq_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/sum-div-card-sq-le-sum-sq-div-card--ca8f73f9640b3b559a46cbe2.md) | 193 | `result-track:ca8f73f9640b3b559a46cbe2ee19d6b086ed9564719ea4c4d7d83e7b3962e166` |
| 14 | `theorem` | [sum_mul_le_sum_mul_of_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/sum-mul-le-sum-mul-of-sum-range-le--1e6f421a5142599cd5da2a95.md) | 212 | `result-track:1e6f421a5142599cd5da2a9528ba525bb31647cb50045c35e7c4c6ce0feeeadf` |
| 15 | `theorem` | [sum_mul_le_mul_of_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/sum-mul-le-mul-of-sum-range-le--92af4b39164e6279a4e68581.md) | 227 | `result-track:92af4b39164e6279a4e68581a04b39a7b84a56c5c1b20bb4eac240b8c2e2fad7` |
| 16 | `theorem` | [mul_le_sum_mul_of_le_sum_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/mul-le-sum-mul-of-le-sum-range--5b46dbb7d731ccfa8eb5d6fe.md) | 240 | `result-track:5b46dbb7d731ccfa8eb5d6fe6c47ceb9f91efed77f4bffe59a4830e5a74480f3` |
| 17 | `theorem` | [abs_sum_mul_le_mul_of_abs_sum_range_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Chebyshev/Variant83b93933c5a86bace8603360c431949b4a64b88e5a974a3c39d7d8cdc60cb0f9.lean/declarations/abs-sum-mul-le-mul-of-abs-sum-range-le--37f2952be654faa92a2616bf.md) | 255 | `result-track:37f2952be654faa92a2616bf2506c5196df43e65a2fed3f2d801ab678405140a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

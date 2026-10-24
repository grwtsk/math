# Verification target: GRWTSK.Algebra.Imo2024Q1.Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b46297a45bcf184127f07f2235ae05ae2f65aa2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b46297a45bcf184127f07f2235ae05ae2f65aa2`.

Source path: `GRWTSK/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/condition--bf2ea62eb8be1af7da30e7c2.md) | 46 | `declaration-track:bf2ea62eb8be1af7da30e7c29d2469197b209a34b60748133393d3df22d555cf` |
| 2 | `def` | [solutionSet](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/solutionset--8dbe41da1b72222048f12f6f.md) | 49 | `declaration-track:8dbe41da1b72222048f12f6f0f03acee2e025cb65dad90c676aa1021235b8e27` |
| 3 | `lemma` | [condition_two_mul_int](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/condition-two-mul-int--d2f809a8b7a211f9a31b28f2.md) | 51 | `result-track:d2f809a8b7a211f9a31b28f2f2cba16ef4c87f9c88f950f4a589a30e41e1b0f6` |
| 4 | `lemma` | [condition_sub_two_mul_int_iff](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/condition-sub-two-mul-int-iff--4f8c9f5b3dfba0989aaa67d3.md) | 61 | `result-track:4f8c9f5b3dfba0989aaa67d380721a3822676abd7a504f1f39ca8511780eb541` |
| 5 | `lemma` | [condition_toIcoMod_iff](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/condition-toicomod-iff--d4c16c03ec71d183521e26bb.md) | 73 | `result-track:d4c16c03ec71d183521e26bb1702d58b33a6fd5a92dac9a96e684cbaddf3a98b` |
| 6 | `lemma` | [mem_Ico_one_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/mem-ico-one-of-mem-ioo--d0b8ac8c32b7b40c342219fa.md) | 82 | `result-track:d0b8ac8c32b7b40c342219fa0b14aba5a571df03d54901fb2c23f0b2b721456f` |
| 7 | `lemma` | [mem_Ico_n_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/mem-ico-n-of-mem-ioo--03f159f514a56110adbe0033.md) | 112 | `result-track:03f159f514a56110adbe0033a90c94edff5b0b76e489ff831099db8516adb154` |
| 8 | `lemma` | [not_condition_of_mem_Ioo](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/not-condition-of-mem-ioo--cf6149f910526fc71a78cf3f.md) | 162 | `result-track:cf6149f910526fc71a78cf3f28b67edda319236382e84d34c9a8835ef2b4bf53` |
| 9 | `lemma` | [condition_iff_of_mem_Ico](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/condition-iff-of-mem-ico--fef313ec9e98824e6664371a.md) | 176 | `result-track:fef313ec9e98824e6664371abeae6e77f29d3db9709fa1a3edd3a7ccf1e5cbfb` |
| 10 | `theorem` | [result](../../../../mathematics/Algebra/Imo2024Q1/Variant2f684df9d0053992d02effac23f56c15cbc0100510ca042b235185674d062232.lean/declarations/result--197c2f371f2151173ac2685d.md) | 189 | `result-track:197c2f371f2151173ac2685dd2b14e3c8977be3e9cba43f8c6e1447a4478823d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.Division.Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98382f597e7b57c5e861880bccddccd7a44a042f",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/index.md) · [Full source](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98382f597e7b57c5e861880bccddccd7a44a042f`.

Source path: `GRWTSK/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divof--60472fa25b58cbf13126796d.md) | 47 | `declaration-track:60472fa25b58cbf13126796d6ae9503538a754b5b9c13718af8f2264d39b0822` |
| 2 | `theorem` | [divOf_apply](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divof-apply--e012eb31b185139c45965239.md) | 60 | `result-track:e012eb31b185139c459652391c8775d37970d9969174958f5feed875ee6919d3` |
| 3 | `theorem` | [support_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/support-divof--43af995c09a0e988ced425c8.md) | 64 | `result-track:43af995c09a0e988ced425c844313b0a14531ee408947937c08fc2695921b277` |
| 4 | `theorem` | [zero_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/zero-divof--fc41dca51bfe873936ddf86d.md) | 70 | `result-track:fc41dca51bfe873936ddf86d959cc4491843b58aa2723dd473095801a26667fe` |
| 5 | `theorem` | [divOf_zero](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divof-zero--30c80fc96bf8bceef7b7c540.md) | 74 | `result-track:30c80fc96bf8bceef7b7c5406eae321aff66ae9453bff74346a61cf110501bd2` |
| 6 | `theorem` | [add_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/add-divof--5a8ffe9271d52567f6e29d9a.md) | 78 | `result-track:5a8ffe9271d52567f6e29d9a82dfdf7eaf50d2f476092aeb2f277a47fa514cca` |
| 7 | `theorem` | [divOf_add](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divof-add--4bc8aa9e10d27bd4d1f9acf8.md) | 81 | `result-track:4bc8aa9e10d27bd4d1f9acf8e648410e5618c041e802f55263f347e926555a52` |
| 8 | `def` | [divOfHom](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divofhom--50ec8cfd2a394667bacd3270.md) | 87 | `declaration-track:50ec8cfd2a394667bacd3270d643ca5d8ba9419457d19a243ffbb30bf38ce6a8` |
| 9 | `theorem` | [of'_mul_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/of-mul-divof--a47ad96154a4370c4eb85212.md) | 98 | `result-track:a47ad96154a4370c4eb85212ee1d9fdf271e22400d0b4421c5a900e783ff2059` |
| 10 | `theorem` | [mul_of'_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/mul-of-divof--2ee9ae87f21d711fc0c75875.md) | 104 | `result-track:2ee9ae87f21d711fc0c758758de18b37031bf181ea969bde3226a0d0932a0c1f` |
| 11 | `theorem` | [of'_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/of-divof--1e607b1ebdb58e64afcf52ee.md) | 111 | `result-track:1e607b1ebdb58e64afcf52eea926baa78822e5d046254d4e1bd837eeb859a5df` |
| 12 | `def` | [modOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof--6915fc1d8770163651935a50.md) | 117 | `declaration-track:6915fc1d8770163651935a5002ddad54a2f61e4c1d0bdc00b8a5deda83adef8f` |
| 13 | `theorem` | [modOf_apply_of_not_exists_add](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof-apply-of-not-exists-add--f5b36a86517988b6a9393e93.md) | 124 | `result-track:f5b36a86517988b6a9393e93cdfba2a84162fc2b1abc2e68f77ce37fbb5064db` |
| 14 | `theorem` | [modOf_apply_of_exists_add](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof-apply-of-exists-add--e3da06ac14c750ad61ba2f31.md) | 129 | `result-track:e3da06ac14c750ad61ba2f31b78e06643f2950d6b09e4e2f39f61da1d3f7b010` |
| 15 | `theorem` | [modOf_apply_add_self](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof-apply-add-self--034f3542304270df32150dcf.md) | 134 | `result-track:034f3542304270df32150dcf58acc3e21fe1a124cd22859c6a745d9a21936c48` |
| 16 | `theorem` | [modOf_apply_self_add](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof-apply-self-add--9e6191d2ee73fa8f26a729e9.md) | 137 | `result-track:9e6191d2ee73fa8f26a729e901a6d86876a098613461291ef14d041149868e64` |
| 17 | `theorem` | [of'_mul_modOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/of-mul-modof--92ae5b7f9d89a1de19206b94.md) | 140 | `result-track:92ae5b7f9d89a1de19206b9469e0d4e3a0fa0d7a61ed3fda435a4cd663523727` |
| 18 | `theorem` | [mul_of'_modOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/mul-of-modof--25abba2a2c850197f498c22b.md) | 147 | `result-track:25abba2a2c850197f498c22bdef9a2560ef0a7c3978cb52c2590b01288a68df0` |
| 19 | `theorem` | [of'_modOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/of-modof--aaaa25ef709d8f3476286aef.md) | 155 | `result-track:aaaa25ef709d8f3476286aef7d7957e1207d74e393a67736cc4df5cd20a2ce19` |
| 20 | `theorem` | [divOf_add_modOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/divof-add-modof--f3f4939f6705f5c78a343b1b.md) | 158 | `result-track:f3f4939f6705f5c78a343b1be3b7fd32c7643716fc816fc0b609bd166e2685be` |
| 21 | `theorem` | [modOf_add_divOf](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/modof-add-divof--0b8bd4fb077bc25818995427.md) | 171 | `result-track:0b8bd4fb077bc258189954278ee6c7fe5459bc94a52ad7d0f50ac4a100cf19c7` |
| 22 | `theorem` | [of'_dvd_iff_modOf_eq_zero](../../../../mathematics/Algebra/Division/Variant80b6ca459d27e0901bab0c6283d6832f292e09e45d0eb5cde7754ed0d735fcb3.lean/declarations/of-dvd-iff-modof-eq-zero--6796baca624f5f295eb53c23.md) | 175 | `result-track:6796baca624f5f295eb53c235231250fc3f791e1972e8dabada11aed6edea9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

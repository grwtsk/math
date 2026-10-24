# Verification target: GRWTSK.Analysis.Complex.DyadicExponentialEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b3e5241c50b19df80f2f902ac161ed1e7beedd9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/DyadicExponentialEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b3e5241c50b19df80f2f902ac161ed1e7beedd9`.

Source path: `GRWTSK/Analysis/Complex/DyadicExponentialEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/DyadicExponentialEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.FiniteExponentialEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/FiniteExponentialEnclosure.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.FieldSimp` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareValue](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/squarevalue--2527e05ad087f9c4340c090c.md) | 26 | `declaration-track:2527e05ad087f9c4340c090c434d36c0aaf87d6b1a262741a44ef268ac018be5` |
| 2 | `def` | [propagatedError](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/propagatederror--b077b4d5012dd177236984e9.md) | 31 | `declaration-track:b077b4d5012dd177236984e9e6e30b8fa317dc2754c9488d043b2a40b2d29307` |
| 3 | `theorem` | [norm_square_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/norm-square-sub-le--50a117f75f5edd5333b3c03e.md) | 38 | `result-track:50a117f75f5edd5333b3c03eeef0bf52562e7a6b4bead6e2b5f6229a97630605` |
| 4 | `theorem` | [norm_rounded_square_sub_le](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/norm-rounded-square-sub-le--1e602a8570f6e3461d954a4c.md) | 50 | `result-track:1e602a8570f6e3461d954a4c6882ccdd4f580bcb15c3b85d275a8f7cf236d369` |
| 5 | `theorem` | [squaring_chain_sound](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/squaring-chain-sound--b14d835af6f121686401034a.md) | 58 | `result-track:b14d835af6f121686401034a3b8e037995c8f9e0d65523fbe81498bb0759661f` |
| 6 | `theorem` | [exact_squaring_sound](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/exact-squaring-sound--9a71f548a3bdb51f59ed7502.md) | 73 | `result-track:9a71f548a3bdb51f59ed7502b6801346d4e9db255db3dc29e6d077b52d9a5b11` |
| 7 | `theorem` | [squareValue_exp](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/squarevalue-exp--151435053b6a2038376ffcf3.md) | 80 | `result-track:151435053b6a2038376ffcf3593304c3d9acb458cfb394edba9fc01f0d2edc39` |
| 8 | `theorem` | [squareValue_exp_div](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/squarevalue-exp-div--f3832463048291529bc35919.md) | 92 | `result-track:f3832463048291529bc35919339efd430e381dff56b1719a8037d1f51cfebe8f` |
| 9 | `def` | [scaledValue](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/scaledvalue--8c0fc0c8cfe3d8f86af03e48.md) | 99 | `declaration-track:8c0fc0c8cfe3d8f86af03e486be05ec815b8f910064b1a6bd7b05105423d67c5` |
| 10 | `def` | [scaledError](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/scalederror--83cc0a1c533430a232fc0eaf.md) | 103 | `declaration-track:83cc0a1c533430a232fc0eaf0d60520e9e48ca69ba623d22a73a1f1a6c3ca66a` |
| 11 | `theorem` | [scaled_exp_sound](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/scaled-exp-sound--2f44ea0f8bb80c668bbf2413.md) | 109 | `result-track:2f44ea0f8bb80c668bbf2413af59689bf8c25bdfca3bfb0b5fe3893cd650dc73` |
| 12 | `theorem` | [degree_guard_of_unit_radius](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/degree-guard-of-unit-radius--b0b38a56f687f809a4ff9e05.md) | 122 | `result-track:b0b38a56f687f809a4ff9e05c1a8189d31b6c859a798f5f5e32b053ad7851a80` |
| 13 | `theorem` | [nat_succ_le_two_pow](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/nat-succ-le-two-pow--0c0e163ca7bfd2364c24a41f.md) | 129 | `result-track:0c0e163ca7bfd2364c24a41f732f624dcf56ea6fa90e8ef83156248964d916e9` |
| 14 | `theorem` | [exists_scaling](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/declarations/exists-scaling--48843f5235285edd79161554.md) | 136 | `result-track:48843f5235285edd7916155451deab497b661644f96b79dcb064f2c1aa37ad07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

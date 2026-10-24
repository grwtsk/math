# Verification target: GRWTSK.NumberTheory.VonMangoldt.ComplexReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb52c9810622fd903bc594b13b9615d4d1078eb1",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb52c9810622fd903bc594b13b9615d4d1078eb1`.

Source path: `GRWTSK/NumberTheory/VonMangoldt/ComplexReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/VonMangoldt/ComplexReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.NumberTheory.VonMangoldt.CenteredReadout`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/CenteredReadout.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComplexTest](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/complextest--d9d9130f75fc5da6583f25be.md) | 25 | `declaration-track:d9d9130f75fc5da6583f25bece581b423ad15218d8bf1eab891fdf5af0a313d1` |
| 2 | `def` | [reTest](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/retest--1836a4ce9047ea778bd5881a.md) | 33 | `declaration-track:1836a4ce9047ea778bd5881a39752c5ccc474d44c998aad5ce05b49203f3e2d8` |
| 3 | `def` | [imTest](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/imtest--507e7b8ce887879ea9755c0e.md) | 40 | `declaration-track:507e7b8ce887879ea9755c0eee2c9240975f402d345b4bfe7946e51e94a45b13` |
| 4 | `theorem` | [value_continuous](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/value-continuous--3ae239e8f009b04de04d0d03.md) | 47 | `result-track:3ae239e8f009b04de04d0d030cd3f8294f31ae2aaa2bf5e9c83b48bd08d459b6` |
| 5 | `theorem` | [unit_integral_eq_interval](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/unit-integral-eq-interval--d403a5894b352eee5f3544ca.md) | 51 | `result-track:d403a5894b352eee5f3544ca34bbb6d93cedaf72ba152dbdba1c6eec98f49ff6` |
| 6 | `theorem` | [density_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/density-integrable--a822b208086413f371f748f4.md) | 57 | `result-track:a822b208086413f371f748f4f60ec45a37695705ac5c49a4b7f924dbb5f35696` |
| 7 | `theorem` | [action_re](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/action-re--6526d07f7ba3ec750aad4029.md) | 65 | `result-track:6526d07f7ba3ec750aad4029d5bc265e5519063ec6e0e4e69af105a609b6bd38` |
| 8 | `theorem` | [action_im](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/action-im--b8bc1eac01b020c368b2260c.md) | 89 | `result-track:b8bc1eac01b020c368b2260c6c01023006f1025aefd2d31fa9b52dfa8582d7ea` |
| 9 | `theorem` | [residual_product_integrable](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/residual-product-integrable--7a61a47df9274adad0a95525.md) | 113 | `result-track:7a61a47df9274adad0a95525749756451f890dca9877f0dad59db1043fef5ce6` |
| 10 | `theorem` | [centered_ibp](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/centered-ibp--0bd4e9144738f7a64ea97498.md) | 125 | `result-track:0bd4e9144738f7a64ea97498c3362a983e9928cfe2b65bf7adf229c462952756` |
| 11 | `theorem` | [complex_norm_sq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/complex-norm-sq--1fdb56c09201357f9a1d7764.md) | 157 | `result-track:1fdb56c09201357f9a1d7764b7806807f55f013900e430f1bb697d9a024a53f8` |
| 12 | `def` | [testEnergy](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/testenergy--0852efcac1a6213be6ec4d04.md) | 161 | `declaration-track:0852efcac1a6213be6ec4d04d41094222e5d671395c6659587d9b37302aa4f20` |
| 13 | `theorem` | [testEnergy_nonneg](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/testenergy-nonneg--8814c985d52bb175ee52f17c.md) | 165 | `result-track:8814c985d52bb175ee52f17c5cadc9b06d7b661eb020c053299558a324d6f3d5` |
| 14 | `theorem` | [action_norm_sq_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/action-norm-sq-le--758c918a798fdecebed11e67.md) | 171 | `result-track:758c918a798fdecebed11e67a0af63647c906a066857cf990ec54f94f88167a1` |
| 15 | `theorem` | [action_norm_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/ComplexReadout.lean/declarations/action-norm-le--4828b05b49a7321d9a6c05bf.md) | 191 | `result-track:4828b05b49a7321d9a6c05bfe08bfeb4ea13dd03bce046d600dfd68665d136f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

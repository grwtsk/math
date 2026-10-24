# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.PadicNorm.Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "661a116f59683d742401f1e72183d1b17d231adf",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `661a116f59683d742401f1e72183d1b17d231adf`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm--ec28ab5fa42aa951f0e7d2bb.md) | 53 | `declaration-track:ec28ab5fa42aa951f0e7d2bb368c14fa8a7aa8c32d9d25b9fb2bcc85535cd0c2` |
| 2 | `theorem` | [eq_zpow_of_nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/eq-zpow-of-nonzero--cda8e74408a0c40872b3ec18.md) | 64 | `result-track:cda8e74408a0c40872b3ec1890d0ff827c5254b5e5ce3721bc5ec86fa1529419` |
| 3 | `theorem` | [nonneg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nonneg--7b00d1483ef19afeadd1d601.md) | 68 | `result-track:7b00d1483ef19afeadd1d60156ef33ad97a9bc8994492382d041ea878c014b22` |
| 4 | `theorem` | [zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/zero--304d3022a12baf7ff0d8bebc.md) | 78 | `result-track:304d3022a12baf7ff0d8bebcde48402388b5d6f6ccdcce9e7b39842c08f9aa7f` |
| 5 | `theorem` | [one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/one--346d8babd0b13225670e56d2.md) | 81 | `result-track:346d8babd0b13225670e56d20c1cf7e9b668e0b0c702d9542c2fb629d24c6eb3` |
| 6 | `theorem` | [padicNorm_p](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm-p--8a36d32da84f22e91f359319.md) | 86 | `result-track:8a36d32da84f22e91f359319693d0b5482a7bd0ab4bd720b26092a8e2089ad24` |
| 7 | `theorem` | [padicNorm_p_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm-p-of-prime--1172119a644e192c9abfab07.md) | 93 | `result-track:1172119a644e192c9abfab07d1961dbdeeb734f9092c7f84eba90139f6e8eba1` |
| 8 | `theorem` | [padicNorm_of_prime_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm-of-prime-of-ne--3d7e54fa8c928dc2d2f9fd96.md) | 97 | `result-track:3d7e54fa8c928dc2d2f9fd96a0af23b70f4b65f516e6d8ff262a57c1159e3ab9` |
| 9 | `theorem` | [padicNorm_p_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm-p-lt-one--37d902cdf36478799442047f.md) | 106 | `result-track:37d902cdf36478799442047f884194bbf065ceef2dd0e809ebf7c00a2c74fe3c` |
| 10 | `theorem` | [padicNorm_p_lt_one_of_prime](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/padicnorm-p-lt-one-of-prime--bc250d83904b62449b122f45.md) | 113 | `result-track:bc250d83904b62449b122f45eb893091f336a23084c6b1dd2b241a1ac073afdd` |
| 11 | `theorem` | [values_discrete](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/values-discrete--eba0f520f9d43af44d93af70.md) | 117 | `result-track:eba0f520f9d43af44d93af7066ed89df16fb6c070024e40eb93787b53a5bed56` |
| 12 | `theorem` | [neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/neg--f9e53896a031f442f2dbb233.md) | 122 | `result-track:f9e53896a031f442f2dbb2339e3cd67a823747a151b82ef6fc14a69afeefad6d` |
| 13 | `theorem` | [nonzero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nonzero--a435f02e774dff517d8d20c8.md) | 128 | `result-track:a435f02e774dff517d8d20c81de777cab8f206f70e69651cd14faeb5a0779ec0` |
| 14 | `theorem` | [zero_of_padicNorm_eq_zero](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/zero-of-padicnorm-eq-zero--32bd3ebd0b37eceebf80a6ea.md) | 134 | `result-track:32bd3ebd0b37eceebf80a6eaaccab10a71e2c5287a03501a25ca0845e8735918` |
| 15 | `theorem` | [mul](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/mul--22fafed2c3cdbccf5ed299fe.md) | 143 | `result-track:22fafed2c3cdbccf5ed299feed3d64ca15334bae8a260fe2bd973ae355cfe8a6` |
| 16 | `theorem` | [div](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/div--2bdf6fa46d9703c974469989.md) | 153 | `result-track:2bdf6fa46d9703c97446998903220c8d956e3f0526d341341d9098138bdcde5a` |
| 17 | `theorem` | [of_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/of-int--f1ad1e3c3de6e92cd3055f15.md) | 158 | `result-track:f1ad1e3c3de6e92cd3055f1563158900aec1f2169ed2407073b570914df3674a` |
| 18 | `theorem` | [nonarchimedean_aux](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nonarchimedean-aux--c47b75bd90e271ee601ddffe.md) | 164 | `result-track:c47b75bd90e271ee601ddffe5755b79209d7a18f1599740947507c1ded484220` |
| 19 | `theorem` | [nonarchimedean](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nonarchimedean--a7ba5d456586b938e77c4fa1.md) | 186 | `result-track:a7ba5d456586b938e77c4fa159f346389a3d37ca024c464931f0e2ba12f9215f` |
| 20 | `theorem` | [triangle_ineq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/triangle-ineq--95fd6938269dcb2a51c4a44d.md) | 195 | `result-track:95fd6938269dcb2a51c4a44d60dbc7b80a26e787b741bc40ab315350590adbda` |
| 21 | `theorem` | [sub](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/sub--34fe588437ee0d6819057726.md) | 203 | `result-track:34fe588437ee0d6819057726edab57e41a6c5ab117f2f45aab6f3722cd9d1e5a` |
| 22 | `instance` | [(anonymous)](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/instance--e1de31bff624753a90bf63a4.md) | 209 | `declaration-track:e1de31bff624753a90bf63a46dd04aebdafc168559edb65b292a2448379ca3fe` |
| 23 | `theorem` | [add_eq_max_of_ne](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/add-eq-max-of-ne--6999f7c4814c0130781b19f0.md) | 217 | `result-track:6999f7c4814c0130781b19f024e9bd9a106c254e4f2d03cfa3cc746631b772a9` |
| 24 | `theorem` | [dvd_iff_norm_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/dvd-iff-norm-le--a6573ef052cb7c21882e0f70.md) | 221 | `result-track:a6573ef052cb7c21882e0f708321b861b3d9c4092b5f7a726fb323b9c6abb749` |
| 25 | `theorem` | [int_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/int-eq-one-iff--971d57bf2d79f3e3827ad79d.md) | 234 | `result-track:971d57bf2d79f3e3827ad79d033ac4b77b4e78ade45e29f2259e5b5083259a01` |
| 26 | `theorem` | [int_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/int-lt-one-iff--64afc672191fb64744038241.md) | 253 | `result-track:64afc672191fb6474403824132b1521b5ad2082aaa24aa79221d1ea3c547c6ab` |
| 27 | `theorem` | [of_nat](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/of-nat--4384bf550e4b45f052523522.md) | 257 | `result-track:4384bf550e4b45f052523522c4a8777b24deca9aef52c5c4a20324b836939537` |
| 28 | `theorem` | [nat_eq_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nat-eq-one-iff--80bb30a554113d3db2133cbc.md) | 261 | `result-track:80bb30a554113d3db2133cbcfc88876ee02c0e720a4f63674885ddeec0e1a23a` |
| 29 | `theorem` | [nat_lt_one_iff](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/nat-lt-one-iff--fbfbada2741f891f5870b0a3.md) | 264 | `result-track:fbfbada2741f891f5870b0a356b77fdb61aba48474d5e4bef0ef742a86bd37f3` |
| 30 | `theorem` | [not_int_of_not_padic_int](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/not-int-of-not-padic-int--717b94a34025949454e394e4.md) | 268 | `result-track:717b94a34025949454e394e4d69b3cccc0c47278409fd13ace4db0224fb5f53c` |
| 31 | `theorem` | [sum_lt](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/sum-lt--74f75821fa6392e515cc833c.md) | 274 | `result-track:74f75821fa6392e515cc833c14e74a1a99bac1deef03d4a3a6ca630dd4dee359` |
| 32 | `theorem` | [sum_le](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/sum-le--ac1ffa5e439d98a95c33d7e6.md) | 279 | `result-track:ac1ffa5e439d98a95c33d7e6911bef2d798cf4739b0c96a1fa369a4c10168cbd` |
| 33 | `theorem` | [sum_lt'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/sum-lt--c9e93a56c068989cb0dac752.md) | 284 | `result-track:c9e93a56c068989cb0dac75285b7ef219af0b81b8079ee0ba49c78b077c878be` |
| 34 | `theorem` | [sum_le'](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicNorm/Variantf5a66576bba28805d933d2f25f0b1b700507edb22e0cc97dde41219a1a5477b3.lean/declarations/sum-le--3abfee9c51a55be3dc7abd0b.md) | 290 | `result-track:3abfee9c51a55be3dc7abd0bdc042e310c8a0b5d2489753bdc4dd750f04ed689` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

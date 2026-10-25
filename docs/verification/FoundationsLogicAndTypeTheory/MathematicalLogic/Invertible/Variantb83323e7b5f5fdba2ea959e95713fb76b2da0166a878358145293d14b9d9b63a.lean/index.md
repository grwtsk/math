# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Invertible.Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92c2a18cf4ddd4773ef18eca202fdbe91d0d22f8",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92c2a18cf4ddd4773ef18eca202fdbe91d0d22f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean.json)

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
| 1 | `def` | [IsInvertible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible--5fb7e6af80a5de14dc665ae0.md) | 42 | `declaration-track:5fb7e6af80a5de14dc665ae02b2281c1dde8cde3e8686d74124f304423293f1d` |
| 2 | `def` | [inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse--6c7fd854ee0d570e618e0579.md) | 50 | `declaration-track:6c7fd854ee0d570e618e0579e42c1f98240d716512b29f44ec6fba3955c109d6` |
| 3 | `lemma` | [isInvertible_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-equiv--8b0b6af6524df2c1af39ed40.md) | 53 | `result-track:8b0b6af6524df2c1af39ed4038ebd44eca2302c0aad5a342f2e588b0d02057e7` |
| 4 | `theorem` | [inverse_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-equiv--599666d0577cd45996245274.md) | 57 | `result-track:599666d0577cd4599624527456f4feb01a09e6ddc5badf568c6e004769554641` |
| 5 | `lemma` | [inverse_of_not_isInvertible](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-of-not-isinvertible--944930107b7f101ffa2dbf15.md) | 61 | `result-track:944930107b7f101ffa2dbf15d0bf777efc60766b047d9c2f6d4ad4b9d67ba421` |
| 6 | `lemma` | [IsInvertible.of_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-of-inverse--6d93aa1b4ef5e3bb3bb621f9.md) | 65 | `result-track:6d93aa1b4ef5e3bb3bb621f9cdc5db80c6481ef178c1b224520b4460434bef81` |
| 7 | `lemma` | [inverse_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-eq--3e03cb1bef7db7d47eff14f9.md) | 70 | `result-track:3e03cb1bef7db7d47eff14f98d7dad57e04e01f8ec16ab20830060da7e24ecc1` |
| 8 | `theorem` | [isInvertible_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-zero-iff--ed6faf91d150c004bcf588df.md) | 77 | `result-track:ed6faf91d150c004bcf588df1b6fb70f231318c89d41145c4793a29e1a6b17b3` |
| 9 | `theorem` | [inverse_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-zero--d813b76ea625323369a12054.md) | 87 | `result-track:d813b76ea625323369a12054b9de9dd43b6bba916af6416299d2724083f8ca23` |
| 10 | `lemma` | [IsInvertible.comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-comp--4a03bac01ce81bc55909c326.md) | 93 | `result-track:4a03bac01ce81bc55909c32617e7bff3042d065ffc62bcdba5655d716cf965e4` |
| 11 | `lemma` | [IsInvertible.inverse_apply_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-apply-eq--16d24e780fe61e1e3c178741.md) | 99 | `result-track:16d24e780fe61e1e3c1787416fecdb6ab39fc2e5f2bb1ce3c4d7728c92816ea7` |
| 12 | `lemma` | [isInvertible_equiv_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-equiv-comp--03eb4530b3aa794d96f9aa9d.md) | 105 | `result-track:03eb4530b3aa794d96f9aa9d9af99ce17b40939fd4123e2daac2675484b58fa7` |
| 13 | `lemma` | [isInvertible_comp_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-comp-equiv--90e1b1d18f4a92fe8c48b5c2.md) | 115 | `result-track:90e1b1d18f4a92fe8c48b5c24a00b129d5e3897e35c3b6353c4f9095e409d802` |
| 14 | `lemma` | [inverse_equiv_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-equiv-comp--e0af636a3e705425f48eb24e.md) | 125 | `result-track:e0af636a3e705425f48eb24e50012832ccbb4301839cf9b01ea8649e3199568c` |
| 15 | `lemma` | [inverse_comp_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-comp-equiv--639ddccb387f7042ff8ad032.md) | 133 | `result-track:639ddccb387f7042ff8ad03203826b606de1e9e6d8df431d4d6787a9f96f556a` |
| 16 | `lemma` | [IsInvertible.inverse_comp_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-comp-of-left--a8bfcf477232d5a48af7cd42.md) | 141 | `result-track:a8bfcf477232d5a48af7cd4201eb65a07e02385b4d88db30905e9139e38f0f40` |
| 17 | `lemma` | [IsInvertible.inverse_comp_apply_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-comp-apply-of-left--7900adc294979edc0510ce1b.md) | 146 | `result-track:7900adc294979edc0510ce1bd10fa238f8078e6b7f86a6e3380a7ea1ae8f00f4` |
| 18 | `lemma` | [IsInvertible.inverse_comp_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-comp-of-right--fa58c8784a5bb1d0c5cd3f4b.md) | 150 | `result-track:fa58c8784a5bb1d0c5cd3f4be36a4842f1da75b96e89787776d27fea055b570c` |
| 19 | `lemma` | [IsInvertible.inverse_comp_apply_of_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-comp-apply-of-right--74beec47687b44732450fdaf.md) | 155 | `result-track:74beec47687b44732450fdafaeb83195cbbfd0c3df0579d2ffbbb2fa10f295a7` |
| 20 | `theorem` | [ringInverse_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/ringinverse-equiv--d1ac165416f9a267947b1637.md) | 160 | `result-track:d1ac165416f9a267947b1637aa5c4895e24a3598e2e32c526e5d84940c9fe8c0` |
| 21 | `theorem` | [inverse_eq_ringInverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-eq-ringinverse--98c7bad2938d87319af785c9.md) | 168 | `result-track:98c7bad2938d87319af785c978f1de7a0d1cc177b5b275604d60df5b743bff75` |
| 22 | `theorem` | [ringInverse_eq_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/ringinverse-eq-inverse--89669f40081b18ad49814d60.md) | 185 | `result-track:89669f40081b18ad49814d60ad2374af7a18cabef84bf7f15ff17a115a4f2a49` |
| 23 | `theorem` | [inverse_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-id--2cc0aa68f71f9afa9992558d.md) | 189 | `result-track:2cc0aa68f71f9afa9992558d67ca5308d2a0534d1f6371f3703dc2e4f226aa81` |
| 24 | `theorem` | [self_comp_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/self-comp-inverse--49b5348ab3bdb7ee739efdb2.md) | 198 | `result-track:49b5348ab3bdb7ee739efdb2fb7323914abaa982a1fa3bf0b2bd46f5d932cc96` |
| 25 | `theorem` | [self_apply_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/self-apply-inverse--ed96f52a3f6286074d868f10.md) | 203 | `result-track:ed96f52a3f6286074d868f103af8efe5ffafc09c09cc88fa469fac5ead1419bc` |
| 26 | `theorem` | [inverse_comp_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-comp-self--bede0c0cd7c500075d6a20bf.md) | 208 | `result-track:bede0c0cd7c500075d6a20bfd87624ed5cc8c053c8b7450f4c0aca6dd8d85430` |
| 27 | `theorem` | [inverse_apply_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-apply-self--6487ab9d47e7bb5dbcdeb0c7.md) | 213 | `result-track:6487ab9d47e7bb5dbcdeb0c73a65701e6a052633d158abfb74c495fe95e07121` |
| 28 | `theorem` | [bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/bijective--04c2cff5bad8403ab8bbfe2e.md) | 217 | `result-track:04c2cff5bad8403ab8bbfe2e22408d500f025c15ae39e93f6153891cb837c1d7` |
| 29 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/injective--8e720e1db7290a6a9373dc81.md) | 221 | `result-track:8e720e1db7290a6a9373dc81fbcbf1e2f41b228ed532371ff6bf2215cc42183d` |
| 30 | `theorem` | [surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/surjective--0c4ce9cf95c5df0273e0df24.md) | 224 | `result-track:0c4ce9cf95c5df0273e0df24d7d833fc07ea1e5b8c953be48e3ff5b4af717093` |
| 31 | `theorem` | [inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse--af8c32b922d40a589e6fed3b.md) | 227 | `result-track:af8c32b922d40a589e6fed3b9288605729089b006c480d1da8762e149f80d83a` |
| 32 | `theorem` | [inverse_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/inverse-inverse--a73ef3a5a09a9e3556340818.md) | 232 | `result-track:a73ef3a5a09a9e3556340818bb19e3e4b6bd268d827aef8eea8ee2f5f6734cfc` |
| 33 | `theorem` | [of_isInvertible_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/of-isinvertible-inverse--bb8ed0b38ff1ea443544c338.md) | 236 | `result-track:bb8ed0b38ff1ea443544c338142d4c52fb26c9e99f9fed3d46616797154c0b83` |
| 34 | `theorem` | [isInvertible_inverse_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-inverse-iff--f2c4023b83c2e4fa2fb31e5b.md) | 244 | `result-track:f2c4023b83c2e4fa2fb31e5bce208629bf2e30016b3a7c7769bf52fe34a7a2fd` |
| 35 | `theorem` | [isInvertible_iff_isHomeomorph](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantb83323e7b5f5fdba2ea959e95713fb76b2da0166a878358145293d14b9d9b63a.lean/declarations/isinvertible-iff-ishomeomorph--41d9a43978813827f8f377b3.md) | 248 | `result-track:41d9a43978813827f8f377b30fd41776bfb30415fc030b856657436ca706702c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

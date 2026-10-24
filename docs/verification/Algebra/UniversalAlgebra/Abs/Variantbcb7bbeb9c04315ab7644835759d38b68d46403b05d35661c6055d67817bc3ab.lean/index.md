# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4217a718f23aa6cfc6c98649bd9dfc285e682b",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4217a718f23aa6cfc6c98649bd9dfc285e682b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mabs_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-pow--97c84f50946f258e44da7ce8.md) | 29 | `result-track:97c84f50946f258e44da7ce858063b6313759385517e49066580457b60d86ff7` |
| 2 | `lemma` | [mabs_mul_eq_mul_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mul-eq-mul-mabs-le--b9636b1feb40a1be7786f03c.md) | 35 | `result-track:b9636b1feb40a1be7786f03c20bb56db70aff1d314640b2d20a334bbdffa47e7` |
| 3 | `lemma` | [mabs_mul_eq_mul_mabs_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mul-eq-mul-mabs-iff--cc65c8015b40e04ee1a2cadf.md) | 53 | `result-track:cc65c8015b40e04ee1a2cadf787f1ecd800f07d2f3dc00852cc4e18dbd263933` |
| 4 | `theorem` | [mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-le--78739929b64f388f3bb1c512.md) | 60 | `result-track:78739929b64f388f3bb1c51280726e4a3244df29d3bffb7f1682ed13926e90f1` |
| 5 | `theorem` | [le_mabs'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/le-mabs--d202e245e4fccd30d0bc4113.md) | 63 | `result-track:d202e245e4fccd30d0bc41132adfe1f8a33b2bf43636e902b2543e766009487f` |
| 6 | `theorem` | [inv_le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/inv-le-of-mabs-le--707c17b17afb53ef06bdd0e6.md) | 66 | `result-track:707c17b17afb53ef06bdd0e66e795ccca939089dc08217723907f56b9aa0e0d2` |
| 7 | `theorem` | [le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/le-of-mabs-le--adc9dcc88daea70bd755a9c8.md) | 70 | `result-track:adc9dcc88daea70bd755a9c8a551cbf23e1b53624d1b68f3baf636141b540a2c` |
| 8 | `theorem` | [mabs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mul--a0112c4b8d5329d9fd78a34f.md) | 75 | `result-track:a0112c4b8d5329d9fd78a34f513dafc54fbcc3cd3627c00c6431c705e9703a9e` |
| 9 | `theorem` | [mabs_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mul--733e3b8a7dc9bd75de15644c.md) | 80 | `result-track:733e3b8a7dc9bd75de15644c1c6a80fd90bb0fe5c72f8e5e2d1193db43ffca46` |
| 10 | `theorem` | [mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div--9042ce7c64928dcc42dd3aee.md) | 83 | `result-track:9042ce7c64928dcc42dd3aee4cc23d470522f261cbe0b3f19e09a6169f62dfc4` |
| 11 | `theorem` | [mabs_div_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-le-iff--db9f2389e23168b628cd0e9a.md) | 88 | `result-track:db9f2389e23168b628cd0e9ae40df1f0d04be7277536ba309605a7ffe1c563f5` |
| 12 | `theorem` | [mabs_div_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-lt-iff--3467c0088368b4fe19b712f6.md) | 92 | `result-track:3467c0088368b4fe19b712f6069782a0a0220c49f1438f6cd9fad71c495690cc` |
| 13 | `theorem` | [div_le_of_mabs_div_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/div-le-of-mabs-div-le-left--b907e6bc1702364ddd0a9a66.md) | 96 | `result-track:b907e6bc1702364ddd0a9a6602134cd02b3be0a55ed27b3d18dda68fb7cacc9a` |
| 14 | `theorem` | [div_le_of_mabs_div_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/div-le-of-mabs-div-le-right--5869ef3049b97d9555409515.md) | 100 | `result-track:5869ef3049b97d9555409515834e3e76ff5a01749706c6b36f251eba13cb6414` |
| 15 | `theorem` | [div_lt_of_mabs_div_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/div-lt-of-mabs-div-lt-left--f6c31323d54d3f1543c2a287.md) | 104 | `result-track:f6c31323d54d3f1543c2a287586575c6d249ec696f3029dbdf516aab7828f515` |
| 16 | `theorem` | [div_lt_of_mabs_div_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/div-lt-of-mabs-div-lt-right--d9b161aec9796cb4ccfb3582.md) | 108 | `result-track:d9b161aec9796cb4ccfb3582d9c56a53fb009b9e43f30ab50fda5cc2dd9aa14d` |
| 17 | `theorem` | [mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-mabs-le-mabs-div--7a7b5b8bb1dd0c2295f9b91d.md) | 112 | `result-track:7a7b5b8bb1dd0c2295f9b91df3ef9e9afc70d938fe19f79a6132c6cd9b8f9441` |
| 18 | `theorem` | [mabs_mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mabs-div-mabs-le-mabs-div--19fcfd7c9324bb0ab8cfa7b0.md) | 119 | `result-track:19fcfd7c9324bb0ab8cfa7b05c1418a9498835e8a2ec38058580ae98676207fb` |
| 19 | `theorem` | [mabs_div_le_of_one_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-le-of-one-le-of-le--02448f0570c1aba16779030a.md) | 125 | `result-track:02448f0570c1aba16779030a2bf51b975bd39a530654887274a4ff8091c9a805` |
| 20 | `theorem` | [mabs_div_lt_of_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-lt-of-one-le-of-lt--aa085016aa3b6f580a3081ce.md) | 132 | `result-track:aa085016aa3b6f580a3081ce19fd24a18189c269105ad1dc2513481dff6e5d64` |
| 21 | `theorem` | [mabs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-eq--b8be84a6fe4049aa2c31df42.md) | 138 | `result-track:b8be84a6fe4049aa2c31df42339c2a7c4dfa94ff78c04a4530934d914b8e3abe` |
| 22 | `theorem` | [mabs_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-le-max-mabs-mabs--026b46172373d390d98ccd0f.md) | 143 | `result-track:026b46172373d390d98ccd0fee41c4781e8d49779f66f5207482a88e378ed438` |
| 23 | `theorem` | [min_mabs_mabs_le_mabs_max](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/min-mabs-mabs-le-mabs-max--e619caf5e9007648a60bd6cd.md) | 150 | `result-track:e619caf5e9007648a60bd6cdb3e4fcb356a99a11451727af3d004e0bd15dcdc5` |
| 24 | `theorem` | [min_mabs_mabs_le_mabs_min](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/min-mabs-mabs-le-mabs-min--89dc0640e85afe1ff4a8d234.md) | 156 | `result-track:89dc0640e85afe1ff4a8d234c4377d71c05d1569364a78c3a070ebe254836079` |
| 25 | `theorem` | [mabs_max_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-max-le-max-mabs-mabs--7f3d099de13d6a1e13d9c808.md) | 162 | `result-track:7f3d099de13d6a1e13d9c8080c2e2f6293e3e3b492a22a2139e1a35c37040e4e` |
| 26 | `theorem` | [mabs_min_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-min-le-max-mabs-mabs--0985e12f2a2adbc6bc329ad4.md) | 168 | `result-track:0985e12f2a2adbc6bc329ad473760f2cdd2998b69979077f63f0a8ad4650ff9f` |
| 27 | `theorem` | [eq_of_mabs_div_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/eq-of-mabs-div-eq-one--65500a927a2e4bc20709ccb8.md) | 173 | `result-track:65500a927a2e4bc20709ccb84d31125b456c7dabf8fa3ebc088d02c481f31a62` |
| 28 | `theorem` | [mabs_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-le--8060790d47a0fefda85d4ca7.md) | 177 | `result-track:8060790d47a0fefda85d4ca7ff290e4868c0c8c72245d8bc306b9994076ee0dc` |
| 29 | `theorem` | [mabs_mul_three](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-mul-three--2ae4c2e5d579afbf43176805.md) | 183 | `result-track:2ae4c2e5d579afbf43176805d42c763bbf600bc8003f8bf132c07c58055b5bd0` |
| 30 | `theorem` | [mabs_div_le_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-le-of-le-of-le--de613a9f7179a44538f8fbc5.md) | 187 | `result-track:de613a9f7179a44538f8fbc5ac1fc52e21622b831c540464442c47932d7b7143` |
| 31 | `theorem` | [eq_of_mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/eq-of-mabs-div-le-one--c06bdf496870b649f04e35fd.md) | 195 | `result-track:c06bdf496870b649f04e35fd49515aef6386063c5317225e9de7fcfbff0e4ff7` |
| 32 | `lemma` | [eq_of_mabs_div_lt_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/eq-of-mabs-div-lt-all--c7314144adc8fae8ac25a0a5.md) | 199 | `result-track:c7314144adc8fae8ac25a0a5d363491af89e831a2a48f9382ae54a3c82bd63b1` |
| 33 | `lemma` | [eq_of_mabs_div_le_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/eq-of-mabs-div-le-all--402ad3863a5c8d4490ac712c.md) | 203 | `result-track:402ad3863a5c8d4490ac712cad653b52fd20117ca54dcaa192950a6894f78671` |
| 34 | `theorem` | [mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-le-one--ad4d71b0ffebaed04e4bd1cb.md) | 207 | `result-track:ad4d71b0ffebaed04e4bd1cb48de97197c987fd28d51e220b3c49f17ffefcf9c` |
| 35 | `theorem` | [mabs_div_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-div-pos--2a101aaccf6b87064ad6bf08.md) | 211 | `result-track:2a101aaccf6b87064ad6bf0828efe70448a9bda467231e017b176349d00fb54c` |
| 36 | `theorem` | [mabs_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-eq-self--d4ac65f5370725d0f250a506.md) | 215 | `result-track:d4ac65f5370725d0f250a506784452634c9fcac9af1a3ec10194692637a17c2a` |
| 37 | `theorem` | [mabs_eq_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-eq-inv-self--9880c15d592bd1c122c0f028.md) | 219 | `result-track:9880c15d592bd1c122c0f028863684edc8ebc8172b63dd4658a5e278fb9d5f03` |
| 38 | `theorem` | [mabs_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/mabs-cases--8980191a7713075f952c90e6.md) | 228 | `result-track:8980191a7713075f952c90e6a54c17da95d58364aff348e7238bd65f87263e01` |
| 39 | `theorem` | [max_one_mul_max_inv_one_eq_mabs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/max-one-mul-max-inv-one-eq-mabs-self--35871fa5ce4dfb0143afba7b.md) | 232 | `result-track:35871fa5ce4dfb0143afba7b65de7ebfd6db1aa03f902cbbf067bbe5245d9a01` |
| 40 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/apply-abs-le-mul-of-one-le--c876d2f67607d34b7c020337.md) | 243 | `result-track:c876d2f67607d34b7c02033740c84e50b940e1cf436e39c3af39a4ac0e174c48` |
| 41 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variantbcb7bbeb9c04315ab7644835759d38b68d46403b05d35661c6055d67817bc3ab.lean/declarations/apply-abs-le-mul-of-one-le--376555ffd116ccfd7cb6fb2a.md) | 250 | `result-track:376555ffd116ccfd7cb6fb2a76e8ed8fa9e4cf1300f4257e8af03632b23e7371` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

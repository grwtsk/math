# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95d70bc7ca0da40e1827c01d39e3be5e5b7852a5",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95d70bc7ca0da40e1827c01d39e3be5e5b7852a5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean.json)

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
| 1 | `abbrev` | [Ideal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/ideal--b7fc0ed041e0a95a00588d54.md) | 48 | `declaration-track:b7fc0ed041e0a95a00588d5446076cebc001cfd91df53633dff408fb1e9e5139` |
| 2 | `class` | [IsTwoSided](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/istwosided--308c6a0729d33a59128dd398.md) | 58 | `declaration-track:308c6a0729d33a59128dd398ad75f2d2abc96d2eb693b11fc6ac2314bc197175` |
| 3 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/zero-mem--d910cfbdaceab82b2b1ef0b7.md) | 61 | `result-track:d910cfbdaceab82b2b1ef0b7b5879156eb9bd0073338ad1122635e8d42ac621b` |
| 4 | `theorem` | [add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/add-mem--19696f642979c761ccbf4ca8.md) | 64 | `result-track:19696f642979c761ccbf4ca8de6405a6ee4af4e887e69d0d848d31bfda04658e` |
| 5 | `theorem` | [mul_mem_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mul-mem-left--1819cd826eddcfbeaa11f9b6.md) | 69 | `result-track:1819cd826eddcfbeaa11f9b6ff53a90629b34cf656ab6a2edc7279878629cc13` |
| 6 | `theorem` | [mul_mem_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mul-mem-right--fabbcfa555e32eb75a3c5812.md) | 72 | `result-track:fabbcfa555e32eb75a3c58126dc0f28c8b67da307b5be5fa2bd602c811b6a5e5` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/ext--409c04ca720e630b3a7f7b12.md) | 79 | `result-track:409c04ca720e630b3a7f7b124638797ffbcf90cd30b5e2c8e42883dd289ad2b5` |
| 8 | `theorem` | [unit_mul_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/unit-mul-mem-iff-mem--416c5da43f690bd9294cefac.md) | 83 | `result-track:416c5da43f690bd9294cefac604130608fd124d53e29ce1712f82e76e2045985` |
| 9 | `theorem` | [pow_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/pow-mem-of-mem--1cd5f6f2510022239608eaba.md) | 89 | `result-track:1cd5f6f2510022239608eaba86b898eeb55cb68200a6358410214ff8691fe3b0` |
| 10 | `theorem` | [pow_mem_of_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/pow-mem-of-pow-mem--227a47baed37c6e046275931.md) | 93 | `result-track:227a47baed37c6e046275931ea8ec7b146495c8a1b329f629f394b6b1ff5ee0c` |
| 11 | `def` | [Module.eqIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/module-eqideal--19e6521b58db2b29ccbdff84.md) | 102 | `declaration-track:19e6521b58db2b29ccbdff8483e3ebd8d0032f0f6af59bba8d6c83ba214a2647` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/instance--e3adc4c51037102390d2b17e.md) | 120 | `declaration-track:e3adc4c51037102390d2b17e05c05999c04fdb93f7edc805deac7e5ae0bbb5fe` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/instance--b62c960c8c28c8a4d3b85b0f.md) | 121 | `declaration-track:b62c960c8c28c8a4d3b85b0f9f7819b97adc1e663fde758ef7c9d97c05a4b120` |
| 14 | `theorem` | [mul_unit_mem_iff_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mul-unit-mem-iff-mem--0db842dba8b8687723a91034.md) | 124 | `result-track:0db842dba8b8687723a910347234751c643a9a98aa61cdd0d5e470b6053a7ede` |
| 15 | `lemma` | [mem_of_dvd](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mem-of-dvd--87505601bf9dc693487397e4.md) | 127 | `result-track:87505601bf9dc693487397e43a052b4b1c2ca664188b8c64892561bd4f8267f5` |
| 16 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/neg-mem-iff--185a2761531ff213e4a43c74.md) | 140 | `result-track:185a2761531ff213e4a43c74c2f8d462571ac4e31e8ad4d74093c4e542185f28` |
| 17 | `theorem` | [add_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/add-mem-iff-left--308ec70d8c565bc012720e7e.md) | 143 | `result-track:308ec70d8c565bc012720e7e73ecf657fe7bdcaa2bbbe8ac64214a01a7fc3bd0` |
| 18 | `theorem` | [add_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/add-mem-iff-right--712b5cec84a32255289758d5.md) | 146 | `result-track:712b5cec84a32255289758d5f62a2bfc1b563f17ce7081d601b256d409198036` |
| 19 | `theorem` | [sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/sub-mem--6695b8c4a545e0e7a051a7f3.md) | 149 | `result-track:6695b8c4a545e0e7a051a7f35e2790f2b51c1250967194e7c4f082fcea85b755` |
| 20 | `theorem` | [mul_sub_mul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mul-sub-mul-mem--58407acb854b15b78e4c2d13.md) | 152 | `result-track:58407acb854b15b78e4c2d13daa8aeb8d53120c3e28c312c0db0e157fda08227` |
| 21 | `abbrev` | [inertia](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/inertia--78376daa5ddbe3007b4aa1b8.md) | 162 | `declaration-track:78376daa5ddbe3007b4aa1b83e3bcb3c97c9eb9e715f9d3845e6849001973aa1` |
| 22 | `theorem` | [mem_inertia](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/mem-inertia--08f570861ca6021ee31d5d4c.md) | 165 | `result-track:08f570861ca6021ee31d5d4cf89be3b22a6ba5b37e7505a37ab2ede417faf324` |
| 23 | `theorem` | [coe_mem_inertia](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variante56234e838fa6c57441f9d15237009433bf86a35309dea81e1c30ee8adfa2d57.lean/declarations/coe-mem-inertia--1dc32c28ec88c8def3a67824.md) | 169 | `result-track:1dc32c28ec88c8def3a67824cd55f85377feb16ab8f88bbf1db1468fc5c03804` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

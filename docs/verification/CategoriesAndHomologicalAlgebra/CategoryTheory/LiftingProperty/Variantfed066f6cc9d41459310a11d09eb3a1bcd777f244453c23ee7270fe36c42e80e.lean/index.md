# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperty.Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5002b763c118fbb5b981a4140ecfac8020d9e370",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5002b763c118fbb5b981a4140ecfac8020d9e370`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Retract` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp--ad97fd707822ff161e0e9e3a.md) | 31 | `declaration-track:ad97fd707822ff161e0e9e3acc7f6685aedf43623847891e6c03f99b8b321594` |
| 2 | `def` | [rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp--8e3f3b788dc2055263133e7e.md) | 36 | `declaration-track:8e3f3b788dc2055263133e7e77f6db5c0d08410978fd1f186c10d76229d9dde7` |
| 3 | `lemma` | [llp_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-of-isiso--cd9dcf6d59a257b55b4bdb18.md) | 39 | `result-track:cd9dcf6d59a257b55b4bdb18ce1eabb447ebd21e51d02e8bd6c1e01ddfc31710` |
| 4 | `lemma` | [rlp_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-of-isiso--96a635c1198df349a573dac8.md) | 43 | `result-track:96a635c1198df349a573dac889516a9166ca4cce30ffe46c22ee0656a2ad9785` |
| 5 | `instance` | [llp_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-isstableunderretracts--2a53a000b6140485b03f2c70.md) | 47 | `declaration-track:2a53a000b6140485b03f2c70636a4a31aa5d19bfb509d7ce5159f37de1124486` |
| 6 | `instance` | [rlp_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-isstableunderretracts--3277b6b8171a2c6c3feca72d.md) | 52 | `declaration-track:3277b6b8171a2c6c3feca72ddfcf1bc69b604a218c167ff01933a5e6f2d6bf7f` |
| 7 | `instance` | [llp_isStableUnderCobaseChange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-isstableundercobasechange--1cdec52577c68b037667eec7.md) | 57 | `declaration-track:1cdec52577c68b037667eec718ee9e598e55795e4acaf7789b60c0d89484e744` |
| 8 | `instance` | [rlp_isStableUnderBaseChange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-isstableunderbasechange--1aff07a76a3fe95e64536d1c.md) | 63 | `declaration-track:1aff07a76a3fe95e64536d1cf2c769e08054844046bf1f554179a0d5fc0c7cac` |
| 9 | `instance` | [llp_isMultiplicative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-ismultiplicative--54893df03f720647771bff1c.md) | 68 | `declaration-track:54893df03f720647771bff1cba62ead2e480a798453b11752ee661b458fa356a` |
| 10 | `instance` | [rlp_isMultiplicative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-ismultiplicative--af300b4697d5d30c138578b2.md) | 75 | `declaration-track:af300b4697d5d30c138578b2cfd4f46fb33b0446083dd8faefbf433fd6c53fdf` |
| 11 | `instance` | [llp_isStableUnderCoproductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-isstableundercoproductsofshape--eeb998c4116dd84abbf8e116.md) | 82 | `declaration-track:eeb998c4116dd84abbf8e116f115b757d4584ec4be0876520df70a2f30a4e290` |
| 12 | `instance` | [rlp_isStableUnderProductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-isstableunderproductsofshape--d5d56d66877cfa73f021b390.md) | 89 | `declaration-track:d5d56d66877cfa73f021b3908519a6a00b6134444e675154d8337f0642a9ce8a` |
| 13 | `lemma` | [le_llp_iff_le_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/le-llp-iff-le-rlp--98234de7a1417861a4fec313.md) | 96 | `result-track:98234de7a1417861a4fec3138839ab8ef1414188cdd8c40f84708af843afbdbc` |
| 14 | `lemma` | [gc_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/gc-llp-rlp--41b1cb222e858aaa9607f5f5.md) | 101 | `result-track:41b1cb222e858aaa9607f5f56f835dc8e449b9ee624b9ea401ddd4e1027ae796` |
| 15 | `lemma` | [le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/le-llp-rlp--a17c8eb6a6f62cc32cbe55b3.md) | 106 | `result-track:a17c8eb6a6f62cc32cbe55b302b24ecdf1e0a36476cc76bbbaef5fa21c5e3af9` |
| 16 | `lemma` | [rlp_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-llp-rlp--bd5471cf91814d8b41d77de7.md) | 110 | `result-track:bd5471cf91814d8b41d77de74d41ed70882fc8cc545b6f8fd07b5a28ccb54460` |
| 17 | `lemma` | [llp_rlp_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/llp-rlp-llp--4b80445b182ba0d851117150.md) | 114 | `result-track:4b80445b182ba0d8511171503187c67935fffd11540cabab7b195ad890ee7447` |
| 18 | `lemma` | [antitone_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/antitone-rlp--6308172d3a7d27aff26a95ba.md) | 117 | `result-track:6308172d3a7d27aff26a95ba41232ae21e61604602fee86901af568c96a5018a` |
| 19 | `lemma` | [antitone_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/antitone-llp--9afac8803f0a1204bacb2e2d.md) | 120 | `result-track:9afac8803f0a1204bacb2e2dc0a27e14e5c411cde8ed9e0f6420ac2d9ef6077a` |
| 20 | `lemma` | [pushouts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/pushouts-le-llp-rlp--ad9684861fbb7bece1fb98fd.md) | 123 | `result-track:ad9684861fbb7bece1fb98fd828148dbca6b3baf2b8b2c382058c46703c5c8fa` |
| 21 | `lemma` | [rlp_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-pushouts--d5ef0bbe4e2feb9a44d7ce67.md) | 129 | `result-track:d5ef0bbe4e2feb9a44d7ce6771e242a33132b42c8c1a1bc5ec17931192f828e5` |
| 22 | `lemma` | [colimitsOfShape_discrete_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/colimitsofshape-discrete-le-llp-rlp--4dd8c5f38ab10b40c20b103c.md) | 135 | `result-track:4dd8c5f38ab10b40c20b103cec175234425ff6f86e42fa086f566e6daeabd005` |
| 23 | `lemma` | [coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/coproducts-le-llp-rlp--2cf2a1e0cf751182a873b594.md) | 140 | `result-track:2cf2a1e0cf751182a873b5946ad1bc5f4b9a2e202902fd8a339ee47e66ef156c` |
| 24 | `lemma` | [rlp_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-coproducts--d7d41e3cd24dca9998275515.md) | 147 | `result-track:d7d41e3cd24dca99982755150b1d34b878550ef56e04b12aa1e2947f277bf439` |
| 25 | `lemma` | [retracts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/retracts-le-llp-rlp--4e7895d2402da93728b065bf.md) | 153 | `result-track:4e7895d2402da93728b065bfb966ab973be025e1dc880d72f61eaf42200072e2` |
| 26 | `lemma` | [rlp_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variantfed066f6cc9d41459310a11d09eb3a1bcd777f244453c23ee7270fe36c42e80e.lean/declarations/rlp-retracts--8c1edc9c887588d377d7c4a4.md) | 157 | `result-track:8c1edc9c887588d377d7c4a4e06904b5200ef64b5af32dcb20538b03bfb5bc4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

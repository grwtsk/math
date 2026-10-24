# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LiftingProperty.Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7668ffac870c910c9d439c1005cad0830367619f",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7668ffac870c910c9d439c1005cad0830367619f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Retract` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Limits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp--45b775b07bbca2fb52a44f3e.md) | 39 | `declaration-track:45b775b07bbca2fb52a44f3e07b06ff1fdf33a508fe84ebc71180ad2b2934432` |
| 2 | `def` | [rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp--fe4243f5dbc591845df026e7.md) | 44 | `declaration-track:fe4243f5dbc591845df026e7b600fdc5ec578bb551265815324aa7a9ac8b4498` |
| 3 | `lemma` | [llp_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-of-isiso--c9ee0a0abff2c0dd3f22667f.md) | 47 | `result-track:c9ee0a0abff2c0dd3f22667f49c864578dbbd782fa9efa9b6c2d2b57ec7ccae2` |
| 4 | `lemma` | [rlp_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-of-isiso--14ef3047858f65aa80468953.md) | 51 | `result-track:14ef3047858f65aa80468953d4e264a3bc7e40443416104b669bca8afcee22c6` |
| 5 | `instance` | [llp_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-isstableunderretracts--207672416a9f7b34f0f6b077.md) | 55 | `declaration-track:207672416a9f7b34f0f6b0777b3d2a8a8633a283ef39740372c13a60e59477ac` |
| 6 | `instance` | [rlp_isStableUnderRetracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-isstableunderretracts--39462a6583fe584bf8384a6d.md) | 60 | `declaration-track:39462a6583fe584bf8384a6d4bb1e6806de758b9196ae0756c29b2aac74963e4` |
| 7 | `instance` | [llp_isStableUnderCobaseChange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-isstableundercobasechange--bb4a3ca4ad154effa8b7b97e.md) | 65 | `declaration-track:bb4a3ca4ad154effa8b7b97e72e1b8fcfbd233d7503ae5bfe474a7d49cade011` |
| 8 | `instance` | [rlp_isStableUnderBaseChange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-isstableunderbasechange--f4b27f2db16cf82b3a91a86d.md) | 71 | `declaration-track:f4b27f2db16cf82b3a91a86de5d4d4dc3de9f2f337a35b7c1c25b2c393d9e2c0` |
| 9 | `instance` | [llp_isMultiplicative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-ismultiplicative--3d9b66d6b0e7e84e4f28bb38.md) | 76 | `declaration-track:3d9b66d6b0e7e84e4f28bb38fe781d1ddea4b22aa21be442173138a34185bfd2` |
| 10 | `instance` | [rlp_isMultiplicative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-ismultiplicative--81103d2ca87b5c0ac73fa342.md) | 83 | `declaration-track:81103d2ca87b5c0ac73fa342529ba5842381cbee45f643bcfb9755b470704fb4` |
| 11 | `instance` | [llp_isStableUnderCoproductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-isstableundercoproductsofshape--eaeecdce3ca12e673c937cb6.md) | 90 | `declaration-track:eaeecdce3ca12e673c937cb65add4b8c420358f3fb36b47c1f2f25c2a70719df` |
| 12 | `instance` | [rlp_isStableUnderProductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-isstableunderproductsofshape--24a5c64be55be107c385d1db.md) | 97 | `declaration-track:24a5c64be55be107c385d1dbd89f69a598b2ddcc9da7066e1bf389eef6e02320` |
| 13 | `lemma` | [le_llp_iff_le_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/le-llp-iff-le-rlp--2cfe55cfcefa5999ff0dc196.md) | 104 | `result-track:2cfe55cfcefa5999ff0dc196df2852e50ce829629d6f7f957ba53c479c9233e4` |
| 14 | `lemma` | [gc_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/gc-llp-rlp--36b5769bb27d1ab7ca2724a7.md) | 109 | `result-track:36b5769bb27d1ab7ca2724a74019fd972b8bc5b625e4fe870aabf80554c18db3` |
| 15 | `lemma` | [le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/le-llp-rlp--1de7ea0e50c3adaad16a0bf0.md) | 114 | `result-track:1de7ea0e50c3adaad16a0bf0775f9ecd56865a03ab05eada8af4b8cb5ecfdce1` |
| 16 | `lemma` | [rlp_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-llp-rlp--71de397968afd27ca00e0a00.md) | 118 | `result-track:71de397968afd27ca00e0a00984d6868fcb0e3026092b5d4c0ff5b96992f41ee` |
| 17 | `lemma` | [llp_rlp_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/llp-rlp-llp--9ceaea7667d7c754e06d930c.md) | 122 | `result-track:9ceaea7667d7c754e06d930ce20dd289fe3da9b9dc13baccb2e4e218abd6680e` |
| 18 | `lemma` | [antitone_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/antitone-rlp--1d9742fe05f5f9a34876fb6b.md) | 125 | `result-track:1d9742fe05f5f9a34876fb6b874a04d2d6cceff97f421407b1e91896af0b144a` |
| 19 | `lemma` | [antitone_llp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/antitone-llp--180814019b9ee5a2984f7dc7.md) | 128 | `result-track:180814019b9ee5a2984f7dc73bd0d06cde4e6a6230b66224116a79dbbee8d61e` |
| 20 | `lemma` | [pushouts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/pushouts-le-llp-rlp--8a58b80b4c4541a7e4b7633a.md) | 131 | `result-track:8a58b80b4c4541a7e4b7633afc65326bbaef1eacd6a6f4a8aee7084bc6ed63f2` |
| 21 | `lemma` | [rlp_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-pushouts--19745152dcef926fb6dab4df.md) | 137 | `result-track:19745152dcef926fb6dab4dffdb19d7ea05b8fff1d391c6b7716d672f0fbfac9` |
| 22 | `lemma` | [colimitsOfShape_discrete_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/colimitsofshape-discrete-le-llp-rlp--ff8dd36746c58c2ce7ff28fd.md) | 143 | `result-track:ff8dd36746c58c2ce7ff28fdc9f75d5a1e5df662a05435268631cdb14d56032d` |
| 23 | `lemma` | [coproducts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/coproducts-le-llp-rlp--8f9f865e015eacd8fb1d4463.md) | 148 | `result-track:8f9f865e015eacd8fb1d4463316ec9e1ac74abf01b1d024a88b74fa20c3ad3a5` |
| 24 | `lemma` | [rlp_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-coproducts--0375485fc33bb9ae58791150.md) | 155 | `result-track:0375485fc33bb9ae587911509b0520aa4152c495ec1c6b4492e0b4b0d19be271` |
| 25 | `lemma` | [retracts_le_llp_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/retracts-le-llp-rlp--4754a5506349b66f96eca7e8.md) | 161 | `result-track:4754a5506349b66f96eca7e87f38c6fe7b505f69f4eb16dc71f5e6cb56837326` |
| 26 | `lemma` | [rlp_retracts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LiftingProperty/Variant2ddf64f9652a94897352cf84d29a3e1103ea74212a1ff41cc79f4dd464ef4075.lean/declarations/rlp-retracts--b697dee847d26eab62da2ca5.md) | 165 | `result-track:b697dee847d26eab62da2ca581526b45f36099adf6214cb8ce7991864186c5fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

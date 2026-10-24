# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "889956f476b6ce70bcee65f8a5dd540d4050a287",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `889956f476b6ce70bcee65f8a5dd540d4050a287`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackConeEquivBinaryFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/pullbackconeequivbinaryfan--c7f2e3fc5fb6413e04e87497.md) | 64 | `declaration-track:c7f2e3fc5fb6413e04e87497fe71787e495343f541e58fb7f6abed959050d2d0` |
| 2 | `def` | [IsLimit.pullbackConeEquivBinaryFanFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/islimit-pullbackconeequivbinaryfanfunctor--5773c27902d44dce8664b093.md) | 83 | `declaration-track:5773c27902d44dce8664b09301a0ce7c508f73152be8163b1408af57d7dd3be3` |
| 3 | `def` | [IsLimit.pullbackConeEquivBinaryFanInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/islimit-pullbackconeequivbinaryfaninverse--762fe5af60dc308896858f32.md) | 100 | `declaration-track:762fe5af60dc308896858f328eb7ba169526a71d23fd1aa49ddf281365f4fe32` |
| 4 | `def` | [pushoutCoconeEquivBinaryCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/pushoutcoconeequivbinarycofan--3603556c663e1609e91dc326.md) | 125 | `declaration-track:3603556c663e1609e91dc32623dbb61b44738d5db260ad1a3b86d5dc3d15535c` |
| 5 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/iscolimit-pushoutcoconeequivbinarycofanfunctor--8bb7414c4fe879ee088ad3f2.md) | 145 | `declaration-track:8bb7414c4fe879ee088ad3f273e0aeec4229222740dfa5a77099b0bb7aa11cef` |
| 6 | `def` | [IsColimit.pushoutCoconeEquivBinaryCofanInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/iscolimit-pushoutcoconeequivbinarycofaninverse--0774f57cc5bf3f7b37d7bda2.md) | 162 | `declaration-track:0774f57cc5bf3f7b37d7bda233bf3b81f67d2447c044d502006a6ed03a20e8dc` |
| 7 | `lemma` | [isPullback_of_binaryFan_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/ispullback-of-binaryfan-islimit--e00d823379d5295280d0bd7d.md) | 189 | `result-track:e00d823379d5295280d0bd7da2ba70c2f40af29fb8782a04aedd17232eefa51f` |
| 8 | `def` | [prodLeftIsoPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/prodleftisopullback--dc7ea683d7c44eb97813d0a3.md) | 197 | `declaration-track:dc7ea683d7c44eb97813d0a3da787c3a6d92d78c8efab01c27d48d4a67456fbe` |
| 9 | `lemma` | [prodLeftIsoPullback_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/prodleftisopullback-hom-fst--0c3fb68d89f1568c958d6ee2.md) | 202 | `result-track:0c3fb68d89f1568c958d6ee2f081a84ef49733269d2581a259c0b611aed84f7b` |
| 10 | `lemma` | [prodLeftIsoPullback_hom_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/prodleftisopullback-hom-snd--1ff0eb8099b665387614aaa9.md) | 207 | `result-track:1ff0eb8099b665387614aaa96c151049cee4f79804d70eb9fbf9c6ddffc15f60` |
| 11 | `lemma` | [prodLeftIsoPullback_inv_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/prodleftisopullback-inv-fst--52b61325900d24033334a5ed.md) | 212 | `result-track:52b61325900d24033334a5ed4cd3da93dd4b683f50af3e2ee2480fb5d586e1db` |
| 12 | `lemma` | [prodLeftIsoPullback_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/prodleftisopullback-inv-snd--4738ab6bb83111328e7285c0.md) | 217 | `result-track:4738ab6bb83111328e7285c0366b88d163febf96a9a3b6bfdfbff084f8690db9` |
| 13 | `abbrev` | [widePullbackDiagramOfDiagramOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/widepullbackdiagramofdiagramover--9bc0bbc9b7e9977d93fc2d15.md) | 236 | `declaration-track:9bc0bbc9b7e9977d93fc2d15d9ff8a52145060a0172c93fb9755780db0130bc8` |
| 14 | `def` | [conesEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequivinverseobj--ba4bc52acc12f258ecebb498.md) | 242 | `declaration-track:ba4bc52acc12f258ecebb4984e025ee8e2772a2d4109d7e15bfaa7a807c5d723` |
| 15 | `def` | [conesEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequivinverse--0946817e52c33770a9fbb0e7.md) | 256 | `declaration-track:0946817e52c33770a9fbb0e710f70726810aece1735039dd892364dda3fefa9b` |
| 16 | `def` | [conesEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequivfunctor--70a7a5484114c84088b09693.md) | 274 | `declaration-track:70a7a5484114c84088b0969329590b2f3f87318102dcd01c3cc8a8e0cc97b307` |
| 17 | `def` | [conesEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequivunitiso--e1e363d24c6d742bae340df2.md) | 291 | `declaration-track:e1e363d24c6d742bae340df2739231f28a03b6ec5ebebe44421309722d0122d7` |
| 18 | `def` | [conesEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequivcounitiso--7988151c215857ec25b45a2b.md) | 303 | `declaration-track:7988151c215857ec25b45a2b3b2d6634a69136476cfb66a1f4a56d5dc4320603` |
| 19 | `def` | [conesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/conesequiv--0e59592948035645b13a239e.md) | 312 | `declaration-track:0e59592948035645b13a239e2ba2f0fd962d4c97e7ed77f7962e75422a1bf37e` |
| 20 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/has-over-limit-discrete-of-widepullback-limit--df11e0ed19f761cb0fb93921.md) | 320 | `result-track:df11e0ed19f761cb0fb93921e14288579c53095c4da268ec2fd94fc133122f8f` |
| 21 | `theorem` | [over_product_of_widePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/over-product-of-widepullback--401263dbe6ce20dd08a90300.md) | 328 | `result-track:401263dbe6ce20dd08a903002aaded542bd47a09ab8aae729108c23b3baf5827` |
| 22 | `theorem` | [over_binaryProduct_of_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/over-binaryproduct-of-pullback--538bd069dbc9e5dfeb8c218f.md) | 333 | `result-track:538bd069dbc9e5dfeb8c218f5e43a60097759a252eee1145b3ecbae842efce86` |
| 23 | `theorem` | [over_products_of_widePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/over-products-of-widepullbacks--f93c93f79fd4465facfe4f8b.md) | 337 | `result-track:f93c93f79fd4465facfe4f8bf8cdb389084f34ce9f97c10e0287032ff05389c6` |
| 24 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/over-finiteproducts-of-finitewidepullbacks--1ac661c781df79292b535165.md) | 342 | `result-track:1ac661c781df79292b535165e0638f9480b76314adcedc38d27bf6d17be81a1f` |
| 25 | `theorem` | [over_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variant9c0f6fdfcc619f9551a005eff566e0fe9a6a57555b71581e4d81d02e14a78076.lean/declarations/over-hasterminal--8c90de5833914e0e08f0c242.md) | 353 | `result-track:8c90de5833914e0e08f0c242d2c1bd7b1b07895f88daae709d272056ba1264cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

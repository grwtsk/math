# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d73717a7c17e396c4dba341a091a29e4493c51ab",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d73717a7c17e396c4dba341a091a29e4493c51ab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Products` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pullback--6b10767dfb0dbb1069d4c997.md) | 61 | `declaration-track:6b10767dfb0dbb1069d4c997b301cad1748b6d3536435905f6a75574d749ad21` |
| 2 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/mappullbackadj--b15d9442d767c4bfc4220f56.md) | 69 | `declaration-track:b15d9442d767c4bfc4220f5644b624fd312c0478a0ed8815ea669d6eb4e63c4f` |
| 3 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pullbackid--d56fd96599737cc585bb64d9.md) | 85 | `declaration-track:d56fd96599737cc585bb64d997738dace250213f717dd33baac42bf49091d9f9` |
| 4 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pullbackcomp--a2d55003329187cf30a3bc8b.md) | 89 | `declaration-track:a2d55003329187cf30a3bc8bde4d0760fa411e7ea7d709e00920dc3b5edec8fb` |
| 5 | `instance` | [pullbackIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pullbackisrightadjoint--db1abd9f4ebb92b436a3062d.md) | 94 | `declaration-track:db1abd9f4ebb92b436a3062d021c7398d15f663139aa5a70fb01826e2986c58b` |
| 6 | `def` | [postAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/postadjunctionleft--58aa8877d476cf14ee55f6b1.md) | 104 | `declaration-track:58aa8877d476cf14ee55f6b155614a74fb269ac5171941657f3cf601da9983fa` |
| 7 | `instance` | [isLeftAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/isleftadjoint-post--8ff6a627675782baf5351243.md) | 109 | `declaration-track:8ff6a627675782baf5351243e051d807e294359e8b1714f0ae882cd8684c1e2c` |
| 8 | `def` | [forgetMapTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/forgetmapterminal--c87a8ceadd753824cc4a44c6.md) | 116 | `declaration-track:c87a8ceadd753824cc4a44c67831842eb9822b6bbf4fcf296f4faf8b136560c0` |
| 9 | `def` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/star--22833c0edc467b890d1c09f4.md) | 127 | `declaration-track:22833c0edc467b890d1c09f4712f7d390cee9171fdfcfce7c35369bf587de87d` |
| 10 | `def` | [forgetAdjStar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/forgetadjstar--969cb7449c7a643090463947.md) | 134 | `declaration-track:969cb7449c7a64309046394752e0c560a2b5972c094dbab8f3e49c9da210103f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/instance--873ea6aaf3890995eb5d99cf.md) | 136 | `declaration-track:873ea6aaf3890995eb5d99cf21ed8dca0bfb39dd96e6e010c62fdc1839dc0254` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/instance--95d297c72e2417802234a94f.md) | 140 | `declaration-track:95d297c72e2417802234a94ffae74646cfb9f16060a0bc8624606fe04c4d7ea6` |
| 13 | `def` | [pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pushout--5e741ad59fc1d171726d04ed.md) | 152 | `declaration-track:5e741ad59fc1d171726d04ed8c6c98699d400a0f11856eb274c06cf02e86d53c` |
| 14 | `def` | [mapPushoutAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/mappushoutadj--26eb8060838331926dfd5187.md) | 160 | `declaration-track:26eb8060838331926dfd518775bb7ffb2cd71a9ac135c1fe2b02ec26fd4d428b` |
| 15 | `def` | [pushoutId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pushoutid--352805531a9a904fc021db19.md) | 181 | `declaration-track:352805531a9a904fc021db19c7886f69212d4372391e1c6b167bacf52f4ab31d` |
| 16 | `def` | [pushoutComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pushoutcomp--1a9183bf417b9cbc58afb1e9.md) | 186 | `declaration-track:1a9183bf417b9cbc58afb1e99e42f3ef119bf9359966ae8009c3b9afc93bb7a3` |
| 17 | `instance` | [pushoutIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/pushoutisleftadjoint--59d48179f9cc776597a3f5fc.md) | 193 | `declaration-track:59d48179f9cc776597a3f5fcd16368d94946d4abc9e3f6b55131b9cb441f8ada` |
| 18 | `def` | [postAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/postadjunctionright--2ad3e69940a43467cfe24670.md) | 204 | `declaration-track:2ad3e69940a43467cfe246703d3d2c489df7a4218228daf8f02d74acb3f9e2ce` |
| 19 | `instance` | [isRightAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/isrightadjoint-post--4b8682d7fa37992109917423.md) | 211 | `declaration-track:4b8682d7fa379921099174232f29d5b66ff1e3e84ddde5ddcb5e2a5df7f81621` |
| 20 | `def` | [forgetMapInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/forgetmapinitial--7bf3531bfa924c3315dceb10.md) | 217 | `declaration-track:7bf3531bfa924c3315dceb10decba48ef250d8d2d92ef22e51bb35021ea83d62` |
| 21 | `def` | [costar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/costar--12e55824f420cace59741940.md) | 226 | `declaration-track:12e55824f420cace59741940ee4de14bc517f38c5dcd1875eda3642b0e5cbf18` |
| 22 | `def` | [costarAdjForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/costaradjforget--e8f7505eec5e3778cf974eac.md) | 232 | `declaration-track:e8f7505eec5e3778cf974eacac99d2c63d8b47f8ee473de15fe1126b440189cc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/instance--7618d404fbe5e3849853add0.md) | 234 | `declaration-track:7618d404fbe5e3849853add014821c6ab3160b0cf0c4f07d3d2c474452dc7950` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variantf5a600a81627c4f160428b9690f0ed11042bdab6bc9e4cbf3cd61d3ab22aaae5.lean/declarations/instance--06dc836235803923f4619f15.md) | 238 | `declaration-track:06dc836235803923f4619f1562a09ed7a3ade5e77e94ca8f97b6cde616235888` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

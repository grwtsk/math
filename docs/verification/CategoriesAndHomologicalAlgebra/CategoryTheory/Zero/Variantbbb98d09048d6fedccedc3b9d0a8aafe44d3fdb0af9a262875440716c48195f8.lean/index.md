# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Zero.Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9378d2cf0aea9520a801af6ffd4a67ec4fd1c1bc",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9378d2cf0aea9520a801af6ffd4a67ec4fd1c1bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveszeromorphisms--62e57095c57a6b97f80a3d64.md) | 44 | `declaration-track:62e57095c57a6b97f80a3d647eaf0c9afd6ff403517512f974a2b70c72a4c153` |
| 2 | `theorem` | [map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/map-zero--00c65915fcdbd8efbde2e5ed.md) | 49 | `result-track:00c65915fcdbd8efbde2e5ed76fb0c2c1407ebb1b704293e8240e8d941454131` |
| 3 | `lemma` | [map_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/map-iszero--7f4672468f856f89b30b3fec.md) | 53 | `result-track:7f4672468f856f89b30b3fecca479964bc6596ae01e70755d208d833bef4b18f` |
| 4 | `theorem` | [zero_of_map_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/zero-of-map-zero--54c0b289592b18e83f43554b.md) | 58 | `result-track:54c0b289592b18e83f43554b2b15183b26ffece84eff305b3c7c8a8e3314e53d` |
| 5 | `theorem` | [map_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/map-eq-zero-iff--787ce97de895af4644599439.md) | 62 | `result-track:787ce97de895af4644599439769d158a8961f052ce57aee25af61078e1c14b78` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--f5e0957ce7a547d48f473fef.md) | 68 | `declaration-track:f5e0957ce7a547d48f473fef2996bc4750ade2e33c86c419e71c33b44f228b1b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--947c47fa5708d8e4a9fba693.md) | 81 | `declaration-track:947c47fa5708d8e4a9fba6935397777a884164c21902456626bb43ffd06d4795` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--16cc4d046ee3d28a20a15490.md) | 93 | `declaration-track:16cc4d046ee3d28a20a15490c9b7ea382bde9645d8da4bb36651084f99526a5e` |
| 9 | `instance` | [preservesZeroMorphisms_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveszeromorphisms-comp--66537f1c14f0bf4544efe1c0.md) | 100 | `declaration-track:66537f1c14f0bf4544efe1c067734a3a18898130b53a4bbb556c579e522fbcba` |
| 10 | `lemma` | [preservesZeroMorphisms_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveszeromorphisms-of-iso--914f46a55971edf56d4c83f7.md) | 104 | `result-track:914f46a55971edf56d4c83f724d6b2589ac0d6dc8df4a70ac81e9bdde47c500c` |
| 11 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveszeromorphisms-evaluation-obj--cbd8d8f6fe544825218d5882.md) | 109 | `declaration-track:cbd8d8f6fe544825218d5882e754c50f0b2dd7d62eb62919bdb6e1d593d3eb39` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--70cf7317fd1e5d61d5f35d8a.md) | 112 | `declaration-track:70cf7317fd1e5d61d5f35d8aba5d15d1fb33ded4d82f43322040d2da18469007` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--5dbceab9a7ffd27c87233fe6.md) | 115 | `declaration-track:5dbceab9a7ffd27c87233fe69fb00cec23dfb7dbf538a050d706b7855f92fd21` |
| 14 | `def` | [mapZeroObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/mapzeroobject--6a7961365afce5b18b98ba49.md) | 130 | `declaration-track:6a7961365afce5b18b98ba491740bbfbd3b1aa1b2ecc2fb774fb635501079692` |
| 15 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveszeromorphisms-of-map-zero-object--1798fc7d98a0a463a907e9f9.md) | 138 | `result-track:1798fc7d98a0a463a907e9f9e0b25056d211f8fd184c3945709027f35b09333d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--247a65c337720eb7ccc6ef16.md) | 145 | `declaration-track:247a65c337720eb7ccc6ef1640fa6d49632650bedf4553fbde06c574724a6fd9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/instance--9245b1dc659ef8cf3b51e4a8.md) | 151 | `declaration-track:9245b1dc659ef8cf3b51e4a82af55332609827b84b4485477afd50b3dad190e9` |
| 18 | `lemma` | [preservesTerminalObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preservesterminalobject-of-preserveszeromorphisms--1e6c89c92b8de16f7e20ca63.md) | 160 | `result-track:1e6c89c92b8de16f7e20ca63d706e442cdf56d26bebf1ddd8167119143b6647a` |
| 19 | `lemma` | [preservesInitialObject_of_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preservesinitialobject-of-preserveszeromorphisms--c710dc3c4d25c8adf43cd42c.md) | 166 | `result-track:c710dc3c4d25c8adf43cd42c1cc0c947e4a0a71850bfa43d7f069df0339e282c` |
| 20 | `lemma` | [preservesLimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveslimitsofshape-of-iszero--d64537b9d2b24a66b6418aa2.md) | 182 | `result-track:d64537b9d2b24a66b6418aa22358d8ea366b07ef515af6623cf0e0f260006e28` |
| 21 | `lemma` | [preservesColimitsOfShape_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preservescolimitsofshape-of-iszero--0b856b7ce1f650a503728bc7.md) | 188 | `result-track:0b856b7ce1f650a503728bc740dd79bc415241a1061505ca60ded24559e83d08` |
| 22 | `lemma` | [preservesLimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preserveslimitsofsize-of-iszero--7f35499ebea5d4cb472707b3.md) | 194 | `result-track:7f35499ebea5d4cb472707b384acd88dbd4eefda0631b9731554a2ce83dca590` |
| 23 | `lemma` | [preservesColimitsOfSize_of_isZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantbbb98d09048d6fedccedc3b9d0a8aafe44d3fdb0af9a262875440716c48195f8.lean/declarations/preservescolimitsofsize-of-iszero--cddbcb75db49982723b2e55d.md) | 198 | `result-track:cddbcb75db49982723b2e55d747267a92daac853f4aed93c65f79ba21f9f1712` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Conj.Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b558f270c1cd5ea7ea0d4d51187e66a42cea29b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b558f270c1cd5ea7ea0d4d51187e66a42cea29b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conj--df88c807734be3800fdad28c.md) | 44 | `declaration-track:df88c807734be3800fdad28ca4333a3d3e96d26188e724bd3919bcc768b38cc5` |
| 2 | `theorem` | [conj_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conj-apply--06fcbe73c30a012094656d9e.md) | 47 | `result-track:06fcbe73c30a012094656d9e4dedc4882f469b77e52e78a729d88ad380dd0263` |
| 3 | `theorem` | [conj_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conj-comp--7c44fc6d571cb54a1a16a513.md) | 51 | `result-track:7c44fc6d571cb54a1a16a51387b58b69d13b4575f47d867b1586a70d6c523f1b` |
| 4 | `theorem` | [conj_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conj-id--c39b10ea77488a6947a36608.md) | 55 | `result-track:c39b10ea77488a6947a366082423116bcee5c68bdf8990bf1baf064a4fc975bf` |
| 5 | `theorem` | [refl_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/refl-conj--1370ac5764b8ad513ced6b5a.md) | 59 | `result-track:1370ac5764b8ad513ced6b5a5a9565525d3138fc49025cfb41b607a09ce6de0e` |
| 6 | `theorem` | [trans_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/trans-conj--4b24beae01f3ac3a275769dc.md) | 63 | `result-track:4b24beae01f3ac3a275769dc15427a5aac0eac94ffaf063f69c686957bc4811f` |
| 7 | `theorem` | [symm_self_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/symm-self-conj--174216e244f9ff5cf4214c96.md) | 67 | `result-track:174216e244f9ff5cf4214c964158270b7d909f0e937d468a3a6853a47645fa01` |
| 8 | `theorem` | [self_symm_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/self-symm-conj--3e5ac68efff521cbc21d4a17.md) | 71 | `result-track:3e5ac68efff521cbc21d4a1775be52daea06537ece575ef69dd1115db1e19df3` |
| 9 | `theorem` | [conj_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conj-pow--45db19715fbd87c4a81f94fd.md) | 75 | `result-track:45db19715fbd87c4a81f94fdca1b2cc3504b249e993c86d10a472342e5eb7240` |
| 10 | `def` | [conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut--58e094208a635aae7da76fdb.md) | 80 | `declaration-track:58e094208a635aae7da76fdb098cc6095cba184eec36acd4ccdc8d024b493e70` |
| 11 | `theorem` | [conjAut_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-apply--6041d9e581296cfd7ede7816.md) | 83 | `result-track:6041d9e581296cfd7ede7816e22cd585c3d90279603aa2a6405ba52456041ba2` |
| 12 | `theorem` | [conjAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-hom--da37921900403bdf224edbc8.md) | 86 | `result-track:da37921900403bdf224edbc89b2037a09d024dc73055cc748023103e5820bf40` |
| 13 | `theorem` | [trans_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/trans-conjaut--e9182fee9349d6af944e03b3.md) | 90 | `result-track:e9182fee9349d6af944e03b361aee34f6850692860d282f4c85e4d0ed8dafcc1` |
| 14 | `theorem` | [conjAut_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-mul--78169f35b6ea2fa112bb553a.md) | 95 | `result-track:78169f35b6ea2fa112bb553aded3e35daeeee41dc14e15186deacfdea40d645b` |
| 15 | `theorem` | [conjAut_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-trans--6b028b29c14d6f6e3bb76d05.md) | 99 | `result-track:6b028b29c14d6f6e3bb76d05307e626d8058394330085a9cb27427cadb6f9e0e` |
| 16 | `theorem` | [conjAut_pow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-pow--c0ddac0e2332aae6229e1f00.md) | 103 | `result-track:c0ddac0e2332aae6229e1f00efba0fd6170a7ef6b636eb30041e608ac2b9d6aa` |
| 17 | `theorem` | [conjAut_zpow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/conjaut-zpow--f8a1616bd6d8e57c96e9882a.md) | 107 | `result-track:f8a1616bd6d8e57c96e9882aeca052737eaebef176565fa880979ccd649c929f` |
| 18 | `theorem` | [map_conj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/map-conj--beb20b53d10e4490ed1db311.md) | 118 | `result-track:beb20b53d10e4490ed1db3112154d0c5e98504f0e9e8654647fdb47b382ded18` |
| 19 | `theorem` | [map_conjAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean/declarations/map-conjaut--06f02b1cfae8e3e5214a029d.md) | 122 | `result-track:06f02b1cfae8e3e5214a029d04c842912ed33db223fd847c2161659767a45d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

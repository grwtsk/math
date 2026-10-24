# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFundamentalgroup.Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c84a56091c8654dd97c6d13a4139d53bf7b6bef",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c84a56091c8654dd97c6d13a4139d53bf7b6bef`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Topology` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Prorepresentability` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNaturalSMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/isnaturalsmul--800443dd91f0ef39f214cc27.md) | 64 | `declaration-track:800443dd91f0ef39f214cc270eb02da8263b0fa0ac157531efaa178fdca25967` |
| 2 | `def` | [isoOnObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/isoonobj--2f993d4c9c3f850295aab1a5.md) | 69 | `declaration-track:2f993d4c9c3f850295aab1a55fa65a6e6e42b01d66920c57fe014aff24622fa9` |
| 3 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut--bb455d2996bb50914b5cf46f.md) | 81 | `declaration-track:bb455d2996bb50914b5cf46f8d2c2439a930022bd3a78e0f230a20e400c3bcce` |
| 4 | `lemma` | [toAut_hom_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-hom-app-apply--56a1ff1215e1b08b67408869.md) | 98 | `result-track:56a1ff1215e1b08b6740886918bd4f5f1b4bc80f8d747d63b209518550466f86` |
| 5 | `lemma` | [toAut_injective_of_non_trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-injective-of-non-trivial--2d9113209e01ee8a21142345.md) | 102 | `result-track:2d9113209e01ee8a211423458facc5bb9cc3813a23dd18ad4f88081a93eb93ab` |
| 6 | `lemma` | [toAut_continuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-continuous--c62917313cc36bd064c18708.md) | 114 | `result-track:c62917313cc36bd064c1870894fbdd3aa652a5d3649f0e47c681d9ed4c2cbeef` |
| 7 | `lemma` | [action_ext_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/action-ext-of-isgalois--1741800a057a11ab483f4e2e.md) | 127 | `result-track:1741800a057a11ab483f4e2eb8163427a4093cea2d561f784104c0d190f8779a` |
| 8 | `lemma` | [toAut_surjective_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-surjective-isgalois--7ba3258df732469a23593c24.md) | 137 | `result-track:7ba3258df732469a23593c2405cc5b1db427027f76a4fbfbe2eb6e1e968616a7` |
| 9 | `lemma` | [toAut_surjective_isGalois_finite_family](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-surjective-isgalois-finite-family--c1bdc70acedf430a8e30d51c.md) | 144 | `result-track:c1bdc70acedf430a8e30d51c2ac2a0c485afedddb1062aac6f1b53eb3e5fd702` |
| 10 | `lemma` | [toAut_surjective_of_isPretransitive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-surjective-of-ispretransitive--e1e685af2022cff724db3a77.md) | 170 | `result-track:e1e685af2022cff724db3a7757a1e4fbfec705710cdf01569dd8120c7c72d3c4` |
| 11 | `lemma` | [isPretransitive_of_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/ispretransitive-of-surjective--c89c577a1f28b3d126ea86f7.md) | 206 | `result-track:c89c577a1f28b3d126ea86f72c330180b4f6ab7ff3d235b58729d972966715d3` |
| 12 | `class` | [IsFundamentalGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/isfundamentalgroup--92426e2c03b55c6f3bc3b1a7.md) | 224 | `declaration-track:92426e2c03b55c6f3bc3b1a7f97a42bf4817c8199ed0194e62ee72a41bc5688b` |
| 13 | `lemma` | [non_trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/non-trivial--09154a245f099c5eeb28997a.md) | 236 | `result-track:09154a245f099c5eeb28997a03c2077976e9bac99747ece69c5ce56402352080` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/instance--7efecc23e9e1fb869b409ac1.md) | 244 | `declaration-track:7efecc23e9e1fb869b409ac11b383e1d5a8df3cafbbfeaa827f2c1a746669303` |
| 15 | `lemma` | [toAut_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-bijective--c141c0156a5ad5c80a885c09.md) | 254 | `result-track:c141c0156a5ad5c80a885c09785cf4c8acc7bcb72b0aa7f1f418ca60210dceff` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/instance--71cc9f3b20365498c87eddb8.md) | 258 | `declaration-track:71cc9f3b20365498c87eddb804311e0e4e916849d6ee68196197a715ece1943d` |
| 17 | `def` | [toAutMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toautmulequiv--5a157f0302e4d2b230baab52.md) | 263 | `declaration-track:5a157f0302e4d2b230baab5266495015e7567b9a390efba9d8d94d809e0a917a` |
| 18 | `lemma` | [toAut_isHomeomorph](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toaut-ishomeomorph--43f39d575e3a3cbb86334162.md) | 266 | `result-track:43f39d575e3a3cbb863341622138f87315c307488556a0e946db932b5207d4f0` |
| 19 | `lemma` | [toAutMulEquiv_isHomeomorph](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toautmulequiv-ishomeomorph--480cb6e014128aa5842fb503.md) | 270 | `result-track:480cb6e014128aa5842fb5031df279e136bfd711281f56925c71aaf049a17b91` |
| 20 | `def` | [toAutHomeo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toauthomeo--1a557a60adacc5d2ef3a8b6c.md) | 274 | `declaration-track:1a557a60adacc5d2ef3a8b6c50bd5c594fcc416a5c55b772cc119f7a687b83ac` |
| 21 | `lemma` | [toAutMulEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toautmulequiv-apply--966382c70552d580c4f63008.md) | 279 | `result-track:966382c70552d580c4f63008622e118f8f04bedd3dd0735b4dab6d75c0b655b3` |
| 22 | `lemma` | [toAutHomeo_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsFundamentalgroup/Variantd2c815280e2e43e49625ab4de9d08467187c51b13ba5745509b21bd98fc68e9d.lean/declarations/toauthomeo-apply--c58603d6da53f3c168ac1771.md) | 282 | `result-track:c58603d6da53f3c168ac1771e0b350af9a8bd4e8aa7511bb5c2ad76080b6eef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

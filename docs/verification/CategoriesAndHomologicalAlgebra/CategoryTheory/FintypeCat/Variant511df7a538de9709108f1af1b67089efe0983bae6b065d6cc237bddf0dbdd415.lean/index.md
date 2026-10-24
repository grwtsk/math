# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FintypeCat.Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "239d9e0b7d0d50ba6fb85640aa20c8950fd395c7",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `239d9e0b7d0d50ba6fb85640aa20c8950fd395c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sigma` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--f24f2816a81bde64e3b787f5.md) | 26 | `declaration-track:f24f2816a81bde64e3b787f51e91c1cdb8b979d435f6d78d3c7459eaacec0cc0` |
| 2 | `instance` | [finiteLimitOfFiniteDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/finitelimitoffinitediagram--7adc0b2812bcbfe1c0e35aca.md) | 33 | `declaration-track:7adc0b2812bcbfe1c0e35aca71631de31b4ec31d87c99f7879fe6c5fe1c9026e` |
| 3 | `instance` | [inclusionCreatesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/inclusioncreatesfinitelimits--c915d3b0ec7551c0cc5871c2.md) | 38 | `declaration-track:c915d3b0ec7551c0cc5871c20a50823e6bb4f90046cc5f2ffb07115310d0c241` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--67d33dc16baa1817b787a210.md) | 44 | `declaration-track:67d33dc16baa1817b787a210549b172d255e89108dcf148fe1ad4cfbb8767d51` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--4b024acbe77550fc8f771617.md) | 48 | `declaration-track:4b024acbe77550fc8f771617d243da4f3f99b737b8019852038ae2dc277c6b77` |
| 6 | `instance` | [hasFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/hasfinitelimits--4ecac1ed30d8aa5ee61dde7e.md) | 51 | `declaration-track:4ecac1ed30d8aa5ee61dde7efa52ad206bfba1da81e9c56298f463a73f075029` |
| 7 | `instance` | [inclusion_preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/inclusion-preservesfinitelimits--8298a35b7faef3b865311431.md) | 54 | `declaration-track:8298a35b7faef3b865311431945dc9544d2bdaf3bd9b54a7126f72ac35959e90` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--adceb8308c86a49716cf44c5.md) | 60 | `declaration-track:adceb8308c86a49716cf44c5cb66eb2b25f4722f38a78d131208368297ab614e` |
| 9 | `def` | [productEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/productequiv--7197ec39d0567b9e23d560b9.md) | 65 | `declaration-track:7197ec39d0567b9e23d560b9d42b9ffee53a59a5bf5f0272ec9a116badac69dd` |
| 10 | `lemma` | [productEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/productequiv-apply--8e4b6bea8b78a79870991d35.md) | 78 | `result-track:8e4b6bea8b78a79870991d3515d4aee61775651c44f67899c85cf8640e9402fd` |
| 11 | `lemma` | [productEquiv_symm_comp_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/productequiv-symm-comp-apply--1b0ea21ff042009b40066eb8.md) | 83 | `result-track:1b0ea21ff042009b40066eb82b80187f4738a8d169dd94c99b902011c6080d26` |
| 12 | `instance` | [nonempty_pi_of_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/nonempty-pi-of-nonempty--70ed4e1eb16501a1566b97b7.md) | 87 | `declaration-track:70ed4e1eb16501a1566b97b7d11db8f0629a3665fe9a29a56ff3f6c641a134d7` |
| 13 | `instance` | [finiteColimitOfFiniteDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/finitecolimitoffinitediagram--4eb05faa48b2e72abef4ce96.md) | 93 | `declaration-track:4eb05faa48b2e72abef4ce96bb4bad9696e32fb95d790e2271a024b12fc1de80` |
| 14 | `instance` | [inclusionCreatesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/inclusioncreatesfinitecolimits--9f0f7ac5eb0d8dd8be7dce2d.md) | 99 | `declaration-track:9f0f7ac5eb0d8dd8be7dce2d68a1979d6f609cb6f0e8687a3497d8128fea16c6` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--4d0da53ffd75d1ad517d02dc.md) | 105 | `declaration-track:4d0da53ffd75d1ad517d02dc9a5a691745e6be095007c32343251347007ac266` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--34c066498bfae40aac61b640.md) | 109 | `declaration-track:34c066498bfae40aac61b64012d2a7bcaf3113285f9b2b97afd76d9fd41b91a8` |
| 17 | `instance` | [hasFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/hasfinitecolimits--fe6f5d5e878be7f6266e47da.md) | 112 | `declaration-track:fe6f5d5e878be7f6266e47da2054f90d3a0a47c9e0de3ac5ec83637003051d28` |
| 18 | `instance` | [inclusion_preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/inclusion-preservesfinitecolimits--9f8bd35c69b6e0003f61b6bd.md) | 115 | `declaration-track:9f8bd35c69b6e0003f61b6bd2bf247dbafee51f597b3dcb7983581d37f532899` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/instance--3e0dd5b8a1ddae4973c7dddf.md) | 121 | `declaration-track:3e0dd5b8a1ddae4973c7dddf041894dc45b02f419eb484e31fe94567bcb4e55a` |
| 20 | `lemma` | [jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FintypeCat/Variant511df7a538de9709108f1af1b67089efe0983bae6b065d6cc237bddf0dbdd415.lean/declarations/jointly-surjective--b86b4a3d8f4468ddd89f77d7.md) | 124 | `result-track:b86b4a3d8f4468ddd89f77d70a257c9866a3bdf217a1e6c63c6884e00ed513ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

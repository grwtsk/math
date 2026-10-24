# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36ce8c93ae101bd8047fba2e8008772e23b0b8b5",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36ce8c93ae101bd8047fba2e8008772e23b0b8b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/linear--eacd510809658b7a90c266c7.md) | 43 | `declaration-track:eacd510809658b7a90c266c7a30c0f98c2afe75885b5f5a811bb099d12512a76` |
| 2 | `instance` | [preadditiveNatLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/preadditivenatlinear--0b0638fd9eb94f7f283318cc.md) | 65 | `declaration-track:0b0638fd9eb94f7f283318cc33e772e9a2d76cfd6f8692dbe7ef037a6c4940e6` |
| 3 | `instance` | [preadditiveIntLinear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/preadditiveintlinear--a9771905ded88d91f9219b5d.md) | 69 | `declaration-track:a9771905ded88d91f9219b5d1ab67cab30334e2a997d500809d313774bee684e` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/instance--678f2b8008b4492dc3ba1167.md) | 77 | `declaration-track:678f2b8008b4492dc3ba11678f1e8da955a503f964a4a768468842258f01c92d` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/instance--bca37e13027c75e98bcdc198.md) | 81 | `declaration-track:bca37e13027c75e98bcdc198cb70f96b95a8c430643f92d09bab3d7b1e854791` |
| 6 | `instance` | [inducedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/inducedcategory--0f135172017bc4087faa0e47.md) | 96 | `declaration-track:0f135172017bc4087faa0e4744c1301e19f1c9f2f79faf1751cb3f7953fa565b` |
| 7 | `instance` | [fullSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/fullsubcategory--fdb56a6720f0c51bdb0783d0.md) | 103 | `declaration-track:fdb56a6720f0c51bdb0783d03b4f0114b55aa891dd753ae2136c60997ae83efb` |
| 8 | `def` | [leftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/leftcomp--c9d37ac53a2fb28a9e5ee74f.md) | 112 | `declaration-track:c9d37ac53a2fb28a9e5ee74fe3ec106f5edda679402af6fbe012de85aff3047c` |
| 9 | `def` | [rightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/rightcomp--e97991730aa342c2c1fa9fc8.md) | 119 | `declaration-track:e97991730aa342c2c1fa9fc8f79eb088f858b20c80b58cdeb65c214967ea954b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/instance--821f664d8013251626ae9648.md) | 124 | `declaration-track:821f664d8013251626ae9648ac235bdba0a645cc96ed82b5c56c1576a74f0b70` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/instance--e78f63cbb94c62e1e97be25c.md) | 129 | `declaration-track:e78f63cbb94c62e1e97be25c8876fe421824b72032b2ad16835d0f724abfeb58` |
| 12 | `def` | [homCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/homcongr--282b4b030024a5e991b9bd53.md) | 136 | `declaration-track:282b4b030024a5e991b9bd53eb3fff77d9593d90b15a3b48d0da87d360d8b786` |
| 13 | `theorem` | [homCongr_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/homcongr-apply--11c25a166337eb7593816d7e.md) | 152 | `result-track:11c25a166337eb7593816d7e9a393c7b140f2a84d1213838a6babf424154606a` |
| 14 | `theorem` | [homCongr_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/homcongr-symm-apply--23ecd7238afe1a48ba37a538.md) | 157 | `result-track:23ecd7238afe1a48ba37a538b1e4d62e02697314a26bf050da446aa33c688f21` |
| 15 | `lemma` | [units_smul_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/units-smul-comp--4ebf4795e9b4e78c899f0610.md) | 165 | `result-track:4ebf4795e9b4e78c899f0610e051db2d0ebea358ebd0458a5df1d82246279784` |
| 16 | `lemma` | [comp_units_smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/comp-units-smul--3fff5acb6ea4130ed48e175a.md) | 170 | `result-track:3fff5acb6ea4130ed48e175ad4567514e5beb32f5c600aeeba03fbde51bb5ec3` |
| 17 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant57838b78d9ea55bb0421f471a0b09b3eae677352e275f59887d7926e6308a14c.lean/declarations/comp--16dbfab3324823688e62fb25.md) | 182 | `declaration-track:16dbfab3324823688e62fb2559fd137cbf37bc57f7a2be7dac0306541322d695` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

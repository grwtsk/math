# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfHasFiniteProducts.Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0290e568dc3089a24b704ba6a6697c1d24d494b5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0290e568dc3089a24b704ba6a6697c1d24d494b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [monoidalOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/monoidalofhasfiniteproducts--dad82ab92c267fc73f9e2fa2.md) | 48 | `declaration-track:dad82ab92c267fc73f9e2fa24883b1955bca0e9710bbbe8e30c823618354a040` |
| 2 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/tensorobj--c1c87cb437b9ddb674bda9b5.md) | 72 | `result-track:c1c87cb437b9ddb674bda9b5dda3a8a7ca98d9260320ab0575547f5f84ab185d` |
| 3 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/tensorhom--be8932c79cd79ef0b3ff80bb.md) | 77 | `result-track:be8932c79cd79ef0b3ff80bbeeeeb8dbc842a333aedd45cf99eb675cc20d3d5c` |
| 4 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/leftunitor-hom--3442cd4093f53fc7c3c6752f.md) | 82 | `result-track:3442cd4093f53fc7c3c6752f579b97705a22222e3506fd74fc9a067ec304fd0b` |
| 5 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/leftunitor-inv--71d6b845ff154afcb93befad.md) | 87 | `result-track:71d6b845ff154afcb93befad9075155cbc5ece8b4215b8f0bbe838a6f9f8240a` |
| 6 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/rightunitor-hom--5a970e84de75e6699902deb8.md) | 92 | `result-track:5a970e84de75e6699902deb8261523236d65e43fb9fc508d6e6f92d1dc9ffab4` |
| 7 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/rightunitor-inv--6d1cf81d8572b33753707e47.md) | 97 | `result-track:6d1cf81d8572b33753707e47c31e386961ec6732544648815ed5b350a30f645b` |
| 8 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/associator-hom--6904863c7dd1fcf22fcc63da.md) | 104 | `result-track:6904863c7dd1fcf22fcc63daee13d463ad131132f17e34f4a6582ee1324d6b35` |
| 9 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/associator-inv--43f80cea53bb1a99cda5e74d.md) | 111 | `result-track:43f80cea53bb1a99cda5e74dff62b0610a02381ed00ba7fcc633ce12076d2af9` |
| 10 | `def` | [symmetricOfHasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/symmetricofhasfiniteproducts--c1d08db1acf28f88817bd2af.md) | 127 | `declaration-track:c1d08db1acf28f88817bd2afafea8eb8e0af746d700f261da363daeeb1f73a16` |
| 11 | `def` | [monoidalOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/monoidalofhasfinitecoproducts--9fe543c93092c042e8d690b1.md) | 140 | `declaration-track:9fe543c93092c042e8d690b13568eb614872d9b878779ddb677196c8ec65b8eb` |
| 12 | `theorem` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/tensorobj--4b7b220509dcab648b8eae23.md) | 164 | `result-track:4b7b220509dcab648b8eae23939cad996abbd569515a66122bc9352f8d1b6cac` |
| 13 | `theorem` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/tensorhom--ff5d1d8fa055052a71f2f190.md) | 169 | `result-track:ff5d1d8fa055052a71f2f190a05f869a57e759f3c7ab08ce840df42b8fe834d0` |
| 14 | `theorem` | [leftUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/leftunitor-hom--60c306b176a24bc8cece1426.md) | 174 | `result-track:60c306b176a24bc8cece14268308e2281e2ceb3de2f05714d28cc5397a04c1f0` |
| 15 | `theorem` | [rightUnitor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/rightunitor-hom--03364e655581c5badc1b0fca.md) | 179 | `result-track:03364e655581c5badc1b0fcab6d6d238a14c49278d7d182bc03d8c34025bff6a` |
| 16 | `theorem` | [leftUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/leftunitor-inv--0574602fa551c844ec74fe03.md) | 184 | `result-track:0574602fa551c844ec74fe031a54ab552cf8d035c32abfc400c893676adf7347` |
| 17 | `theorem` | [rightUnitor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/rightunitor-inv--f7bb3ef63ae0e989108ddae5.md) | 189 | `result-track:f7bb3ef63ae0e989108ddae54f777bc68ae894e335dd0edd9ec06231cb09f825` |
| 18 | `theorem` | [associator_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/associator-hom--ac0bf3257a4c4cfbb790cbf4.md) | 196 | `result-track:ac0bf3257a4c4cfbb790cbf4bade3ce76830d98b3dd9ca8a626af79bd3886bf5` |
| 19 | `theorem` | [associator_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/associator-inv--76a3d31c9f876fd459cc3f1a.md) | 202 | `result-track:76a3d31c9f876fd459cc3f1a5694bf6f2a673cc595f7d6e33f98133de67d56e0` |
| 20 | `def` | [symmetricOfHasFiniteCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OfHasFiniteProducts/Variant6fe5a77cd006aaddcf156f9a0a05547989a96bed1d5e26f49a2f57f53c805ee9.lean/declarations/symmetricofhasfinitecoproducts--0f63287192f8ab02ee766dc6.md) | 218 | `declaration-track:0f63287192f8ab02ee766dc689c006998c487348f3df6c5bdadd4acfc7bb5daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

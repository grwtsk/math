# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dac377291f6036c4c49c5b1612ec4866f669d741",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dac377291f6036c4c49c5b1612ec4866f669d741`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/freemonoidalcategory--a03999abb84edab060a96a62.md) | 53 | `declaration-track:a03999abb84edab060a96a624f5b89fcc4207bb175c69bee1448e243b6c8719c` |
| 2 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/hom--6f32e2b89ddae2aaef219d2d.md) | 73 | `declaration-track:6f32e2b89ddae2aaef219d2d3661486b57ec7a391d4d405b2cbec5671a9c366d` |
| 3 | `inductive` | [HomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/homequiv--c34c60cd93c54b5e98ed4351.md) | 89 | `declaration-track:c34c60cd93c54b5e98ed43510b3bad56ed6b373de6fe9c29f1c239af1a3b555e` |
| 4 | `def` | [setoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/setoidhom--8d86908cf4728fd4d5fec384.md) | 132 | `declaration-track:8d86908cf4728fd4d5fec384bacb037cfb77a871166d23e1e126ce17520d6cca` |
| 5 | `instance` | [categoryFreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/categoryfreemonoidalcategory--a952e1fb1599bfb749b5a190.md) | 144 | `declaration-track:a952e1fb1599bfb749b5a190a887f995b6e2ec00ce5cb928afc3be35b4a0dc1b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/instance--5655f69e9a98f807a78ac23a.md) | 164 | `declaration-track:5655f69e9a98f807a78ac23aeab59c7ba0e811ad28e62951b5357dc9c444bb35` |
| 7 | `theorem` | [mk_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-comp--1f61ab23d0afe06b4bd2f668.md) | 215 | `result-track:1f61ab23d0afe06b4bd2f6682ff4744ea93a4d8400ad1d78fd443538da47759a` |
| 8 | `theorem` | [mk_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-tensor--ea72836956d6fbca7f3561cc.md) | 221 | `result-track:ea72836956d6fbca7f3561ccd8aa8f7b0e1363419bf26aa3f7d354d5738a3334` |
| 9 | `theorem` | [mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-id--b43b96090b76c790782fd705.md) | 227 | `result-track:b43b96090b76c790782fd705c0f7e3ee9a39ee506754aa82b1d69252553fa427` |
| 10 | `theorem` | [mk_α_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-hom--a3a3e3f03a889ce393d1e6a1.md) | 232 | `result-track:a3a3e3f03a889ce393d1e6a188a1e327e1814db11544350af25ad440afa0a719` |
| 11 | `theorem` | [mk_α_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-inv--ee04643969694d457f0aaeee.md) | 237 | `result-track:ee04643969694d457f0aaeee62ea1827fa9beb19b8c70a91ec52141ae87bac46` |
| 12 | `theorem` | [mk_ρ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-hom--8d4c5b403d3a7a338b280621.md) | 242 | `result-track:8d4c5b403d3a7a338b280621da8dee426bbd91c739845e141ef743c322879e8d` |
| 13 | `theorem` | [mk_ρ_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-inv--842e0cf3c9907171a9cd80e8.md) | 247 | `result-track:842e0cf3c9907171a9cd80e81bb342f750a5a59379e0037556f0d24c505132bd` |
| 14 | `theorem` | [mk_l_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-l-hom--21b85bb7c9ac1a98595698c6.md) | 252 | `result-track:21b85bb7c9ac1a98595698c6aff147ecf5bfb58cd1d064625f8ab5c5a3fb6161` |
| 15 | `theorem` | [mk_l_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/mk-l-inv--9dc43d565e75a0d96decb001.md) | 257 | `result-track:9dc43d565e75a0d96decb001a96f1786cea082c1efc1c572b30fd7a44cb8569f` |
| 16 | `theorem` | [tensor_eq_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/tensor-eq-tensor--a3bff5f17faff62fc6ef4729.md) | 262 | `result-track:a3bff5f17faff62fc6ef4729c258621ea81fc23080b5ea381fba22b091c50a5a` |
| 17 | `theorem` | [unit_eq_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/unit-eq-unit--bf7506bb34a9bd3b8a4c8cae.md) | 267 | `result-track:bf7506bb34a9bd3b8a4c8caeccf31030bb412372c8d267be35803b639bf38f5a` |
| 18 | `def` | [projectObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/projectobj--50518366f6c322bb4b7cd50b.md) | 276 | `declaration-track:50518366f6c322bb4b7cd50b398b47cf8108c1221fe103e2cdaae59a57443411` |
| 19 | `def` | [projectMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/projectmapaux--d42fcbb848030253ecba241a.md) | 290 | `declaration-track:d42fcbb848030253ecba241a23e0373d69f9d0cb6fb3b13dbbba54064dbd8c7b` |
| 20 | `def` | [projectMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/projectmap--3f1ba7d29226413288a3e24a.md) | 304 | `declaration-track:3f1ba7d29226413288a3e24ae30f0ca26cde1d2939223b502554e61e2ae0f8f6` |
| 21 | `def` | [project](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8a46ffe7ad449c24e475b17ee84e0ed1084b08ad1b82f9c9f4454447c1ef1ce1.lean/declarations/project--a8a80f6c932f7e0f5f61585f.md) | 343 | `declaration-track:a8a80f6c932f7e0f5f61585fdbf3ebe78c21aa47fc80ead4b994c91de5d296e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

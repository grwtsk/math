# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d724d596159c22fd9168bca66633ef5a487cf07",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d724d596159c22fd9168bca66633ef5a487cf07`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/const--27b2226d032b34cd77e973ba.md) | 36 | `declaration-track:27b2226d032b34cd77e973ba8ae1f73d16413a7f58acecf7cf09d203da3d5d7e` |
| 2 | `def` | [opObjOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/opobjop--c54f5dea46c0ef005a3e567b.md) | 54 | `declaration-track:c54f5dea46c0ef005a3e567bb1eac0f3489eb2bc0173d05a1208a9e0dafa6aa1` |
| 3 | `def` | [opObjUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/opobjunop--a84061411b087ab5f807204f.md) | 64 | `declaration-track:a84061411b087ab5f807204fcc963af9d1f61e8b480b2dbee78708ecb2e99d08` |
| 4 | `theorem` | [opObjUnop_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/opobjunop-hom-app--79c1ace1626f4cf413281365.md) | 72 | `result-track:79c1ace1626f4cf413281365bdfc1cd0d5ba53e8193491a431eca720f57c60f9` |
| 5 | `theorem` | [opObjUnop_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/opobjunop-inv-app--3f28c840c4086306a80b2742.md) | 77 | `result-track:3f28c840c4086306a80b27424fd0a51976e8e8db1555523119d4dcc3bfd2744b` |
| 6 | `theorem` | [unop_functor_op_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/unop-functor-op-obj-map--222141d1112d2332c4242936.md) | 82 | `result-track:222141d1112d2332c4242936ec9decebf20db8cc06bdc0cfa37544ca1603cb89` |
| 7 | `def` | [constComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/constcomp--14647ea2b1be09b2538d42e3.md) | 97 | `declaration-track:14647ea2b1be09b2538d42e3982cc6d98298f74dba189afc5d2bae6b030621b9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variant7f35e70ad6f6c8bac438f8b1b32cf8daca2c1ffdea99d028cde4e13471ebf8b5.lean/declarations/instance--fd431865d91a46796a35a6df.md) | 104 | `declaration-track:fd431865d91a46796a35a6dfae9a4635f34cd8d6115655457def8385eb536e69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

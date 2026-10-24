# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Free.Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b8dab68026251fa9cd3dbd5a0909a0c81075ce1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b8dab68026251fa9cd3dbd5a0909a0c81075ce1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Adjunctions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeobj--3d745822a6a18dfd0fd9195f.md) | 46 | `declaration-track:3d745822a6a18dfd0fd9195f334ed11ddd141b0b55cc7fb7a9a1c333199f8d77` |
| 2 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/free--beb206dea51eb3c8d9db1bf4.md) | 53 | `declaration-track:beb206dea51eb3c8d9db1bf4581f38eb862e9053c3492cdd6d7cbc04a1b74125` |
| 3 | `def` | [freeObjDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeobjdesc--87e964a87dc113e47110341a.md) | 72 | `declaration-track:87e964a87dc113e47110341a14172f04ddd44e8998ef1f42e825043176a46c06` |
| 4 | `def` | [freeAdjunctionUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeadjunctionunit--cafb76f85d003c87bcdfeba1.md) | 82 | `declaration-track:cafb76f85d003c87bcdfeba10f1dc6feda768473ee47f6a9ef7d790c0715708c` |
| 5 | `def` | [freeHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freehomequiv--5dc94cf8c401bbd4f968e94b.md) | 88 | `declaration-track:5dc94cf8c401bbd4f968e94b8868ce3030af01728ba92cc8e3b9f922323fb014` |
| 6 | `lemma` | [free_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/free-hom-ext--57d77fc56de21289a54c49a1.md) | 94 | `result-track:57d77fc56de21289a54c49a16e7b8fb5e2ed1569697f9ce09e5e178c01595257` |
| 7 | `def` | [freeAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeadjunction--56fdf3b5d8cf25fb1d5433fd.md) | 102 | `declaration-track:56fdf3b5d8cf25fb1d5433fd7ec3d6cc16905c020d0c300f2d3eff10928c31c1` |
| 8 | `lemma` | [freeAdjunction_homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeadjunction-homequiv--73b0a9c160d359ee63d6fc6e.md) | 112 | `result-track:73b0a9c160d359ee63d6fc6ee7ff7849c4994addecc9dc1484636a1c7d11ca19` |
| 9 | `lemma` | [freeAdjunction_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant02e25c10e1766767fd11f3dea43a20a611db010757817fab98177ee8e9df3cd0.lean/declarations/freeadjunction-unit-app--17fc94598ca4bf644dae5937.md) | 117 | `result-track:17fc94598ca4bf644dae5937d864ef68f4ffcf9b1544ffa22fed90c125240fdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

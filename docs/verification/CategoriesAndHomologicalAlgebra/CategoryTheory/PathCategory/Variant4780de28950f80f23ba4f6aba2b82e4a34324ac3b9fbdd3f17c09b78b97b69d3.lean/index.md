# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PathCategory.Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "926439a396e1ad82d021967cd1d3be2987e8ea4c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `926439a396e1ad82d021967cd1d3be2987e8ea4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Paths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/paths--8c59ae8ef420e451646ec48e.md) | 40 | `declaration-track:8c59ae8ef420e451646ec48e8e6c36cecb36e5977e1a6569586f9c23dc3176e9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/instance--14d915c2404f2acda2215cd4.md) | 43 | `declaration-track:14d915c2404f2acda2215cd441bf6a04e9eda700ee1e5aea28a887f4344a2af5` |
| 3 | `instance` | [categoryPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/categorypaths--b48174f21a05f2ec01d518d8.md) | 49 | `declaration-track:b48174f21a05f2ec01d518d8669a562c35e4028aba07e8914b9188a3c4dbc9b9` |
| 4 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/of--7860bde507dce3fdd861664c.md) | 60 | `declaration-track:7860bde507dce3fdd861664ca730aa3c201a2ab4281c83a7cd5e7a4d4f2b7dda` |
| 5 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift--490ba234e52810586625ecb1.md) | 68 | `declaration-track:490ba234e52810586625ecb101558e6765a7c9c64dc769d591b91f58732809ab` |
| 6 | `theorem` | [lift_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift-nil--d417f7a571f31709908406ce.md) | 85 | `result-track:d417f7a571f31709908406ce3706cb411c95bc64aebbb2635b1be127a4884542` |
| 7 | `theorem` | [lift_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift-cons--e3eff342aba170e164c625c8.md) | 90 | `result-track:e3eff342aba170e164c625c89d4e1cdbc72b5d773d6312cb2db5bf9f63daaedf` |
| 8 | `theorem` | [lift_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift-topath--23ba628b12e0c21a554f24f7.md) | 95 | `result-track:23ba628b12e0c21a554f24f7b90e70f31d7e036c1737ae9af173be8d00c851c6` |
| 9 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift-spec--ea472f76dbe2854b8c6bac44.md) | 101 | `result-track:ea472f76dbe2854b8c6bac4478a68bc3b55b00a1a383dbfe010f4e822d4ad6fc` |
| 10 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/lift-unique--1ad4a5f420a3b3c33c84719e.md) | 111 | `result-track:1ad4a5f420a3b3c33c84719e4715f9edb2613766c6feb66802c28f787e21ca41` |
| 11 | `theorem` | [ext_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/ext-functor--b63f5652fd5bad94cbcb8dea.md) | 132 | `result-track:b63f5652fd5bad94cbcb8deaf036216626ab02a000ae5494efedd66c9fb3d1c5` |
| 12 | `theorem` | [Prefunctor.mapPath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/prefunctor-mappath-comp--9721f53ee98213f6bf076f98.md) | 152 | `result-track:9721f53ee98213f6bf076f9847bbddc37839aca4da2572d9f5b6245aa35e87d9` |
| 13 | `def` | [composePath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath--6d2e19131f176aeddbeae86f.md) | 169 | `declaration-track:6d2e19131f176aeddbeae86f22ee0708f0f99447908a6787de0850ba1bde1166` |
| 14 | `lemma` | [composePath_nil](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-nil--3af9cae30040baea9928c314.md) | 174 | `result-track:3af9cae30040baea9928c3140147695a79592cee70ead1e8f0ebdfd79cf67cdc` |
| 15 | `lemma` | [composePath_cons](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-cons--bf5253ec0835a5334d98dbfc.md) | 176 | `result-track:bf5253ec0835a5334d98dbfc3c779d27613b03ba46108139c847c72dffb7b6cb` |
| 16 | `theorem` | [composePath_toPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-topath--0817b557fb2aed5f3c6f8abc.md) | 180 | `result-track:0817b557fb2aed5f3c6f8abcc86bd19192a0f708d0e96eac59c806738e34c4ec` |
| 17 | `theorem` | [composePath_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-comp--b9bb4924eb36f3b5d8ea54aa.md) | 184 | `result-track:b9bb4924eb36f3b5d8ea54aaea63796b1c34d73085572f730df34033ef66f77f` |
| 18 | `theorem` | [composePath_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-id--d092fe639c0ceb1dbf675ab4.md) | 193 | `result-track:d092fe639c0ceb1dbf675ab4243f0e0c33bba36a121120024586d2443658d8d4` |
| 19 | `theorem` | [composePath_comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/composepath-comp--f7d5f6c998ade3cc90dd9f61.md) | 197 | `result-track:f7d5f6c998ade3cc90dd9f61055a98307fc9035edaf858fff421cdaa51b58420` |
| 20 | `def` | [pathComposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/pathcomposition--c8fdf990e5b6468e966a32b7.md) | 206 | `declaration-track:c8fdf990e5b6468e966a32b77b68567a04d3619d4ac2e08e8f6be83db1d9da4e` |
| 21 | `def` | [pathsHomRel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/pathshomrel--64504f849261d44bdd5fa112.md) | 218 | `declaration-track:64504f849261d44bdd5fa1129e50cdd42742951f06ddf66c8ef5e68fce8f2dba` |
| 22 | `def` | [toQuotientPaths](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/toquotientpaths--4a655ca5256612d4da29f25b.md) | 224 | `declaration-track:4a655ca5256612d4da29f25b2b3baca881bfc3f38099ecb15bb4ee82be499ea0` |
| 23 | `def` | [quotientPathsTo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/quotientpathsto--0263370c787083cb7dbde963.md) | 234 | `declaration-track:0263370c787083cb7dbde963c243a1c417138b4d7f2cfe2c588c64758e957fa2` |
| 24 | `def` | [quotientPathsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PathCategory/Variant4780de28950f80f23ba4f6aba2b82e4a34324ac3b9fbdd3f17c09b78b97b69d3.lean/declarations/quotientpathsequiv--4dc6ba3529e51ec0ad726cfa.md) | 240 | `declaration-track:4dc6ba3529e51ec0ad726cfaea53ba536bcd21c4ef637b5c9bc297f4c2586570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

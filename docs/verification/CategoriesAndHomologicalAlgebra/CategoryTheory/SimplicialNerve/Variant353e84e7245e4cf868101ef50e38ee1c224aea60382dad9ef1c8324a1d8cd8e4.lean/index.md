# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialNerve.Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "113646285816349df055a4e7b9c38757c3381445",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `113646285816349df055a4e7b9c38757c3381445`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Nerve` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplicialThickening](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/simplicialthickening--bab36236e09220d81d739686.md) | 50 | `declaration-track:bab36236e09220d81d7396865d7f5417d78a424ec967a637cb992f2599da4375` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--31a28e2d6d6f740923acefd8.md) | 52 | `declaration-track:31a28e2d6d6f740923acefd8742442e5a5246b2f420d25614eaa207cf7054a2f` |
| 3 | `structure` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/path--60d33e06a8bba7f938182c2e.md) | 62 | `declaration-track:60d33e06a8bba7f938182c2e6eb0a8a0389afd6e9aa14e1773bfa066a938fa92` |
| 4 | `lemma` | [Path.le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/path-le--6f2a95275573095046fb482f.md) | 70 | `result-track:6f2a95275573095046fb482f01ee93453d25447734ef8b801bee48e70545c85f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--015828fd2b2940e8e4532490.md) | 73 | `declaration-track:015828fd2b2940e8e4532490fee536701371d4c8f0ba504121c8011bab1f1819` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--1c7403618450627c35400146.md) | 77 | `declaration-track:1c7403618450627c35400146203e9f36af6cd997279286178c021be1320ca015` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--76dbff476d46d4b8895bd7f6.md) | 91 | `declaration-track:76dbff476d46d4b8895bd7f6c176aeb700b7085927a8ac066cd0c39d21543536` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/hom-ext--a69ea49ef0c69f4026828f2f.md) | 95 | `result-track:a69ea49ef0c69f4026828f2fd86d4b1992f07ab785d4b68724a5df069c7fcc5b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--63c2e0fe69756c25c7fb8722.md) | 101 | `declaration-track:63c2e0fe69756c25c7fb8722ace0799478157ebb71f45f39f9489179223c6c47` |
| 10 | `def` | [compFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/compfunctor--7bae3d76b799b6d0522c45e2.md) | 109 | `declaration-track:7bae3d76b799b6d0522c45e2507bf9784da44602827374cd40edd0d2f46edb74` |
| 11 | `abbrev` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/hom--70b202c97616670e19f17090.md) | 119 | `declaration-track:70b202c97616670e19f17090b160051533796cc1216886949a8449ac85faec13` |
| 12 | `abbrev` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/id--eff972c81a536cf71e4f292f.md) | 122 | `declaration-track:eff972c81a536cf71e4f292f4c865e2ee38090b40442954fb0d12c36533cbf42` |
| 13 | `abbrev` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/comp--126c1a886d413ac12a7d7080.md) | 126 | `declaration-track:126c1a886d413ac12a7d7080355ec489632ebeb367e6bbd74ebcb8330f225c0e` |
| 14 | `lemma` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/id-comp--1c1e347ce7d6e6528eec1502.md) | 130 | `result-track:1c1e347ce7d6e6528eec15025cdb5db90f58af1303dfe3b5c95f56f898ceb050` |
| 15 | `lemma` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/comp-id--07bd1ef9ec1f329bccfb53d0.md) | 137 | `result-track:07bd1ef9ec1f329bccfb53d0b3d9e6bfb465df46ff6038467a096c32aa3a2a1e` |
| 16 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/assoc--8bfce299814d34f557dc485d.md) | 144 | `result-track:8bfce299814d34f557dc485d43637a2d9bd1b91b6d355397936b328966aaaa73` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/instance--0aa351eca55ffec855fefb94.md) | 154 | `declaration-track:0aa351eca55ffec855fefb9400f0e7c5503c30a8a079b1dd098a44017edc4094` |
| 18 | `def` | [orderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/orderhom--3824cc8ee7160e22999e1801.md) | 162 | `declaration-track:3824cc8ee7160e22999e18018c88c687ff2994ed5866bb647cdc318f01e473a0` |
| 19 | `abbrev` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/functormap--590b172c90924ad9230c7191.md) | 166 | `declaration-track:590b172c90924ad9230c71918c33aeeb6ce8973feb53a8fe42a5721a37faf965` |
| 20 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/functor--74a3cec2b749ba137f2853a6.md) | 178 | `declaration-track:74a3cec2b749ba137f2853a67407fccce151fa3450818f139ff99ec9b55a0591` |
| 21 | `lemma` | [functor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/functor-id--625a6d705095d0414ee68086.md) | 191 | `result-track:625a6d705095d0414ee68086b9eabac275be19e8b6d140e2aacce7a63ddf6a9a` |
| 22 | `lemma` | [functor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/functor-comp--f22cdfe25eddc9b70797e66f.md) | 197 | `result-track:f22cdfe25eddc9b70797e66f2bab8b4d19fb3bbe5819047e58cccf8e5a40e34d` |
| 23 | `def` | [SimplicialNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant353e84e7245e4cf868101ef50e38ee1c224aea60382dad9ef1c8324a1d8cd8e4.lean/declarations/simplicialnerve--1dca65b802c8d1c506ae3cc1.md) | 212 | `declaration-track:1dca65b802c8d1c506ae3cc1362cdabd7bb6ce4bb065d85364c660f765b40c95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

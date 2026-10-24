# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SimplicialNerve.Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "075b1d5136b705890c4f6276a12cc851927476e1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `075b1d5136b705890c4f6276a12cc851927476e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialCategory.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Nerve` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SimplicialThickening](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/simplicialthickening--700756f97ac7d91ffbb9b39a.md) | 58 | `declaration-track:700756f97ac7d91ffbb9b39ab76758c6bf9798c85bd065cfd94feddfd0c3c210` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--ba3ee04245dfc058c0ac30a8.md) | 60 | `declaration-track:ba3ee04245dfc058c0ac30a81e255aea590a44a33ee2fe1397f8e10bc6e0d2c6` |
| 3 | `structure` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/path--194bd9adec1ddb01d87e3082.md) | 70 | `declaration-track:194bd9adec1ddb01d87e30828e8c53b13b4e247de6a3c33363154c73b40e3375` |
| 4 | `lemma` | [Path.le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/path-le--75ef6655ae97a85e05389401.md) | 78 | `result-track:75ef6655ae97a85e053894018ef43c7ff1bd96907d7236d7dcc4bee9e4645fcf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--80db0b385e7bcd4575e93c67.md) | 81 | `declaration-track:80db0b385e7bcd4575e93c67acac10b842ce61ebffab2eff61a4d5d31400c764` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--ea43df8962891c53f82ab5be.md) | 85 | `declaration-track:ea43df8962891c53f82ab5be4c84d270f4d32f0b4c401840fb4672efc14138a1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--a69c4554b448e301d342859f.md) | 99 | `declaration-track:a69c4554b448e301d342859f5baa2c029bb609fc3126736d210691f34537be70` |
| 8 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/hom-ext--bbaaedd75e748e058bbdd893.md) | 103 | `result-track:bbaaedd75e748e058bbdd8931238f4228c9aeb323c9223640b21e78b8e40c3c0` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--970f67545be0f414da259494.md) | 109 | `declaration-track:970f67545be0f414da2594943b8f13d3d170cf3b2fdcb04acc7ee2b52356c1e6` |
| 10 | `def` | [compFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/compfunctor--4e7d0f7ae82619fbcc8bae7b.md) | 117 | `declaration-track:4e7d0f7ae82619fbcc8bae7b933b5bb76ac99f1e1073febe283974e8d23183f5` |
| 11 | `abbrev` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/hom--0a99c28979992f4408b5539d.md) | 127 | `declaration-track:0a99c28979992f4408b5539dc98397237290dc57b40e72c8c52530ee71b0ab7b` |
| 12 | `abbrev` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/id--59553df2b586fba1229c3c49.md) | 130 | `declaration-track:59553df2b586fba1229c3c4998e8540503fa56128233859fb11e4f40ff23c8df` |
| 13 | `abbrev` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/comp--e42f349a6806e609fd771dd4.md) | 134 | `declaration-track:e42f349a6806e609fd771dd4058e3a52442af9955ddef1714ca63467b06a5899` |
| 14 | `lemma` | [id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/id-comp--935774c63e279d12d51d6441.md) | 138 | `result-track:935774c63e279d12d51d6441c857e1678d109bae79654a8f31480dd317bab65f` |
| 15 | `lemma` | [comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/comp-id--de997b9d43a616375891bfb6.md) | 145 | `result-track:de997b9d43a616375891bfb607d34ab14ecbc90787100fa61185bc08c66331a9` |
| 16 | `lemma` | [assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/assoc--0e17a44fc771a33fea88921d.md) | 152 | `result-track:0e17a44fc771a33fea88921dd2a17ad82740bd6c60b0d456f0ebabbcda7b96f7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/instance--6ef6a27c4cdf18af7b833f94.md) | 162 | `declaration-track:6ef6a27c4cdf18af7b833f94b7244b692891ca86727777a96e9410bc8c20f7d2` |
| 18 | `def` | [orderHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/orderhom--fc41107505cdcd7a14e6978b.md) | 170 | `declaration-track:fc41107505cdcd7a14e6978bafe34390bcb4e743a4b2d9e8597dab0ecab4ed78` |
| 19 | `abbrev` | [functorMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/functormap--2a80770093c2387cda7f981f.md) | 174 | `declaration-track:2a80770093c2387cda7f981f1d8cd9bbd78a11ca70da91a20439e509f9edf795` |
| 20 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/functor--f981a50a53c40fe97845822f.md) | 186 | `declaration-track:f981a50a53c40fe97845822f969c8540a4fe25679439dc2416dd12646bb03e7c` |
| 21 | `lemma` | [functor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/functor-id--a1509b907475b9abb51ab37e.md) | 199 | `result-track:a1509b907475b9abb51ab37e18e965657da23b6bb6a2f3e304ab0824e433b590` |
| 22 | `lemma` | [functor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/functor-comp--d6fb8090a8db58b81e350949.md) | 205 | `result-track:d6fb8090a8db58b81e350949a1e0455510311a65d91f266bdb087b5ecf4ffbdf` |
| 23 | `def` | [SimplicialNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialNerve/Variant48bd383c4e52773be7bd5e3658df1c8006a2b7837b0df73b7ba055b1c367ea82.lean/declarations/simplicialnerve--275fcf55d8f47fd2ccef5833.md) | 220 | `declaration-track:275fcf55d8f47fd2ccef5833e7c65f3b43427951d8598158c3d04c82321f3ef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

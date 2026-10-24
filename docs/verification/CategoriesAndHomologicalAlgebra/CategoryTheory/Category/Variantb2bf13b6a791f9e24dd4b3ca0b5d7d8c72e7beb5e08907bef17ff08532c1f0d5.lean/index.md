# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Category.Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "751f9abc3b40499b88b5eb0d51d8006dc535d9f9",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `751f9abc3b40499b88b5eb0d51d8006dc535d9f9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FullSubcategory` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.Equalizers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.LocallySmall` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Indization.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Presheaf` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ind](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind--9213fdb64f385473459b95ff.md) | 66 | `declaration-track:9213fdb64f385473459b95ff049721bc436d93f43c78534a653c12978903fb66` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--3f7188f579d45e4475bc1c87.md) | 69 | `declaration-track:3f7188f579d45e4475bc1c87eb95f67272a670cae531f2da208b4f18ac843c7e` |
| 3 | `def` | [Ind.equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-equivalence--4fda5a983c457a7b46385cb9.md) | 76 | `declaration-track:4fda5a983c457a7b46385cb9cdf065ffe1309f96f1ab997dd1ed5b720d8f92ca` |
| 4 | `def` | [Ind.inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-inclusion--52115631d1e3d24cad2e2a05.md) | 82 | `declaration-track:52115631d1e3d24cad2e2a050e7bf04d5b50015ca4b95d41b9c99e27728635b5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--81ec33619e6fd19217167999.md) | 85 | `declaration-track:81ec33619e6fd19217167999a691b07ac80e87a4a6b1096370aa8845d8cfaf16` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--3ea12bdfc9d9aac6bfe9940d.md) | 88 | `declaration-track:3ea12bdfc9d9aac6bfe9940d9ee6db5c5fb490a621e1cae86484a2e22c66e14a` |
| 7 | `def` | [Ind.inclusion.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-inclusion-fullyfaithful--cfb020797eb59476b3e02f02.md) | 92 | `declaration-track:cfb020797eb59476b3e02f02ab41109187cf59842f445b477aaf405b0d9c6179` |
| 8 | `def` | [Ind.yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-yoneda--3df72bebf92fc5ce8b106814.md) | 96 | `declaration-track:3df72bebf92fc5ce8b10681471ca572908fb0fbcefec8706b2f410874ec6580e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--45a958deebe4e6f6c3f08965.md) | 99 | `declaration-track:45a958deebe4e6f6c3f08965698a1218fc57bdd4b2d2d723848ca1c504c3367c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--5e4ef840391b01f00f74cd0a.md) | 103 | `declaration-track:5e4ef840391b01f00f74cd0a34c48a3eb916e0f5791b9a9a5aedc3b9b84d79ed` |
| 11 | `def` | [Ind.yoneda.fullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-yoneda-fullyfaithful--703ebc10cbdfa58d374741c0.md) | 108 | `declaration-track:703ebc10cbdfa58d374741c096e2787b64a58538eef66a8db7501e500aff61a9` |
| 12 | `def` | [Ind.yonedaCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-yonedacompinclusion--e5e6e343f90332f57a2e54ad.md) | 112 | `declaration-track:e5e6e343f90332f57a2e54ad6807043b5db915cb6a7480615c73d768d08c4afe` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--51c5f9c9561b5170311ed7dd.md) | 116 | `declaration-track:51c5f9c9561b5170311ed7dd0f7a6761452150fc48adec91e0ecb4774aa58f4c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--c5b01cabbb8b01e6a12f7754.md) | 124 | `declaration-track:c5b01cabbb8b01e6a12f775418b295bb4d9f2b53d94f602e8a384aced1ba1b36` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--123a53a540594e98923cf965.md) | 128 | `declaration-track:123a53a540594e98923cf96544af0e108fc8ce3e525e6c09d7fbdb1345bdb39e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--fe13bc88cc00a7c1a5245bda.md) | 136 | `declaration-track:fe13bc88cc00a7c1a5245bda619eb306499290fb471c1083e6b7127de9fc03a9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--da8fa709ecad71232b1ee038.md) | 140 | `declaration-track:da8fa709ecad71232b1ee038bf67d95fa3001e41e5f26a0aad894eb6bdc42e2c` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--56df317e3137b01474575939.md) | 150 | `declaration-track:56df317e3137b014745759391839249567ca007dc0c33845b3bf3d11dd4b2897` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--aa55901b368e0e3d2f1ef9d8.md) | 154 | `declaration-track:aa55901b368e0e3d2f1ef9d8233d8be9c3bb094420d43fceb0505b133da5fe92` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--de517474617f2c6cb1d1539a.md) | 159 | `declaration-track:de517474617f2c6cb1d1539ab569f69bd1880be829a12ff2e9b5e9e61cc28710` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--36f9d95ebd7e743e1235364b.md) | 162 | `declaration-track:36f9d95ebd7e743e1235364ba546997369a1f38944b86676367804f8c608ff31` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--6659be3e36423be0462526aa.md) | 165 | `declaration-track:6659be3e36423be0462526aa24112fa9c763f60c9d401a0114ed286d69e77461` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--8df17fee5ae377d63d5b47cf.md) | 168 | `declaration-track:8df17fee5ae377d63d5b47cf992fb877e53fe2336581c50ca7d99f593b8109bd` |
| 24 | `theorem` | [Ind.isIndObject_inclusion_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-isindobject-inclusion-obj--187dc396eb727431a29a31da.md) | 173 | `result-track:187dc396eb727431a29a31da8ca15b22c13e106f975b331e87379817685f20e5` |
| 25 | `def` | [Ind.presentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-presentation--992499230d0db116fd7be232.md) | 177 | `declaration-track:992499230d0db116fd7be232a8a2597ccab888c3a0538426755d596013929803` |
| 26 | `def` | [Ind.colimitPresentationCompYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-colimitpresentationcompyoneda--510afbeca7e8e20688834c6f.md) | 181 | `declaration-track:510afbeca7e8e20688834c6feaf01e7fca9c1e5183e2e99f6ce40e08bd998d02` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--5b8b0f670eb50a08cc8c65ca.md) | 191 | `declaration-track:5b8b0f670eb50a08cc8c65ca7ad967087157125c2c17839ca32d6a4e123d2fd7` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--e5ee15255419313fae639a5f.md) | 199 | `declaration-track:e5ee15255419313fae639a5fa7c452e8d36ee99bac35ba8d25299e2ddb961f39` |
| 29 | `def` | [Ind.lim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-lim--7e2c37af3b4ea0b36c29b6eb.md) | 204 | `declaration-track:7e2c37af3b4ea0b36c29b6ebb191333bbafbd665613841592d163d9b59a49ae2` |
| 30 | `def` | [Ind.limCompInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-limcompinclusion--e4398a2167ff832716acdba5.md) | 209 | `declaration-track:e4398a2167ff832716acdba5ae856a78c9fdec08a2a6ad83348059d83da66c8b` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--0b1038a2b9aaabd8b3f97e1c.md) | 223 | `declaration-track:0b1038a2b9aaabd8b3f97e1c22354dcc9019f64c00528b45865ab3305ec4003f` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--db29e4c8314ef906e02f9fa5.md) | 230 | `declaration-track:db29e4c8314ef906e02f9fa5dbb20802e19953143527da1dbb49d3e43eb0c3cd` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--ed0e6796f316039ef2554864.md) | 235 | `declaration-track:ed0e6796f316039ef2554864d553db4828051b7b2aebc5b56b728fa3797019a3` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--57252137aa7c5a0b26ea7845.md) | 254 | `declaration-track:57252137aa7c5a0b26ea7845a6bd7b21fb5d0e67e8d26d705f353ce6ac524b24` |
| 35 | `def` | [IndParallelPairPresentation.parallelPairIsoParallelPairCompIndYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/indparallelpairpresentation-parallelpairisoparallelpaircompindyoneda--61fb236a114450f13900d910.md) | 261 | `declaration-track:61fb236a114450f13900d9108e1387fa8fedb08432005200c116d991ba2ff4b5` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--6b7eff677dee3a0d809835c6.md) | 270 | `declaration-track:6b7eff677dee3a0d809835c6ecd9af9c199350ef9b86b15d02925c4703cb481c` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/instance--ae134c2d6d7065b58b98a009.md) | 278 | `declaration-track:ae134c2d6d7065b58b98a0096bcb94e18c5985419e12a618d4c2ba1d1affa5db` |
| 38 | `theorem` | [Ind.exists_nonempty_arrow_mk_iso_ind_lim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-exists-nonempty-arrow-mk-iso-ind-lim--b3a3be0cbbeb83a03625fa6a.md) | 283 | `result-track:b3a3be0cbbeb83a03625fa6ac6df9ba7f364660dc30204e7ac0c2b86c501c2fb` |
| 39 | `def` | [Ind.leftExactFunctorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Category/Variantb2bf13b6a791f9e24dd4b3ca0b5d7d8c72e7beb5e08907bef17ff08532c1f0d5.lean/declarations/ind-leftexactfunctorequivalence--73ca999d5032f057d1f3fbf9.md) | 300 | `declaration-track:73ca999d5032f057d1f3fbf91956caef7d66571af168f16ce63e27389e3eaaee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

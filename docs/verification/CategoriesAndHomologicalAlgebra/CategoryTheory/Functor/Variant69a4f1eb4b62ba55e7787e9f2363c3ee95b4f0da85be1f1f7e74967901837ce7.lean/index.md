# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functor.Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "169b5f183f272966a185cc2a98f70309666c0d49",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `169b5f183f272966a185cc2a98f70309666c0d49`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LaxMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/laxmonoidalfunctor--854b2360b56bbfe7be8f956b.md) | 67 | `declaration-track:854b2360b56bbfe7be8f956b6e97e4a2e9790cddb76f33a9efcefea70fca91cb` |
| 2 | `theorem` | [LaxMonoidalFunctor.left_unitality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/laxmonoidalfunctor-left-unitality-inv--e1a24b29ee33970ea6cfef83.md) | 114 | `result-track:e1a24b29ee33970ea6cfef839582e4017d6171fb256f5c4fdfe6858455cd7187` |
| 3 | `theorem` | [LaxMonoidalFunctor.right_unitality_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/laxmonoidalfunctor-right-unitality-inv--edfed29f7d2a252307469003.md) | 122 | `result-track:edfed29f7d2a252307469003b44e444214ebedd0ce5074c60d00d87456bec73b` |
| 4 | `theorem` | [LaxMonoidalFunctor.associativity_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/laxmonoidalfunctor-associativity-inv--2842f6dfa3d81789e27fc114.md) | 130 | `result-track:2842f6dfa3d81789e27fc114bac2b38c80f7d29cd2731e62f30aa9a320e42896` |
| 5 | `structure` | [MonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/monoidalfunctor--ebdb7ce646f0a991c319be7b.md) | 144 | `declaration-track:ebdb7ce646f0a991c319be7b8a1ccb3d10295745131d9e50d360cc9c05316e45` |
| 6 | `def` | [MonoidalFunctor.εIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/monoidalfunctor-iso--211eec1fa3e418b53bab9383.md) | 158 | `declaration-track:211eec1fa3e418b53bab938306605c5ca146586b29324ba5a9893d44dde46801` |
| 7 | `def` | [MonoidalFunctor.μIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/monoidalfunctor-iso--a04a400f394299b60c3966dd.md) | 165 | `declaration-track:a04a400f394299b60c3966dd34d6e471b85d58001ec9cfb59ffbe96e3ce9bf69` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/id--d8c7a4e33074f77bda1fe4db.md) | 180 | `declaration-track:d8c7a4e33074f77bda1fe4db5253171bd27e70da2e3b8ebfbe4ca2c8ead2be1f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/instance--3328b09fe3e699386ac50cbc.md) | 186 | `declaration-track:3328b09fe3e699386ac50cbc2a92563da9615fd0777189444162b34789578ac2` |
| 10 | `theorem` | [map_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/map-tensor--794894ad2ce17509d02f1efc.md) | 201 | `result-track:794894ad2ce17509d02f1efca2527549903a20f013a29976d374d67e48cd6852` |
| 11 | `theorem` | [map_leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/map-leftunitor--f2ed45aec1f24fbb17b5d4f5.md) | 205 | `result-track:f2ed45aec1f24fbb17b5d4f52127f90d5a31abd9bae513a00d9a3d37bfbb54d2` |
| 12 | `theorem` | [map_rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/map-rightunitor--d896972b0994fe866b9bafd0.md) | 214 | `result-track:d896972b0994fe866b9bafd01137a5499128cacdadf8a3348b7b857bd3875991` |
| 13 | `def` | [μNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/natiso--cda88702108dfb21913734ab.md) | 224 | `declaration-track:cda88702108dfb21913734ab96cd72027e85e712083b142da25064335c0eba86` |
| 14 | `theorem` | [μIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/iso-hom--af8ea4b313dfa3104361b345.md) | 236 | `result-track:af8ea4b313dfa3104361b3459515bedd1433ad5ac28fc589b9a7a262c2d4fc91` |
| 15 | `theorem` | [μ_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/inv-hom-id--dad1ccd5b93fa5bbeff4fd56.md) | 242 | `result-track:dad1ccd5b93fa5bbeff4fd56063481749ed5d61f02576ba4c2b596b2ab799198` |
| 16 | `theorem` | [μ_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/hom-inv-id--f7b035827364515bce25afed.md) | 247 | `result-track:f7b035827364515bce25afed7fda97c164fe3a9a47225b431bf56a115368715b` |
| 17 | `theorem` | [εIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/iso-hom--607e68cf727130e1e5d8fee3.md) | 252 | `result-track:607e68cf727130e1e5d8fee3010d73947bbeb939165a6e66e197c56ac5ad466a` |
| 18 | `theorem` | [ε_inv_hom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/inv-hom-id--97ff20663f935ffb69948f99.md) | 258 | `result-track:97ff20663f935ffb69948f99b38bec0e21008dfd7725f8297dc9b2c46d273884` |
| 19 | `theorem` | [ε_hom_inv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/hom-inv-id--c44a88f581955aa93e75390c.md) | 263 | `result-track:c44a88f581955aa93e75390c7dd5c3896040e31b9b5a5f080c927eae6491d1fa` |
| 20 | `def` | [commTensorLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/commtensorleft--ab1da15169d1aee3794060c3.md) | 269 | `declaration-track:ab1da15169d1aee3794060c38e56e96991aae2a86c44884df96008db1a79a2b2` |
| 21 | `def` | [commTensorRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/commtensorright--4ffa52fd6c2b50130d43f4f9.md) | 278 | `declaration-track:4ffa52fd6c2b50130d43f4f94b43445ca3b8e5908babf1f6bebcbc6b4e8ef056` |
| 22 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/id--adb447bc9ff71c0592d8af5b.md) | 293 | `declaration-track:adb447bc9ff71c0592d8af5b856ab18c6e31bea47a1a44bd0ccbbd0adddc8ff8` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/instance--1f63ee38a394329097a929ed.md) | 299 | `declaration-track:1f63ee38a394329097a929edef0a02d5e6c436a766637b058ce82981835ebfa7` |
| 24 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/comp--ab40a854a88661c7f417e537.md) | 319 | `declaration-track:ab40a854a88661c7f417e5373a3d02fac8e7d17fe8bf8773a5c3b0f76148ff1c` |
| 25 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--6f8f54190611e765a67ab5c5.md) | 368 | `declaration-track:6f8f54190611e765a67ab5c5483cadefd2ef968105ebdea354f5456f54609772` |
| 26 | `def` | [diag](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/diag--1f8a833b074a04712cfdc5ea.md) | 382 | `declaration-track:1f8a833b074a04712cfdc5ea4426ca62b44dddbf9f48b8f744b8f5c4154b7ddf` |
| 27 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--0168f4f0cf4631f1d4dadf3c.md) | 396 | `declaration-track:0168f4f0cf4631f1d4dadf3c8dcefe38fb84a4ae0e03d591816506c0fb051dd6` |
| 28 | `theorem` | [prod'_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod-tofunctor--dbaf6438ea52c621db5810c7.md) | 401 | `result-track:dbaf6438ea52c621db5810c70705f7cad5559c85ae31e7ac558d618be4966c50` |
| 29 | `theorem` | [prod'_ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--9ac8cd52af3fb2ef6ed559d9.md) | 406 | `result-track:9ac8cd52af3fb2ef6ed559d964aae5d0f71fe3c6167f71c81f2ff3bb641e9403` |
| 30 | `theorem` | [prod'_μ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--49d12e9899d14a9d2ee389bb.md) | 412 | `result-track:49d12e9899d14a9d2ee389bb61f129af56f3e85b16795d01d01139341e0b1773` |
| 31 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/comp--36942bbaa7076b6a1958b683.md) | 425 | `declaration-track:36942bbaa7076b6a1958b683f34b9ff2de72c646a27420c56473b77fd418c117` |
| 32 | `def` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--8cfa5302d254d28d14cc9062.md) | 454 | `declaration-track:8cfa5302d254d28d14cc9062ae347e75e775d72e733320ab8467a5464f6211dd` |
| 33 | `def` | [prod'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod--e1b326129c9e36ad56640ae2.md) | 470 | `declaration-track:e1b326129c9e36ad56640ae28c7043fd7b31ab959f8a8342403b0b02ed3bd501` |
| 34 | `theorem` | [prod'_toLaxMonoidalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/prod-tolaxmonoidalfunctor--c418750f0e1416f3d312b4b1.md) | 475 | `result-track:c418750f0e1416f3d312b4b1a62074fa82610da9397c83d04467521d4f318cbb` |
| 35 | `def` | [monoidalAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/monoidaladjoint--7f6b631b0d0b9e4153f52831.md) | 486 | `declaration-track:7f6b631b0d0b9e4153f5283135f72529817d08cbb2e984dd77b2636c96441e2a` |
| 36 | `def` | [monoidalInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant69a4f1eb4b62ba55e7787e9f2363c3ee95b4f0da85be1f1f7e74967901837ce7.lean/declarations/monoidalinverse--2b136011f889886736270695.md) | 527 | `declaration-track:2b136011f8898867362706950402ac75bb2e1d0b69084944456afadcc6bd010e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

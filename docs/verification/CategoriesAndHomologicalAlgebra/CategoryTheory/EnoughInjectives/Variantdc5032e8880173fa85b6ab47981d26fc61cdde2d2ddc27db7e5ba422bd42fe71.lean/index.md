# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnoughInjectives.Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7609ab9a835f25876c9d87c7209dfcde032efe09",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7609ab9a835f25876c9d87c7209dfcde032efe09`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.CommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.ColimCoyoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Monomorphisms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Monomorphisms` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.LiftingProperties` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.SmallObject.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.HasCardinalLT` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.TransfiniteIteration` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/generatingmonomorphisms--ea8ae91f01070c23777d2882.md) | 85 | `declaration-track:ea8ae91f01070c23777d28823e72bfdf209d297c2ad85fb05f6a3dd467a61aca` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--6b3c14a426f2adabf9a0e19e.md) | 88 | `declaration-track:6b3c14a426f2adabf9a0e19eb7a6e32d043cb050235e2f8baedc24141540005c` |
| 3 | `lemma` | [generatingMonomorphisms_le_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/generatingmonomorphisms-le-monomorphisms--5641a44cf1ad8815b3639fc2.md) | 93 | `result-track:5641a44cf1ad8815b3639fc2f072d586e1165dd25ba3a2b8849620e2093fc6b4` |
| 4 | `lemma` | [isomorphisms_le_pushouts_generatingMonomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/isomorphisms-le-pushouts-generatingmonomorphisms--079bb329a2e0c0cc2e9a6b0f.md) | 100 | `result-track:079bb329a2e0c0cc2e9a6b0f1afb9666aff81b54adf0cb35eb4ed7ff489bf689` |
| 5 | `lemma` | [exists_pushouts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/exists-pushouts--629a77df329d425cf30b3ebc.md) | 117 | `result-track:629a77df329d425cf30b3ebca05a3577ccf162ce9f0bed439ec746fa2c937f83` |
| 6 | `lemma` | [exists_larger_subobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/exists-larger-subobject--4b1c6f90beaa7998ba439135.md) | 142 | `result-track:4b1c6f90beaa7998ba439135cb78765398b0f9f6f6809406f7f58ed0ddb2a376` |
| 7 | `def` | [largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/largersubobject--186bcee45e59d1f1a40641fb.md) | 164 | `declaration-track:186bcee45e59d1f1a40641fb6fa32c894465e5e1e13665d29eecea653c0bd91b` |
| 8 | `lemma` | [largerSubobject_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/largersubobject-top--575de664c6b01d44249b3310.md) | 169 | `result-track:575de664c6b01d44249b3310b7c36dad69d53eac7b0f408c3ba40aea5bdd2de0` |
| 9 | `lemma` | [lt_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/lt-largersubobject--2f5a08278bff7b020f7e35ce.md) | 171 | `result-track:2f5a08278bff7b020f7e35ce604894a4288354be6d174e654d67c5a0b7c7fcd1` |
| 10 | `lemma` | [le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/le-largersubobject--8bb88732427c3e6844b79eb6.md) | 177 | `result-track:8bb88732427c3e6844b79eb65451b4972b3f2181ccd0df0a72814865a98015ec` |
| 11 | `lemma` | [pushouts_ofLE_le_largerSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/pushouts-ofle-le-largersubobject--d14e6c26a8c3fe5cb15cc716.md) | 184 | `result-track:d14e6c26a8c3fe5cb15cc716f6d8ed75704374967e29010084431188204ec0e6` |
| 12 | `lemma` | [top_mem_range](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/top-mem-range--483498d81a9d9a388df9a50c.md) | 201 | `result-track:483498d81a9d9a388df9a50cc02ba8e580ec6696f532fee14e46987552613a23` |
| 13 | `lemma` | [exists_ordinal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/exists-ordinal--7210f00bc5de31ae615e004d.md) | 207 | `result-track:7210f00bc5de31ae615e004d000e0c20cec9b072799c551ad185caa0e522804c` |
| 14 | `def` | [functorToMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/functortomonoover--e56a22130a48d96bbc78cf2c.md) | 226 | `declaration-track:e56a22130a48d96bbc78cf2ccc793bb94b31e90938aaae4456add067032231e5` |
| 15 | `abbrev` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/functor--5a8a6e12a19c0b7639eb770c.md) | 232 | `declaration-track:5a8a6e12a19c0b7639eb770cab91eeb92b7058e2fbd1340bbd8e4ce46d7bdecd` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--8a59f706d0caf7cd39621f21.md) | 235 | `declaration-track:8a59f706d0caf7cd39621f21c41eebc98483981086576b8c0d6aecd152a6d530` |
| 17 | `def` | [transfiniteCompositionOfShapeMapFromBot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/transfinitecompositionofshapemapfrombot--43388a7803d39e9de4ff8bad.md) | 250 | `declaration-track:43388a7803d39e9de4ff8bad0e60f2a38d8d32453bbec11350874d343bdb066e` |
| 18 | `def` | [transfiniteCompositionOfShapeOfEqTop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/transfinitecompositionofshapeofeqtop--ae72f23207a5b77654d9efd5.md) | 274 | `declaration-track:ae72f23207a5b77654d9efd50688e30662b594ebe6f4a4a15cb44163cfc78dfe` |
| 19 | `lemma` | [exists_transfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/exists-transfinitecompositionofshape--d9f8476fb57160b87981cb13.md) | 293 | `result-track:d9f8476fb57160b87981cb13d05e6ede3148cb7fae158712dc0d8676ffdcd36b` |
| 20 | `lemma` | [generatingMonomorphisms_rlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/generatingmonomorphisms-rlp--c4d1dd44dfc81611dc580b34.md) | 308 | `result-track:c4d1dd44dfc81611dc580b346ee5276b269f62b05154e6293ceaaa5fc4592d7a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--9d90ff514bfce111efa6fe4a.md) | 321 | `declaration-track:9d90ff514bfce111efa6fe4a25f90855f543de11b562b325219acc2ad8adf4a1` |
| 22 | `lemma` | [llp_rlp_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/llp-rlp-monomorphisms--e4f36d0f5d22aebda8247eb7.md) | 340 | `result-track:e4f36d0f5d22aebda8247eb7e4cca67248c660efad1d0a9f2f734d6f438f8da5` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--5b296711150283d4898c3198.md) | 352 | `declaration-track:5b296711150283d4898c31983c2c261acb83bd60dc99dd490259cebbb102b863` |
| 24 | `abbrev` | [monoMapFactorizationDataRlp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/monomapfactorizationdatarlp--a520bb9dc6f9c2b5df8bcdc3.md) | 361 | `declaration-track:a520bb9dc6f9c2b5df8bcdc39d35cd67313c4816fb7ce99824a2ec587cfc81db` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--31cec40055d7f214fb5f14ff.md) | 365 | `declaration-track:31cec40055d7f214fb5f14ff32da82ed865e2d3e52f69dd7044e560518f8862c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/instance--06ba4d28659710c1d84ff787.md) | 369 | `declaration-track:06ba4d28659710c1d84ff7873547b0ce3540ebbc97ec0d5c5fa88c33114bbcbe` |
| 27 | `instance` | [enoughInjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantdc5032e8880173fa85b6ab47981d26fc61cdde2d2ddc27db7e5ba422bd42fe71.lean/declarations/enoughinjectives--7bf83d652e47eb260cf786f4.md) | 376 | `declaration-track:7bf83d652e47eb260cf786f4ce98fd75ecbcc31c3c99cb7f3d85802690e44576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

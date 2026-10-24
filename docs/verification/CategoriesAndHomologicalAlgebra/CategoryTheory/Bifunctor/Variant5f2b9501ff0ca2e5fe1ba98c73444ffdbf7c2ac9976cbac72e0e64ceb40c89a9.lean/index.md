# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7755ae9cca22ea4fa105bee9c72857d4b6df9f95",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7755ae9cca22ea4fa105bee9c72857d4b6df9f95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Prod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/isinvertedby--24684b1d98e6b929a38bdfbc.md) | 42 | `declaration-track:24684b1d98e6b929a38bdfbc9af800ddc543954b72d8e619c57e151321b2c039` |
| 2 | `class` | [Lifting₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting--29c209965e9d052690c91957.md) | 57 | `declaration-track:29c209965e9d052690c91957f34300e0e651d3fb5e3f2e94784e576a4931c5a9` |
| 3 | `def` | [Lifting₂.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-iso--f82c515486ba4a46cbe58bf1.md) | 68 | `declaration-track:f82c515486ba4a46cbe58bf1bf9f4fb131a996fb96acabec8ee30e78a8397479` |
| 4 | `def` | [Lifting₂.fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-fst--5a9601de4c0402997ce0d7f5.md) | 73 | `declaration-track:5a9601de4c0402997ce0d7f56f4e96e0c51fb3ab7135d8e0209d83b983f03a06` |
| 5 | `instance` | [Lifting₂.flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-flip--ebeebd1f76d1f39fe73019c8.md) | 77 | `declaration-track:ebeebd1f76d1f39fe73019c83e3010b1e3c348ec205b50a7400bd12a1fea42ec` |
| 6 | `def` | [Lifting₂.snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-snd--41ba16e6890b4c72ced18b93.md) | 82 | `declaration-track:41ba16e6890b4c72ced18b93bdfa298490a2476c43551da357ab42d42b25f825` |
| 7 | `instance` | [Lifting₂.uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-uncurry--2cb61667e839d1b128d33bee.md) | 86 | `declaration-track:2cb61667e839d1b128d33beefd185868a17c9033e82459e8362ab24373794a3a` |
| 8 | `def` | [lift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift--cabc0e130a8ed25309848172.md) | 104 | `declaration-track:cabc0e130a8ed2530984817223fbcd9a82a66f9eefdb4cf913cb84bc3a8441c3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/instance--c4729cee112ab5a0859e51e8.md) | 107 | `declaration-track:c4729cee112ab5a0859e51e851ce1f3a934f06867ff667dc58beb9749deab44e` |
| 10 | `instance` | [Lifting₂.liftingLift₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-liftinglift--ea2352281684ec771958c64d.md) | 112 | `declaration-track:ea2352281684ec771958c64d1ee97555fab97e0f14bde34ceb9cfa796db9341f` |
| 11 | `instance` | [Lifting₂.liftingLift₂Flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lifting-liftinglift-flip--6965f1818b30c1c020893b2a.md) | 116 | `declaration-track:6965f1818b30c1c020893b2ae203e570c0916ff1f9ad78b43ec9029fd874ca42` |
| 12 | `lemma` | [lift₂_iso_hom_app_app₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift-iso-hom-app-app--d438bc587f17719ad532a276.md) | 120 | `result-track:d438bc587f17719ad532a276b1fa9482529a22d46f2fcf58b24f8bdb62937f4b` |
| 13 | `lemma` | [lift₂_iso_hom_app_app₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift-iso-hom-app-app--0c8c2b74ccbfd39093f27cdd.md) | 125 | `result-track:0c8c2b74ccbfd39093f27cdd9ed4433d91a3f174074e9ebfbdcf0dc5c8f32514` |
| 14 | `def` | [lift₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift-nattrans--e1ae0ce58526ca9850fead45.md) | 144 | `declaration-track:e1ae0ce58526ca9850fead45efd557db9ed60a3da76e85ffc05387523700ae50` |
| 15 | `theorem` | [lift₂NatTrans_app_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift-nattrans-app-app--2bb8692cec92fb53731096f9.md) | 150 | `result-track:2bb8692cec92fb53731096f913f6562c3dc7c74b61f68a49750dd42687c244bd` |
| 16 | `theorem` | [natTrans₂_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/nattrans-ext--60096f9ae84f279c568e6a86.md) | 160 | `result-track:60096f9ae84f279c568e6a86eb89375e4e0c630f4bddfb9b18724e59333d9212` |
| 17 | `def` | [lift₂NatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant5f2b9501ff0ca2e5fe1ba98c73444ffdbf7c2ac9976cbac72e0e64ceb40c89a9.lean/declarations/lift-natiso--826937fa92287cc85c410595.md) | 168 | `declaration-track:826937fa92287cc85c410595ea6b594df82fea6bee07095a2b57aff31ec7ac59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

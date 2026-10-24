# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorExtension.Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6230d4fa3b3ab1aef9a43c384203c5cfcf04a32c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6230d4fa3b3ab1aef9a43c384203c5cfcf04a32c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natTrans_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/nattrans-eq--15864de91f23547a259cf30d.md) | 33 | `result-track:15864de91f23547a259cf30d81c07efef8e967f2256057287f2efa64af1a65f8` |
| 2 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/obj--82fe0bc67bc5a09e22b65041.md) | 45 | `declaration-track:82fe0bc67bc5a09e22b65041cb285a71871bcf2e4de706786f9bec124064d23e` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/map--ce12da023c0a8f45d71cc9c7.md) | 54 | `declaration-track:ce12da023c0a8f45d71cc9c74eda0c35b30c50b9cd0760fe958b24746c7ad67c` |
| 4 | `def` | [functorExtension₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension--eb22361ac855ff9f224ca565.md) | 80 | `declaration-track:eb22361ac855ff9f224ca5653d3be539ad4a2b2e3e5a88d16cde7aab943a5acc` |
| 5 | `def` | [functorExtension₁CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--d4c59e16b5a6d0e9be3e38bb.md) | 99 | `declaration-track:d4c59e16b5a6d0e9be3e38bb87c8aacf5f767b7e68df030ed5b649977f892cc0` |
| 6 | `def` | [KaroubiUniversal₁.counitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal-counitiso--c504d869c9bcf99a75daf1a5.md) | 110 | `declaration-track:c504d869c9bcf99a75daf1a51a1cf90fa494e5ff4796d2a400e14e13f0d282a6` |
| 7 | `def` | [karoubiUniversal₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal--c99567900c82df9156af3ae5.md) | 150 | `declaration-track:c99567900c82df9156af3ae5de9bfa65f86caf2e6bf278f39eb800549291d9e5` |
| 8 | `def` | [functorExtension₁Comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension-comp--312a5a519093befc95c2b201.md) | 162 | `declaration-track:312a5a519093befc95c2b201485eccbc722b53e26603dbbe14f857c94aa8fd30` |
| 9 | `def` | [functorExtension₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension--f40728a8e93e9baa9cf0ce4c.md) | 169 | `declaration-track:f40728a8e93e9baa9cf0ce4c96c2e651d768ce94666fab132c7f1ed3b4720f43` |
| 10 | `def` | [functorExtension₂CompWhiskeringLeftToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension-compwhiskeringlefttokaroubiiso--670c0b91c9076b646238d93b.md) | 175 | `declaration-track:670c0b91c9076b646238d93bf0aa856461d2587f967cd37d3698cdd892fb7487` |
| 11 | `def` | [karoubiUniversal₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal--70cb5bc36a2476a5f791c44a.md) | 193 | `declaration-track:70cb5bc36a2476a5f791c44a16920972f88c00140d01f2c862ee243863ad6aa8` |
| 12 | `theorem` | [karoubiUniversal₂_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal-functor-eq--9b75a63c460df406861c6cb1.md) | 196 | `result-track:9b75a63c460df406861c6cb112e72706910a429f2fe3c6bdffc569fddd7b8c1e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/instance--a6908453714ab5fccd7efab1.md) | 199 | `declaration-track:a6908453714ab5fccd7efab1fc5a87314f9d7a9a8f501a1e444cf4c0552604ca` |
| 14 | `def` | [functorExtension](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/functorextension--821d598c8a4b84fc57adb822.md) | 206 | `declaration-track:821d598c8a4b84fc57adb822f9cc0b254e07787b123ff783c15c0415afab10a9` |
| 15 | `def` | [karoubiUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal--61cce8ee06b87419a28aa04e.md) | 212 | `declaration-track:61cce8ee06b87419a28aa04e1e27752c2f83060a53a8a69cf4bf32f8ca370696` |
| 16 | `theorem` | [karoubiUniversal_functor_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/karoubiuniversal-functor-eq--d149bc8f17d06b7e91ee8805.md) | 215 | `result-track:d149bc8f17d06b7e91ee8805e690357d6f99b9d21b8ca5d4e49485b46fecf9dd` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/instance--a1a5d97b671bfd461b308543.md) | 218 | `declaration-track:a1a5d97b671bfd461b308543138920139ab14b56bc89385ed0ceb9edb1e882e6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/instance--596ebb1a708259ac87040018.md) | 222 | `declaration-track:596ebb1a708259ac8704001874920c0a522ed83ff329a220ef0649989daf83e6` |
| 19 | `theorem` | [whiskeringLeft_obj_preimage_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variant1343e569715ecf00cfb2f79ad5081a4b456fc2348f82bee4eba25b773db0df8b.lean/declarations/whiskeringleft-obj-preimage-app--e391d4577b90e890553fa766.md) | 234 | `result-track:e391d4577b90e890553fa7664357599b89cc2315039a514ffa19d984282adf0f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cdebc3850962465a1475031bafc71942b1fc196",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cdebc3850962465a1475031bafc71942b1fc196`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/constructequalizer--1c4591bd051f98ab70fe130a.md) | 42 | `declaration-track:1c4591bd051f98ab70fe130ad6f933843bef14352beb209500e93ce6852db152` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/pullbackfst--8a521072b3b2875dfde719cb.md) | 48 | `declaration-track:8a521072b3b2875dfde719cb261939f4c435ef007e16503f38ef0976e1611bd8` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/pullbackfst-eq-pullback-snd--4cc7e362638fd9709f5d4bd3.md) | 53 | `result-track:4cc7e362638fd9709f5d4bd3bb668099bded58bbaf18f2d55c1d07dbe784439d` |
| 4 | `def` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/equalizercone--181611ddd8af32c449ef2004.md) | 60 | `declaration-track:181611ddd8af32c449ef2004329275c3ef952562fd603e947a1f1930695138f6` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/equalizerconeislimit--5c08ffa339423fa5b79f87da.md) | 70 | `declaration-track:5c08ffa339423fa5b79f87da91cf75efa9d6ab3d055908e3b0f16f7cf17f68da` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--cde34aac1dc16c3e9776a66e.md) | 89 | `result-track:cde34aac1dc16c3e9776a66e07e1c0c19c54caed5236eb3fa196e7c610fd8cb4` |
| 7 | `def` | [preservesEqualizersOfPreservesPullbacksAndBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/preservesequalizersofpreservespullbacksandbinaryproducts--b1602110a2fb0f962be9fa04.md) | 100 | `declaration-track:b1602110a2fb0f962be9fa0474f24f70e1514bbe3bed6063c457c068b771c123` |
| 8 | `def` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/constructcoequalizer--89b6f624aab51ab40c3392ae.md) | 141 | `declaration-track:89b6f624aab51ab40c3392ae69e080ed307d0c674d3e71ddfad0432f13fc33c3` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/pushoutinl--e4812af906c595960fae873f.md) | 147 | `declaration-track:e4812af906c595960fae873f14675e94a6f67d0a3a079ff33d88eb4b27e10846` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/pushoutinl-eq-pushout-inr--677f82eee4ee870ada0c2979.md) | 152 | `result-track:677f82eee4ee870ada0c2979fbbfbf0199614d6b28fd66283c67a681614d2516` |
| 11 | `def` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/coequalizercocone--b916af6794a8b908dce0859b.md) | 159 | `declaration-track:b916af6794a8b908dce0859b35ca4ee4c797c62e111edca8bc4d4d1e92a77cb3` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/coequalizercoconeiscolimit--0c22f50241c81761c43937ee.md) | 168 | `declaration-track:0c22f50241c81761c43937ee1d557325560cecd8b654a687f1fa21c470538fc6` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--133d7c6589a35c6d62631957.md) | 190 | `result-track:133d7c6589a35c6d6263195785c2a4372d8d281420ba6d1807f0a7f33c21f02c` |
| 14 | `def` | [preservesCoequalizersOfPreservesPushoutsAndBinaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantdd186da56bc576c8f80b46cefafa8274dbb76ed17d821f516eb6c151583ec3ff.lean/declarations/preservescoequalizersofpreservespushoutsandbinarycoproducts--84c19a03228b30bc212c6de4.md) | 202 | `declaration-track:84c19a03228b30bc212c6de4fdd6f9b385afd06c75975af9321ea092475fa70b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

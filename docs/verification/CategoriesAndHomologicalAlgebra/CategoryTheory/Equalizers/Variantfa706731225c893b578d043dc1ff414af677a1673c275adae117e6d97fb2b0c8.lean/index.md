# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec8ba94a0a633a47c05e4c29a1c45c768e407f2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec8ba94a0a633a47c05e4c29a1c45c768e407f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/constructequalizer--64f68c124e60ea5e5801b591.md) | 47 | `declaration-track:64f68c124e60ea5e5801b591bb96631dd7c6995094b7965cdd8b79d3d0e8287e` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/pullbackfst--5ec6d61cb8fc62f139afbbd6.md) | 52 | `declaration-track:5ec6d61cb8fc62f139afbbd69c06e51c993efe78827746fe935fe7d403682030` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/pullbackfst-eq-pullback-snd--65254f602e5ca683f828f504.md) | 56 | `result-track:65254f602e5ca683f828f5043d36bdec0c0e085005bdbb0dade87fe83dc0a156` |
| 4 | `abbrev` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/equalizercone--981094a52fa2e6498f342e7e.md) | 63 | `declaration-track:981094a52fa2e6498f342e7e5f9d6b625b41fcaf603ebce3c7ea6241c83cac5d` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/equalizerconeislimit--2f73e1c477741208175671d5.md) | 75 | `declaration-track:2f73e1c477741208175671d54b5db76ca221be4f9f7170fe593e8bcf64824b8d` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--a7a9a1c93224f5526dd6d02d.md) | 91 | `result-track:a7a9a1c93224f5526dd6d02ddb392ea767455466174a27e05b9b2a2bb3d14857` |
| 7 | `lemma` | [preservesEqualizers_of_preservesPullbacks_and_binaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/preservesequalizers-of-preservespullbacks-and-binaryproducts--1249da80f37184ab92be0617.md) | 103 | `result-track:1249da80f37184ab92be0617f68b72e97b0fc6ecf3e59a5e4d6e7714062ba1b3` |
| 8 | `abbrev` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/constructcoequalizer--a82a82a6471326028ef07c7b.md) | 143 | `declaration-track:a82a82a6471326028ef07c7bcb762a589c0ae13a8f04471d12d3fa6482cfa311` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/pushoutinl--59c85378c2ac4a7ca6d06c0c.md) | 148 | `declaration-track:59c85378c2ac4a7ca6d06c0c7d57cf1df92bc3c3bda1f0e75c6097d277fb6dbc` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/pushoutinl-eq-pushout-inr--215ff7577cce4667dc5ac2a3.md) | 152 | `result-track:215ff7577cce4667dc5ac2a30cab54242066da3628146b73baef4ba8e6936d2a` |
| 11 | `abbrev` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/coequalizercocone--e7fbd6f34f9b731a5079a1c8.md) | 159 | `declaration-track:e7fbd6f34f9b731a5079a1c8f1aaf38a6f4a79ffc24d5a99b57ab368d19dd638` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/coequalizercoconeiscolimit--c9bdaa45c0089c1124676b09.md) | 171 | `declaration-track:c9bdaa45c0089c1124676b09c428c91a4481f8e6435260a16fbd4dc99adc466a` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--180988e8fddec0b36f4ea664.md) | 190 | `result-track:180988e8fddec0b36f4ea6643c9602a7e3b390d4224ad02a32679dba3289d95c` |
| 14 | `lemma` | [preservesCoequalizers_of_preservesPushouts_and_binaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantfa706731225c893b578d043dc1ff414af677a1673c275adae117e6d97fb2b0c8.lean/declarations/preservescoequalizers-of-preservespushouts-and-binarycoproducts--557ef785fb62e96fff8a0056.md) | 203 | `result-track:557ef785fb62e96fff8a0056e7c9333f6fc69a7fd5b42346c9992e9ec98c7761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

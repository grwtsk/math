# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b38992a0e65b7a043e349bfe94c0129223292149",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b38992a0e65b7a043e349bfe94c0129223292149`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Coyoneda` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/enrichedordinarycategory--61ba722abc981162cf891d76.md) | 47 | `declaration-track:61ba722abc981162cf891d76524c712a0f9f95a74a36ccd5827cb2273bc11755` |
| 2 | `def` | [eHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomequiv--aa6306e5f1232f31781e6516.md) | 60 | `declaration-track:aa6306e5f1232f31781e6516b5054eb05a3601d017d41ff13ad7cb8b5b9a4896` |
| 3 | `lemma` | [eHomEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomequiv-id--3f6c805dab03e7f74a131f8b.md) | 64 | `result-track:3f6c805dab03e7f74a131f8b8c9507070d1fa628493fbd200035ce00d83766c0` |
| 4 | `lemma` | [eHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomequiv-comp--f67166cbfd05ebba5fcdf117.md) | 68 | `result-track:f67166cbfd05ebba5fcdf117f429fc26f63b7e0cdcb9e942a6a7eed1e00eeee9` |
| 5 | `def` | [eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerright--c3821887853169ba976bc15a.md) | 73 | `declaration-track:c3821887853169ba976bc15a7ac3b1a15ef08cdac78b98f37ca0e7ce25befd19` |
| 6 | `lemma` | [eHomWhiskerRight_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerright-id--1cca55f1ca5b0f7091bf4f11.md) | 78 | `result-track:1cca55f1ca5b0f7091bf4f112098698f0a1e52e155083cd4b0835a385b60bfdb` |
| 7 | `lemma` | [eHomWhiskerRight_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerright-comp--8a56931e6dfceac8c25a9203.md) | 82 | `result-track:8a56931e6dfceac8c25a92032c07b792c88e1510d4173f60fdc332f9129f726c` |
| 8 | `lemma` | [eComp_eHomWhiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ecomp-ehomwhiskerright--d50343b6bb4c387f5e2970ff.md) | 94 | `result-track:d50343b6bb4c387f5e2970ffaab399612e8a85530701731acb2f3d90d4c68d4c` |
| 9 | `def` | [eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerleft--56b450434eebcdb3c00ac9f9.md) | 102 | `declaration-track:56b450434eebcdb3c00ac9f96f1bf2d1f6199322c265aa10d7a5c6960d0825bb` |
| 10 | `lemma` | [eHomWhiskerLeft_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerleft-id--ef6d48f2a42ceed82b1d2e5b.md) | 107 | `result-track:ef6d48f2a42ceed82b1d2e5bf357f0898447b6653335a29654d6af85fde4d616` |
| 11 | `lemma` | [eHomWhiskerLeft_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomwhiskerleft-comp--a41e982d4ce395530a039a95.md) | 111 | `result-track:a41e982d4ce395530a039a9561765ddc5056e115158d759de1c9168ef3303e58` |
| 12 | `lemma` | [eComp_eHomWhiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ecomp-ehomwhiskerleft--8f95446aab4c5491e9c155ab.md) | 126 | `result-track:8f95446aab4c5491e9c155ab3e794adb5188846063c31289f6b42471c9c740ac` |
| 13 | `lemma` | [eHom_whisker_cancel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehom-whisker-cancel--e55a8b0ef4790cc4895c34c8.md) | 138 | `result-track:e55a8b0ef4790cc4895c34c8a39b31c70d43287505fec9577e2498e98d1623b0` |
| 14 | `lemma` | [eHom_whisker_cancel_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehom-whisker-cancel-inv--748a25535258fa4656e19663.md) | 149 | `result-track:748a25535258fa4656e1966306e3fc190381031e81a64bee3b94bfd9f509d88e` |
| 15 | `lemma` | [eHom_whisker_exchange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehom-whisker-exchange--96a4ca267147d9c2c7eea315.md) | 154 | `result-track:96a4ca267147d9c2c7eea315bd04aae67001200dff7932028be18d9e00422948` |
| 16 | `def` | [eHomFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ehomfunctor--d4d9c5bdc667d9fc59b9c775.md) | 170 | `declaration-track:d4d9c5bdc667d9fc59b9c775d52e13bd246d021afd2f9dcbd1ad5e2ebd2ddd80` |
| 17 | `instance` | [ForgetEnrichment.EnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/forgetenrichment-enrichedordinarycategory--555ae48a7dce5d3b7e4a261e.md) | 177 | `declaration-track:555ae48a7dce5d3b7e4a261e52fcdd45d9deb8565b10497c4961cc60e58a28b5` |
| 18 | `abbrev` | [eCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5a0aa4fc4f4e1d9ae15822398eb5006805b457c1eae4532e1c8187d474b57a03.lean/declarations/ecoyoneda--dfa7ee621d8d5979c12e1b0c.md) | 185 | `declaration-track:dfa7ee621d8d5979c12e1b0cd20ec3f9a51090a22b0a0d6e5ea970932569ed48` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

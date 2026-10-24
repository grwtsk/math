# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Resolution.Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "351b284b0641ef098afc6b699dc9c9041952e6bd",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `351b284b0641ef098afc6b699dc9c9041952e6bd`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.SingleHomology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/injectiveresolution--e9f1ea5d152b1ecef025add0.md) | 49 | `declaration-track:e9f1ea5d152b1ecef025add0f37e2e86c668035b79b048a54260e63c88bf2131` |
| 2 | `class` | [HasInjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/hasinjectiveresolution--35e7020ba0ce39444d5c1e1e.md) | 65 | `declaration-track:35e7020ba0ce39444d5c1e1ea980c64c2d9624c13a4063e63b6695c858d1a185` |
| 3 | `class` | [HasInjectiveResolutions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/hasinjectiveresolutions--e253984130c45f44901376d5.md) | 76 | `declaration-track:e253984130c45f44901376d574c702d549c463040244071770d3ca5d58e9649d` |
| 4 | `lemma` | [cocomplex_exactAt_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/cocomplex-exactat-succ--a63835365d4455f7374474fe.md) | 87 | `result-track:a63835365d4455f7374474fec6e735932923451c5a2c7ca5a0d7e21f63b832f1` |
| 5 | `lemma` | [exact_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/exact-succ--f5c177f72c98b1e0f0be6471.md) | 92 | `result-track:f5c177f72c98b1e0f0be6471ae88818de8f6b140263114a87506e1b4790d5683` |
| 6 | `theorem` | [ι_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/f-succ--79858d3abaca4a0c678deb7d.md) | 98 | `result-track:79858d3abaca4a0c678deb7d487b5a0e954b64a74f75bace1bfa769488838ff9` |
| 7 | `theorem` | [ι_f_zero_comp_complex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/f-zero-comp-complex-d--1c4a6dcf1ed8037f9add05fc.md) | 102 | `result-track:1c4a6dcf1ed8037f9add05fcd7f90de565d9b6155eac331fb74dee699af187f1` |
| 8 | `theorem` | [complex_d_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/complex-d-comp--f503a126e480b192499bd1a8.md) | 106 | `result-track:f503a126e480b192499bd1a8116c4bff541d9d69bcc314096df1262949030b24` |
| 9 | `def` | [kernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/kernelfork--630f5ea74c22f59fb6dfc769.md) | 113 | `declaration-track:630f5ea74c22f59fb6dfc76919c67d3889f3f5adfcf6a3c403158b7f99185f39` |
| 10 | `def` | [isLimitKernelFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/islimitkernelfork--5ef646b956af9da0b6e83382.md) | 117 | `declaration-track:5ef646b956af9da0b6e8338209611e7097c12f359ed07586c13254550e996b9f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/instance--ce3ab6d57841290f3a5c475f.md) | 126 | `declaration-track:ce3ab6d57841290f3a5c475f0d09b650bd370a7fb201e2aceea4bf4757aebbf4` |
| 12 | `def` | [self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Resolution/Variante13e838ddb430b8a825c83bc8f8898ff8f17347f105e809fafb0976e6e23fa15.lean/declarations/self--c43f497d87fd2ad048df3c9d.md) | 135 | `declaration-track:c43f497d87fd2ad048df3c9de9fb77b5718c63acebe78986282dd3c389caf9a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

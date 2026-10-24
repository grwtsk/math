# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Equalizers.Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9b162c0b2a47b9719f084434a2eb327e825dffb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9b162c0b2a47b9719f084434a2eb327e825dffb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Pullbacks` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constructEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/constructequalizer--1a5d099e1ccfaed67e73b9a2.md) | 50 | `declaration-track:1a5d099e1ccfaed67e73b9a201b41e8b50db7a33a7ba8389b2fcfdf866e7a039` |
| 2 | `abbrev` | [pullbackFst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/pullbackfst--65d4a7263523a43832142607.md) | 56 | `declaration-track:65d4a7263523a43832142607c19470ab9dad88dd7820f1cd2aeb2a7b14224b99` |
| 3 | `theorem` | [pullbackFst_eq_pullback_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/pullbackfst-eq-pullback-snd--73d189a501136d7baec91340.md) | 61 | `result-track:73d189a501136d7baec913404005f7e74d804b149892d45d3bb5e22851fcdaa0` |
| 4 | `def` | [equalizerCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/equalizercone--3c056bbef842f811220df2c3.md) | 68 | `declaration-track:3c056bbef842f811220df2c34f26e1784a939a2ebea88d649c6caf5e89305f4a` |
| 5 | `def` | [equalizerConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/equalizerconeislimit--e515380aad15e720d981fa00.md) | 78 | `declaration-track:e515380aad15e720d981fa00d264c84cf945653a0fba9141750cef911fc12cc2` |
| 6 | `theorem` | [hasEqualizers_of_hasPullbacks_and_binary_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/hasequalizers-of-haspullbacks-and-binary-products--f9581b2196f6ac29fa066f44.md) | 97 | `result-track:f9581b2196f6ac29fa066f449e178e2fa5ade32e44ab1a6b39d41190a2574ab4` |
| 7 | `def` | [preservesEqualizersOfPreservesPullbacksAndBinaryProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/preservesequalizersofpreservespullbacksandbinaryproducts--540b3d7ad0a46b0f348e0366.md) | 108 | `declaration-track:540b3d7ad0a46b0f348e0366a352457a4f593a4ee23d35531f60036708fba0e7` |
| 8 | `def` | [constructCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/constructcoequalizer--f4dad3494b74d6e1f103f3a2.md) | 149 | `declaration-track:f4dad3494b74d6e1f103f3a22b0062e1b3acb671b2a195e2f9b23e90a86582c1` |
| 9 | `abbrev` | [pushoutInl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/pushoutinl--f1108bb80c1b249749c5ce84.md) | 155 | `declaration-track:f1108bb80c1b249749c5ce84f9541ae92ad548ec0c9badbf3464b9edd2cae001` |
| 10 | `theorem` | [pushoutInl_eq_pushout_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/pushoutinl-eq-pushout-inr--bd87f5888f6427e1e911c226.md) | 160 | `result-track:bd87f5888f6427e1e911c226194f88f3fdc56b20b39bca83665a3efd4e84138a` |
| 11 | `def` | [coequalizerCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/coequalizercocone--de83f258c129b8f6ecfeb4aa.md) | 167 | `declaration-track:de83f258c129b8f6ecfeb4aa86c3e93f1cdb461213fd707d9aeab6be0ad8edcb` |
| 12 | `def` | [coequalizerCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/coequalizercoconeiscolimit--cb4711f95ba11bb1d0ef0358.md) | 176 | `declaration-track:cb4711f95ba11bb1d0ef0358b32b1b9a83c2becf985c4bc1cad51dba5e7fc832` |
| 13 | `theorem` | [hasCoequalizers_of_hasPushouts_and_binary_coproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/hascoequalizers-of-haspushouts-and-binary-coproducts--da20bff1f088a25a69b46c07.md) | 198 | `result-track:da20bff1f088a25a69b46c07f68229b10e58f586833bc980a0d994a0b380069c` |
| 14 | `def` | [preservesCoequalizersOfPreservesPushoutsAndBinaryCoproducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant61b33e4d5d297502e5e84c9ecb016ce10eb1b2e10889f7e3f4a02ff1fc3b26e1.lean/declarations/preservescoequalizersofpreservespushoutsandbinarycoproducts--c2bc62e1e7ac413260a57589.md) | 210 | `declaration-track:c2bc62e1e7ac413260a57589bdac4b40f56f57430a2ca95f3f6b3479141dd014` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.Colimits.Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "885f6fc4706089197c6dd7d6106c9ebc746a43a8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `885f6fc4706089197c6dd7d6106c9ebc746a43a8`.

Source path: `GRWTSK/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/prequotient--79bc22ad1aaa1535b0fb4e86.md) | 79 | `declaration-track:79bc22ad1aaa1535b0fb4e86f45d79e0ac5bb5bdd45c6f7271839a146892b80c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/instance--cfb17b562fff94bd932a4965.md) | 89 | `declaration-track:cfb17b562fff94bd932a496558a56ae1066a8db36a40b67d1099d48edc786d27` |
| 3 | `inductive` | [Relation](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/relation--c8981e518bcf9483be4f04a6.md) | 98 | `declaration-track:c8981e518bcf9483be4f04a668507b8da4026f06abe77129252552e980d0d2af` |
| 4 | `def` | [colimitSetoid](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimitsetoid--99863b02c6973b9dfc77b5b3.md) | 139 | `declaration-track:99863b02c6973b9dfc77b5b3c0e89869d05bb84be63d0c9b8ef45321447c62ca` |
| 5 | `def` | [ColimitType](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimittype--c291c9931fa1166f314ae7dd.md) | 148 | `declaration-track:c291c9931fa1166f314ae7dddf8260e9b8ccf50751c9b8c0ccae9e5c2074627e` |
| 6 | `instance` | [ColimitType.AddGroup](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimittype-addgroup--d7b754dfc82c26176abe8e12.md) | 152 | `declaration-track:d7b754dfc82c26176abe8e12aa80ac76831a193f9f45b5ff229593f6b0197073` |
| 7 | `instance` | [InhabitedColimitType](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/inhabitedcolimittype--815ff2529aebe43623c02afa.md) | 164 | `declaration-track:815ff2529aebe43623c02afaf596d9962695722c9f67ec1a3c201b86253960a6` |
| 8 | `instance` | [ColimitType.AddGroupWithOne](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimittype-addgroupwithone--f3f56fe5df9fd3abb97bd81e.md) | 167 | `declaration-track:f3f56fe5df9fd3abb97bd81e171d6f4cbd7b20ddd8e40b1f916b569a72d429ae` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/instance--a675a65d990977c05c66ee79.md) | 170 | `declaration-track:a675a65d990977c05c66ee79047b51791bb7bc037909b348ad452d73c2bcee38` |
| 10 | `theorem` | [quot_zero](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/quot-zero--cf1b27c9351a2796c0a579b7.md) | 190 | `result-track:cf1b27c9351a2796c0a579b7534c687793fcbd122a7f0068b1cdaa545fcb5c89` |
| 11 | `theorem` | [quot_one](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/quot-one--0189f0f29a6901d0121a6dfa.md) | 195 | `result-track:0189f0f29a6901d0121a6dfa6036fcc1886fe8418bef1db31938ed38d754b9ed` |
| 12 | `theorem` | [quot_neg](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/quot-neg--5c4364dd73eb8aff34cf8bf4.md) | 200 | `result-track:5c4364dd73eb8aff34cf8bf4dc90a21f72bff305de8c7568883035b9eb925c57` |
| 13 | `theorem` | [quot_add](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/quot-add--ce4ff5ad861a6166957fd8f2.md) | 210 | `result-track:ce4ff5ad861a6166957fd8f244ab791cbcb15eec9b5aa39a2d71e32762d2e02e` |
| 14 | `theorem` | [quot_mul](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/quot-mul--c0344735473d86f5a3029789.md) | 218 | `result-track:c0344735473d86f5a30297898a65c27b4512e995bbd9e1594b794428b04adac0` |
| 15 | `def` | [colimit](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimit--9cb69e5f3c1b043bee10dade.md) | 224 | `declaration-track:9cb69e5f3c1b043bee10dade36e4b5de7804710f11040fbf931e9afd1b8fc6ee` |
| 16 | `def` | [coconeFun](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/coconefun--3b4d5bb7041de5f40af2be16.md) | 229 | `declaration-track:3b4d5bb7041de5f40af2be16f41d05dc3b4b44671c3fa32622d6c073819cb64e` |
| 17 | `def` | [coconeMorphism](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/coconemorphism--1d77fc40b4bb7ad23d79db54.md) | 235 | `declaration-track:1d77fc40b4bb7ad23d79db5447e1cd6982ceee94baa0ebc4241035122e9eb51d` |
| 18 | `theorem` | [cocone_naturality](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/cocone-naturality--3e6700fb7e421558c1051112.md) | 244 | `result-track:3e6700fb7e421558c10511127ac42559956435fbaecfdc7782d2716bd9637a04` |
| 19 | `theorem` | [cocone_naturality_components](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/cocone-naturality-components--65be7b4e7fac95c64e896a48.md) | 252 | `result-track:65be7b4e7fac95c64e896a48f4d74d02cee6dad3e3ab2604b74a8c3ccd64ecd6` |
| 20 | `def` | [colimitCocone](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimitcocone--99dad751553750fb4b603d9a.md) | 258 | `declaration-track:99dad751553750fb4b603d9aa6979e3eb8f44658175df34c26133e6ea07f754f` |
| 21 | `def` | [descFunLift](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/descfunlift--030f3fa4ec8d3e6ad9a30607.md) | 266 | `declaration-track:030f3fa4ec8d3e6ad9a30607af95ecffc88bc4d87c54d39532c60cbca035cc3d` |
| 22 | `def` | [descFun](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/descfun--a050b98a399d0652dd2a6191.md) | 276 | `declaration-track:a050b98a399d0652dd2a6191d1cbec3b021915633cb68b28c7f9f8253c2553dc` |
| 23 | `def` | [descMorphism](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/descmorphism--f433860dc0e572a0b7269edf.md) | 312 | `declaration-track:f433860dc0e572a0b7269edf7ddef84ffa7686102c9cc13e9f5a58a769fe9026` |
| 24 | `def` | [colimitIsColimit](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/colimitiscolimit--1779164848ab1650164d000b.md) | 325 | `declaration-track:1779164848ab1650164d000b751e3a82d087db0307a9b881c210c01fedb846e9` |
| 25 | `instance` | [hasColimits_commRingCat](../../../../mathematics/Algebra/Colimits/Variantaf5d2d02618ae049643cdb3b582390ce0a6b8881dd9ccc4ce2f196aebbf4023a.lean/declarations/hascolimits-commringcat--4a9e0882c25b442397487116.md) | 341 | `declaration-track:4a9e0882c25b442397487116d538c40b9d8dcd5d34d84e326437047cdc2771b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

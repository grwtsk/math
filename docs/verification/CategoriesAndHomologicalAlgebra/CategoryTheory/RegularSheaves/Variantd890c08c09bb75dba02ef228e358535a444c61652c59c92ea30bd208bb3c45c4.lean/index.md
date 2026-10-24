# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularSheaves.Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3328dccf599610a0cfe4799381f664ce680b2f3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3328dccf599610a0cfe4799381f664ce680b2f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EffectiveEpi.Preserves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final.ParallelPair` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Projective.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Canonical` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EffectiveEpimorphic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Presieve.regular](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/presieve-regular--6622caf401fef661f5c15767.md) | 37 | `declaration-track:6622caf401fef661f5c157679d63d11bbe09f958e8ced765940479a8931ff8b4` |
| 2 | `lemma` | [equalizerCondition_w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-w--b367b696e4ca7f2ea245f7e0.md) | 44 | `result-track:b367b696e4ca7f2ea245f7e03813d71a5daa2f9840bc97d9a23b3fab4016c09e` |
| 3 | `def` | [SingleEqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/singleequalizercondition--833950da2e23503c1eb6f15d.md) | 52 | `declaration-track:833950da2e23503c1eb6f15d5d47e0542a29dc1cca89aa6aae6a568b77a2f2b7` |
| 4 | `def` | [EqualizerCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition--22052be50dfa82e74e834f41.md) | 60 | `declaration-track:22052be50dfa82e74e834f41cd442f948122407217b08f22e71e63d3f1283e4f` |
| 5 | `theorem` | [equalizerCondition_of_natIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-of-natiso--d9e7b6a16cb4f4c1d85fdaef.md) | 64 | `result-track:d9e7b6a16cb4f4c1d85fdaef114c6727fd2f5a259948040920c6bd2fe7244ec4` |
| 6 | `theorem` | [equalizerCondition_precomp_of_preservesPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-precomp-of-preservespullback--4fcc4c542ca41ae93e49075c.md) | 69 | `result-track:4fcc4c542ca41ae93e49075c653be4d96927dff676e414c9c055d17e3dd7e036` |
| 7 | `def` | [MapToEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/maptoequalizer--e81776f7069a60e9bd53ccc6.md) | 82 | `declaration-track:e81776f7069a60e9bd53ccc61c75fc3c30cbc7ab31cc3cbc960f3500d52c5088` |
| 8 | `theorem` | [EqualizerCondition.bijective_mapToEqualizer_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-bijective-maptoequalizer-pullback--b4295e020e1ee7ff14f9ae92.md) | 87 | `result-track:b4295e020e1ee7ff14f9ae924ac86b25af0f567444c7fa91ac94f99c8d163488` |
| 9 | `theorem` | [EqualizerCondition.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-mk--74cecbdec0b3574f8b134410.md) | 101 | `result-track:74cecbdec0b3574f8b134410ff327ce1d0b8f41219e8b2c2b246ead4189ccf63` |
| 10 | `lemma` | [equalizerCondition_w'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-w--282e3b6edb08a09c24c3d2b8.md) | 121 | `result-track:282e3b6edb08a09c24c3d2b8fcb813fa4fe0f86b4e5a56dcd3f01e94c54899a4` |
| 11 | `lemma` | [mapToEqualizer_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/maptoequalizer-eq-comp--f73c39ce0acd8c24d68d8efb.md) | 126 | `result-track:f73c39ce0acd8c24d68d8efb9d615819d204ad49481d33b018e1aa40d221ba33` |
| 12 | `theorem` | [equalizerCondition_iff_isIso_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-iff-isiso-lift--cc6d1c8f105b932e71365a3b.md) | 135 | `result-track:cc6d1c8f105b932e71365a3b150d969d0e7cf31bcbc3b5a993deeb0d0a1f3aeb` |
| 13 | `theorem` | [equalizerCondition_iff_of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-iff-of-equivalence--73b2f4d6c75912f12cd142aa.md) | 152 | `result-track:73b2f4d6c75912f12cd142aad459044bc889e3c3dac64f0b0d96e26ef42cae6e` |
| 14 | `theorem` | [parallelPair_pullback_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/parallelpair-pullback-initial--cf273d86b6be5ed8c582cad9.md) | 159 | `result-track:cf273d86b6be5ed8c582cad9920613053500df7ca45a767ea438aee2bfdf610e` |
| 15 | `def` | [isLimit_forkOfι_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/islimit-forkof-equiv--012302e701dc5cd5f7798465.md) | 183 | `declaration-track:012302e701dc5cd5f77984654cc2f7fa4ea04ea82dad02249611267b967ab765` |
| 16 | `lemma` | [equalizerConditionMap_iff_nonempty_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizerconditionmap-iff-nonempty-islimit--ef13193dabfe2bb8a0f80f60.md) | 202 | `result-track:ef13193dabfe2bb8a0f80f60cbae9ef58cfb64eed38e5f331c83c7245ec1eada` |
| 17 | `lemma` | [equalizerCondition_iff_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/equalizercondition-iff-issheaf--1a5d98e104b3b1c0a100bc0c.md) | 212 | `result-track:1a5d98e104b3b1c0a100bc0c0da6074e51c67a321bd41740439fc49c601d3517` |
| 18 | `lemma` | [isSheafFor_regular_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/issheaffor-regular-of-projective--2d6b28f1677fb2e018753fde.md) | 223 | `result-track:2d6b28f1677fb2e018753fdee6196beec52a39bfbf331020189a3b2d2365aa01` |
| 19 | `theorem` | [isSheaf_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/issheaf-of-projective--d47b8df06fdb0485301a3b1d.md) | 233 | `result-track:d47b8df06fdb0485301a3b1dfb5e6acba933050637ea3825c2108b917911c77d` |
| 20 | `lemma` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/issheaf-yoneda-obj--8588de5e18f404e52460f9e3.md) | 239 | `result-track:8588de5e18f404e52460f9e3635fb31d1d6d587f57ae7cbbba759526d7ac9df2` |
| 21 | `instance` | [subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variantd890c08c09bb75dba02ef228e358535a444c61652c59c92ea30bd208bb3c45c4.lean/declarations/subcanonical--fd2ac350399f79f02e71f0c4.md) | 260 | `declaration-track:fd2ac350399f79f02e71f0c4867f5486d264d46bcba9fcfcc01147d370b6c9bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

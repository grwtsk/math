# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALGHENConditionalCompleteness.Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84beedc5e0842fb00d6372de99f966b1918e0164",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84beedc5e0842fb00d6372de99f966b1918e0164`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Algebraization.Theorems.ALG03_PolarizedCompleteness` — import line 1; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.ALG04_FormalPolarizedEffectivity` — import line 2; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization` — import line 3; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN04_GeneratorCompleteness` — import line 4; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN05_HSGCriterion` — import line 5; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN07_CharacteristicBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN08_FiberCanonicity` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN10_PositiveCharacteristicAffine` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN11_UnrestrictedCompletenessFromHSG` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN12_ExtensionNonclosure` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN15_EffectiveTargetClosure` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.HEN16_PositiveCharacteristicRoute` — import line 12; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.MOD07_SemanticEquivalence` — import line 13; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.TAN01_EffectiveTannaka` — import line 14; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.TAN02_UnrestrictedUpgrade` — import line 15; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.GLOB01_GlobalProvenance` — import line 16; external provider; requires a separately pinned dependency.
- `FCRS.Algebraization.Theorems.EXT01_ExtensionCriterion` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [alg_hen_scoped_conditional_completeness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean/declarations/alg-hen-scoped-conditional-completeness--e683888e8c9f78989697d946.md) | 31 | `result-track:e683888e8c9f78989697d9460429419f056703b8fbb1586a6e0da1255bdea360` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

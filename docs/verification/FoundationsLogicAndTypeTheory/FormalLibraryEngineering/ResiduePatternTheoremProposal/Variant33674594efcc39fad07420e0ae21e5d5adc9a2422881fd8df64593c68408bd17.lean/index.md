# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResiduePatternTheoremProposal.Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df431f59dd9f25da09844b52d8e2bf3d7db97de6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df431f59dd9f25da09844b52d8e2bf3d7db97de6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.AnalyticResidueReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PatternRecognitionMethod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/patternrecognitionmethod--16ea2ed78944a473194bb208.md) | 16 | `declaration-track:16ea2ed78944a473194bb2086b1b2e2ee9088fc3cfac2a196549103132363c5d` |
| 2 | `structure` | [ResiduePatternFeature](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/residuepatternfeature--24a68778f43f3ddf35a585b0.md) | 27 | `declaration-track:24a68778f43f3ddf35a585b095806475153449ffb578dc89c4da05f8d2fb996e` |
| 3 | `inductive` | [CandidateStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/candidatestatus--4e99f2308800542cc038ab56.md) | 36 | `declaration-track:4e99f2308800542cc038ab56fe4ff9f6336955462f0bfdb92351bd8a08c9923c` |
| 4 | `structure` | [ResidueReductionTheoremCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/residuereductiontheoremcandidate--cd6237b087adcfabb8c35bdf.md) | 44 | `declaration-track:cd6237b087adcfabb8c35bdfd290be335db968177c32cfe2fd7189f034713d50` |
| 5 | `structure` | [ResidueProofAttempt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/residueproofattempt--e98b2b16da012d603f663c14.md) | 57 | `declaration-track:e98b2b16da012d603f663c1457ae97b03cb18927255fa9cb5f3c2f263ea3239e` |
| 6 | `theorem` | [pattern_recognition_firewall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/pattern-recognition-firewall--1ab0e646639ee90785eda63a.md) | 65 | `result-track:1ab0e646639ee90785eda63acf6bc45a4189a37847b5804a4cd7b83221043ccf` |
| 7 | `theorem` | [theorem_candidate_requires_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResiduePatternTheoremProposal/Variant33674594efcc39fad07420e0ae21e5d5adc9a2422881fd8df64593c68408bd17.lean/declarations/theorem-candidate-requires-authority--da2f1ad150c19cca8d4b14cf.md) | 73 | `result-track:da2f1ad150c19cca8d4b14cfb449457284c2876f7cb92e23eb8841c60f3e700f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

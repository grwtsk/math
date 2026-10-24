# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SpectralCandidate.Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebd06574b7e96e98b798ba40b83635216df32f9e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebd06574b7e96e98b798ba40b83635216df32f9e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Completeness` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EigenvalueCluster](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/eigenvaluecluster--47db055e37b7784b02e9d430.md) | 20 | `declaration-track:47db055e37b7784b02e9d4309c73bf3ad24ff4be27f5a13fb5ebb9eb3bdcf942` |
| 2 | `structure` | [SpectralCandidate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/spectralcandidate--4bfa0f6bbae25f15eee30bad.md) | 25 | `declaration-track:4bfa0f6bbae25f15eee30bad472f2cf178d0d9f25947fa7458d77889c996601b` |
| 3 | `def` | [SpectralCandidate.modelRegion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/spectralcandidate-modelregion--b8f8a4a8eb47d248f3806727.md) | 40 | `declaration-track:b8f8a4a8eb47d248f38067279114114c954994caab4426b7209009612fd9d177` |
| 4 | `def` | [CarriesAnalyticZeroAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/carriesanalyticzeroauthority--6c1ee2fe12c8036f0833e6ba.md) | 50 | `declaration-track:6c1ee2fe12c8036f0833e6bac50ca7737caeb082dbd2d8888466614b941275ce` |
| 5 | `theorem` | [spectralCandidate_has_no_analyticAuthority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/spectralcandidate-has-no-analyticauthority--24185b3f82a5c0ec9b76e941.md) | 54 | `result-track:24185b3f82a5c0ec9b76e94115224cfd1659b9dc0ebea0805bd000d2b3a7010b` |
| 6 | `theorem` | [spectral_candidate_has_no_analytic_zero_field](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/spectral-candidate-has-no-analytic-zero-field--6d93e4355dc26a7f0b7114ee.md) | 59 | `result-track:6d93e4355dc26a7f0b7114ee300c7d71f530622e16c13493debdc402e5b048f0` |
| 7 | `structure` | [SelfAdjointSpectralCut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/selfadjointspectralcut--9532a2fcb6028232bbfb24f4.md) | 64 | `declaration-track:9532a2fcb6028232bbfb24f43cff9d6961270c869c6939a165c492b59720a041` |
| 8 | `theorem` | [selfAdjoint_modelCandidates_on_modelLine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SpectralCandidate/Variant3009b34acc41750d32bb0bd709411845c1aa41da4df629407d64667464af8765.lean/declarations/selfadjoint-modelcandidates-on-modelline--b8ac64ac617d1821beffa06e.md) | 82 | `result-track:b8ac64ac617d1821beffa06e99977bbbb91583c1efad496ae18ed086573f95d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

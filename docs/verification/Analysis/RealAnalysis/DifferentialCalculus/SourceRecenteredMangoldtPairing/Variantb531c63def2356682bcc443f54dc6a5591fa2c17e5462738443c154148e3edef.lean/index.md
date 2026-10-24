# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceRecenteredMangoldtPairing.Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6f7826d4dad062f2743a0302d3afb4935ee626",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6f7826d4dad062f2743a0302d3afb4935ee626`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualShiftedXiDerivativeAdapter` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredLogPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/centeredlogpairing--d426d722c48d42c4d02e5452.md) | 24 | `declaration-track:d426d722c48d42c4d02e54520ecc90fcb1e9b0eb83a52bb1a254fb47abce0039` |
| 2 | `def` | [compensatedLogPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/compensatedlogpairing--ff669470f201e3e8ab207432.md) | 29 | `declaration-track:ff669470f201e3e8ab207432ad46cc2abfc0934728905495a5ae233dfc5671de` |
| 3 | `theorem` | [actual_derivative_mass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/actual-derivative-mass--55e3d9aa07a89d1885958a5e.md) | 34 | `result-track:55e3d9aa07a89d1885958a5e8dd41ef60539cf184bc34e19ce297b7837aac560` |
| 4 | `theorem` | [centeredLogPairing_eq_signedCesaroPairing](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/centeredlogpairing-eq-signedcesaropairing--88a98ff720ab797135045f09.md) | 46 | `result-track:88a98ff720ab797135045f0903f6703507256cca8166dca3c2da1df491cf4733` |
| 5 | `theorem` | [centeredLogPairing_eq_compensated](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/centeredlogpairing-eq-compensated--5b49e5534a371253d1cce8c3.md) | 67 | `result-track:5b49e5534a371253d1cce8c3e45c0dfb047e00c5e52cd10fb23a7131314aeb63` |
| 6 | `def` | [boundaryBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/boundarybudget--9eb84a7861c250ef72b5390a.md) | 87 | `declaration-track:9eb84a7861c250ef72b5390a7bc77c9455fa5ddc688b69b98dfc206bf3289c17` |
| 7 | `theorem` | [actual_centered_boundary_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/actual-centered-boundary-abs-le--a38b08d3d8579221138d77d5.md) | 91 | `result-track:a38b08d3d8579221138d77d562b5483308680af60301d794ecfc6bec2ec86bc2` |
| 8 | `theorem` | [signed_pairing_lower_of_compensated](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/signed-pairing-lower-of-compensated--525fe23dc1628a21dd00e259.md) | 117 | `result-track:525fe23dc1628a21dd00e2594cf358228b8e925bbaa14813f9c27ce865d7a4b6` |
| 9 | `theorem` | [estimate_of_compensated_tail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceRecenteredMangoldtPairing/Variantb531c63def2356682bcc443f54dc6a5591fa2c17e5462738443c154148e3edef.lean/declarations/estimate-of-compensated-tail--d172c7be45ae65e330df03d8.md) | 126 | `result-track:d172c7be45ae65e330df03d8522d121ca125cd73a1a4bacb98f1bd2ba6736f6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffCorrectionLogBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ded7c30cf8a2ea3925ebc3902f0906a4cbcea94`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffMobiusInversion`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffMobiusInversion.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDLargeMobiusTailIncidence`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDLargeMobiusTailIncidence.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gcdCutoffCorrectionDivisorSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectiondivisorset--e996b336a0e612a50777f710.md) | 45 | `declaration-track:e996b336a0e612a50777f7103cc3ee7acbb8d04c141667bf89bf744ad84a8ba7` |
| 2 | `theorem` | [gcdCutoffCorrectionCoefficient_eq_divisorSum](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectioncoefficient-eq-divisorsum--6f48d3c232fdf61e419e284f.md) | 51 | `result-track:6f48d3c232fdf61e419e284f1d78b8854260a4ba55fdcd7d0e325b59d27e5a66` |
| 3 | `theorem` | [abs_gcdCutoffCorrectionCoefficient_le_card](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/abs-gcdcutoffcorrectioncoefficient-le-card--a37fed7ff57c2bee86753ce1.md) | 107 | `result-track:a37fed7ff57c2bee86753ce1893a9c23f5895bf3506d9911af1832332ecf59a5` |
| 4 | `def` | [gcdCutoffCorrectionIncidenceSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionincidenceset--1ac4f6cabef57e019200315f.md) | 132 | `declaration-track:1ac4f6cabef57e019200315f4891c3c1c567bc85c4f7cb9abff7029c49608faf` |
| 5 | `def` | [gcdCutoffCorrectionFactorSet](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionfactorset--add7d6e79daef1e06572fc02.md) | 138 | `declaration-track:add7d6e79daef1e06572fc02539f93e34f6dc7ebd66cbe907d3b5c4aee9af52c` |
| 6 | `def` | [gcdCutoffCorrectionIncidenceEquivFactor](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionincidenceequivfactor--e9b198cb8131c640f456d6c2.md) | 146 | `declaration-track:e9b198cb8131c640f456d6c25b42772fba0db4a0e00be60b8fb2f1cae7147f86` |
| 7 | `def` | [gcdCutoffCorrectionWeightedQuotientMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionweightedquotientmass--01a723422f50010f9eac9589.md) | 214 | `declaration-track:01a723422f50010f9eac958925794f445901593d9af4df6cf070aee7351559f2` |
| 8 | `def` | [gcdCutoffCorrectionRelaxedFactorMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionrelaxedfactormass--51827a3c1888d9a3531e411f.md) | 221 | `declaration-track:51827a3c1888d9a3531e411fd73bdf2e269889f99fc2bb289ece1739e33c55df` |
| 9 | `theorem` | [gcdCutoffCorrectionWeightedQuotientMass_le_relaxed](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionweightedquotientmass-le-relaxed--5285bba89db0bee923816207.md) | 230 | `result-track:5285bba89db0bee923816207581e3df350fdab3b74879afe27700ee7b39108ed` |
| 10 | `theorem` | [two_div_div_succ_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/two-div-div-succ-le--ed6e5d9b394a29a323930971.md) | 343 | `result-track:ed6e5d9b394a29a3239309710690fff406c838e139c781566b66c77cb08f09fd` |
| 11 | `theorem` | [gcdCutoffCorrectionRelaxedFactorMass_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionrelaxedfactormass-le--905a4bc50a4f2107dd1e7039.md) | 363 | `result-track:905a4bc50a4f2107dd1e7039e45941e5fc525ffa3d0fecb3188530524ef9dde3` |
| 12 | `theorem` | [gcdCutoffCorrectionWeightedQuotientMass_sqrt_le](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/gcdcutoffcorrectionweightedquotientmass-sqrt-le--b3fbb158bf80bcbd271e6f2b.md) | 450 | `result-track:b3fbb158bf80bcbd271e6f2b6a2074cdaee469fc3526a3e5b68e917be57c1f95` |
| 13 | `def` | [centeredLowGCDLogFiveScale](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/centeredlowgcdlogfivescale--65710f331565795f80f2e0c2.md) | 516 | `declaration-track:65710f331565795f80f2e0c2060a7bccf6255745eb67b00df7f4cc371ce1a289` |
| 14 | `theorem` | [abs_gcdCutoffCorrectionTail_sqrt_le_logFive](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/abs-gcdcutoffcorrectiontail-sqrt-le-logfive--f685289f98cd839ac37b71a1.md) | 523 | `result-track:f685289f98cd839ac37b71a172ff3780ea57f07b03f0e7e110d1df407b6f8b8d` |
| 15 | `theorem` | [abs_gcdCutoffCorrectionTail_sqrt_le_target_of_sharpTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/declarations/abs-gcdcutoffcorrectiontail-sqrt-le-target-of-sharptail--26a99f5cfb4e9f7b4186e943.md) | 637 | `result-track:26a99f5cfb4e9f7b4186e943d79cbae59cb4d4b067a26c84647230eb73214334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

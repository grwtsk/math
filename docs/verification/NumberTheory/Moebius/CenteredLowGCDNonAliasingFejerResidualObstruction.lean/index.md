# Verification target: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerResidualObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6717c5764e123cdafe752a1d7e9567069d635976",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6717c5764e123cdafe752a1d7e9567069d635976`.

Source path: `GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDCutoffCorrectionLogBarrier`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDCutoffCorrectionLogBarrier.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerCoprimeTailSplit`](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerCoprimeTailSplit.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonAliasingFejerCenteredVonMangoldtMass](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/nonaliasingfejercenteredvonmangoldtmass--b822af54a3e9fee51324ccf6.md) | 40 | `declaration-track:b822af54a3e9fee51324ccf6321637a9464a95f1f5fbe635a8fb16849290f26d` |
| 2 | `theorem` | [nonAliasingFejerResidual_eq_centeredMass_sq_add_correction](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/nonaliasingfejerresidual-eq-centeredmass-sq-add-correction--70dbf10c3b6cc2642c549196.md) | 48 | `result-track:70dbf10c3b6cc2642c549196f7650029fed7a894e14980281b92c23080df8037` |
| 3 | `theorem` | [abs_nonAliasingFejerResidual_sub_centeredMass_sq_le_logFive](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/abs-nonaliasingfejerresidual-sub-centeredmass-sq-le-logfive--3bd0550343517b646d7c0405.md) | 64 | `result-track:3bd0550343517b646d7c0405982f68ca693c3b1f407c7d629a689aef4b31ab97` |
| 4 | `def` | [NonAliasingFejerSharpDivisibilityTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/nonaliasingfejersharpdivisibilitytail--e1d58c41ba045edaf33874ec.md) | 83 | `declaration-track:e1d58c41ba045edaf33874ecd75fbcc2a84f9808695d27bc6bc7916f64ea92d3` |
| 5 | `theorem` | [abs_nonAliasingFejer_cutoffCorrection_le_target_of_sharpTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/abs-nonaliasingfejer-cutoffcorrection-le-target-of-sharptail--7b10881b58ff3a95e1f7cf12.md) | 93 | `result-track:7b10881b58ff3a95e1f7cf127062b338d2a603ee0ecdb0f2e4db08ce7cc50d13` |
| 6 | `theorem` | [centeredMass_sq_le_of_residual_and_sharpTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/centeredmass-sq-le-of-residual-and-sharptail--56fa05805f9af99c72179335.md) | 106 | `result-track:56fa05805f9af99c72179335e67cdf3620a5edc55ff808e9b6b607e3e47974a2` |
| 7 | `theorem` | [abs_residual_le_of_centeredMass_sq_and_sharpTail](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/abs-residual-le-of-centeredmass-sq-and-sharptail--0b0cde936cecb698ec284d7b.md) | 144 | `result-track:0b0cde936cecb698ec284d7b82566ca6851ed4abc549cf24ab20495576cc8f6c` |
| 8 | `theorem` | [abs_nonAliasingFejer_positiveShift_sqrt_le_of_centeredMass_sq](../../../../mathematics/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerResidualObstruction.lean/declarations/abs-nonaliasingfejer-positiveshift-sqrt-le-of-centeredmass-sq--564d10ab6af46aff39a0d1c3.md) | 176 | `result-track:564d10ab6af46aff39a0d1c39470cd4559afec15d1437ac93c215bfc6b46c37f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

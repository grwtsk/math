# Verification target: GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57360c4ce401d82c0dd3edad9cd1b3d1dae277f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57360c4ce401d82c0dd3edad9cd1b3d1dae277f1`.

Source path: `GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogConvolutionKernel`](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogConvolutionKernel.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mobiusLogDivisorRow](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/mobiuslogdivisorrow--e6a2cf4bfeb8d2dfeb3d2519.md) | 19 | `declaration-track:e6a2cf4bfeb8d2dfeb3d251980804e231c01585f046872dc587283142b404f70` |
| 2 | `theorem` | [truncated_eq_mobiusLogDivisorRow](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/truncated-eq-mobiuslogdivisorrow--100a65be5098606d2366f283.md) | 22 | `result-track:100a65be5098606d2366f2835a702c81cdb66fe6ac82b23cebc860025ad8dd18` |
| 3 | `theorem` | [divisor_two_mul_lt_of_ne](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/divisor-two-mul-lt-of-ne--b21aff96c3e53e4e840c9948.md) | 28 | `result-track:b21aff96c3e53e4e840c99487ff655c84d7f577c7397e8ec01c964fce66e0aca` |
| 4 | `theorem` | [mobiusLogDivisorRow_two_mul_eq](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/mobiuslogdivisorrow-two-mul-eq--70c2a2cc16b1fd7e3434167f.md) | 50 | `result-track:70c2a2cc16b1fd7e3434167fba8a6b1ef126f9e3f9b15b140b32d0cd574736fd` |
| 5 | `theorem` | [mobiusLog_rows_two_mul_reconstruct_zero](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/mobiuslog-rows-two-mul-reconstruct-zero--4740330cb185ba0e3a7060e1.md) | 74 | `result-track:4740330cb185ba0e3a7060e177663acf2c4b6a5895959d1fe6c647c5dbf322bf` |
| 6 | `theorem` | [truncatedMobiusLogConvolution_twoN_reconstruct](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/truncatedmobiuslogconvolution-twon-reconstruct--40dc4b4d9689431a785d13ee.md) | 93 | `result-track:40dc4b4d9689431a785d13eebd7245678a21aba65bef85e3afe6221ac1a3554b` |
| 7 | `def` | [mobiusLogReconstructionResidual](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/mobiuslogreconstructionresidual--6859227a1732b69376dad7e7.md) | 120 | `declaration-track:6859227a1732b69376dad7e7b05e2a11c291b6c4ddbf925fc708ffa80ffac813` |
| 8 | `theorem` | [mobiusLogReconstructionResidual_eq_diagonal](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/declarations/mobiuslogreconstructionresidual-eq-diagonal--845c9fceb2a76f1b3412ce4d.md) | 128 | `result-track:845c9fceb2a76f1b3412ce4d8065a77d19a25bc9503a819f5614c835c6bff4a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

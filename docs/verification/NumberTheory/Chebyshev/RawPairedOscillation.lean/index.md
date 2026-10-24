# Verification target: GRWTSK.NumberTheory.Chebyshev.RawPairedOscillation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "744cc7362b252c481c9716dd105112d0754db501",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `744cc7362b252c481c9716dd105112d0754db501`.

Source path: `GRWTSK/NumberTheory/Chebyshev/RawPairedOscillation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/RawPairedOscillation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.RawSymmetricAverages`](../../../../mathematics/NumberTheory/Chebyshev/RawSymmetricAverages.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.Real.ClassicalRawCorrection`](../../../../mathematics/Analysis/RealAnalysis/ClassicalRawCorrection.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rawClassicalHead_eq_log_correction](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/rawclassicalhead-eq-log-correction--cb7183958b1b482a7e654eb9.md) | 18 | `result-track:cb7183958b1b482a7e654eb92b3f424cd76b879b3b23db13cfd06770525733a3` |
| 2 | `def` | [pairedOscillation](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/pairedoscillation--ac1dd6c6ed1f3ab81aa0a954.md) | 26 | `declaration-track:ac1dd6c6ed1f3ab81aa0a954d81039db4bca20e58c2c46edd8dd0cf1d2cb7332` |
| 3 | `def` | [jumpProfile](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/jumpprofile--b7a82bd992c5451a6f52263f.md) | 30 | `declaration-track:b7a82bd992c5451a6f52263ffab0b9bd3843a9f26e6fdb07b4fb250f88fff57b` |
| 4 | `theorem` | [jumpProfile_pair](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/jumpprofile-pair--1eb2f2bea5d0bcc2ac63cc18.md) | 32 | `result-track:1eb2f2bea5d0bcc2ac63cc18bc7992b258cc2b4f3840595e8a0d14e525ae3d9b` |
| 5 | `theorem` | [norm_average_sub_point_le_paired](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/norm-average-sub-point-le-paired--7198077a90ec1ddcff60e026.md) | 39 | `result-track:7198077a90ec1ddcff60e026945dbe11ee6b3e8f51b6a5c758e7a5b1851f5587` |
| 6 | `theorem` | [norm_source_sub_raw_le_paired](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/norm-source-sub-raw-le-paired--a349ba750612f197f4e54810.md) | 74 | `result-track:a349ba750612f197f4e54810400fc0cbd58f0b831f558876c32879e7e44331b8` |
| 7 | `theorem` | [exists_raw_reconstruction_paired](../../../../mathematics/NumberTheory/Chebyshev/RawPairedOscillation.lean/declarations/exists-raw-reconstruction-paired--b457da744b2501a545a2111e.md) | 82 | `result-track:b457da744b2501a545a2111e5f527f56888b06253281eb269ccfd6b51745a435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

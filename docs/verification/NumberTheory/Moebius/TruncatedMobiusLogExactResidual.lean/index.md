# Verification target: GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogExactResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89de762b0aa827786e1874f4d33d338eae618b5e",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89de762b0aa827786e1874f4d33d338eae618b5e`.

Source path: `GRWTSK/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TruncatedMobiusLogReconstruction`](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogReconstruction.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mobiusLogDivisorRow_two_mul_decomposition](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/declarations/mobiuslogdivisorrow-two-mul-decomposition--56e0c9dbe3c764eb65a80d59.md) | 20 | `result-track:56e0c9dbe3c764eb65a80d59ef0469ea6664f7ab39078e55e3e53ad90f1cdcaa` |
| 2 | `theorem` | [mobiusLogReconstructionResidual_eq_a_mul_log_two](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/declarations/mobiuslogreconstructionresidual-eq-a-mul-log-two--144f48a647f461b1f7c08ea3.md) | 64 | `result-track:144f48a647f461b1f7c08ea34eea6204b80058742000305a2d5899215de28e65` |
| 3 | `theorem` | [mobiusLogReconstruction_coefficient_formula](../../../../mathematics/NumberTheory/Moebius/TruncatedMobiusLogExactResidual.lean/declarations/mobiuslogreconstruction-coefficient-formula--7ac13a603ce9063a8765d14d.md) | 73 | `result-track:7ac13a603ce9063a8765d14dc07222607cb0ffb8a21e32368133a5488cc89c5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

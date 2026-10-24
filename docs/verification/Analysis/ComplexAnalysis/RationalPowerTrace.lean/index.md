# Verification target: GRWTSK.Analysis.Complex.RationalPowerTrace

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d516ae559b263f713883ec650e0ffde396c3b5c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalPowerTrace.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d516ae559b263f713883ec650e0ffde396c3b5c`.

Source path: `GRWTSK/Analysis/Complex/RationalPowerTrace.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalPowerTrace.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IntegerDyadicTrace`](../../../../mathematics/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RationalPowerEvaluation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerEvaluation.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/declarations/check--d766d805edfcfd32caa063f1.md) | 24 | `declaration-track:d766d805edfcfd32caa063f11e6ce14c55e6f0b1af6da9cb38de3af9a6acd11d` |
| 2 | `theorem` | [check_iff](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/declarations/check-iff--f3aceadc4f9210f0eb920d71.md) | 31 | `result-track:f3aceadc4f9210f0eb920d7112a33ddc9f4f6d3f0c9d4009d5c442efbef9a3bd` |
| 3 | `theorem` | [compute_eq_of_check](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/declarations/compute-eq-of-check--2bbb9c497a88e0754167c75c.md) | 40 | `result-track:2bbb9c497a88e0754167c75c8ca98f91ac49e15b2cfd8497889aeae23ebbc224` |
| 4 | `theorem` | [source_sound](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/declarations/source-sound--f11a8266b0330927df310c51.md) | 48 | `result-track:f11a8266b0330927df310c515d445e51696649fc20b1f3f4c2ff2e1d08d7bec2` |
| 5 | `theorem` | [original_verify_of_check](../../../../mathematics/Analysis/ComplexAnalysis/RationalPowerTrace.lean/declarations/original-verify-of-check--20f58aeec5cf681ff6c3e3a9.md) | 57 | `result-track:20f58aeec5cf681ff6c3e3a9c61fdc7af4e65f7cc17cdc5656fc8e97546694b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

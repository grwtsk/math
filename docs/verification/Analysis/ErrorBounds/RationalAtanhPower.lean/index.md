# Verification target: GRWTSK.Analysis.ErrorBounds.RationalAtanhPower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135e1f73f9c69624c19b24a593586bd4e0f64267",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalAtanhPower.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135e1f73f9c69624c19b24a593586bd4e0f64267`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalAtanhPower.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalAtanhPower.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalAtanhLog`](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhLog.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.IntervalMellinRangeReduction`](../../../../mathematics/Analysis/ComplexAnalysis/IntervalMellinRangeReduction.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponent](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/declarations/exponent--0ad2e256201598d9d7f9dfee.md) | 25 | `declaration-track:0ad2e256201598d9d7f9dfeeb8ba9a80b84ce66693ef591462a708cacbaa73ba` |
| 2 | `def` | [output](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/declarations/output--8c3ce88a38468f1ce0624818.md) | 28 | `declaration-track:8c3ce88a38468f1ce062481864be950413c0c775f8c54b74623e23a3a75b1cd0` |
| 3 | `theorem` | [inverse_power_sound](../../../../mathematics/Analysis/ErrorBounds/RationalAtanhPower.lean/declarations/inverse-power-sound--abf359797169616732dfa979.md) | 37 | `result-track:abf359797169616732dfa979395c9c849abdaf20017b36a8d633f263fd806b76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.Asymptotics.FiniteConvolutionRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d078417c858db8e26bfd9614a3c83b4acba871f5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/FiniteConvolutionRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d078417c858db8e26bfd9614a3c83b4acba871f5`.

Source path: `GRWTSK/Analysis/Asymptotics/FiniteConvolutionRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/FiniteConvolutionRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.GeomSum` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [feedback_inverse_geometric_sum_le](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-inverse-geometric-sum-le--c5ef18bb8a73517f789359eb.md) | 23 | `result-track:c5ef18bb8a73517f789359eb1b79f9cefc9ba5f2b7dd22d6500c5fa11818ef7c` |
| 2 | `theorem` | [feedback_inverse_shift_power](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-inverse-shift-power--63c7ab9fd06253e58777b982.md) | 39 | `result-track:63c7ab9fd06253e58777b98238b9eed122689acfb543b683d53a2600c7e30c83` |
| 3 | `theorem` | [feedback_inverse_shift_sum_le](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-inverse-shift-sum-le--fdbd32da935884b30a2f2812.md) | 47 | `result-track:fdbd32da935884b30a2f2812dabe72d2100d0d209dc8a4c47f279df2cf7b6f7a` |
| 4 | `theorem` | [feedback_transport_ratio_le_half](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-transport-ratio-le-half--ddfa4a34d007f9d4e4bfbcba.md) | 62 | `result-track:ddfa4a34d007f9d4e4bfbcba9622c5799b03d83bf6c0c08edc1d4ab22103d392` |
| 5 | `theorem` | [feedback_factorial_recurrence_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-factorial-recurrence-bound--4077052b08072dc148d0f9f6.md) | 72 | `result-track:4077052b08072dc148d0f9f671262806e1a6453c16cd3e910e24122b3ada6aec` |
| 6 | `theorem` | [feedback_factorial_recurrence_bound_of_max](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence4094541f3ff4f96491b00e1f.lean/declarations/feedback-factorial-recurrence-bound-of-max--ec4e011e580b39923d273de3.md) | 128 | `result-track:ec4e011e580b39923d273de3e8088d5e2cc8ff9bc5b8f5410d29d4ce2730bd80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

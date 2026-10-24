# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.FiniteConvolutionRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d078417c858db8e26bfd9614a3c83b4acba871f5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d078417c858db8e26bfd9614a3c83b4acba871f5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence.lean.json)

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
| 1 | `theorem` | [feedback_inverse_geometric_sum_le](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-inverse-geometric-sum-le--52d33bc8fae9f7e355847d32.md) | 23 | `result-track:52d33bc8fae9f7e355847d32ad637264518a2fd1060bc7cbd0fd804bb7536d01` |
| 2 | `theorem` | [feedback_inverse_shift_power](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-inverse-shift-power--6f8a80b4f3df949ccbc93177.md) | 39 | `result-track:6f8a80b4f3df949ccbc9317785f7ad1248aa862a450adbf9f1bdd89f3a8c4584` |
| 3 | `theorem` | [feedback_inverse_shift_sum_le](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-inverse-shift-sum-le--b49da111a0c4ea9dfb053732.md) | 47 | `result-track:b49da111a0c4ea9dfb0537322088e8b1a6af7520e126c0b15af4845f14adfc7b` |
| 4 | `theorem` | [feedback_transport_ratio_le_half](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-transport-ratio-le-half--e45c1f4c2f9aaaa8c95dbf94.md) | 62 | `result-track:e45c1f4c2f9aaaa8c95dbf94fd335ab4bdc333e9467b2408b73633b859ebd54a` |
| 5 | `theorem` | [feedback_factorial_recurrence_bound](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-factorial-recurrence-bound--4a424a3ce601e30e712d441a.md) | 72 | `result-track:4a424a3ce601e30e712d441a66a11addf66be507e1897885814933386d750fcf` |
| 6 | `theorem` | [feedback_factorial_recurrence_bound_of_max](../../../../mathematics/Analysis/AsymptoticAnalysis/FiniteConvolutionRecurrence__SourceOccurrence889c910aeeab2452b8a840d4.lean/declarations/feedback-factorial-recurrence-bound-of-max--b753c62c63fc0bf018804eef.md) | 128 | `result-track:b753c62c63fc0bf018804eefe747bbea775cbb3188dee639f5f1db6aabab83b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

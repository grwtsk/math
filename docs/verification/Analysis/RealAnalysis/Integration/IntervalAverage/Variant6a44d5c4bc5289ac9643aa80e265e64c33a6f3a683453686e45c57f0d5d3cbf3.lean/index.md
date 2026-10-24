# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.IntervalAverage.Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57962ffa11399642580131f35cf7d1a0bf747853",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57962ffa11399642580131f35cf7d1a0bf747853`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interval_average_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/declarations/interval-average-symm--84ff76d5d95afacb0ab9fdde.md) | 38 | `result-track:84ff76d5d95afacb0ab9fdde4b760546243dfe37d3c516f835cdf32f954355db` |
| 2 | `theorem` | [interval_average_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/declarations/interval-average-eq--b525f3e0155aad59acfd34e9.md) | 41 | `result-track:b525f3e0155aad59acfd34e99db387dd61e1f608ae710aa8d18e47b20b89840d` |
| 3 | `theorem` | [interval_average_eq_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/declarations/interval-average-eq-div--84132d6e8728c2e8bac45ec0.md) | 49 | `result-track:84132d6e8728c2e8bac45ec077602ade4b48e518ca18e95d48856216ded0d75e` |
| 4 | `theorem` | [intervalAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/IntervalAverage/Variant6a44d5c4bc5289ac9643aa80e265e64c33a6f3a683453686e45c57f0d5d3cbf3.lean/declarations/intervalaverage-congr-codiscretewithin--6b2880c332706fa99200a54a.md) | 54 | `result-track:6b2880c332706fa99200a54ab0730c952bfa7bb853f0038174b014c1c98c69de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

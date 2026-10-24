# Verification target: GRWTSK.Analysis.Complex.PeriodicBernoulliMellin

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5cea76d055497a0fe59c04143030e4025604152",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5cea76d055497a0fe59c04143030e4025604152`.

Source path: `GRWTSK/Analysis/Complex/PeriodicBernoulliMellin.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/PeriodicBernoulliMellin.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.PeriodicBernoulli`](../../../../mathematics/Analysis/ErrorBounds/PeriodicBernoulli.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.PochhammerJet`](../../../../mathematics/Analysis/ComplexAnalysis/PochhammerJet.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integrand](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/integrand--60509d3b2e39a1db94c6083d.md) | 27 | `declaration-track:60509d3b2e39a1db94c6083d57fb4c6c7e127a35c2889ff4f2d34eaf71e9bd54` |
| 2 | `def` | [tail](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/tail--0936c04a0ec303a41a6fe4bc.md) | 30 | `declaration-track:0936c04a0ec303a41a6fe4bc9dcc8c42b04e5e46d2987476d1b131baeb9aa2c1` |
| 3 | `theorem` | [norm_integrand_le](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/norm-integrand-le--4d92da88b903c6918fc8e4c1.md) | 33 | `result-track:4d92da88b903c6918fc8e4c1da00b55c569e9486cd88aa0228fcc7afcdf5b7ed` |
| 4 | `theorem` | [integrable_tail](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/integrable-tail--2cfb4bf5d14e14f4638f0f19.md) | 45 | `result-track:2cfb4bf5d14e14f4638f0f193c156bcdc364165b1e76c0186b07910a013dcf02` |
| 5 | `theorem` | [tail_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/tail-norm-le--e8e9de798693386d0bfd862b.md) | 65 | `result-track:e8e9de798693386d0bfd862bfeac3c98a060cf9b07e9dd6792002fd0f700fc9a` |
| 6 | `theorem` | [tail_norm_le_nat](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/tail-norm-le-nat--2e9415de8e6904efc6540c13.md) | 88 | `result-track:2e9415de8e6904efc6540c1397b9976af1a53df3f968de9d231e959756b5b67c` |
| 7 | `theorem` | [pochhammer_norm_le](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/pochhammer-norm-le--d881bfc0d775ead1333d1f71.md) | 103 | `result-track:d881bfc0d775ead1333d1f71b536285ad962a1f73f4be2ab505b6298c3d87258` |
| 8 | `def` | [remainder](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/remainder--e31ea22f3115d5280345cc5e.md) | 116 | `declaration-track:e31ea22f3115d5280345cc5e35dee25074362fd7d1fe51d68d8439cdd4db7b79` |
| 9 | `theorem` | [remainder_norm_le_nat](../../../../mathematics/Analysis/ComplexAnalysis/PeriodicBernoulliMellin.lean/declarations/remainder-norm-le-nat--c5403f9536b25d585bee7e2d.md) | 120 | `result-track:c5403f9536b25d585bee7e2d21d8799f1aa6d933c0a0dc70398b89cbc606136b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

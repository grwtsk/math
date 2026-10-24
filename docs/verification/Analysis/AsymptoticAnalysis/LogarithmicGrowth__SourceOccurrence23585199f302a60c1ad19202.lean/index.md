# Verification target: GRWTSK.Analysis.Asymptotics.LogarithmicGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d`.

Source path: `GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/LogarithmicGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.IsFormallyReal` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ResidualGrowthComparison`](../../../../mathematics/Analysis/Inequalities/ResidualGrowthComparison.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [constant_upperSublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/constant-uppersublinear--cf081961ca05727e20d9c3a3.md) | 14 | `result-track:cf081961ca05727e20d9c3a39de02331310bbf5ccfd88a249bceb9eee086611a` |
| 2 | `theorem` | [scale_upperSublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/scale-uppersublinear--f0dda959baffd97fb05e49dd.md) | 20 | `result-track:f0dda959baffd97fb05e49dd6f83391aeb4a9cc8c948a9c08b0f7971b46d9b9b` |
| 3 | `lemma` | [log_one_add_le_two_sqrt](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/log-one-add-le-two-sqrt--200538a9d0109078cb44f029.md) | 34 | `result-track:200538a9d0109078cb44f029d8d2a86331c100d5516c7835f5ad61112015a671` |
| 4 | `theorem` | [log_one_add_nat_upperSublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/log-one-add-nat-uppersublinear--749c91363e4e4bb756b67338.md) | 46 | `result-track:749c91363e4e4bb756b673385ad2900eb7fa89c452e0fe449bf019cfa045d04e` |
| 5 | `theorem` | [residual_growth_iff](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/residual-growth-iff--a8b96f751c49c0905c632abf.md) | 67 | `result-track:a8b96f751c49c0905c632abf9da5d084ba13197159b9819a4bd584f2de024858` |
| 6 | `theorem` | [positive_floor_not_sublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/positive-floor-not-sublinear--a3a3885f492e0287e7607a57.md) | 94 | `result-track:a3a3885f492e0287e7607a57beceac66b2e2e24a12917bf2be73ba6449050355` |
| 7 | `theorem` | [finite_prefix_does_not_force_sublinear](../../../../mathematics/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/declarations/finite-prefix-does-not-force-sublinear--92da57ade7204ce9eedd467b.md) | 103 | `result-track:92da57ade7204ce9eedd467b786e5fa9eb7225165b36a3256d5d48211ed03c1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

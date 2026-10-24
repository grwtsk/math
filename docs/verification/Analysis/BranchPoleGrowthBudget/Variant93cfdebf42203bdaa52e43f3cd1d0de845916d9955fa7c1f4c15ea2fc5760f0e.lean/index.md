# Verification target: GRWTSK.Analysis.BranchPoleGrowthBudget.Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c7882f0f345eb2d00a8db514d9cbab20e13f504",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/index.md) · [Full source](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c7882f0f345eb2d00a8db514d9cbab20e13f504`.

Source path: `GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [positive_residue_forces_exponent_le](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/declarations/positive-residue-forces-exponent-le--3a5b1aebf4639ed6694b0bba.md) | 21 | `result-track:3a5b1aebf4639ed6694b0bba32a0dcbd53a06f90efedd6f7623e9bfd5550f38b` |
| 2 | `theorem` | [positive_integer_residue_budget](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/declarations/positive-integer-residue-budget--c352e9acf046bdad1b64f054.md) | 35 | `result-track:c352e9acf046bdad1b64f054a99a03b7b870155bdcb68deefb731418038b39b5` |
| 3 | `theorem` | [sublinear_growth_forces_simple](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/declarations/sublinear-growth-forces-simple--9379f9a1b63859d8ff6e2f45.md) | 40 | `result-track:9379f9a1b63859d8ff6e2f45e34883c28a1d43352ed3f72bc97f2674b0a85a42` |
| 4 | `theorem` | [borderline_residue_lower_bound](../../../../mathematics/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/declarations/borderline-residue-lower-bound--f35384a4aff9c05cf7d1ca1f.md) | 45 | `result-track:f35384a4aff9c05cf7d1ca1f6f2233026c235f3fea6670e0b1b7cb0b15ea78c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WeilResidualBudgetObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "398b99facdc174d9812ca2596f8bda9ac6766c87",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `398b99facdc174d9812ca2596f8bda9ac6766c87`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimitCore`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ResidualFamily.absoluteBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/residualfamily-absolutebudget--c986c8037e663998e611e300.md) | 27 | `declaration-track:c986c8037e663998e611e3003b2a9c48886f8e08e245b565c21a59dce2116652` |
| 2 | `theorem` | [ResidualFamily.absoluteBudget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/residualfamily-absolutebudget-nonnegative--d0442cb60b1da7f718132d83.md) | 39 | `result-track:d0442cb60b1da7f718132d8304d5b91e784a984c6956ae87a0053a74e04d20a0` |
| 3 | `theorem` | [ResidualFamily.abs_total_le_absoluteBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/residualfamily-abs-total-le-absolutebudget--7f8e32ddbaefeff6e74c0720.md) | 46 | `result-track:7f8e32ddbaefeff6e74c0720bf120d08e060f47c17d9f67187fc8786c4e6fb44` |
| 4 | `theorem` | [ExactResidualComparison.gap_le_absoluteBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/exactresidualcomparison-gap-le-absolutebudget--7cb809eadd7968bec71dbc4c.md) | 82 | `result-track:7cb809eadd7968bec71dbc4c551967f059191dc616c51b60b23388bf05982af6` |
| 5 | `theorem` | [ExactResidualComparison.no_vanishing_absoluteBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/exactresidualcomparison-no-vanishing-absolutebudget--37b34d15ee1b08b26dba17b2.md) | 102 | `result-track:37b34d15ee1b08b26dba17b299a33dc4739579bcc48e2b186775f8a938f2767b` |
| 6 | `def` | [tailOnlyResiduals](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/tailonlyresiduals--48cf6a3d32dc192f894f10ec.md) | 121 | `declaration-track:48cf6a3d32dc192f894f10ec344f6c841e6ff981d51c0215b13dcb3707263e1b` |
| 7 | `def` | [tailOnlyComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/tailonlycomparison--57ef54b307c7edf02e6b2ec0.md) | 132 | `declaration-track:57ef54b307c7edf02e6b2ec0cab01945b34e86b7162bd585eb6464b5b8cde78d` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/NumberTheory/Zeta/Riemann/WeilResidualBudgetObstruction.lean/declarations/example--94cfdfffe628a3c350a9c3e4.md) | 140 | `declaration-track:94cfdfffe628a3c350a9c3e49f086cbe6d0ba51ad38a7970c4c3ecaac46456d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

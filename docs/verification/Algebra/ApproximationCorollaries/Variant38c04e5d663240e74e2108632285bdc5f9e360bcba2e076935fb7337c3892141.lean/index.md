# Verification target: GRWTSK.Algebra.ApproximationCorollaries.Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26e32368825bf842a0901ea662fe3b0bd4a506f9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/index.md) · [Full source](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26e32368825bf842a0901ea662fe3b0bd4a506f9`.

Source path: `GRWTSK/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Approximations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ConvergentsEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightNhds` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_convs_eq_convs'](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/declarations/of-convs-eq-convs--186469c83a42dd0c70065d81.md) | 55 | `result-track:186469c83a42dd0c70065d814bfdac7acfcf2c8d368c6f7393e2fd8f2619a22f` |
| 2 | `theorem` | [convs_succ](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/declarations/convs-succ--d100f959307a888aedccd133.md) | 61 | `result-track:d100f959307a888aedccd133f1a5959aa7545f535f2b0f1ff79815d3983bc023` |
| 3 | `theorem` | [of_convergence_epsilon](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/declarations/of-convergence-epsilon--9f89c55dfaee3c8f162acf79.md) | 78 | `result-track:9f89c55dfaee3c8f162acf793cad88105a58008025b4c44d55942e817497f4ba` |
| 4 | `theorem` | [of_convergence](../../../../mathematics/Algebra/ApproximationCorollaries/Variant38c04e5d663240e74e2108632285bdc5f9e360bcba2e076935fb7337c3892141.lean/declarations/of-convergence--a232866e8e8c3e88d83a51a1.md) | 123 | `result-track:a232866e8e8c3e88d83a51a115eca6d73707ccb73b3f71adc6af36c2e42793b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

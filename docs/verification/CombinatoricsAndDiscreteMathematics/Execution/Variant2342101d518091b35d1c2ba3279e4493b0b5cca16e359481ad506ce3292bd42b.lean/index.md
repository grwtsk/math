# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Execution.Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbd644cc17c49154c4cd442f10d2218d54fc47a1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbd644cc17c49154c4cd442f10d2218d54fc47a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.GraphAccess.Machine` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MachineResolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/machineresolution--25e9b19e1c76b071c91abf0e.md) | 21 | `declaration-track:25e9b19e1c76b071c91abf0ebb3acccd48197a799b48b20060c440a6349f47c7` |
| 2 | `def` | [runMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/runmachine--1f3dfa3f4207e24b02de91b9.md) | 41 | `declaration-track:1f3dfa3f4207e24b02de91b981a61aaa7e6c80590bb8766a784fbf4e7022a7aa` |
| 3 | `def` | [executeMachine](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/executemachine--fdb8f954cabdd7eb715b1e69.md) | 88 | `declaration-track:fdb8f954cabdd7eb715b1e6970c39846b5e0c930ae31f0f457a99475efef2d95` |
| 4 | `theorem` | [accessMachine_total](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/accessmachine-total--963261257513e8c272ebe425.md) | 100 | `result-track:963261257513e8c272ebe425c4b567a4bd7f022182e04eb8e5cf507aded3980a` |
| 5 | `theorem` | [completed_has_mode_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/completed-has-mode-certificate--a3b5bdb2f235bc5c0b35e7e5.md) | 109 | `result-track:a3b5bdb2f235bc5c0b35e7e543457c6ca1db57d6eeb9910b2b772c3914ee1e01` |
| 6 | `def` | [completed_output_kind_matches_objective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/completed-output-kind-matches-objective--48cc350f24fa591d23dd2ecd.md) | 125 | `declaration-track:48cc350f24fa591d23dd2ecdcede76084874e764e3c3d348af2bd2b113ca72da` |
| 7 | `theorem` | [zero_fuel_returns_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/zero-fuel-returns-residual--5f9b590d77048729e8feb300.md) | 141 | `result-track:5f9b590d77048729e8feb300a0685c0d53319aea1460684635163fd8c6db765f` |
| 8 | `theorem` | [budget_exhaustion_returns_residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/budget-exhaustion-returns-residual--99109243fe2d3e2c6341730d.md) | 159 | `result-track:99109243fe2d3e2c6341730d46c78c23897817be3f2fe8b1bd3eb659f3094cf1` |
| 9 | `theorem` | [resource_exhaustion_has_no_unreachability_certificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/resource-exhaustion-has-no-unreachability-certificate--6e964263a95dd61ca3a6b5d5.md) | 190 | `result-track:6e964263a95dd61ca3a6b5d534ccee9d1ca89ceb51b7ff60d24caa5f81b5ec22` |
| 10 | `theorem` | [executeMachine_deterministic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/executemachine-deterministic--93fd22f4dba4582d93a6ba26.md) | 208 | `result-track:93fd22f4dba4582d93a6ba26b860665027609a9ffd03da0f582ec52003e6207c` |
| 11 | `theorem` | [completed_usage_within_budget](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/declarations/completed-usage-within-budget--f2f522a855fa659027ed1f4f.md) | 220 | `result-track:f2f522a855fa659027ed1f4fa2c3dd72b95cc62eee82d9d15874afb5d4fb08cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

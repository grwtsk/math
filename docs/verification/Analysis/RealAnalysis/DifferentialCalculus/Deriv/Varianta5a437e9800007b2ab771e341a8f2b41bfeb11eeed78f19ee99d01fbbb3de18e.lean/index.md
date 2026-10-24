# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be38e1e55e5cc54ba94273f78bdad52494af6314",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be38e1e55e5cc54ba94273f78bdad52494af6314`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/declarations/localinverse--a438414dd38280705df37bc2.md) | 29 | `declaration-track:a438414dd38280705df37bc287b667d937c04711eba956718e4917919c4b36ac` |
| 2 | `theorem` | [map_nhds_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/declarations/map-nhds-eq--d691f07abe8f5f495f51662c.md) | 34 | `result-track:d691f07abe8f5f495f51662c50f71fc4f0e4c156f91fd49c5c180d7928ac1a45` |
| 3 | `theorem` | [to_localInverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/declarations/to-localinverse--9834b23a4105984809794aff.md) | 37 | `result-track:9834b23a4105984809794aff428f9d51f0a046d9645e073c672b3335e4eef235` |
| 4 | `theorem` | [to_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/declarations/to-local-left-inverse--c5abbd51a873fc3dc4ecae1c.md) | 40 | `result-track:c5abbd51a873fc3dc4ecae1c1cb5ffdc70b692846e4db71744dd44d1d30639b5` |
| 5 | `theorem` | [isOpenMap_of_hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Varianta5a437e9800007b2ab771e341a8f2b41bfeb11eeed78f19ee99d01fbbb3de18e.lean/declarations/isopenmap-of-hasstrictderivat--a6de22ca8a0893ce3afd2c83.md) | 49 | `result-track:a6de22ca8a0893ce3afd2c83e36b58b1b94ea7cc0868cf238e8b9081ff7ce1cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

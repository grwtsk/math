# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceStability.Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf5a24804b44b9d123d04c9f3c24ea4effc9b35a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf5a24804b44b9d123d04c9f3c24ea4effc9b35a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Boundary.Perturbation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Trace.CylinderTrace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TracePerturbationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/traceperturbationcertificate--1b1ae073aefacfb5598cdad1.md) | 21 | `declaration-track:1b1ae073aefacfb5598cdad197057a3c6c3bcb8475daa4192199d34dda2c9319` |
| 2 | `def` | [TracePerturbationCertificate.globalBudget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/traceperturbationcertificate-globalbudget--8fc7ab9eacca3383f871c79a.md) | 63 | `declaration-track:8fc7ab9eacca3383f871c79ac858f720cbaae3d73862d52d39b48217c51c2a97` |
| 3 | `theorem` | [finite_trace_perturbation_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/finite-trace-perturbation-bound--0443b591cd6f6650b30224f4.md) | 74 | `result-track:0443b591cd6f6650b30224f43a4fb7dab89ef90cd9d02fa807147f0455a20ad3` |
| 4 | `structure` | [StratumTraceConnectorBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/stratumtraceconnectorbound--a0ccc7660080e41ab0eafdd0.md) | 98 | `declaration-track:a0ccc7660080e41ab0eafdd060427ec16f9d62271326087f9d04891f59bc3d5f` |
| 5 | `theorem` | [stratum_connector_perturbation_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/stratum-connector-perturbation-bound--f77d38499da2635f90af8937.md) | 113 | `result-track:f77d38499da2635f90af8937608972694e80d9b40127daabf32a07609f4bc08e` |
| 6 | `structure` | [LimitTraceStabilityCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/limittracestabilitycertificate--7c98d6107fa5bba37ebde78a.md) | 123 | `declaration-track:7c98d6107fa5bba37ebde78ac2a53e4af11a030402195592f9e8c5e94e56808b` |
| 7 | `theorem` | [limit_trace_stability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variant19a5eac9319263345be4bf79102e2e89d34c93a5677d8f3f4a65f681e75c881b.lean/declarations/limit-trace-stability--fb9235bbe034db2c7e5b86b5.md) | 136 | `result-track:fb9235bbe034db2c7e5b86b5c7e6511dd9535b6264b7bc090a0071a5ea086a97` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

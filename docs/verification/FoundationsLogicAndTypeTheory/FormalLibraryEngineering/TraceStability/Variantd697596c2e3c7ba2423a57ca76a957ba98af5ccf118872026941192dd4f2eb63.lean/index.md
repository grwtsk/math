# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceStability.Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74541b34721390ead3cccd166510d0591154efaa",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74541b34721390ead3cccd166510d0591154efaa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Boundary.Perturbation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.StratifiedBoundary.Trace.CylinderTrace` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TracePerturbationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/traceperturbationcertificate--c60472af3a7fb0ab1863bee7.md) | 13 | `declaration-track:c60472af3a7fb0ab1863bee78c53beefa296b32dc659094dbaae9079c04b6e2e` |
| 2 | `def` | [TracePerturbationCertificate.globalBudget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/traceperturbationcertificate-globalbudget--f661b109165d73eff193b968.md) | 55 | `declaration-track:f661b109165d73eff193b968fbc37acde8751eb0c8b131ebf9e194147ba9ebe7` |
| 3 | `theorem` | [finite_trace_perturbation_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/finite-trace-perturbation-bound--2d1142c9442174112ef503c3.md) | 66 | `result-track:2d1142c9442174112ef503c3740067c241c3724ea2a959c90242dc2cb26687a8` |
| 4 | `structure` | [StratumTraceConnectorBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/stratumtraceconnectorbound--ec7cb84a154ffb1842a618ee.md) | 90 | `declaration-track:ec7cb84a154ffb1842a618ee7a6668d6f055c874752d01f086a572430d710dcc` |
| 5 | `theorem` | [stratum_connector_perturbation_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/stratum-connector-perturbation-bound--efefa86d58b08882f24cc43f.md) | 105 | `result-track:efefa86d58b08882f24cc43fd97acfb75b0f230859c29cce746db3ac612038dd` |
| 6 | `structure` | [LimitTraceStabilityCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/limittracestabilitycertificate--762fc6b8cd767f0fbc0f76a7.md) | 115 | `declaration-track:762fc6b8cd767f0fbc0f76a7c780d1700ba6f027d00e1e7a8a148c2a8bd9b763` |
| 7 | `theorem` | [limit_trace_stability](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TraceStability/Variantd697596c2e3c7ba2423a57ca76a957ba98af5ccf118872026941192dd4f2eb63.lean/declarations/limit-trace-stability--5daea5a7cc28aa424ea4db4e.md) | 128 | `result-track:5daea5a7cc28aa424ea4db4e15006d701640e66ee3ee3621f256b0396219e026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

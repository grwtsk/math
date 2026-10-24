# Verification target: GRWTSK.Analysis.FunctionalAnalysis.DiracKTraceFormula.Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3081684cef5f7786b2b642d9d1816755b4e4232",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3081684cef5f7786b2b642d9d1816755b4e4232`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.SpectralKTheoryBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.WittRealization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TraceTarget](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/tracetarget--ca60bdf8bdec46be4570a62c.md) | 25 | `declaration-track:ca60bdf8bdec46be4570a62cbaca11eb3efea11a60526797eccac5edb70fe7e6` |
| 2 | `structure` | [DiracSpectralTrace](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/diracspectraltrace--e8159b4f694b427eabae04bc.md) | 37 | `declaration-track:e8159b4f694b427eabae04bc202ee136bf89b6ca8fc84c2c947003ede836ed1e` |
| 3 | `theorem` | [dirac_spectral_trace_regularized](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirac-spectral-trace-regularized--c95b9bc346c22791795d9113.md) | 47 | `result-track:c95b9bc346c22791795d91139e8820aa98d01bde24bd1a877c083bae60e42ea4` |
| 4 | `theorem` | [dirac_spectral_trace_respects_multiplicity](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirac-spectral-trace-respects-multiplicity--0bd4d5f63933d0cff1b01084.md) | 53 | `result-track:0bd4d5f63933d0cff1b0108484dbb611b086e62a88edcf3ebf1eb537483edbe9` |
| 5 | `structure` | [KIndexTrace](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/kindextrace--1be83f7c877174b71fac75f0.md) | 66 | `declaration-track:1be83f7c877174b71fac75f0c8d4b6992425977ef431b2b2fc41b3f0a8604fdf` |
| 6 | `theorem` | [k_index_trace_additive](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/k-index-trace-additive--2aad030bd7b3c7c95c8f72c0.md) | 78 | `result-track:2aad030bd7b3c7c95c8f72c02996be614f209de68f03eb3cfd6e6994e9338eb1` |
| 7 | `theorem` | [k_index_trace_compatible](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/k-index-trace-compatible--f9f9048e1e67883085bd850c.md) | 85 | `result-track:f9f9048e1e67883085bd850cd91327d00b4d9bfdc92a808d0744673b16163eb8` |
| 8 | `structure` | [DiracKIndexTraceFormula](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirackindextraceformula--392dde082d01461fc28718e5.md) | 102 | `declaration-track:392dde082d01461fc28718e53317e33aebe9aa52b214006d7d552183fdd6d268` |
| 9 | `theorem` | [dirac_k_index_trace_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirac-k-index-trace-formula--6adbd4df26ff15010c3d7274.md) | 117 | `result-track:6adbd4df26ff15010c3d7274b5fad8d60961a5415b63f00a4a8f791ebd8b15b2` |
| 10 | `theorem` | [spectral_trace_eq_k_index_trace](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/spectral-trace-eq-k-index-trace--ab5053b458882259bb300312.md) | 130 | `result-track:ab5053b458882259bb300312feac09e9e7f9359024fd3b7eca2612602ba84f56` |
| 11 | `structure` | [DiracKIndexWittTraceFormula](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirackindexwitttraceformula--dae3ec24cb63a5c68d7cfacb.md) | 149 | `declaration-track:dae3ec24cb63a5c68d7cfacbc3f2f1d3ce907b56c7fb08f5a998fd496c8818fd` |
| 12 | `theorem` | [dirac_k_index_witt_trace_formula](../../../../../mathematics/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant20a7f1f026147bb0ec6e1b54aaa598b1f95ec760297f1a995bb0f86e7b94d675.lean/declarations/dirac-k-index-witt-trace-formula--d176743ab64ee263531191f3.md) | 169 | `result-track:d176743ab64ee263531191f3b54defd32043347025ba9af3ce4f6c97bab55617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

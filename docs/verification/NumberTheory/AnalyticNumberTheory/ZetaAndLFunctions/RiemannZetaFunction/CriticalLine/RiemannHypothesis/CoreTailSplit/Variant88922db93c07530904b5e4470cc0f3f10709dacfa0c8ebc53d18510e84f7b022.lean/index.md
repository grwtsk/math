# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CoreTailSplit.Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a7430b377911df57d1d876f65a8fe7ce7764c0a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a7430b377911df57d1d876f65a8fe7ce7764c0a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceWeightedMultiplier` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/fullresidualvector--6272adabbc8615c2594b00cd.md) | 22 | `declaration-track:6272adabbc8615c2594b00cdad57f21d495678bdd86789cbc6c80f248c3bd8e7` |
| 2 | `def` | [coreResidualVector](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/coreresidualvector--fba9cc140894d03882fdbb50.md) | 26 | `declaration-track:fba9cc140894d03882fdbb50d52f0998bb8ea108e8e624a7841f1ccfa57c9d7f` |
| 3 | `theorem` | [fullResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/fullresidualvector-ae--08965c0665ac9762cf3ea425.md) | 31 | `result-track:08965c0665ac9762cf3ea4259605232fd2ba3dcc791f9686a713cfbfd3a981bf` |
| 4 | `theorem` | [coreResidualVector_ae](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/coreresidualvector-ae--deb28f45bf83eaf2316189e6.md) | 36 | `result-track:deb28f45bf83eaf2316189e680b50a79b2e71f87883ec6e1b739f6ac423dca66` |
| 5 | `theorem` | [fullResidualVector_decomposition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/fullresidualvector-decomposition--f80b93aa1a61e8a10fc8f60d.md) | 42 | `result-track:f80b93aa1a61e8a10fc8f60d03b8686516a022b7aaec613f2e2fe973fab97ddd` |
| 6 | `theorem` | [filtered_full_norm_le_core_tails](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/CoreTailSplit/Variant88922db93c07530904b5e4470cc0f3f10709dacfa0c8ebc53d18510e84f7b022.lean/declarations/filtered-full-norm-le-core-tails--7f76379f6f7fee59b71c816b.md) | 83 | `result-track:7f76379f6f7fee59b71c816b7c982c301939264c4a14884895ffbe5d6e79853c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

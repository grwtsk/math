# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CandidateControllerLaplaceForIntegration.Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51d6d6d5746af077dc95fb3f0daac4c432847e7e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51d6d6d5746af077dc95fb3f0daac4c432847e7e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CandidateLaplace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [controller_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/declarations/controller-laplace-integrable--f786bfb4eb20abd4096c7146.md) | 14 | `result-track:f786bfb4eb20abd4096c71463a26c9255684c052679a598cb6e74888325bffe4` |
| 2 | `theorem` | [controller_laplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/declarations/controller-laplace--e334d42111de46069d1d8e9e.md) | 23 | `result-track:e334d42111de46069d1d8e9e52c660e668edefd8fad57594fa2e13f35d1cb4a1` |
| 3 | `theorem` | [fullBoundaryVector_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/declarations/fullboundaryvector-integrable--488403643414ad3b79774333.md) | 33 | `result-track:488403643414ad3b79774333c1854fd97f3e6b2a075c7558a50726b9e45e2706` |
| 4 | `theorem` | [fullBoundaryVector_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceForIntegration/Variant81164dc5fe328f01a7442a8a8e15971b98e5ad49910f0f987d8aafcdc4bffa6d.lean/declarations/fullboundaryvector-fourier--98562e7ab5b44c4b27ecb6b8.md) | 40 | `result-track:98562e7ab5b44c4b27ecb6b8c8f8f89f8fc246ed1ef61479ec9dffa6c0f0962f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

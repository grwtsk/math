# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMultiplicationDomain.Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "515433b03cd43bee70b7fd42f2fbba7b2e47dd5d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `515433b03cd43bee70b7fd42f2fbba7b2e47dd5d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearPMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatedomain--617145dfc8b282f21e2da04c.md) | 31 | `declaration-track:617145dfc8b282f21e2da04c23010f4cc0aa4525f7d02170febc94481aee6902` |
| 2 | `theorem` | [mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/mem-coordinatedomain--c7901ce524e6408558a67849.md) | 57 | `result-track:c7901ce524e6408558a67849637194ad09608210dd5beabedc0cba402774633d` |
| 3 | `def` | [coordinateMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatemultiplication--fbea5bab1941cd433084d1f9.md) | 61 | `declaration-track:fbea5bab1941cd433084d1f913103c55ffcfb8a8549739cd6cbc6d4fc193b4d6` |
| 4 | `theorem` | [coordinateMultiplication_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatemultiplication-domain--c825a98a0de933f53c88dd5d.md) | 90 | `result-track:c825a98a0de933f53c88dd5d7c1519f67f4ff7ddaed389be2656e612fb66c0e3` |
| 5 | `theorem` | [coordinateMultiplication_apply_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatemultiplication-apply-ae--6523a2b303df0266c34d5fe2.md) | 94 | `result-track:6523a2b303df0266c34d5fe208f056056e681878d5e306cc5124a1517aac937b` |
| 6 | `theorem` | [coordinateMultiplication_formalAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatemultiplication-formaladjoint--0b72cef294d92ed84c4e3d74.md) | 100 | `result-track:0b72cef294d92ed84c4e3d740ac4a86cf08a649ab6a7f85413659577b21a170c` |
| 7 | `theorem` | [coordinateMultiplication_maximal_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatemultiplication-maximal-domain--77bdfcabcba245409a939a5c.md) | 111 | `result-track:77bdfcabcba245409a939a5cc9e3d5a0b518d70a710f6ca1b055da2dd6e658ee` |
| 8 | `theorem` | [norm_sq_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/norm-sq-eq-integral--371fef684871ae8299366ad7.md) | 117 | `result-track:371fef684871ae8299366ad70d1ed01c545f60c5c26fbfbbfaa7176eb86ccfd9` |
| 9 | `theorem` | [graph_norm_sq_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/graph-norm-sq-eq-weighted-integral--3b1f2f7d66d81fb8c0dadc4b.md) | 126 | `result-track:3b1f2f7d66d81fb8c0dadc4b3935d59d6dd869456d617f1ed6aef02992716f05` |
| 10 | `theorem` | [mem_coordinateDomain_iff_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/mem-coordinatedomain-iff-weighted-integrable--ada845873a543b49f746d6e5.md) | 145 | `result-track:ada845873a543b49f746d6e5fb3b813d75009b92f6225cf206cf67bc524a434b` |
| 11 | `def` | [graphMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/graphmeasure--9fa3370fa0762652b924ad63.md) | 169 | `declaration-track:9fa3370fa0762652b924ad639e0153938bf8186a77d1fa97c3e5ae048e07b017` |
| 12 | `theorem` | [graphMeasure_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/graphmeasure-absolutelycontinuous--1b71cdbcc5cec4f6c4415111.md) | 172 | `result-track:1b71cdbcc5cec4f6c4415111993e65228d15bc30d517958d2280fb5c703efc6e` |
| 13 | `theorem` | [mem_coordinateDomain_iff_graph_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/mem-coordinatedomain-iff-graph-memlp--8f8b5c01bfef558ca81b6986.md) | 176 | `result-track:8f8b5c01bfef558ca81b6986c5fff30207ce843b96c17853f3e757719cc74525` |
| 14 | `theorem` | [compactContinuous_mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/compactcontinuous-mem-coordinatedomain--b680ffa174df8feb18810b15.md) | 187 | `result-track:b680ffa174df8feb18810b15819d63ade8fb3994fb869974ce241e08b5a9f2e4` |
| 15 | `theorem` | [coordinateDomain_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant7bf03cad7925164b303d76637cccc36ff6a4bfbd57c1d0b45bb5e0157483e51f.lean/declarations/coordinatedomain-dense--a4bbe9c089c2ab8620199b5f.md) | 199 | `result-track:a4bbe9c089c2ab8620199b5fde983839c857f01e425d71a40751ca1553ad8e50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

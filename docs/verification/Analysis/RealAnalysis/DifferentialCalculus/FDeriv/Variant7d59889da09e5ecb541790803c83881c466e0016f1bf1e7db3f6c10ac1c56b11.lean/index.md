# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FDeriv.Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "892c91044ade4a6a64d9bbd1c7a1821c205e2443",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `892c91044ade4a6a64d9bbd1c7a1821c205e2443`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat--63097dac38e7c00b3d60af45.md) | 39 | `result-track:63097dac38e7c00b3d60af452b4039a9d6755e349232b44be73f2630b2a151ea` |
| 2 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/uniquemdiffon-iff-uniquediffon--f9cfa5703fef7a90519635dc.md) | 47 | `result-track:f9cfa5703fef7a90519635dc38ab548c76bdb3dc9d9806f1c0addec0372a3a42` |
| 3 | `theorem` | [ModelWithCorners.uniqueMDiffOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/modelwithcorners-uniquemdiffon--663928aea78d628c09d0b754.md) | 52 | `result-track:663928aea78d628c09d0b754b0f3597d6b2301424217e35a1d481df6813dd9f8` |
| 4 | `theorem` | [writtenInExtChartAt_model_space](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/writteninextchartat-model-space--ef69c8d9df04845b8fdb4552.md) | 57 | `result-track:ef69c8d9df04845b8fdb4552eedb6b59847ba9f95196d5287287c17decfded8a` |
| 5 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat--161df663663628a830627fcb.md) | 63 | `result-track:161df663663628a830627fcba888de83add71ad44a52dd8e0c73945fa395631c` |
| 6 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/hasmfderivat-iff-hasfderivat--e65a2b4c30686385767262ad.md) | 72 | `result-track:e65a2b4c30686385767262ad97ed6d9002a5c3dd856aa2b3f89d7a03acffa621` |
| 7 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat--df4eab99d677da15878742e5.md) | 79 | `result-track:df4eab99d677da15878742e58357fcd96c813b9ec3c1571657cf2d3a25b460c0` |
| 8 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/mdifferentiableat-iff-differentiableat--24d34f0bac3b99595ffe745b.md) | 89 | `result-track:24d34f0bac3b99595ffe745b347dd59e440396b7914f0e45419e6b9cf2dbe615` |
| 9 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/mdifferentiableon-iff-differentiableon--8d7648bb5ffa9bb4d5fe021e.md) | 98 | `result-track:8d7648bb5ffa9bb4d5fe021e91a22f39c623e9f2ee3c346ddfd00e238c1d615c` |
| 10 | `theorem` | [mdifferentiable_iff_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean/declarations/mdifferentiable-iff-differentiable--89ad7baec607ba21a93a7b9d.md) | 107 | `result-track:89ad7baec607ba21a93a7b9de102f2b37982b06d6643c6f6d69b158fe1346260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

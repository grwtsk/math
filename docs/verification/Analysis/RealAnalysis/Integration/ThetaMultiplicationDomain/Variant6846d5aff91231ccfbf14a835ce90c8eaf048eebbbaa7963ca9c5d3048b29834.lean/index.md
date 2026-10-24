# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaMultiplicationDomain.Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bdd203d57057601f12400f8cc7cb0700af798fe",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bdd203d57057601f12400f8cc7cb0700af798fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean.json)

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
| 1 | `def` | [coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatedomain--8ae767620357ac71c6a6dc25.md) | 31 | `declaration-track:8ae767620357ac71c6a6dc2554caba8ad579d2e2bea68441ac93c225804aed8a` |
| 2 | `theorem` | [mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/mem-coordinatedomain--15a54381457152e8b1ae2007.md) | 57 | `result-track:15a54381457152e8b1ae2007ad936a46c091b28dd9aa302e7ee6a4fa90103950` |
| 3 | `def` | [coordinateMultiplication](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatemultiplication--898f300479c927910783977f.md) | 61 | `declaration-track:898f300479c927910783977f43ad2b723d4f00db7f602eba5002792fffc19457` |
| 4 | `theorem` | [coordinateMultiplication_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatemultiplication-domain--955aa31eb89f40b98b0ba414.md) | 89 | `result-track:955aa31eb89f40b98b0ba4140acf759b3cc2bc8efc78363c879da5f4009396c1` |
| 5 | `theorem` | [coordinateMultiplication_apply_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatemultiplication-apply-ae--d8b94df57908900d55e006d4.md) | 93 | `result-track:d8b94df57908900d55e006d4a2c3577ecb5ae13d06cd1865ac6298cb47651f68` |
| 6 | `theorem` | [coordinateMultiplication_formalAdjoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatemultiplication-formaladjoint--efb7d236bf9564c05739a47c.md) | 99 | `result-track:efb7d236bf9564c05739a47c4206c22617f270c850ddfa4d243eebd21d5f3efc` |
| 7 | `theorem` | [coordinateMultiplication_maximal_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatemultiplication-maximal-domain--f1b8fb3fd0d1f9feada32d8c.md) | 110 | `result-track:f1b8fb3fd0d1f9feada32d8cb203ed839f4b0a60fc6dadb3b65566c8c81ac9ae` |
| 8 | `theorem` | [norm_sq_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/norm-sq-eq-integral--a432fd2e026ca5a6f6f251c1.md) | 116 | `result-track:a432fd2e026ca5a6f6f251c12aeb27c274be95f4bcd1d98b70f93115515dfd32` |
| 9 | `theorem` | [graph_norm_sq_eq_weighted_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/graph-norm-sq-eq-weighted-integral--c93fa7fcfaa4b770f029374d.md) | 125 | `result-track:c93fa7fcfaa4b770f029374dfff755e59194f8ff909f147723a6ac7648b0ed7d` |
| 10 | `theorem` | [mem_coordinateDomain_iff_weighted_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/mem-coordinatedomain-iff-weighted-integrable--01926700e87a31b346869fe0.md) | 144 | `result-track:01926700e87a31b346869fe073a738d8ccb6d677ba84308ae19bc27ce49eb938` |
| 11 | `def` | [graphMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/graphmeasure--2fd307a52be7f08826614a91.md) | 168 | `declaration-track:2fd307a52be7f08826614a9183f3856e396f4ea2751376f1a61c48c32fd1aa62` |
| 12 | `theorem` | [graphMeasure_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/graphmeasure-absolutelycontinuous--3eb5b9fac2457d7a060339e5.md) | 171 | `result-track:3eb5b9fac2457d7a060339e5579e12f99376708782ed308db9dad2a5dcf33b7e` |
| 13 | `theorem` | [mem_coordinateDomain_iff_graph_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/mem-coordinatedomain-iff-graph-memlp--c9841b241d0d3a3b867ffc96.md) | 175 | `result-track:c9841b241d0d3a3b867ffc96a6dd41c0cbdfe3e34502729851b104772a1d4d09` |
| 14 | `theorem` | [compactContinuous_mem_coordinateDomain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/compactcontinuous-mem-coordinatedomain--8b9de918364346e10d75e27b.md) | 186 | `result-track:8b9de918364346e10d75e27b64354f09ff932cf0be855f481682ba478df5ad8c` |
| 15 | `theorem` | [coordinateDomain_dense](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaMultiplicationDomain/Variant6846d5aff91231ccfbf14a835ce90c8eaf048eebbbaa7963ca9c5d3048b29834.lean/declarations/coordinatedomain-dense--2595ef712229035d6b592fc8.md) | 198 | `result-track:2595ef712229035d6b592fc8bc083dfb9d7d4f574ce51dd1f85266876043839a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

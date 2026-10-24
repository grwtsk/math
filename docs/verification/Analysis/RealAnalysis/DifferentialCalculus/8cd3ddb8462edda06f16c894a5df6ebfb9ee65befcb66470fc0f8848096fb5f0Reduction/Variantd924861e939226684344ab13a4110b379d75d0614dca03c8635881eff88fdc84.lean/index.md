# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction.Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c690a8dead1f07f62a8318e1e84b4761506ad3d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c690a8dead1f07f62a8318e1e84b4761506ad3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/det-fin-three-normalize-first-row--93b719df3e37d2c0a360f047.md) | 17 | `result-track:93b719df3e37d2c0a360f047f499d7b78450af118b027ad8b176ef77c677de60` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/det-fin-three-normalized-eq-differences--d919b95124e49e0c0c11358b.md) | 26 | `result-track:d919b95124e49e0c0c11358b4e11fcfe8e12e010e77835d00920f4d6bacf7e2a` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/det-fin-three-normalized-eq-secants--c3a855439908de4920d05593.md) | 32 | `result-track:c3a855439908de4920d05593624b775d99267e0620b9cdcefb6c1762b62947e0` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/oriented-plucker-three-scalar--39cb1f5687346ebf33da6f7d.md) | 41 | `result-track:39cb1f5687346ebf33da6f7d2c6d6de0b82607ff331a2dcc12b21eb38e8e34b9` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/oriented-plucker-three--c42a3dda08e5c6147c8b0b05.md) | 48 | `result-track:c42a3dda08e5c6147c8b0b0589a6d06547ec7f2dd53b26325579c55a7689a7e4` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/image-sub-neg-of-hasderivat-neg--a8fc175393125e72ec7e3cd3.md) | 56 | `result-track:a8fc175393125e72ec7e3cd3977136a5eac474e90d40b05b64a114e7b280a9c0` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/8cd3ddb8462edda06f16c894a5df6ebfb9ee65befcb66470fc0f8848096fb5f0Reduction/Variantd924861e939226684344ab13a4110b379d75d0614dca03c8635881eff88fdc84.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio--1fda9821de0c8470e7204d22.md) | 64 | `result-track:1fda9821de0c8470e7204d222576209d7e35773700077acf741f2fa09c30e4b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

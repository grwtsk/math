# Verification target: GRWTSK.Analysis.FeatureMap.Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "354f9286686a90d652af27ae500e41ee0a862293",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/index.md) · [Full source](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `354f9286686a90d652af27ae500e41ee0a862293`.

Source path: `GRWTSK/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelVector](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/kernelvector--2766d5044e3557d3435a960b.md) | 31 | `declaration-track:2766d5044e3557d3435a960b8becd1f365b4eb925edc35819ef95d0e6f15b096` |
| 2 | `def` | [rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/rawtokernelspace--dbaf411c25c04fdf1da56961.md) | 38 | `declaration-track:dbaf411c25c04fdf1da56961fb4581c17764345eaf4caa0abf4b8a30dd2e05fb` |
| 3 | `theorem` | [rawToKernelSpace_basisVector](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/rawtokernelspace-basisvector--c6533987d44d1ea833b5a208.md) | 43 | `result-track:c6533987d44d1ea833b5a2086eb2eb1bc8ea005f1b43db54ab021b2d5a88637c` |
| 4 | `theorem` | [inner_rawToKernelSpace](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/inner-rawtokernelspace--82015513f7ce62abb23d1a31.md) | 50 | `result-track:82015513f7ce62abb23d1a31b18e4e0921862f8f35fada40df60086f6b861032` |
| 5 | `theorem` | [inner_kernelVector](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/inner-kernelvector--8940047ed976faf7794d394d.md) | 61 | `result-track:8940047ed976faf7794d394deffcf3451d879c4f331b0b92ebb1cb1fc8e79cce` |
| 6 | `theorem` | [norm_kernelVector_sq](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/norm-kernelvector-sq--5d66862eaac16ceb5c6aaec5.md) | 70 | `result-track:5d66862eaac16ceb5c6aaec53d123b4e41f9ba89607c2ac23a156f6c21ceac44` |
| 7 | `def` | [kernelSpan](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/kernelspan--53b7cbf82d710d20f99348ef.md) | 77 | `declaration-track:53b7cbf82d710d20f99348ef953a2d9750f107a644b265e61c97eb4428e41703` |
| 8 | `theorem` | [rawToKernelSpace_mem_span](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/rawtokernelspace-mem-span--055531828a6e0c8aedd3b6b0.md) | 81 | `result-track:055531828a6e0c8aedd3b6b08760634b70a77b1480bdbc9c30e54f69d5e230e7` |
| 9 | `theorem` | [kernelVector_denseSpan](../../../../mathematics/Analysis/FeatureMap/Variantf2f61556e8121db54689ea6008db49a0867a6f49fb64a99c32daeece6a0e9fce.lean/declarations/kernelvector-densespan--be737e6f1b3d562415383013.md) | 105 | `result-track:be737e6f1b3d5624153830130510cabeec7f3c4f8cdd5e885aea5d54799dc218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

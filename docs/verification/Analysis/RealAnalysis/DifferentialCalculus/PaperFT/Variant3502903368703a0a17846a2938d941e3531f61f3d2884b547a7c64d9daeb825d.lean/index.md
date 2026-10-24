# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PaperFT.Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c00f24ccd9318d9cc528802e0db0021928048d61",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c00f24ccd9318d9cc528802e0db0021928048d61`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.FourierTransform` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Defs` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [paperFT_def](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/paperft-def--67f95c416219d2f8f7efee59.md) | 35 | `result-track:67f95c416219d2f8f7efee59f094f39c0e0352864469832f9877dc8c8b0f34c0` |
| 2 | `theorem` | [integral_const_mul_C](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/integral-const-mul-c--0ec0f2ae3fa2c52b51169501.md) | 42 | `result-track:0ec0f2ae3fa2c52b51169501e0c5888ed3b0b47e33df68da4ac6a18f8905d933` |
| 3 | `theorem` | [integral_mul_const_C](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/integral-mul-const-c--da0890d3a3ba1b8b1cb57019.md) | 45 | `result-track:da0890d3a3ba1b8b1cb570192a1c00dd4902254999e25f1dae48b8fac278a523` |
| 4 | `theorem` | [paperFT_ofReal_eq_fourier](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/paperft-ofreal-eq-fourier--5e5e56abe8f41060f147ec0d.md) | 50 | `result-track:5e5e56abe8f41060f147ec0d4ac7d952f3cd3387964e253c1ae6f34ffe7b2037` |
| 5 | `theorem` | [fourier_eq_paperFT](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/fourier-eq-paperft--7742f704d839de3997b17411.md) | 62 | `result-track:7742f704d839de3997b174111dbc52503bbec96848e6e5a179be1ce4b6a2cc5a` |
| 6 | `theorem` | [norm_cexp_I_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/norm-cexp-i-mul--df29477bbceced005665cfee.md) | 75 | `result-track:df29477bbceced005665cfee16fb86e04114faaf01904d2290f62890077e2fbd` |
| 7 | `theorem` | [norm_cexp_I_mul_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/norm-cexp-i-mul-le--3f59e9950430a2ff42feeafb.md) | 80 | `result-track:3f59e9950430a2ff42feeafb116fc707733cfb1e728a4b6f5cf801535cfc63c9` |
| 8 | `theorem` | [norm_paperFT_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/norm-paperft-le--f031af505d42e49f52b5d0c3.md) | 88 | `result-track:f031af505d42e49f52b5d0c3e6e5d974849d43c7bd0d0595b7c6166b19b02ded` |
| 9 | `theorem` | [paperFT_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/paperft-deriv--675351d9622d30bb90a44961.md) | 101 | `result-track:675351d9622d30bb90a44961037f904b126eda3b6af2c12e27ac6c1c49a7aec0` |
| 10 | `theorem` | [paperFT_deriv_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/paperft-deriv-deriv--b9db1470c638b39f9717bb2e.md) | 127 | `result-track:b9db1470c638b39f9717bb2ea90cd551763259e9896834a3f05a567104506903` |
| 11 | `theorem` | [hasCompactSupport_of_support_subset_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/hascompactsupport-of-support-subset-abs--5ea79927c84969f1491e5d48.md) | 135 | `result-track:5ea79927c84969f1491e5d4849369db86de3b721d8956d3d8f8a63e4ce909bbd` |
| 12 | `theorem` | [tsupport_subset_of_support_subset_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/tsupport-subset-of-support-subset-abs--439c708962921ec09ba9f8a2.md) | 141 | `result-track:439c708962921ec09ba9f8a2a013726b544c470ce09ca66ba5594cb40238c236` |
| 13 | `theorem` | [norm_paperFT_mul_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/norm-paperft-mul-sq-le--fd3d7f01b1e80d646693d2a2.md) | 147 | `result-track:fd3d7f01b1e80d646693d2a296f6cf4f108426a8d8a9aceb2705dbc66fd82238` |
| 14 | `theorem` | [norm_paperFT_le_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/PaperFT/Variant3502903368703a0a17846a2938d941e3531f61f3d2884b547a7c64d9daeb825d.lean/declarations/norm-paperft-le-div--240142bd40b07982035c839b.md) | 164 | `result-track:240142bd40b07982035c839bdb2d5685f561e8251550cd078028e2e7fdb2bd34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

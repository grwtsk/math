# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateSourceMobiusKernel.Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d154a00a93e066fed1cc5a01e2fff0b9b31c92",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d154a00a93e066fed1cc5a01e2fff0b9b31c92`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceKernelCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcekernelcutoff--3848496585a8dc9dfa277c28.md) | 37 | `declaration-track:3848496585a8dc9dfa277c28b0d72e8e6811ee8ac089f3a0251f29bcd5075e35` |
| 2 | `def` | [sourceKernelTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcekernelterm--91a039c5d67ad13ee411809a.md) | 41 | `declaration-track:91a039c5d67ad13ee411809a30b8b6f64bac26b2ea9101e9355be411bca2fb00` |
| 3 | `def` | [sourceMobiusKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel--3a47a6c915740ad2ac4e1110.md) | 48 | `declaration-track:3a47a6c915740ad2ac4e1110dee83d5257bef9cb1621643140630cef7866edf4` |
| 4 | `theorem` | [sourceKernelTerm_eq_archive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcekernelterm-eq-archive--a575e7592070ea98db11c84c.md) | 54 | `result-track:a575e7592070ea98db11c84cc68734e9f665b73120b3208ef8b1bb0502da7c00` |
| 5 | `theorem` | [sourceKernelTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcekernelterm-contdiffon-pos--757002ba968ccb0f0b1c3c9d.md) | 75 | `result-track:757002ba968ccb0f0b1c3c9da2a37d7705a94b8f93c843e561c6b7b6c844d5fb` |
| 6 | `theorem` | [sourceMobiusKernel_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-contdiffon-pos--75fd6796f729861da041653f.md) | 108 | `result-track:75fd6796f729861da041653feeed3a4c9961d6301337331a58c1e38bcd619d05` |
| 7 | `theorem` | [source_window_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/source-window-pos--ee783fe262614b0ac23b7e87.md) | 118 | `result-track:ee783fe262614b0ac23b7e8767a11d195c381253cf5ef04493e5f0dc8aca5609` |
| 8 | `theorem` | [sourceMobiusKernel_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-differentiableat--d7db3fa67e70df3c24aefa1c.md) | 129 | `result-track:d7db3fa67e70df3c24aefa1ceecdad3012f222a3b9fa0cd8002b40ab0973a1cf` |
| 9 | `theorem` | [sourceMobiusKernel_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-deriv-integrable--47d5616b1ff4e63814033f5d.md) | 143 | `result-track:47d5616b1ff4e63814033f5d657016063795bbc73a7ca025a7144413aa21b93f` |
| 10 | `theorem` | [sourceKernelTerm_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcekernelterm-upper-zero--836b1c27463ffc2c9995fe7f.md) | 159 | `result-track:836b1c27463ffc2c9995fe7fc44d6ba36b1b4e212b13f17c0383f4b27d92a511` |
| 11 | `theorem` | [sourceMobiusKernel_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-upper-zero--36f5acda47086f3e465adf34.md) | 191 | `result-track:36f5acda47086f3e465adf343832aaf28cbd66f3e49bb383ff27299bf0212bbb` |
| 12 | `def` | [SourceMobiusKernelAnalyticContract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernelanalyticcontract--f09d070128c2b8c607707daa.md) | 202 | `declaration-track:f09d070128c2b8c607707daa58cf0f6a985130e10e2d88f17c07740f130981f7` |
| 13 | `theorem` | [sourceMobiusKernel_analytic_contract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-analytic-contract--b7eaa17b5b220ae138a159ea.md) | 210 | `result-track:b7eaa17b5b220ae138a159eae33c52a12884030af2c161e76602c0f0a27559ad` |
| 14 | `def` | [SourceMobiusKernelIntegerAgreement](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernelintegeragreement--0b16adf6ed4a7c978164da22.md) | 219 | `declaration-track:0b16adf6ed4a7c978164da2216d27505a670ef2e2ed05eb839fadbfbe519dbff` |
| 15 | `theorem` | [sourceMobiusKernel_contract_iff_integerAgreement](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernel-contract-iff-integeragreement--17fd9608e1b38ddc1d08bea2.md) | 232 | `result-track:17fd9608e1b38ddc1d08bea21ead87a4cca9c65ae2c8d18c0a434051eb2a4fad` |
| 16 | `def` | [SourceMobiusKernelCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/sourcemobiuskernelcheckpoint--f2c98adc6acc7a78a0c49fa0.md) | 244 | `declaration-track:f2c98adc6acc7a78a0c49fa02ceb215ba77728ad2b72ced3d77e852c261f9807` |
| 17 | `theorem` | [source_mobius_kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variant004ee93682e91cf8fa24ea627aeb4f97aa9772d12b4f4ed563df403d6ccec518.lean/declarations/source-mobius-kernel-checkpoint--66373e248ec9ca369c6913de.md) | 250 | `result-track:66373e248ec9ca369c6913deff6ff2d6a975d2d37425485faad0e04a66b7ab2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

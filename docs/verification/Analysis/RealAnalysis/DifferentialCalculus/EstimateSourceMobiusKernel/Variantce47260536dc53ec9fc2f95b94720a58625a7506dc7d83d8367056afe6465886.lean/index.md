# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EstimateSourceMobiusKernel.Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c1495a7e48a3bd4129036cff6182a771e82811",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c1495a7e48a3bd4129036cff6182a771e82811`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceKernelCutoff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcekernelcutoff--0590b9fffa3fb3e70bf8e1fd.md) | 45 | `declaration-track:0590b9fffa3fb3e70bf8e1fd7151135a5f0b4c29f9f49164bd856ba794414487` |
| 2 | `def` | [sourceKernelTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcekernelterm--a51f4574de696b22bead0416.md) | 49 | `declaration-track:a51f4574de696b22bead041640d9741c4b1154a38efab1c2f507a7cfcbfdb6e6` |
| 3 | `def` | [sourceMobiusKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel--8bc722a1cc5bc11cf297e9e1.md) | 56 | `declaration-track:8bc722a1cc5bc11cf297e9e1fed93111a03e3b6786b258af19200acbe4fe5052` |
| 4 | `theorem` | [sourceKernelTerm_eq_archive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcekernelterm-eq-archive--60001d59dc8554437bab9f74.md) | 62 | `result-track:60001d59dc8554437bab9f74e0f812302e7baac91e4cfd8be6be362a32c54f03` |
| 5 | `theorem` | [sourceKernelTerm_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcekernelterm-contdiffon-pos--fcb49a8c054a8131801102f6.md) | 83 | `result-track:fcb49a8c054a8131801102f6b988fb415ee2a36dfd2c1df8aeb5e2293cafcb91` |
| 6 | `theorem` | [sourceMobiusKernel_contDiffOn_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-contdiffon-pos--6d0ea72bfdb38cdd7859cd8b.md) | 116 | `result-track:6d0ea72bfdb38cdd7859cd8bd81e4930101ccdcd245038340d4dd53073fbb184` |
| 7 | `theorem` | [source_window_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/source-window-pos--406804cbe0bb62a570a49b60.md) | 126 | `result-track:406804cbe0bb62a570a49b60e66a5db87c14eb08f5ba7c84d2ec6176c9c59e05` |
| 8 | `theorem` | [sourceMobiusKernel_differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-differentiableat--1b6316b99fbe5dbbf336b966.md) | 137 | `result-track:1b6316b99fbe5dbbf336b966403f799262bd018ab757a2f6336e0ffcdd628a4c` |
| 9 | `theorem` | [sourceMobiusKernel_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-deriv-integrable--98811e34dd087fbd521f2f9a.md) | 151 | `result-track:98811e34dd087fbd521f2f9a91a82d4f245d7b44a64c38f173b3faaa55f864ea` |
| 10 | `theorem` | [sourceKernelTerm_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcekernelterm-upper-zero--65f02704d6296deabe2bbace.md) | 167 | `result-track:65f02704d6296deabe2bbacea7b95ed76e6eb7e0d99c13036173126b5ea81e6a` |
| 11 | `theorem` | [sourceMobiusKernel_upper_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-upper-zero--a1957c9fea40bd6023425358.md) | 199 | `result-track:a1957c9fea40bd602342535864028803e90bb1f93dfdd729cf4d3a37ea85edf8` |
| 12 | `def` | [SourceMobiusKernelAnalyticContract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernelanalyticcontract--4c4b21b578663f87719c99cd.md) | 210 | `declaration-track:4c4b21b578663f87719c99cda620d74eefbc001f42e57904f02c94897c33b685` |
| 13 | `theorem` | [sourceMobiusKernel_analytic_contract](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-analytic-contract--c11ae22e2305112a9466f5cb.md) | 218 | `result-track:c11ae22e2305112a9466f5cb7f490625133aa48ffba9902763ecc930c3f2ce78` |
| 14 | `def` | [SourceMobiusKernelIntegerAgreement](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernelintegeragreement--27a1fa07951a1deb1b51a29a.md) | 227 | `declaration-track:27a1fa07951a1deb1b51a29ab81569c88dbe1c8729efadfcff603eace65423cc` |
| 15 | `theorem` | [sourceMobiusKernel_contract_iff_integerAgreement](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernel-contract-iff-integeragreement--dd9bcefe9dcbc43210253c20.md) | 240 | `result-track:dd9bcefe9dcbc43210253c20d3ddb4cd0cc6670bd620ea6ac881819e39638079` |
| 16 | `def` | [SourceMobiusKernelCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/sourcemobiuskernelcheckpoint--6c4d74e4a460f935d349c823.md) | 252 | `declaration-track:6c4d74e4a460f935d349c8235a7c1df2310b7d5f6ef356fcc1407edd61cfa427` |
| 17 | `theorem` | [source_mobius_kernel_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/EstimateSourceMobiusKernel/Variantce47260536dc53ec9fc2f95b94720a58625a7506dc7d83d8367056afe6465886.lean/declarations/source-mobius-kernel-checkpoint--7874adacf477f958071df33c.md) | 258 | `result-track:7874adacf477f958071df33c2ec025986c0e9ba132d7a7dbe1d5f6d7d68af1a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

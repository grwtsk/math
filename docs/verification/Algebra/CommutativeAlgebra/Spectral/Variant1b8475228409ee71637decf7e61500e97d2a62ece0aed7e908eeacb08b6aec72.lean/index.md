# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Spectral.Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38887fd963452a54f7582026ed4dd39e824ca6f9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38887fd963452a54f7582026ed4dd39e824ca6f9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Comparison` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedAdjacency](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/weightedadjacency--2b2579e0c18845a9c0517116.md) | 13 | `declaration-track:2b2579e0c18845a9c0517116a237d3e17c874242b9df1747506efdf37e60c8a5` |
| 2 | `abbrev` | [DegreeMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/degreematrix--a5c380424b8e0cc3034db1f6.md) | 14 | `declaration-track:a5c380424b8e0cc3034db1f6b46daffbbcf0547b045b42f65b0d3c1004a8c46d` |
| 3 | `abbrev` | [GraphLaplacian](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/graphlaplacian--620c75475c99819700aa74fc.md) | 15 | `declaration-track:620c75475c99819700aa74fc2f57eef1ac76bccffd14cad6ad0b1a0d8b57bead` |
| 4 | `def` | [matrixZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/matrixzero--df49a7ee52d2c787894de48a.md) | 17 | `declaration-track:df49a7ee52d2c787894de48a52b0f657a38d1ac5a961e871da51534797f083a5` |
| 5 | `def` | [matrixIdentity](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/matrixidentity--ce3d2a03ff14aa1b843c61aa.md) | 20 | `declaration-track:ce3d2a03ff14aa1b843c61aaf802878a13237e60dfd5e4b8a837bc94f391bf77` |
| 6 | `def` | [matrixAdd](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/matrixadd--d3b800ccf3c753cbd42d36c7.md) | 23 | `declaration-track:d3b800ccf3c753cbd42d36c7469f8546dba86f0b7beb55f92275966c4cbe3df7` |
| 7 | `def` | [matrixMul](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/matrixmul--2715c512b9a09ad0020cf937.md) | 26 | `declaration-track:2715c512b9a09ad0020cf93710dc119a00d73d4f9ea9b1feac94b77a37c2d375` |
| 8 | `def` | [rowSum](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/rowsum--29e263a83b4c2219d01a75a5.md) | 29 | `declaration-track:29e263a83b4c2219d01a75a50fd71d565ad9d5bc3335bf42ec334ffcf5d00da6` |
| 9 | `def` | [weightedAdjacency](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/weightedadjacency--bce6ee0d59842520371f7a5c.md) | 32 | `declaration-track:bce6ee0d59842520371f7a5c959aec13c39fd18c09864ee7241aba7f49780068` |
| 10 | `def` | [degreeMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/degreematrix--44fdeaaead3ccc2e27b2b44a.md) | 36 | `declaration-track:44fdeaaead3ccc2e27b2b44a70ead9b7b26c7d24c297d3010b65a63650b0946a` |
| 11 | `def` | [graphLaplacian](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/graphlaplacian--62873de461b1ac8e0cbcd7e3.md) | 39 | `declaration-track:62873de461b1ac8e0cbcd7e38fee49f840c4ddde7805e3328b28c10bc438b377` |
| 12 | `def` | [Symmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/symmetric--4e47f348e3d9473398b17b6e.md) | 42 | `declaration-track:4e47f348e3d9473398b17b6e6588e06309e42e8247dbdf743e3c57ca759ac35c` |
| 13 | `def` | [RowSumZero](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/rowsumzero--c54215c2f029782c2e47f70f.md) | 45 | `declaration-track:c54215c2f029782c2e47f70ff0e96f536bc15f829b0d5a9f28d75f0eb6754a33` |
| 14 | `theorem` | [weightedAdjacency_symmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/weightedadjacency-symmetric--b84f0b2fc3bb6cf4e48b4541.md) | 48 | `result-track:b84f0b2fc3bb6cf4e48b454173ab799cb02ea7810945eb50f5016f87cd5a0d51` |
| 15 | `theorem` | [graphLaplacian_symmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/graphlaplacian-symmetric--dacaf771ce66e13862f8dda0.md) | 60 | `result-track:dacaf771ce66e13862f8dda039dbfade5ff70cc369d27465179063ca5c19da04` |
| 16 | `theorem` | [graphLaplacian_row_sum_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/graphlaplacian-row-sum-zero--c941c077bafbbffa8ef166b2.md) | 72 | `result-track:c941c077bafbbffa8ef166b2603f5427b5c241a79ebdf4b3b22bc1b722527ca6` |
| 17 | `structure` | [PolynomialKernelPolicy](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/polynomialkernelpolicy--5f91022d2b34d96c243f1429.md) | 76 | `declaration-track:5f91022d2b34d96c243f14292c82b9239855cff53e3dfe4dd6e212ff83062503` |
| 18 | `inductive` | [SpectralPolicy](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/spectralpolicy--1ebcb05025ac1cfbe9f40f80.md) | 80 | `declaration-track:1ebcb05025ac1cfbe9f40f800efea1c75425e57cf0ef880a9b429773aa754095` |
| 19 | `def` | [matrixPow](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/matrixpow--3e3fdece8235d4ceb123baa4.md) | 84 | `declaration-track:3e3fdece8235d4ceb123baa413161469df71c88d5bccaccc3695e24e25c8aad6` |
| 20 | `def` | [polynomialEvalMatrixFrom](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/polynomialevalmatrixfrom--3ad4ddf8184e77e48b7b2619.md) | 88 | `declaration-track:3ad4ddf8184e77e48b7b26199bd8d06aba1281e9ffe391918f20102d6f531627` |
| 21 | `def` | [polynomialEvalMatrix](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/polynomialevalmatrix--d00977f6baab6414f6243cf1.md) | 96 | `declaration-track:d00977f6baab6414f6243cf19d70182cfb70ea5217994f82b7455d1f5acc4446` |
| 22 | `def` | [spectralKernelFromPolynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/spectralkernelfrompolynomial--bae5e768a08fc8c108a1d575.md) | 100 | `declaration-track:bae5e768a08fc8c108a1d575bfbb645f96f1bfdf3b26970207b8706add881fa5` |
| 23 | `theorem` | [spectralKernel_polynomial_defined](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/spectralkernel-polynomial-defined--924b5ebb3a9f3ef439c6c7a9.md) | 105 | `result-track:924b5ebb3a9f3ef439c6c7a9dadbb40afbd8c8fe3c66a1fa5a27b3a59f35db6a` |
| 24 | `structure` | [SpectralChoice](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/spectralchoice--e05dea91ef7a7f9644c1f2e2.md) | 110 | `declaration-track:e05dea91ef7a7f9644c1f2e24fb4810e8391b1c30ce50335eba81a98bd71b519` |
| 25 | `def` | [KernelSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/kernelsound--27cbb4346d82ed3d043c5655.md) | 121 | `declaration-track:27cbb4346d82ed3d043c56554d06671ae4a6c47be651b00aad696299217ba769` |
| 26 | `def` | [SelectionSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/selectionsound--2a72ae7f75404f45ffb9d2b6.md) | 122 | `declaration-track:2a72ae7f75404f45ffb9d2b62912a4d38028ac498347b5ef2027bbe0e5e65b2d` |
| 27 | `def` | [GroupSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/groupsound--e179f01a5977931453a1cf92.md) | 123 | `declaration-track:e179f01a5977931453a1cf92cedd6bef702eb60d8ce582cc38e9afffd65bdf41` |
| 28 | `def` | [ScopeSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/scopesound--492136e47b027455f03093a0.md) | 124 | `declaration-track:492136e47b027455f03093a08e30d9bf37f301569892639d265b4d0c01404e02` |
| 29 | `def` | [FocusSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/focussound--f10d8fd46fc11d53b151e4ea.md) | 125 | `declaration-track:f10d8fd46fc11d53b151e4eae3e9469c1def53224b69ccf16497025d1c1a9393` |
| 30 | `def` | [DivisorSound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/divisorsound--fc35f267f3d80668b8f153fd.md) | 126 | `declaration-track:fc35f267f3d80668b8f153fd39059d471886fbac75ba9bc6de1c160f7b23cdcb` |
| 31 | `theorem` | [spectralChoice_sound](../../../../../mathematics/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean/declarations/spectralchoice-sound--f69454d85d94f12b58bee146.md) | 128 | `result-track:f69454d85d94f12b58bee1466d9aee8eb7afeaa5225632099f2ba755404d2e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

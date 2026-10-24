# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineFirstDerivative.Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dfefe0903495023081ab88c6731e34e3c9145be",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dfefe0903495023081ab88c6731e34e3c9145be`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/weightderivative--f0c63165b0b9820cbc0767cf.md) | 52 | `declaration-track:f0c63165b0b9820cbc0767cf25e6c0e6e6c0c93895a01a6aed010f721c6a4eb5` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/weightderivative-apply--786d2c642c558a6ed9a8f51a.md) | 56 | `result-track:786d2c642c558a6ed9a8f51a89185039699b2b2fe205200dafc6fa0d7e872ef7` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/analyticat-unnormalizedweight--a6d27c611d5060b9e5255f13.md) | 63 | `result-track:a6d27c611d5060b9e5255f1332b5025b2b6ce90562e5dc5a069d29bd42fc8021` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/hasfderivat-unnormalizedweight--c6018ddde537839abfe50fd4.md) | 72 | `result-track:c6018ddde537839abfe50fd4f289dec855e4a3d8d7392618c1423903be0464ae` |
| 5 | `def` | [partitionDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/partitionderivative--71ec1e726cff6bc380cc09be.md) | 83 | `declaration-track:71ec1e726cff6bc380cc09be3f6d99cc7efb49565993e1cb27e7a9946d7016bf` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/partitionderivative-apply--412bc46fab21e81be99dd732.md) | 87 | `result-track:412bc46fab21e81be99dd732115abac90b711ca638bbf3f8592ae4ca5d5d429a` |
| 7 | `theorem` | [analyticAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/analyticat-partition--3d2dec3fccae20f3a81cfa37.md) | 96 | `result-track:3d2dec3fccae20f3a81cfa37ad549a047963277f545696fcd73c4265d2e64966` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/hasfderivat-partition--8a9ff616c0a744ffd7589527.md) | 106 | `result-track:8a9ff616c0a744ffd7589527aa76b67f6fc6c7c66d69c2732e247d57feefb679` |
| 9 | `theorem` | [partition_mul_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/partition-mul-probability--d503eb0db578718c6c27d29b.md) | 119 | `result-track:d503eb0db578718c6c27d29bd72185ea464049a5970e98e72902b73e3fcb09e0` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/partitionderivative-eq-partition-smul-centroid--11c46da6738e59a7e3d9ea01.md) | 127 | `result-track:11c46da6738e59a7e3d9ea011971e004813b8faf11b17d19cd4c8cb078be6b75` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/inv-smul-partitionderivative-eq-centroid--07bce075576d211a26615bbd.md) | 139 | `result-track:07bce075576d211a26615bbd2afd59b45e9a96994b2028dfcbe8d21cab82bfb0` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/analyticat-logpartition--81a9e21e70bd1aa1655d45f5.md) | 149 | `result-track:81a9e21e70bd1aa1655d45f56e54d6a5150de34b1fd56ce70834fe58887171bb` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/hasfderivat-logpartition--65506735548e24ab382a8a8f.md) | 155 | `result-track:65506735548e24ab382a8a8f4645db8de831f51bb0c911531e0fcd9118aba724` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/fderiv-logpartition-eq-centroid--98775dd02a833bc0d52dc444.md) | 166 | `result-track:98775dd02a833bc0d52dc4440b6ac4d761b268ec15195183c476083bb1a95db1` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/analyticat-centroid--62bed8e9802d4bad7926e3b3.md) | 173 | `result-track:62bed8e9802d4bad7926e3b3958d564c125fea35941e7f808b0c56ff35b3dc3c` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant698352a18420ec7d6de910da1881c217cf4ab8d9adce07878fc9ce722eb77076.lean/declarations/directional-derivative-logpartition--606d1419541fd4f5f0bcf9e6.md) | 186 | `result-track:606d1419541fd4f5f0bcf9e68c427b5395a19de35bddb829dad9cf212511b60d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

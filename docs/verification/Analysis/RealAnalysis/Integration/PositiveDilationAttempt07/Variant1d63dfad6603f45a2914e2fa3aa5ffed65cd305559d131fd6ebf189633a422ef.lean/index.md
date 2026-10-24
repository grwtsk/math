# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilationAttempt07.Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "594a360b42ba7201f98533d57de176f680da7d9b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `594a360b42ba7201f98533d57de176f680da7d9b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/positivemeasure--09787c840b751f30c2f29502.md) | 14 | `declaration-track:09787c840b751f30c2f2950246faf1b636e8b7ac1b29a9490761eaf389e73552` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/positivel2--79285977a1f0f949c7b20f54.md) | 15 | `declaration-track:79285977a1f0f949c7b20f54be1452dbe8d7707f4505da6ae1d3e41083f8c9df` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilatefunc--99461a0d69e6f738bbe4c95c.md) | 17 | `declaration-track:99461a0d69e6f738bbe4c95c6f2bbc8349268f4342bd284fa4ffc7bcc4a9bf64` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/positivemeasure-map-mul--a68d00198ff57d15ce28eb58.md) | 19 | `result-track:a68d00198ff57d15ce28eb58c59ffe77a9a4ed33edc36fc251addc8f9fcdb31f` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/positive-mul-quasi--7bbc04619eb3ab7112ae107a.md) | 28 | `result-track:7bbc04619eb3ab7112ae107a2137cd4ce8186104a06fcd4ab6f7585d6025e815` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilatefunc-memlp--6508faff8467a173de84ef39.md) | 34 | `result-track:6508faff8467a173de84ef3941dd605e1a2f995150048dddad8463540dc58d70` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate--b23720160e37c03678aa317d.md) | 41 | `declaration-track:b23720160e37c03678aa317d73118280f9441d56c05554166ea30c70f5f46943` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-ae--3fa5e3672547f7ca4e7b4c63.md) | 44 | `result-track:3fa5e3672547f7ca4e7b4c636c7e62664f8762c4bfb04ab1ebb7966b5f0d3080` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/norm-sq-integral--c47c45dd969e08adf11daaf6.md) | 48 | `result-track:c47c45dd969e08adf11daaf60de4043335e1452221edb7f414fa5814fe62421c` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-norm-sq--2b6c9d3a3f50c548fecc1bb3.md) | 63 | `result-track:2b6c9d3a3f50c548fecc1bb355017f39756aa98951602c39a241314307b604a2` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-norm--4d11536dfbae523bfe184603.md) | 77 | `result-track:4d11536dfbae523bfe1846032ef14bbccc181e8e30570f739abfacb798a1f885` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-one--475c233ae8269694417f0ae7.md) | 80 | `result-track:475c233ae8269694417f0ae70e3d805f45c38d1a3e4d6c5f1c3ac5644155996f` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-comp--6f6b6a3d7768164cd98e7f76.md) | 85 | `result-track:6f6b6a3d7768164cd98e7f7625649c609ba8cb4f5b30cdb1078b26a0c7403dd8` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-inverse--adeb59f2c9f819b1ebb5603c.md) | 97 | `result-track:adeb59f2c9f819b1ebb5603c84a0cf62e64df2b2d0a6394dd0498014d978d52b` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-add--58ae397824d7a91b7e61b4b9.md) | 102 | `result-track:58ae397824d7a91b7e61b4b9e976e69d9d22d6c96c00be3abaebc371b18a4483` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilate-smul--3183da9f1440ef8026cb3887.md) | 112 | `result-track:3183da9f1440ef8026cb38871750b5685b512b13c7e4a0f49be1767e99b1d9d8` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilationisometry--a09eb91087379a7a587c7def.md) | 123 | `declaration-track:a09eb91087379a7a587c7def61f0e0cd052021e497c60a370cac402509375079` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilationAttempt07/Variant1d63dfad6603f45a2914e2fa3aa5ffed65cd305559d131fd6ebf189633a422ef.lean/declarations/dilationequiv--334b50d4afaa65003f300423.md) | 129 | `declaration-track:334b50d4afaa65003f30042315c5b9c5977f65c1646ce45b18938d0d6b9bfd09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

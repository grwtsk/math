# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PositiveDilation.Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b72e207beb69988f94fdb6aa2134ca904c5c93",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b72e207beb69988f94fdb6aa2134ca904c5c93`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMuntzBound` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/positivemeasure--022211a1523bd40862fde405.md) | 22 | `declaration-track:022211a1523bd40862fde40521c340f09c8c9ef4ac4ca6db117cee7b71210f7e` |
| 2 | `abbrev` | [PositiveL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/positivel2--7224323f3b1b7f4354a724f3.md) | 23 | `declaration-track:7224323f3b1b7f4354a724f3f595d24dd3827f2804e99887f4e2021e2cdbc545` |
| 3 | `def` | [dilateFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilatefunc--80585244d48b608d47d3d5d5.md) | 25 | `declaration-track:80585244d48b608d47d3d5d5a931b61eb3ba229922b7b2ea58d1474de1fb359d` |
| 4 | `theorem` | [positiveMeasure_map_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/positivemeasure-map-mul--a939e7b2be7f25402933e917.md) | 27 | `result-track:a939e7b2be7f25402933e9170002c304e87d809302a3795246253a6694687dc9` |
| 5 | `theorem` | [positive_mul_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/positive-mul-quasi--225f265be47c81e9371dc743.md) | 36 | `result-track:225f265be47c81e9371dc7439a0c3ae71c2da4e0f1ff47234d8474e339d93b30` |
| 6 | `theorem` | [dilateFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilatefunc-memlp--d270fd75833848bb1dff0f66.md) | 42 | `result-track:d270fd75833848bb1dff0f661682169da5a06b8d28a6c3efdcc9d9b5afbd8f6e` |
| 7 | `def` | [dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate--3a947f18adf2a48750651a0f.md) | 49 | `declaration-track:3a947f18adf2a48750651a0f5a76591697ba40aed4fc51f19a477eba60085454` |
| 8 | `theorem` | [dilate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-ae--1897ecd4aed02accfb3ad7fa.md) | 52 | `result-track:1897ecd4aed02accfb3ad7fa58ceed631b21cd48ad04a6e8bb86e31bdd5ba4c2` |
| 9 | `theorem` | [norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/norm-sq-integral--daecf58e127d12ae1c733141.md) | 56 | `result-track:daecf58e127d12ae1c733141e4c855f8a96c3d3685b60b3c50fb103dcfe1eb6e` |
| 10 | `theorem` | [dilate_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-norm-sq--6319aaaf72c1e1ea4c8aef12.md) | 72 | `result-track:6319aaaf72c1e1ea4c8aef12e94305db020d563850fc573dd550a9e5d1fc406b` |
| 11 | `theorem` | [dilate_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-norm--7455ac48afe0d93bb3b94f16.md) | 86 | `result-track:7455ac48afe0d93bb3b94f16c2f951c825013048db9b5cd71cf96750982d3aac` |
| 12 | `theorem` | [dilate_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-one--25414b663f5b236c05575923.md) | 89 | `result-track:25414b663f5b236c055759237e0500d3530a8b154dc12489feed977ffffdd9ba` |
| 13 | `theorem` | [dilate_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-comp--12a0cfa7a5b74021bebb76aa.md) | 94 | `result-track:12a0cfa7a5b74021bebb76aab268f01ee2b2e04875ee2316848cee777acfa482` |
| 14 | `theorem` | [dilate_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-inverse--1ef24483266273a69f048ce7.md) | 106 | `result-track:1ef24483266273a69f048ce7e424c6fdd6fabb69c5c778c29d067471ec095d79` |
| 15 | `theorem` | [dilate_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-add--54271cbcd86c1a0fc72244eb.md) | 111 | `result-track:54271cbcd86c1a0fc72244eb27d43d26b9d429ce424b5d9daf2a09d4316f5239` |
| 16 | `theorem` | [dilate_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilate-smul--dea14ca86ea65023396a71c1.md) | 121 | `result-track:dea14ca86ea65023396a71c1b80d5be8592341afbd7127e6e7846cc95463c5cd` |
| 17 | `def` | [dilationIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilationisometry--36d39b315d070c64986be1b9.md) | 132 | `declaration-track:36d39b315d070c64986be1b949858098517da5ce87ba27f90e33d7aa472cb806` |
| 18 | `def` | [dilationEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PositiveDilation/Variantaeeaced280c550756c9a4f1c92453dbccf88d01072d6de4b6f99e5feb03d4c3a.lean/declarations/dilationequiv--9c0d30b37206319714c5b1cd.md) | 138 | `declaration-track:9c0d30b37206319714c5b1cdee75b66aef8d78830bd81a52253a5e7ad8219ce8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

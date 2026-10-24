# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularOrderRegionReindexing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fda3c14d19fd3d8c073df52a6e1562259e446227",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fda3c14d19fd3d8c073df52a6e1562259e446227`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPairPartition`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularPositiveDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularpositivediagonalpairs--6121eb0281d93b01dfd24819.md) | 12 | `declaration-track:6121eb0281d93b01dfd24819a5231771ab5637d7a46b2f9861985b0e3ec70f07` |
| 2 | `def` | [triangularNegativeDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularnegativediagonalpairs--afbed783e4d33a5e59a6163c.md) | 15 | `declaration-track:afbed783e4d33a5e59a6163c43c969ecadaa13d69c539fa52a5aab57e2b5e6ea` |
| 3 | `theorem` | [mem_triangularPositiveDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/mem-triangularpositivediagonalpairs--98c578606facdd45867ad930.md) | 18 | `result-track:98c578606facdd45867ad930dbaffdafda8472cf39188e09503408af638c1544` |
| 4 | `theorem` | [mem_triangularNegativeDiagonalPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/mem-triangularnegativediagonalpairs--d40b937f28480187229b53c8.md) | 24 | `result-track:d40b937f28480187229b53c85f3d6decfcb9ff7930868496065aa3c868116681` |
| 5 | `theorem` | [triangularPositiveOffsetPairs_eq_biUnion_diagonals](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularpositiveoffsetpairs-eq-biunion-diagonals--51c394164484fc96f9ed82ce.md) | 30 | `result-track:51c394164484fc96f9ed82ce196568d9853868d8a41b9b1c586fae1bbdeea3f8` |
| 6 | `theorem` | [triangularNegativeOffsetPairs_eq_biUnion_diagonals](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularnegativeoffsetpairs-eq-biunion-diagonals--aa7527dd63c7ade8535316c8.md) | 49 | `result-track:aa7527dd63c7ade8535316c8a74dd1892d5ae8c73a833df90f592ad3cd7ea9af` |
| 7 | `theorem` | [triangularPositiveDiagonalPairs_pairwiseDisjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularpositivediagonalpairs-pairwisedisjoint--dccbb1fa7113f94fad2c3bc6.md) | 68 | `result-track:dccbb1fa7113f94fad2c3bc6c1050246ed1bd9c043be7cb3fc24f7bd87656d78` |
| 8 | `theorem` | [triangularNegativeDiagonalPairs_pairwiseDisjoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularnegativediagonalpairs-pairwisedisjoint--16d3019bdbea797e3af2d426.md) | 85 | `result-track:16d3019bdbea797e3af2d4269eaca0e37472b52986ef025dd549c938fc9dabbf` |
| 9 | `theorem` | [triangularPositiveRegion_sum_eq_diagonals](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularpositiveregion-sum-eq-diagonals--7f77c894198e764ae6941187.md) | 102 | `result-track:7f77c894198e764ae69411872020ccb795099c6a1a422bbdd7a9cbd6029d018b` |
| 10 | `theorem` | [triangularNegativeRegion_sum_eq_diagonals](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularnegativeregion-sum-eq-diagonals--949ca3b1495ad548eabfedd7.md) | 119 | `result-track:949ca3b1495ad548eabfedd76e1a170d01470ffbe01398c15823eab2e88fee50` |
| 11 | `theorem` | [triangularOrderRegionsToDiagonals](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularOrderRegionReindexing.lean/declarations/triangularorderregionstodiagonals--78baa6a19bb4a9ff2a785bcd.md) | 136 | `result-track:78baa6a19bb4a9ff2a785bcde73011baa88856a4088857c02d831e7210a8a717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

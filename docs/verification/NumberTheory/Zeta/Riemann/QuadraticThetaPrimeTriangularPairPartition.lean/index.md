# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularPairPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62aa23b8a2dd7bebc0f9b794566adafb8142072b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62aa23b8a2dd7bebc0f9b794566adafb8142072b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeSymmetricTriangularKernelDomain`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeSymmetricTriangularKernelDomain.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularAutocorrelationPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularautocorrelationpairs--f219fdaad75544bebf36125a.md) | 13 | `declaration-track:f219fdaad75544bebf36125a8c4ea1ffa15874858723493163ad1d06516adf15` |
| 2 | `def` | [triangularZeroOffsetPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularzerooffsetpairs--680b07ccc1869a0be28a34cd.md) | 16 | `declaration-track:680b07ccc1869a0be28a34cd898ca6ee2e11715985debb75d8649b42d5c4bff3` |
| 3 | `def` | [triangularPositiveOffsetPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularpositiveoffsetpairs--b8e52a86214cfce153b95912.md) | 19 | `declaration-track:b8e52a86214cfce153b959124deac18b9e1df967cb4cec1d557e6329f1108a73` |
| 4 | `def` | [triangularNegativeOffsetPairs](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularnegativeoffsetpairs--21059ec66889cea11069559c.md) | 22 | `declaration-track:21059ec66889cea11069559cb7db682250959faa017c7795b4b864bcda603b53` |
| 5 | `theorem` | [triangular_pair_partition](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangular-pair-partition--d7606e95b8bf7a99d09be33d.md) | 26 | `result-track:d7606e95b8bf7a99d09be33d82ae0c4677412e230ade06ef5e807803a6568e74` |
| 6 | `theorem` | [triangular_zero_disjoint_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangular-zero-disjoint-positive--68fcfeb0ce18da966fa254a8.md) | 37 | `result-track:68fcfeb0ce18da966fa254a86e7ab3f6788a22bbcf0ae2137d76c3388831bd12` |
| 7 | `theorem` | [triangular_zero_union_positive_disjoint_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangular-zero-union-positive-disjoint-negative--8b526bce5280a3e985ff1a34.md) | 48 | `result-track:8b526bce5280a3e985ff1a3443fefb542b3ed1b67fc6300ad0d623bce2943e3b` |
| 8 | `theorem` | [triangular_pair_sum_partition](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangular-pair-sum-partition--bc4a0cc3ffdce3f534732e8e.md) | 65 | `result-track:bc4a0cc3ffdce3f534732e8ea8c9966761bf1a6040ea93741ae14e7c258269b2` |
| 9 | `def` | [triangularPairTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularpairterm--8ebd114613783a14e0e9ec20.md) | 78 | `declaration-track:8ebd114613783a14e0e9ec20796477592c8f111a5e53d7f05cabab202103d1ad` |
| 10 | `theorem` | [triangularGeometricBlock_mul_conj_eq_pairSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangulargeometricblock-mul-conj-eq-pairsum--efca0b554ce9a93bb50f8447.md) | 83 | `result-track:efca0b554ce9a93bb50f844702bdf09966e87bf1b0f1a8e7e6018b303f7fdecc` |
| 11 | `theorem` | [triangularGeometricBlock_mul_conj_partition](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangulargeometricblock-mul-conj-partition--b7d298397bd27326cf5216d4.md) | 97 | `result-track:b7d298397bd27326cf5216d46fa7d93a1c3bff5a165182d5bd64a7c798ec3dec` |
| 12 | `def` | [TriangularOrderRegionsToDiagonalsClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularPairPartition.lean/declarations/triangularorderregionstodiagonalsclaim--eeac8c23047c14d614842a01.md) | 112 | `declaration-track:eeac8c23047c14d614842a013fe04ea84dddc78e5c4c023769964246a15f6305` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

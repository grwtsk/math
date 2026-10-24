# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticFactorization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86148978d941a50d17081bdfc31b60b3f5298b09",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86148978d941a50d17081bdfc31b60b3f5298b09`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticChannelPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safeAxialNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialnormalizedy--1ba1e8b3272847bd26e0b31f.md) | 42 | `declaration-track:1ba1e8b3272847bd26e0b31f7219e48dd722ddf316f8897d098a93f41dc6d0bc` |
| 2 | `theorem` | [safeAxial_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxial-y-factor--393b8fbe5a6e9787c7f3346a.md) | 50 | `result-track:393b8fbe5a6e9787c7f3346aebe7bf93209f5bbc9c819d143ed2e5656b2cd428` |
| 3 | `def` | [safeTransverseNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversenormalizedy--268ea42c29ae0711659b0c55.md) | 61 | `declaration-track:268ea42c29ae0711659b0c5587d924683862ec194befe36e6a5ceac6031d0d70` |
| 4 | `theorem` | [safeTransverse_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransverse-y-factor--cb30cd165ef5a31a807fe190.md) | 72 | `result-track:cb30cd165ef5a31a807fe1901298d0f01695e78391b4e547445783a4666a844a` |
| 5 | `def` | [safeAxialNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialnormalizedpoint--17f867e6619e5ad1b24062ba.md) | 88 | `declaration-track:17f867e6619e5ad1b24062ba972b98173305b873973bc2577314859664854468` |
| 6 | `def` | [safeTransverseNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversenormalizedpoint--d5324881553e358d8ee31d4f.md) | 94 | `declaration-track:d5324881553e358d8ee31d4f34c58500ca2572bc439900f31104034e8fccfb9f` |
| 7 | `def` | [safeAxialNormalizedPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialnormalizedpackingsequence--fdf12c58654fd05c1fc646af.md) | 99 | `declaration-track:fdf12c58654fd05c1fc646afdc114ad8333f8b7c5593204ed97d83e5cdbcd779` |
| 8 | `def` | [safeTransverseNormalizedPackingSequence](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversenormalizedpackingsequence--1a6ce4b6faac857401c249c3.md) | 107 | `declaration-track:1a6ce4b6faac857401c249c3fb429ef154cc1fb144af1b405a266bf72bd60183` |
| 9 | `theorem` | [ThreePointPacking.orientedVolume_eq_mul_of_y_scaled](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/threepointpacking-orientedvolume-eq-mul-of-y-scaled--7bafc7d4ebed1edbcb2a88d5.md) | 117 | `result-track:7bafc7d4ebed1edbcb2a88d56759e07e2a7311db0c21a26221ed3336a6d9f8e0` |
| 10 | `theorem` | [safeAxial_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxial-orientedvolume-factor--1de05aac80fead56196a7ddf.md) | 131 | `result-track:1de05aac80fead56196a7ddfee363a8e42a48b7ffc4353a5cd92e5ba8c553cdb` |
| 11 | `theorem` | [safeTransverse_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransverse-orientedvolume-factor--1ed8ef6cb96ae62443f2c58e.md) | 148 | `result-track:1ed8ef6cb96ae62443f2c58e6128bcebd945aa246c7c6b09f4a279f3ba28cd5f` |
| 12 | `def` | [safeAxialQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialquarticcoefficient--d7afd05dd7b4f97f92f4bc56.md) | 165 | `declaration-track:d7afd05dd7b4f97f92f4bc567da72c9ccb0cac523d3d48a60c380381adedb92a` |
| 13 | `def` | [safeTransverseQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversequarticcoefficient--274dabdd99cfdea8f1e2c0d8.md) | 170 | `declaration-track:274dabdd99cfdea8f1e2c0d837b8a8596bd9af02c36b2f2db3b69a673f5230c6` |
| 14 | `theorem` | [safeAxialQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialquarticcoefficient-nonnegative--7e516f41b9f26fd96b87d926.md) | 174 | `result-track:7e516f41b9f26fd96b87d926a330e1ed6cb27607318257336de22ed7e225b379` |
| 15 | `theorem` | [safeTransverseQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversequarticcoefficient-nonnegative--db3749ae1ceed69f3dba869f.md) | 179 | `result-track:db3749ae1ceed69f3dba869f785b1fb7caea4be4380796c09bbf1e1d577cf58c` |
| 16 | `theorem` | [safeAxialPacking_valueAt_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safeaxialpacking-valueat-factor--032b4ec28706dca05fbd2e98.md) | 185 | `result-track:032b4ec28706dca05fbd2e98d84e2188a53f27afa81153f42a794a7e7b8e679e` |
| 17 | `theorem` | [safeTransversePacking_valueAt_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safetransversepacking-valueat-factor--e958f0fb2ec0545ba3872cd6.md) | 198 | `result-track:e958f0fb2ec0545ba3872cd60e0e91f102ef71ebfe42e7f9d84be77a01a6f869` |
| 18 | `theorem` | [safeQuarticStructuredPackingValue_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safequarticstructuredpackingvalue-factor--66d39a7cde0a8bb06df8046b.md) | 211 | `result-track:66d39a7cde0a8bb06df8046be0c355cb9d70edb26106458066591a030f36be53` |
| 19 | `theorem` | [safeQuarticStructuredPackingValue_eq_neg_witnessTrace_div_four_of_coeff_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftQuarticFactorization.lean/declarations/safequarticstructuredpackingvalue-eq-neg-witnesstrace-div-four-of-coeff--d4c96ce177867096a4d347de.md) | 224 | `result-track:d4c96ce177867096a4d347de51f8171777f78db3f045ab3a459b61c64ecd5000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

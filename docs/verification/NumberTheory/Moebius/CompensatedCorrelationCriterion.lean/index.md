# Verification target: GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f35ac15351db8dacec75d9ff45b4f3e9359ce652",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f35ac15351db8dacec75d9ff45b4f3e9359ce652`.

Source path: `GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.LogarithmicPickupSeries`](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSeries.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CriticalWeightedMertensSquare`](../../../../mathematics/NumberTheory/Moebius/CriticalWeightedMertensSquare.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleWeightedDiagonal](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal--660603df9d307f15e1e52cfb.md) | 45 | `declaration-track:660603df9d307f15e1e52cfb06b26be35344982e6c4e59e8f351e8863c2d122d` |
| 2 | `def` | [sampleCompensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplecompensatedcorrelation--0f23969b27d4b8afa8ac8d44.md) | 51 | `declaration-track:0f23969b27d4b8afa8ac8d44ffab149096d34e34aedfd97668166e932e9a168d` |
| 3 | `def` | [sampleDiagonalMajorant](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant--4b8a7851161e53239e1e6f2e.md) | 60 | `declaration-track:4b8a7851161e53239e1e6f2eb4006b0ac22aaf81fc34fd78b08b0296721fbb41` |
| 4 | `def` | [sampleDiagonalBudget](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplediagonalbudget--dab2b9fc08e0ae6cffcb4e59.md) | 65 | `declaration-track:dab2b9fc08e0ae6cffcb4e59acaf344edbe4c7cfa6267b6f8fd3f4682ab2cf9e` |
| 5 | `def` | [CompensatedCorrelationBound](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound--60da1dd17b7268f58f2c8b21.md) | 69 | `declaration-track:60da1dd17b7268f58f2c8b215839a3aa617a86bebd9c141106dfb9bea85c7745` |
| 6 | `def` | [ReciprocalCompensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/reciprocalcompensatedcorrelation--9f1b06f3363af75caf37d181.md) | 74 | `declaration-track:9f1b06f3363af75caf37d181b911c48ba4ca8373968d45d01d6babdf81e458fd` |
| 7 | `theorem` | [sampleWeightedDiagonal_nonneg](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal-nonneg--8e88fb8938404c923063910e.md) | 79 | `result-track:8e88fb8938404c923063910ee63706570fea7991f7d6ee429756c86f26471fa8` |
| 8 | `theorem` | [sampleDiagonalMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant-nonneg--64c9752971d1bac3163186a1.md) | 85 | `result-track:64c9752971d1bac3163186a1a8b04654f862bdc90bf15ffc2e5b2eecd13fc91b` |
| 9 | `theorem` | [sampleDiagonalMajorant_eq_rpow](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplediagonalmajorant-eq-rpow--d2807cc359259e4b59191aa8.md) | 90 | `result-track:d2807cc359259e4b59191aa830d2ba27bc482f67ee3e20a0518038192b124014` |
| 10 | `theorem` | [summable_sampleDiagonalMajorant](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/summable-samplediagonalmajorant--8af72542afb20951e689d1e7.md) | 104 | `result-track:8af72542afb20951e689d1e777978cd14ea228479bd2ac9a3968841751f69075` |
| 11 | `theorem` | [sampleDiagonalBudget_nonneg](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplediagonalbudget-nonneg--1ae7213d2bda7fdb32c69df8.md) | 119 | `result-track:1ae7213d2bda7fdb32c69df82fc9b7771bc763f7488c5dbb35401becb306d645` |
| 12 | `theorem` | [sampleWeightedDiagonal_le_budget](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/sampleweighteddiagonal-le-budget--6e12becd83d9cbdad22b61d8.md) | 125 | `result-track:6e12becd83d9cbdad22b61d8b679c07873d06a637773776e3f947ddf7ae5e81a` |
| 13 | `theorem` | [sampleCellMass_partial_sum_eq_compensated_add_diagonal](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-partial-sum-eq-compensated-add-diagonal--cb7f837912c0451b860a7ddb.md) | 140 | `result-track:cb7f837912c0451b860a7ddbb8f212fa5eacd77e87a3b7f306681871d00bf418` |
| 14 | `theorem` | [summable_cellMass_iff_compensatedCorrelationBound](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/summable-cellmass-iff-compensatedcorrelationbound--b940e4bfa194eee59e307ef5.md) | 168 | `result-track:b940e4bfa194eee59e307ef5c907c3bb1ae91912e9ab9fb57dc2556808874e94` |
| 15 | `theorem` | [sampleCellMass_tsum_le_of_compensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-tsum-le-of-compensatedcorrelation--bf2942baa498945f604deb83.md) | 218 | `result-track:bf2942baa498945f604deb83157ff4b869028576ee295cf3f6f23f1d0c0a5d12` |
| 16 | `theorem` | [actual_energy_le_of_compensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/actual-energy-le-of-compensatedcorrelation--a8fbc1798974a7b504b7e4a9.md) | 234 | `result-track:a8fbc1798974a7b504b7e4a9df83ce139bc4fa326c251e4da1f26dcb0f2317fa` |
| 17 | `theorem` | [abscissa_zero_iff_reciprocal_compensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/abscissa-zero-iff-reciprocal-compensatedcorrelation--43185aad2b17f62a86976505.md) | 261 | `result-track:43185aad2b17f62a869765057006dd0d4aa583c3e68de966907ff662f8c0aa39` |
| 18 | `theorem` | [riemannHypothesis_of_reciprocal_compensatedCorrelation](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/riemannhypothesis-of-reciprocal-compensatedcorrelation--c1c0987849f7c0de9db56bb5.md) | 275 | `result-track:c1c0987849f7c0de9db56bb5460f93f4dee090f815902e28f8e5bcd93d567f1b` |
| 19 | `theorem` | [sampleResidue_eq_criticalEndpointDefect](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/sampleresidue-eq-criticalendpointdefect--c1d5236a594e80cc46271db1.md) | 284 | `result-track:c1d5236a594e80cc46271db13140fb0da829b18ebf1a405af159a02e177291ff` |
| 20 | `theorem` | [sampleCellMass_one_eq_endpointDefectEnergy](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/samplecellmass-one-eq-endpointdefectenergy--91952add6796bd05caac9c9d.md) | 291 | `result-track:91952add6796bd05caac9c9ddc4694c07069c2644192be3f5d228917190794db` |
| 21 | `theorem` | [summable_sampleCellMass_one_iff_endpointDefectSummable](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/summable-samplecellmass-one-iff-endpointdefectsummable--56c17597c35d571ffb30acd0.md) | 299 | `result-track:56c17597c35d571ffb30acd023c9344cea9e6b36d534dfc0ec938202c6717f4c` |
| 22 | `theorem` | [compensatedCorrelationBound_one_iff_criticalBoundary](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-iff-criticalboundary--dfcdf296a5bf4ac26e298bbb.md) | 326 | `result-track:dfcdf296a5bf4ac26e298bbb1dcacaeb9cf38b7e4f90eb851877f86db2ff897f` |
| 23 | `theorem` | [compensatedCorrelationBound_one_iff_mertensTransformSummable](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-iff-mertenstransformsummable--aec696a6ecf98ecca04db4f2.md) | 336 | `result-track:aec696a6ecf98ecca04db4f2bcf1549781c70e1d4ffa3cd1bdea37f6c1c65ec5` |
| 24 | `theorem` | [compensatedCorrelationBound_one_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-of-incrementmeansquare--5594bd55a165d03e624fd65c.md) | 344 | `result-track:5594bd55a165d03e624fd65c8243ef90702a883dad2b78352a462f400ee1712d` |
| 25 | `theorem` | [compensatedCorrelationBound_one_of_weightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/declarations/compensatedcorrelationbound-one-of-weightedmertenssquare--b81e2a4a8fda447b046f937f.md) | 353 | `result-track:b81e2a4a8fda447b046f937fd563a0e32b41950890c77fa55ae1987e8bd1c12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

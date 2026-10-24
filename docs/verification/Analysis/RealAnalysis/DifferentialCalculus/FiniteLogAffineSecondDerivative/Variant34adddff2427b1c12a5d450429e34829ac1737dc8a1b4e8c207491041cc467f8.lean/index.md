# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FiniteLogAffineSecondDerivative.Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de0ca47fcdc3d1ac83a388bac3862e93a34127a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de0ca47fcdc3d1ac83a388bac3862e93a34127a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.Bilinear` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/logprobability--cba76865fd66ffcf3e827467.md) | 34 | `declaration-track:cba76865fd66ffcf3e8274673e3c558b4dc725b995eb554144838a1c31cae85c` |
| 2 | `theorem` | [probability_eq_exp_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/probability-eq-exp-logprobability--89ee30cc0aa83241527c4851.md) | 39 | `result-track:89ee30cc0aa83241527c48513f63048c72f551e0768c47015fc73c852127c003` |
| 3 | `theorem` | [hasFDerivAt_logProbability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/hasfderivat-logprobability--795cf619b44bb2f627f17462.md) | 48 | `result-track:795cf619b44bb2f627f174628ac6a375b1b8c13e8fd55704377915d6dc41b63c` |
| 4 | `def` | [probabilityDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/probabilityderivative--061e93b1084f8b5094888e1f.md) | 66 | `declaration-track:061e93b1084f8b5094888e1f34a8343f02a1ec1651eaa1bfd01ab0cc8bbc019b` |
| 5 | `theorem` | [probabilityDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/probabilityderivative-apply--dd787a22a01e2a1462e15bbe.md) | 70 | `result-track:dd787a22a01e2a1462e15bbe5d3071644fcb3f8071fc2323d419e6b804ecc71a` |
| 6 | `theorem` | [hasFDerivAt_probability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/hasfderivat-probability--8a7ea2f122b2da3f3cea2d54.md) | 77 | `result-track:8a7ea2f122b2da3f3cea2d546c04800678bfd419df89a03bc403b892bad4ee22` |
| 7 | `theorem` | [centered_weighted_sum_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/centered-weighted-sum-eq-zero--6435eb0cf571e6584344893b.md) | 88 | `result-track:6435eb0cf571e6584344893bf2959b5533805dc61cc1e7b571b2da716f5213c7` |
| 8 | `def` | [rawCentroidDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/rawcentroidderivative--d6f7cf2c2d190474b950ba0c.md) | 99 | `declaration-track:d6f7cf2c2d190474b950ba0c66613cca5838f3757de14046248082212f2ca5f1` |
| 9 | `theorem` | [rawCentroidDerivative_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/rawcentroidderivative-apply--bc54393e30fb7568d86bee31.md) | 105 | `result-track:bc54393e30fb7568d86bee31610f9ae550edbaea9a30d13fffa135a28586ac1e` |
| 10 | `def` | [covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/covarianceoperator--c2b21dbc908afeab92db93a8.md) | 117 | `declaration-track:c2b21dbc908afeab92db93a830ecd727fefd861e52e74787e2c19dbea9a028a7` |
| 11 | `theorem` | [covarianceOperator_apply](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/covarianceoperator-apply--5b7ff251c524bbcff37a18e0.md) | 125 | `result-track:5b7ff251c524bbcff37a18e0429a6ea52063c2d22e353b839a49a8aa1b23bff0` |
| 12 | `theorem` | [covarianceOperator_eq_covarianceForm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/covarianceoperator-eq-covarianceform--b2426c6f225ae4ac78fe1bd2.md) | 136 | `result-track:b2426c6f225ae4ac78fe1bd223bf459ec3a4a275a9803d49090fe8a3586508c1` |
| 13 | `theorem` | [rawCentroidDerivative_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/rawcentroidderivative-eq-covarianceoperator--f105a289eead0b475dfdf8ed.md) | 144 | `result-track:f105a289eead0b475dfdf8edf765a1bf415f4ffec41d3b3a584cf7bf894160a5` |
| 14 | `theorem` | [hasFDerivAt_centroid_raw](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/hasfderivat-centroid-raw--6b374305f62d2781b451a5a8.md) | 188 | `result-track:6b374305f62d2781b451a5a85a4c1855ebcc1901b7c6cb7c854192005b2df065` |
| 15 | `theorem` | [hasFDerivAt_centroid](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/hasfderivat-centroid--884b38a18c49a7fb719a9f4a.md) | 205 | `result-track:884b38a18c49a7fb719a9f4abdab34b1c0bc8ce17c4fd446880354360648daf6` |
| 16 | `theorem` | [fderiv_centroid_eq_covarianceOperator](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/fderiv-centroid-eq-covarianceoperator--6480e5f43d39098f4ad81397.md) | 212 | `result-track:6480e5f43d39098f4ad81397d907a943f524ba3a629ddbb872fd74ce549e54c3` |
| 17 | `def` | [analyticDispersionReconstruction](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/analyticdispersionreconstruction--bffdfa4656b69e40e178b1c3.md) | 218 | `declaration-track:bffdfa4656b69e40e178b1c30a7658cca16395ca41ad4f2e590a0b402c6728d0` |
| 18 | `theorem` | [analyticDispersionReconstruction_potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/analyticdispersionreconstruction-potential--d389aefd6f138d272de97694.md) | 233 | `result-track:d389aefd6f138d272de97694c02043bb7be185babc7a0e3ab54b9930cde402d8` |
| 19 | `theorem` | [analyticDispersionReconstruction_gradient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/analyticdispersionreconstruction-gradient--36e1e003b3c568bcfa160e83.md) | 240 | `result-track:36e1e003b3c568bcfa160e83a209e173f46e2d7167ccdf343c6512d9ecf62fb0` |
| 20 | `theorem` | [analyticDispersionReconstruction_hessian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/analyticdispersionreconstruction-hessian--4987ba0d6f3c366140a07af3.md) | 247 | `result-track:4987ba0d6f3c366140a07af34e0e526c27ae3c4df50169ad3e858a3cc4a62ba7` |
| 21 | `theorem` | [analyticDispersionReconstruction_dispersion](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/analyticdispersionreconstruction-dispersion--5b3ff2fb4b9dbf53e0b4df82.md) | 254 | `result-track:5b3ff2fb4b9dbf53e0b4df8218e3498a9b351551f2f42dc49e03c7eca34584db` |
| 22 | `def` | [canonicalCovarianceRealization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/canonicalcovariancerealization--a41104a03fb02cee7625f7c7.md) | 261 | `declaration-track:a41104a03fb02cee7625f7c76a432fd889ba188c41269a0a0b673eff610ac90f` |
| 23 | `theorem` | [hessian_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/hessian-eq-covariance--1a5a0c4415ae8a6e99fb9e5c.md) | 269 | `result-track:1a5a0c4415ae8a6e99fb9e5c3c73d4ea73580b9fc153960269738bbb850783e5` |
| 24 | `theorem` | [second_derivative_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/second-derivative-logpartition-eq-covariance--76251b28e7116db2c970fbde.md) | 277 | `result-track:76251b28e7116db2c970fbdeab04c9fec44862a85d1a303424f572ae34368127` |
| 25 | `theorem` | [iterated_fderiv_logPartition_eq_covariance](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineSecondDerivative/Variant34adddff2427b1c12a5d450429e34829ac1737dc8a1b4e8c207491041cc467f8.lean/declarations/iterated-fderiv-logpartition-eq-covariance--240c07d8441c1cb366cf0a96.md) | 285 | `result-track:240c07d8441c1cb366cf0a9639857e79b09c45498acb96f27b4975714231e993` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LevyProkhorovMetric.Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "122cb03ed4e30f9bd309bbab3335759e5d4091df",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `122cb03ed4e30f9bd309bbab3335759e5d4091df`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Portmanteau` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [levyProkhorovEDist](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist--0e51790891cd482f394224f1.md) | 58 | `declaration-track:0e51790891cd482f394224f1de46b64e611fa60ecd762f784ff12ae63f76fa3a` |
| 2 | `lemma` | [meas_le_of_le_of_forall_le_meas_thickening_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/meas-le-of-le-of-forall-le-meas-thickening-add--093ad65e5f0c5a339455be24.md) | 64 | `result-track:093ad65e5f0c5a339455be243dc0dc608b05700f13784c6f25884c819a70aa05` |
| 3 | `lemma` | [left_measure_le_of_levyProkhorovEDist_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/left-measure-le-of-levyprokhorovedist-lt--71334cf5add342af8325bc3a.md) | 73 | `result-track:71334cf5add342af8325bc3aca3110eb4ed5dfe2b848b9d06f7f4b1472e44e58` |
| 4 | `lemma` | [right_measure_le_of_levyProkhorovEDist_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/right-measure-le-of-levyprokhorovedist-lt--604e8f0bead156732dffed48.md) | 79 | `result-track:604e8f0bead156732dffed486b06826ca4697ba27b04bd6f55442087c498b9fe` |
| 5 | `lemma` | [levyProkhorovEDist_le_of_forall_add_pos_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-le-of-forall-add-pos-le--d8b2367e7a1aa7b72d5992e7.md) | 86 | `result-track:d8b2367e7a1aa7b72d5992e787a44068df2049705faf58e9db3ef101c6be15f3` |
| 6 | `lemma` | [levyProkhorovEDist_le_of_forall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-le-of-forall--1c7c8598011867f6f11652b0.md) | 100 | `result-track:1c7c8598011867f6f11652b01a124ead3f46e0a17670f1e811398a204cbe0f86` |
| 7 | `lemma` | [levyProkhorovEDist_le_max_measure_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-le-max-measure-univ--1e1524e81976e282feeafd19.md) | 111 | `result-track:1e1524e81976e282feeafd197a4fc3e330cdc0000f5e9fb081bf91444e1fefbb` |
| 8 | `lemma` | [levyProkhorovEDist_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-lt-top--e14d5defcc6082069569fb73.md) | 115 | `result-track:e14d5defcc6082069569fb73029b6c943eb95a0a328ea7f6d41bc06af2cf02f8` |
| 9 | `lemma` | [levyProkhorovEDist_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-ne-top--dc9af49eebe89d7d8952aec7.md) | 119 | `result-track:dc9af49eebe89d7d8952aec7abaf2a8a66a6f61807dc8911d3ffe2e24e642e08` |
| 10 | `lemma` | [levyProkhorovEDist_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-self--8e18394b6fe047a19a5d9a20.md) | 122 | `result-track:8e18394b6fe047a19a5d9a20b385dd14dae2b6907047341e5565bd1f17bba11d` |
| 11 | `lemma` | [levyProkhorovEDist_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-comm--f5e40dc7ecc4196254647c21.md) | 129 | `result-track:f5e40dc7ecc4196254647c21941df536398b9237d3408ed2f5d20d1ce6b09f81` |
| 12 | `lemma` | [levyProkhorovEDist_triangle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-triangle--c49621ed36f978a88efbe2cf.md) | 133 | `result-track:c49621ed36f978a88efbe2cfc9782c8c8555ae8034f56cb6ecfc0176fdbb3cce` |
| 13 | `def` | [levyProkhorovDist](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist--2f5fbad808291d7484b87354.md) | 177 | `declaration-track:2f5fbad808291d7484b87354be0d1e6684a4005239f9603ac8c6ee403f0ff9ad` |
| 14 | `lemma` | [levyProkhorovDist_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-self--b725c92fe43d368b77d5734a.md) | 180 | `result-track:b725c92fe43d368b77d5734a7678db28b10f3e6ec37d41562dc34e0b52fcaef2` |
| 15 | `lemma` | [levyProkhorovDist_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-comm--55d9da2561651a424de5e089.md) | 184 | `result-track:55d9da2561651a424de5e089088342b50def8e8191338179820a73fc6844bf45` |
| 16 | `lemma` | [levyProkhorovDist_triangle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-triangle--011aaf82eb55f41266afe7a1.md) | 188 | `result-track:011aaf82eb55f41266afe7a11d5ccaf4fae1ea1dd0ced57f537b8f6830d88be6` |
| 17 | `def` | [LevyProkhorov](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov--2ab89467966bef69c143e6ca.md) | 199 | `declaration-track:2ab89467966bef69c143e6ca011feef256731033b80c84db94512a8b67e67704` |
| 18 | `def` | [LevyProkhorov.equiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-equiv--89fcfa875ba05f47aeb57dae.md) | 202 | `declaration-track:89fcfa875ba05f47aeb57dae9ff860802c4102de6094a20a66d11484a918f69c` |
| 19 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/instance--d978c7716436b46c8a0c094c.md) | 208 | `declaration-track:d978c7716436b46c8a0c094cd76f3776ced0679355de87d20754551890ec388a` |
| 20 | `instance` | [levyProkhorovDist_pseudoMetricSpace_finiteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-pseudometricspace-finitemeasure--1de8ab59657c6c6c7f6c571c.md) | 217 | `declaration-track:1de8ab59657c6c6c7f6c571c93cf5f4c1bdc02a330fb0a8d611674f710e76063` |
| 21 | `lemma` | [measure_le_measure_closure_of_levyProkhorovEDist_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/measure-le-measure-closure-of-levyprokhorovedist-eq-zero--4d92effc27c8ca235796655a.md) | 225 | `result-track:4d92effc27c8ca235796655a188341aaa3770ff664bc2a8c0ec65ab3a017872b` |
| 22 | `lemma` | [measure_eq_measure_of_levyProkhorovEDist_eq_zero_of_isClosed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/measure-eq-measure-of-levyprokhorovedist-eq-zero-of-isclosed--78109883c170a5d31bc32657.md) | 244 | `result-track:78109883c170a5d31bc32657228b3f31aaccddc511b6ac3071234a6d9857cecd` |
| 23 | `instance` | [levyProkhorovDist_pseudoMetricSpace_probabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-pseudometricspace-probabilitymeasure--749a23922fe78e7e982d9d7f.md) | 262 | `declaration-track:749a23922fe78e7e982d9d7f5e78977ebb4eb3b87785d6a3451510c7921cacfe` |
| 24 | `lemma` | [LevyProkhorov.dist_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-dist-def--6185cbd8da5e8cad770c51eb.md) | 270 | `result-track:6185cbd8da5e8cad770c51eb693be1a2f4cb64bb6497e7cd6d21a2dea6c8312f` |
| 25 | `instance` | [levyProkhorovDist_metricSpace_probabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-metricspace-probabilitymeasure--0fbe9dd49fa80a82db8a94de.md) | 279 | `declaration-track:0fbe9dd49fa80a82db8a94dea259480b56a4748ce51faec0d2f1a2d696d107c5` |
| 26 | `lemma` | [levyProkhorovEDist_le_of_forall_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovedist-le-of-forall-le--8812ce019eba94646e643d0a.md) | 298 | `result-track:8812ce019eba94646e643d0aecd604faf08689c2c43d21ddbfba4b1d45c6fd73` |
| 27 | `lemma` | [levyProkhorovDist_le_of_forall_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorovdist-le-of-forall-le--a80b5e1593769ff60d4af476.md) | 318 | `result-track:a80b5e1593769ff60d4af476e832727c94e59dce9aa90ba294db4e38fedc86aa` |
| 28 | `lemma` | [BoundedContinuousFunction.integral_eq_integral_meas_le_of_hasFiniteIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/boundedcontinuousfunction-integral-eq-integral-meas-le-of-hasfiniteinteg--4157b209e45859dad80e5e8a.md) | 346 | `result-track:4157b209e45859dad80e5e8a324e5e4e2c81689b6defecc3e0565617e179ff33` |
| 29 | `lemma` | [BoundedContinuousFunction.integral_eq_integral_meas_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/boundedcontinuousfunction-integral-eq-integral-meas-le--6961f3463b57ef013722c98b.md) | 356 | `result-track:6961f3463b57ef013722c98b95e7c2ee108c36fb323ce4d3ff6d2b750a789887` |
| 30 | `lemma` | [BoundedContinuousFunction.integral_le_of_levyProkhorovEDist_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/boundedcontinuousfunction-integral-le-of-levyprokhorovedist-lt--978eaa4415b3f954f8687b6b.md) | 364 | `result-track:978eaa4415b3f954f8687b6bf9e8c2518fb2dfd86f9dab3a5e0db06b327f64bf` |
| 31 | `lemma` | [tendsto_integral_meas_thickening_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/tendsto-integral-meas-thickening-le--a5273559bf90b8970d455e8f.md) | 404 | `result-track:a5273559bf90b8970d455e8f30281fa207cadc2aff16d5d624bba53b99632659` |
| 32 | `lemma` | [LevyProkhorov.continuous_equiv_probabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-continuous-equiv-probabilitymeasure--f0e99c434cc31a8254137e86.md) | 429 | `result-track:f0e99c434cc31a8254137e8667e4543c050d0d0fb7891e7a66ab3f3d52b88d89` |
| 33 | `theorem` | [levyProkhorov_le_convergenceInDistribution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-le-convergenceindistribution--a1b2d0be1b6e5925c7b57570.md) | 485 | `result-track:a1b2d0be1b6e5925c7b57570db46322ee595a7c906d48e642bcfc4811d11a328` |
| 34 | `lemma` | [ProbabilityMeasure.toMeasure_add_pos_gt_mem_nhds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/probabilitymeasure-tomeasure-add-pos-gt-mem-nhds--588d3f90ae85ed4fedf69f94.md) | 501 | `result-track:588d3f90ae85ed4fedf69f9420864f155cebfe5cbe63c6345e1965ba7ec1d49e` |
| 35 | `lemma` | [SeparableSpace.exists_measurable_partition_diam_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/separablespace-exists-measurable-partition-diam-le--3812b26630d9235c21f6b889.md) | 525 | `result-track:3812b26630d9235c21f6b88960a7dded6c12a9edf59c2c79a4a2fc7af3857663` |
| 36 | `lemma` | [LevyProkhorov.continuous_equiv_symm_probabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-continuous-equiv-symm-probabilitymeasure--89f04e25772bc209548ebf87.md) | 555 | `result-track:89f04e25772bc209548ebf87eac4106909bdd96cc5f22bdd929b9fcf28009d24` |
| 37 | `theorem` | [levyProkhorov_eq_convergenceInDistribution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/levyprokhorov-eq-convergenceindistribution--738a26faee107d25fa9385ba.md) | 654 | `result-track:738a26faee107d25fa9385ba177cc53de18f6c0e2c9eeea308b3ae1645852779` |
| 38 | `def` | [homeomorph_probabilityMeasure_levyProkhorov](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/homeomorph-probabilitymeasure-levyprokhorov--2f028b4f74183cb2a3aa5472.md) | 662 | `declaration-track:2f028b4f74183cb2a3aa54725cce7cfdab2b18d0486b3ef06508066a7093eafb` |
| 39 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/instance--94a5a02a197f4f23a3fff935.md) | 672 | `declaration-track:94a5a02a197f4f23a3fff935ab4d2d88578e69d7c340d2a4cd3e4fc2d983d504` |
| 40 | `instance` | [instMetrizableSpaceProbabilityMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LevyProkhorovMetric/Variant19c633a8486b1955b7a9079726b5c1c0ff3760d6a74b0c89146dba578b809734.lean/declarations/instmetrizablespaceprobabilitymeasure--8cbec2c6e0bb386615fe3dd9.md) | 679 | `declaration-track:8cbec2c6e0bb386615fe3dd934ab3dfd8cf8a23b5b6f461c50bc7745b667f6c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

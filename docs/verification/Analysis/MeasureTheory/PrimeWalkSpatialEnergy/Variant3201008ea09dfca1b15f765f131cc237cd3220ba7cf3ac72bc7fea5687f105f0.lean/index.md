# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkSpatialEnergy.Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a3fe816600203380448f61f152eb18abff552de",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a3fe816600203380448f61f152eb18abff552de`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/squareenergy--de7bd29e856bb2eee8ebd21b.md) | 37 | `declaration-track:de7bd29e856bb2eee8ebd21b79c797f7f2f3d86a2d4afaf8f3040b182f175c47` |
| 2 | `theorem` | [threshold_sq_mul_measure_superlevel_le_squareEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/threshold-sq-mul-measure-superlevel-le-squareenergy--2ee621b9f8672b5356d78ba9.md) | 43 | `result-track:2ee621b9f8672b5356d78ba965f75b588f17d1eb0c9f52dd3a27065e516df4c4` |
| 3 | `theorem` | [measure_superlevel_ne_top_of_squareEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/measure-superlevel-ne-top-of-squareenergy-ne-top--b809d80cea8756b21a7df387.md) | 74 | `result-track:b809d80cea8756b21a7df387f69f1e3a9adb0d06acf064bceb118f922443b5b2` |
| 4 | `theorem` | [threshold_sq_mul_measureReal_superlevel_le_energyReal](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/threshold-sq-mul-measurereal-superlevel-le-energyreal--55ad3e5967cc40063fec9d46.md) | 97 | `result-track:55ad3e5967cc40063fec9d4641ab1d3d4f6cb7b4a8c88ad3f173fccc5865027e` |
| 5 | `def` | [packetEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/packetenergy--5a169f7d45bec43d9945ce5c.md) | 130 | `declaration-track:5a169f7d45bec43d9945ce5c333afe79a26c3bdc7a58699436968b3146d731c5` |
| 6 | `theorem` | [packetEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/packetenergy-ne-top--c45ab81c42cd01d49373b385.md) | 138 | `result-track:c45ab81c42cd01d49373b385f042e43ea81352611283fd1ce4f2ada85e9d26c8` |
| 7 | `theorem` | [packetSquareFunction_enorm_sq](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/packetsquarefunction-enorm-sq--e1285dc206c1fb9bd4b88aba.md) | 156 | `result-track:e1285dc206c1fb9bd4b88abaf3b214d460d11bfde12a1db5629fe42804df0c06` |
| 8 | `theorem` | [packetSquareEnergy_eq_sum](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/packetsquareenergy-eq-sum--8c8a104a6d1ec0cf6dbd1b71.md) | 172 | `result-track:8c8a104a6d1ec0cf6dbd1b71bc0bfedba38bc71ef7ef7dd3fecdeba60f95f1ec` |
| 9 | `theorem` | [packetSquareEnergy_ne_top](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/packetsquareenergy-ne-top--50055d2e80b4cdd9cd137c98.md) | 186 | `result-track:50055d2e80b4cdd9cd137c98c9f02d649c3c3969e2301f6c41fac53eac78a3b6` |
| 10 | `theorem` | [threshold_sq_mul_measure_packetSuperlevel_le_energy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/threshold-sq-mul-measure-packetsuperlevel-le-energy--0f4acc6c6b231515070cb771.md) | 198 | `result-track:0f4acc6c6b231515070cb77146c175d4b53e797bfd105942f3b109d63f148c3b` |
| 11 | `theorem` | [SpatialEncodedTrajectory.threshold_sq_mul_superlevel_le_packetEnergy](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/spatialencodedtrajectory-threshold-sq-mul-superlevel-le-packetenergy--aa5d565232d55d10729a9c66.md) | 229 | `result-track:aa5d565232d55d10729a9c66631866c401a874c3e77fd2c1f14162d8a62bcefc` |
| 12 | `theorem` | [matrixNorm_le_of_superlevelVolume](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkSpatialEnergy/Variant3201008ea09dfca1b15f765f131cc237cd3220ba7cf3ac72bc7fea5687f105f0.lean/declarations/matrixnorm-le-of-superlevelvolume--a525b291da7f4fb92c3570aa.md) | 256 | `result-track:a525b291da7f4fb92c3570aa5da04d2b932ce704a841ea7dc30ac2dd4c0d6cf9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

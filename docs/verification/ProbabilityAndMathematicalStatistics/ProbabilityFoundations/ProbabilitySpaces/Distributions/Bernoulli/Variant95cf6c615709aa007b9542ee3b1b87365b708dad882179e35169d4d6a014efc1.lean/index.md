# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Distributions.Bernoulli.Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d4355534acf191a119fb3f090eb3ccb01867c23",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/index.md) · [Full source](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d4355534acf191a119fb3f090eb3ccb01867c23`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.NatAntidiagonal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli--f8f9190dd775c5908b14bb06.md) | 67 | `declaration-track:f8f9190dd775c5908b14bb063f7b222a52497ddebbc493286764b41e66edbae4` |
| 2 | `theorem` | [bernoulli'_def'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-def--bbe71acd6ae31c471cc31323.md) | 72 | `result-track:bbe71acd6ae31c471cc31323cd7023b53b9d78aa816898816f694b6788e46858` |
| 3 | `theorem` | [bernoulli'_def](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-def--8848bed78ace1c4de3df0508.md) | 77 | `result-track:8848bed78ace1c4de3df050893c0c7b7394bcf5d1b7a727008d540e3c6e6d1ce` |
| 4 | `theorem` | [bernoulli'_spec](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-spec--34464bb1d8aca946831fdfb3.md) | 82 | `result-track:34464bb1d8aca946831fdfb3370010132b63f0bfe5673b83fa5dc79e5319a9b0` |
| 5 | `theorem` | [bernoulli'_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-spec--cfc2cd0a8229b2347da5d0ce.md) | 90 | `result-track:cfc2cd0a8229b2347da5d0ce7497ac7e318a83a82d8e26cb4ddcd20a6521a9a2` |
| 6 | `theorem` | [bernoulli'_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-zero--1a6ebb3830c53b103258b832.md) | 103 | `result-track:1a6ebb3830c53b103258b832e44e4ec296090014992ac2008ae0e5201fb6e656` |
| 7 | `theorem` | [bernoulli'_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-one--3ab2508401a90136b42b2371.md) | 109 | `result-track:3ab2508401a90136b42b23714d63c9bfcb1410e777af2314cdeb38dc6970d716` |
| 8 | `theorem` | [bernoulli'_two](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-two--906a37e062177c2389a90b00.md) | 115 | `result-track:906a37e062177c2389a90b0048e5bd24695455c7e6dc3648c815f2f1882d7057` |
| 9 | `theorem` | [bernoulli'_three](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-three--13de0c9e0325439269b1186b.md) | 121 | `result-track:13de0c9e0325439269b1186b3ef1cc328fc689e8ca139d14f42c7c360cd44cde` |
| 10 | `theorem` | [bernoulli'_four](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-four--e4108117e54528bae3a17236.md) | 127 | `result-track:e4108117e54528bae3a172362f95db6fd7c5bad5e56bf3d5b11229e392110d23` |
| 11 | `theorem` | [sum_bernoulli'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/sum-bernoulli--29835ebe65a16980eb1c64c0.md) | 136 | `result-track:29835ebe65a16980eb1c64c03c3df122c647aaf21dba5d402f13e2b7134ad60e` |
| 12 | `def` | [bernoulli'PowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-powerseries--0af6088971be566e83dd97d9.md) | 153 | `declaration-track:0af6088971be566e83dd97d9d44403c618a9d0b2ded2b6689193630f45ac6920` |
| 13 | `theorem` | [bernoulli'PowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-powerseries-mul-exp-sub-one--24bb4cec10ba098910ab6a5c.md) | 157 | `result-track:24bb4cec10ba098910ab6a5c2070399e262a85af9c9ed6a154251655f3a7d0b8` |
| 14 | `theorem` | [bernoulli'_odd_eq_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-odd-eq-zero--548cbfbbf65b2b6fd8f7442f.md) | 180 | `result-track:548cbfbbf65b2b6fd8f7442fb34e4e87238c52db311d9d976148bcc3c5edd30c` |
| 15 | `def` | [bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli--f598adcbe13f3a8f932a8698.md) | 199 | `declaration-track:f598adcbe13f3a8f932a86980dafe03550f2fcdabe962ebda3443c8cb65216c4` |
| 16 | `theorem` | [bernoulli'_eq_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-eq-bernoulli--7f0b95772c250e22046c4b31.md) | 203 | `result-track:7f0b95772c250e22046c4b31d24e9012a91ef3442a170b5fabd8a8051ce569c1` |
| 17 | `theorem` | [bernoulli_zero](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-zero--58637c839d580511dab920a7.md) | 208 | `result-track:58637c839d580511dab920a737a07db0c188773bd4dae37f7fc136bed61e3beb` |
| 18 | `theorem` | [bernoulli_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-one--f57b6073efd9d3b9b9275956.md) | 212 | `result-track:f57b6073efd9d3b9b927595651697b29e7756d1b35760bab0d3aa37fd8f29077` |
| 19 | `theorem` | [bernoulli_eq_bernoulli'_of_ne_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-eq-bernoulli-of-ne-one--d323c162fdd71eea6cb4a9e4.md) | 215 | `result-track:d323c162fdd71eea6cb4a9e47b5acd6fa2646a8656108521aaf502cd2ec25bbc` |
| 20 | `theorem` | [sum_bernoulli](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/sum-bernoulli--c7454c18b892d911db6c97a9.md) | 224 | `result-track:c7454c18b892d911db6c97a9e81fc71bef4f9ce9934ddbc842c3cc748b944e65` |
| 21 | `theorem` | [bernoulli_spec'](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoulli-spec--6c90c0d258f8f91c024f8d83.md) | 247 | `result-track:6c90c0d258f8f91c024f8d837d2724efea050de1dad5963c9a3a414867371461` |
| 22 | `def` | [bernoulliPowerSeries](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoullipowerseries--7c417cf992a7b45dd51f2d4b.md) | 271 | `declaration-track:7c417cf992a7b45dd51f2d4bf6dae202acbada18a32f12731b3e6ec3d0895f60` |
| 23 | `theorem` | [bernoulliPowerSeries_mul_exp_sub_one](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/bernoullipowerseries-mul-exp-sub-one--bcad15f35d040576a5a272f5.md) | 275 | `result-track:bcad15f35d040576a5a272f51106a164f2db58376ff682023c768d288ad53ced` |
| 24 | `theorem` | [sum_range_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/sum-range-pow--3a08d8dd97ea884b2ee5b6f2.md) | 307 | `result-track:3a08d8dd97ea884b2ee5b6f28f1b225406635599ac77ddae9ded46b2b710c024` |
| 25 | `theorem` | [sum_Ico_pow](../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant95cf6c615709aa007b9542ee3b1b87365b708dad882179e35169d4d6a014efc1.lean/declarations/sum-ico-pow--52d2287a4ae18e2898ae0d0a.md) | 378 | `result-track:52d2287a4ae18e2898ae0d0aae28a20fde17f369b1b8023fc8dfe5d3ac8a952e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

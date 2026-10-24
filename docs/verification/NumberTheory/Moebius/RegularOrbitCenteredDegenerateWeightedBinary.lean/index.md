# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredDegenerateWeightedBinary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c03ff73a0056db019c6da682fd50a851e7128ba6",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c03ff73a0056db019c6da682fd50a851e7128ba6`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CenteredAffineCollisionType](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffinecollisiontype--8de2a34f67936f46f9dfd976.md) | 17 | `declaration-track:8de2a34f67936f46f9dfd9768baead21702588c72555947ffe5b5c902b46ce15` |
| 2 | `def` | [centeredAffineCollisionTypeHolds](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffinecollisiontypeholds--50286d4094974a20b65072dd.md) | 23 | `declaration-track:50286d4094974a20b65072dd2bb3507a606560e7f68dd799268a11ef0df0f2c8` |
| 3 | `instance` | [centeredAffineCollisionTypeHoldsDecidable](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffinecollisiontypeholdsdecidable--4ce28d7f2e1fcf7ec7561f5f.md) | 31 | `declaration-track:4ce28d7f2e1fcf7ec7561f5fa1f21bb6daddbc02d5d44f77c9060522c1c390ba` |
| 4 | `def` | [centeredAffineCollisionShiftPairs](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffinecollisionshiftpairs--ebfddcaf5f9c2571fd52a47c.md) | 40 | `declaration-track:ebfddcaf5f9c2571fd52a47c39d034e36071a53d68f072c4f3d1e5ae7e489767` |
| 5 | `theorem` | [sumCollision_repeatedArgument](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/sumcollision-repeatedargument--cef5038026d4bed30e68399a.md) | 49 | `result-track:cef5038026d4bed30e68399afcbf2bf8a7e1778bd87254c74a344432439b9591` |
| 6 | `theorem` | [rightDifferenceCollision_repeatedArgument](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/rightdifferencecollision-repeatedargument--a5787961a6adabcac9ce718c.md) | 57 | `result-track:a5787961a6adabcac9ce718c62cc2be5423f5e24319f92f3b385b44bb0e8d9b9` |
| 7 | `theorem` | [leftDifferenceCollision_repeatedArgument](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/leftdifferencecollision-repeatedargument--8fe0b1b26203c25825a2a46f.md) | 66 | `result-track:8fe0b1b26203c25825a2a46f7dac13eb22760e8f9be23ba89a8575105f6da2cc` |
| 8 | `def` | [centeredAffineWeightedBinaryCollisionCoefficient](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffineweightedbinarycollisioncoefficient--044caae160c6d7c8a92fb540.md) | 76 | `declaration-track:044caae160c6d7c8a92fb540c11a77c5fb806302cf89ef9cf45949b2967ba545` |
| 9 | `def` | [parityCenteredAffineWeightedBinarySumCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/paritycenteredaffineweightedbinarysumcollision--65cce183b07e1333cc26beaa.md) | 81 | `declaration-track:65cce183b07e1333cc26beaa0db6babbc4fc9d6a14230363fa7eb596115ee482` |
| 10 | `def` | [parityCenteredAffineWeightedBinaryRightDifferenceCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/paritycenteredaffineweightedbinaryrightdifferencecollision--6b4a958a7c3809caafe28cbf.md) | 88 | `declaration-track:6b4a958a7c3809caafe28cbfdcf78215e0dbf1ce6838ea540c4af227c12df26c` |
| 11 | `def` | [parityCenteredAffineWeightedBinaryLeftDifferenceCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/paritycenteredaffineweightedbinaryleftdifferencecollision--ddb32be71b8afa6419f40de4.md) | 95 | `declaration-track:ddb32be71b8afa6419f40de4edaba7e2c1f57340673b8e667bcfa876330f1322` |
| 12 | `theorem` | [centeredAffineCollisionRelations_pairwiseExclusive](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/centeredaffinecollisionrelations-pairwiseexclusive--0e56674026e5206b03d2f6ff.md) | 103 | `result-track:0e56674026e5206b03d2f6ff60d56615a7a7933cf020666c6640cc914cbb28be` |
| 13 | `theorem` | [parityCenteredAffineFourMobiusDegenerateAtCenterLag_eq_threeWeightedBinary](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/paritycenteredaffinefourmobiusdegenerateatcenterlag-eq-threeweightedbina--234070a77ad65d5afdb204a6.md) | 113 | `result-track:234070a77ad65d5afdb204a666d61703a2b7ffdb9c00475df0765521fc69cfe5` |
| 14 | `structure` | [RegularCenteredDegenerateWeightedBinarySourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/regularcentereddegenerateweightedbinarysourcedata--01c010b22142f061fb9f15c2.md) | 153 | `declaration-track:01c010b22142f061fb9f15c26614175eb305f89c7153407e42e8c737417c58b4` |
| 15 | `def` | [RegularCenteredDegenerateWeightedBinarySource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/declarations/regularcentereddegenerateweightedbinarysource--eab8947c430fa55c87367153.md) | 165 | `declaration-track:eab8947c430fa55c87367153b5dc790e88a0a35976982bf51741c0cea0755260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

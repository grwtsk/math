# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobiusCollisions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89d59347cd27a63b922befb696755575f6796bc2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89d59347cd27a63b922befb696755575f6796bc2`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredAffineFourMobius`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobius.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredAffineFourMobiusDegenerate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/centeredaffinefourmobiusdegenerate--fdcdb414b5568568d2bcebfa.md) | 17 | `declaration-track:fdcdb414b5568568d2bcebfa51fdbeb03a522a3620ea10650b98e58935a38d2a` |
| 2 | `instance` | [centeredAffineFourMobiusDegenerateDecidable](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/centeredaffinefourmobiusdegeneratedecidable--211b865b6f8f1332b7d6dd67.md) | 21 | `declaration-track:211b865b6f8f1332b7d6dd67504f6224c92cb2323407cac9f65a1098ade54d1b` |
| 3 | `theorem` | [centeredAffineFourMobiusDegenerate_iff_sum_or_absDiff](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/centeredaffinefourmobiusdegenerate-iff-sum-or-absdiff--f77b82995e4c88412b5d6692.md) | 26 | `result-track:f77b82995e4c88412b5d6692c68b9af6ce41b570cac77f8bf73ec847d19ed862` |
| 4 | `theorem` | [truncatedNatDifference_has_spurious_zeroLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/truncatednatdifference-has-spurious-zerolag--d88b09718b0dbae4e226ddb5.md) | 39 | `result-track:d88b09718b0dbae4e226ddb59bf27fe0b622d2d26f5b868eb9fec9b0e90aec9e` |
| 5 | `theorem` | [firstSymmetricPair_ne](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/firstsymmetricpair-ne--79a22077e612a382f9794aea.md) | 45 | `result-track:79a22077e612a382f9794aea87161a770d1d6090353757a1ffab11ae3f9a028f` |
| 6 | `theorem` | [secondSymmetricPair_ne](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/secondsymmetricpair-ne--3f5ecf373594d53df2a7d029.md) | 52 | `result-track:3f5ecf373594d53df2a7d029a4bfd8997981a434884c92e6900b2ce79bdb08d9` |
| 7 | `theorem` | [crossPairCollision_implies_degenerate](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/crosspaircollision-implies-degenerate--18a62e2142013e500a93a2f0.md) | 59 | `result-track:18a62e2142013e500a93a2f0e6b9073f6b38435a1aaf8695e83add8c31b5e4a1` |
| 8 | `theorem` | [degenerate_implies_crossPairCollision](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/degenerate-implies-crosspaircollision--d98228e0dd3401bfc428031b.md) | 74 | `result-track:d98228e0dd3401bfc428031b0196458ab23153074199600948bcc34b0217f668` |
| 9 | `def` | [centeredAffineFourMobiusDegenerateShiftPairs](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/centeredaffinefourmobiusdegenerateshiftpairs--37dd1a8ad7359cebacc28150.md) | 90 | `declaration-track:37dd1a8ad7359cebacc281503b9199ecb5f1a20940c170941e7bfb696a951a3f` |
| 10 | `def` | [centeredAffineFourMobiusDistinctShiftPairs](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/centeredaffinefourmobiusdistinctshiftpairs--7d213be7cec31fa47bf7ba2d.md) | 98 | `declaration-track:7d213be7cec31fa47bf7ba2d6491be7116669cd64528bfb652beb529d33ec33c` |
| 11 | `def` | [parityCenteredAffineFourMobiusDegenerateAtCenterLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiusdegenerateatcenterlag--3b36da0660f037da9c131e1d.md) | 106 | `declaration-track:3b36da0660f037da9c131e1da57baef7966ebd7d9e254a6c9efc861e26a44b3b` |
| 12 | `def` | [parityCenteredAffineFourMobiusDistinctAtCenterLag](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiusdistinctatcenterlag--7ce22d46bb43e1197c7311c2.md) | 113 | `declaration-track:7ce22d46bb43e1197c7311c2a8162473cdf61c1bd4ff211b6fb9185345f83ccc` |
| 13 | `theorem` | [parityCenteredAffineFourMobiusAtCenterLag_eq_degenerate_add_distinct](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiusatcenterlag-eq-degenerate-add-distinct--dca386194d4f95997c43e8f1.md) | 120 | `result-track:dca386194d4f95997c43e8f150e2013d443a8ca49b4255692a1b9d86d3fdf035` |
| 14 | `def` | [parityCenteredAffineFourMobiusDegenerateLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiusdegeneratelagcorrelation--912420663c447e8c514416cd.md) | 135 | `declaration-track:912420663c447e8c514416cdc414614891b7183c6ad986f6cab8e679a946c10e` |
| 15 | `def` | [parityCenteredAffineFourMobiusDistinctLagCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiusdistinctlagcorrelation--dfc0e4daa6c73728e9b3f1fd.md) | 143 | `declaration-track:dfc0e4daa6c73728e9b3f1fd880319754ac36981b9aac371bc6f75dfe2d52c1b` |
| 16 | `theorem` | [parityCenteredAffineFourMobiusLagCorrelation_eq_degenerate_add_distinct](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/paritycenteredaffinefourmobiuslagcorrelation-eq-degenerate-add-distinct--9706b2b730c9c5cf3fed0b88.md) | 150 | `result-track:9706b2b730c9c5cf3fed0b881f5ca5ec07f0ddf25e558e1c78e5246f909a7f27` |
| 17 | `structure` | [RegularCenteredAffineFourMobiusCollisionSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/regularcenteredaffinefourmobiuscollisionsourcedata--ffb305c14e1f27b4183d1e9e.md) | 167 | `declaration-track:ffb305c14e1f27b4183d1e9e8bdeb443f6419cb4e3393de3b50008da31d17c90` |
| 18 | `def` | [RegularCenteredAffineFourMobiusCollisionSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredAffineFourMobiusCollisions.lean/declarations/regularcenteredaffinefourmobiuscollisionsource--6864f3cd2fbe98067c008318.md) | 179 | `declaration-track:6864f3cd2fbe98067c00831836a3aa123702c2ce9fd83291c1614d07c56daa74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

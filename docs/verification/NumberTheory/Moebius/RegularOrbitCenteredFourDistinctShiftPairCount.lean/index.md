# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctShiftPairCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e31ee91675cf5035b0476cb412ae1c477ac1bb7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e31ee91675cf5035b0476cb412ae1c477ac1bb7`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredStructuredFourDistinctPerLag`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredStructuredFourDistinctPerLag.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeroWindingAdmissibleShiftSet_subset_range_center](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/zerowindingadmissibleshiftset-subset-range-center--aaeda910e431f19814ddad89.md) | 17 | `result-track:aaeda910e431f19814ddad891e87ff9daa5804504b00aa7c6d7071d8fd816a7a` |
| 2 | `theorem` | [card_zeroWindingAdmissibleShiftSet_le_center](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/card-zerowindingadmissibleshiftset-le-center--5752b22edd86809189d69084.md) | 24 | `result-track:5752b22edd86809189d69084f4229e4e095afc894b78a83d6b206d1c6c405a83` |
| 3 | `theorem` | [card_zeroWindingAdmissibleShiftSet_le_endpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/card-zerowindingadmissibleshiftset-le-endpoint--5f7de935e50745be600b6086.md) | 36 | `result-track:5f7de935e50745be600b608615684c70715eaab1c3a998677a225d814b5d64ce` |
| 4 | `theorem` | [card_admissibleShiftPairProduct_le_endpointSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/card-admissibleshiftpairproduct-le-endpointsquare--77b9858e7c22112548ae859a.md) | 43 | `result-track:77b9858e7c22112548ae859a8565a3f0427aec2cb1f5269ba5e9f86cdff1da69` |
| 5 | `theorem` | [card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/card-centeredaffinefourmobiusdistinctshiftpairs-le-endpointsquare--ede6a26d7611795e7fcf20a7.md) | 56 | `result-track:ede6a26d7611795e7fcf20a79eb2d45fc6070e995ffd9020a5d182aa436ebc91` |
| 6 | `theorem` | [sum_card_distinctShiftPairs_le_endpointCube](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/sum-card-distinctshiftpairs-le-endpointcube--27ff6d48cb0bf9d76721b704.md) | 69 | `result-track:27ff6d48cb0bf9d76721b704989e0867848fa2aa613e4045c3cbce27fc4681d8` |
| 7 | `structure` | [RegularCenteredFourDistinctShiftPairCountSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/regularcenteredfourdistinctshiftpaircountsourcedata--1fe40cbdaed3f85549a43cd8.md) | 87 | `declaration-track:1fe40cbdaed3f85549a43cd8e38d3bf0dc9c5cd23ccd26d552f3f584fe73cbea` |
| 8 | `def` | [RegularCenteredFourDistinctShiftPairCountSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/declarations/regularcenteredfourdistinctshiftpaircountsource--739b3b7b2575a7a203ff1d70.md) | 97 | `declaration-track:739b3b7b2575a7a203ff1d70e0ae2b7743414d0faec17290fa5e6a5a6d64e3e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

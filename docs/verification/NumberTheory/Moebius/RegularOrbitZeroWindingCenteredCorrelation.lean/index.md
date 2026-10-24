# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingCenteredCorrelation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be027f60e9f40c977686c1326e5e6739b3f039c4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be027f60e9f40c977686c1326e5e6739b3f039c4`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitZeroWindingSymmetricCorrelation`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingSymmetricCorrelation.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroWindingCenteredShiftSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/zerowindingcenteredshiftset--2e2a9d52f33e152768142969.md) | 43 | `declaration-track:2e2a9d52f33e152768142969ff7b03063de4dd23553d04ecbd762de94f8be4b4` |
| 2 | `theorem` | [solvedHalfIndex_mem_halfIndexBase_iff_centeredBounds](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/solvedhalfindex-mem-halfindexbase-iff-centeredbounds--a2a8507eed3179906a99fe2f.md) | 54 | `result-track:a2a8507eed3179906a99fe2fd249c3dbb809871c7bc7293d4967d1cfd2804aeb` |
| 3 | `theorem` | [zeroWindingAdmissibleShiftSet_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/zerowindingadmissibleshiftset-eq-centered--d12df4d75f91ea6e59ca89b7.md) | 89 | `result-track:d12df4d75f91ea6e59ca89b7ac73bb5017beebb54aa8a434abfb7fe1e4b7ce7d` |
| 4 | `def` | [parityZeroWindingCenteredMobiusCorrelation](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/parityzerowindingcenteredmobiuscorrelation--fc5f93c5958fc37e793ec374.md) | 110 | `declaration-track:fc5f93c5958fc37e793ec3741b9ecd5bde4275e2427ace5b57e0b612b358f2b5` |
| 5 | `theorem` | [parityZeroWindingSymmetricMobiusCorrelation_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/parityzerowindingsymmetricmobiuscorrelation-eq-centered--44d47ccc2518d757db913f78.md) | 119 | `result-track:44d47ccc2518d757db913f783cbe01221406d35047b99f3eb9c2a0d566c04316` |
| 6 | `def` | [parityEvenZeroWindingCenteredSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/parityevenzerowindingcenteredsecondmoment--07b9ba0513485fc42cd27dc5.md) | 129 | `declaration-track:07b9ba0513485fc42cd27dc544b178323f20ab061dbd6a8ffdcbd57fbe480a8e` |
| 7 | `def` | [parityOddZeroWindingCenteredSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/parityoddzerowindingcenteredsecondmoment--31bce7f1d41c7828e2795306.md) | 136 | `declaration-track:31bce7f1d41c7828e2795306e73b153888a9d312aa4eaf97c04a240b8b5c24d0` |
| 8 | `theorem` | [evenZeroWindingSymmetricSecondMoment_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/evenzerowindingsymmetricsecondmoment-eq-centered--928a497ca4e9c58aeab9a90d.md) | 143 | `result-track:928a497ca4e9c58aeab9a90d78d427a8bfb76affb3d10a44596868851feecec0` |
| 9 | `theorem` | [oddZeroWindingSymmetricSecondMoment_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/oddzerowindingsymmetricsecondmoment-eq-centered--04361c5221b2679a7b612450.md) | 155 | `result-track:04361c5221b2679a7b61245079e18c8daef713289b0e0ab5db555e8c8c9e8925` |
| 10 | `def` | [twoNonunitRegularZeroWindingCenteredSecondMomentMajorant](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/twononunitregularzerowindingcenteredsecondmomentmajorant--b536c3b31e950996186d036c.md) | 167 | `declaration-track:b536c3b31e950996186d036cfa07e934ef29208027330f1d1eade9c9ca4a4abd` |
| 11 | `theorem` | [zeroWindingSymmetricMajorant_eq_centered](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/zerowindingsymmetricmajorant-eq-centered--4b36bce6566c9608f462c687.md) | 176 | `result-track:4b36bce6566c9608f462c687a074368dabd9c28eefbd5a7b812f9fb7da882b34` |
| 12 | `structure` | [RegularZeroWindingCenteredCorrelationSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/regularzerowindingcenteredcorrelationsourcedata--eb988e0a366793ba815a67eb.md) | 189 | `declaration-track:eb988e0a366793ba815a67eb0d61f89abd8410d4c0364d65d668954dfa4d3c06` |
| 13 | `def` | [RegularZeroWindingCenteredCorrelationSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitZeroWindingCenteredCorrelation.lean/declarations/regularzerowindingcenteredcorrelationsource--617374a87d5f4b4f37c8a586.md) | 202 | `declaration-track:617374a87d5f4b4f37c8a586def6869c9ad003ea67a2bcf3481f09d268495163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

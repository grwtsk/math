# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Real.Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76072544280c8e16574e79284f627a921a700291",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76072544280c8e16574e79284f627a921a700291`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/rieszmeasure--c1381c3651d970dd87cc732d.md) | 73 | `declaration-track:c1381c3651d970dd87cc732dbbd9f035d285143bfad957b7ab3fcdc8487d756f` |
| 2 | `lemma` | [le_rieszMeasure_tsupport_subset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/le-rieszmeasure-tsupport-subset--a47cd0a6b09f9491890d8022.md) | 78 | `result-track:a47cd0a6b09f9491890d8022c5fb7178890764ce4e3a941537f0ce33d0ebc0ef` |
| 3 | `lemma` | [rieszMeasure_le_of_eq_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/rieszmeasure-le-of-eq-one--9202ecd3d7827cfc616254d6.md) | 98 | `result-track:9202ecd3d7827cfc616254d6975765df5265e5d5dc60356e2252a64a3b5b20a8` |
| 4 | `lemma` | [range_cut_partition](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/range-cut-partition--cd29ee3ec0569405250b8d51.md) | 117 | `result-track:cd29ee3ec0569405250b8d51e59d4b8aa561031f9222497d8a414d7e11359367` |
| 5 | `lemma` | [exists_open_approx](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/exists-open-approx--dc3cd677dfe9d2a1822f2d02.md) | 166 | `result-track:dc3cd677dfe9d2a1822f2d0264605647991bb507f2735c76732df53f788d697c` |
| 6 | `lemma` | [exists_nat_large](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/exists-nat-large--0e01306f69f809a33d78202a.md) | 184 | `result-track:0e01306f69f809a33d78202afabb48ec241018456f319aa1688b1081e0970b20` |
| 7 | `lemma` | [integral_riesz_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/integral-riesz-aux--549258acc46966d917baa161.md) | 198 | `result-track:549258acc46966d917baa161413eb3f25959cb95e719f12a4cafb73e33eca4d1` |
| 8 | `theorem` | [integral_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/integral-rieszmeasure--2f949c60b3a4cdd9be20c07e.md) | 353 | `result-track:2f949c60b3a4cdd9be20c07e9c78448cce02b00035ba3c44f86e1c2d8f8556b4` |
| 9 | `instance` | [regular_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/regular-rieszmeasure--bf87ce3aac8a83e70383d8a0.md) | 365 | `declaration-track:bf87ce3aac8a83e70383d8a05e0a687a85f6559c81eb1d00c9a5089c33efd714` |
| 10 | `lemma` | [measure_le_of_isCompact_of_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/measure-le-of-iscompact-of-integral--56cdc5546a3f5c77262171d2.md) | 379 | `result-track:56cdc5546a3f5c77262171d2dc0e2616d3fa5654b9c58878773ca3b2a519186a` |
| 11 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.ext_of_integral_eq_on_compactlySupported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/root-grwtsk-analysis-realanalysis-integration-rieszmeasure-variant3b5649--9a10f16d8d9357ee83bc805c.md) | 420 | `result-track:9a10f16d8d9357ee83bc805c1815113e33f8aa4c89bf700b502ba5e3194afc95` |
| 12 | `theorem` | [integralPositiveLinearMap_inj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/integralpositivelinearmap-inj--e00368d93c684a75870703a6.md) | 433 | `result-track:e00368d93c684a75870703a6661a0dba592b381ad825a62715aa9dd989845b86` |
| 13 | `theorem` | [rieszMeasure_integralPositiveLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/rieszmeasure-integralpositivelinearmap--3d913c99fd836566c06838d5.md) | 441 | `result-track:3d913c99fd836566c06838d58e9df900ba7616f743707e5fc9928895aefe0b88` |
| 14 | `theorem` | [integralPositiveLinearMap_rieszMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/integralpositivelinearmap-rieszmeasure--2d04eb0aff982d4b1ddd3d61.md) | 446 | `result-track:2d04eb0aff982d4b1ddd3d6176ad9ec17f150315e18566ddcf12e08c322a70a5` |
| 15 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/instance--cca2d0352f686e51e7a35176.md) | 453 | `declaration-track:cca2d0352f686e51e7a3517657be1648c03a1af401f1358b91dc23864e84ec18` |
| 16 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.exists_regular_eq_of_compactSpace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/root-grwtsk-analysis-realanalysis-integration-rieszmeasure-variant3b5649--eb641030af5a523b6966d8f0.md) | 463 | `result-track:eb641030af5a523b6966d8f0e5153af99df9eb906eda3205e79c3b2ce7a3c7ee` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.RieszMeasure.Variant3b5649ef2ac22ee09c1df19221e4c2797209dcef34baae1d0c66a6d32b78a535.MeasureTheory.Measure.exists_innerRegular_eq_of_isCompact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Real/Variantd1627ca502c2ba98633f8f6b824e93035e67f83c48f588a7628acb64481ffb52.lean/declarations/root-grwtsk-analysis-realanalysis-integration-rieszmeasure-variant3b5649--c1f7d6bf465b74b4e5aa634e.md) | 480 | `result-track:c1f7d6bf465b74b4e5aa634e8fcac189aafb7c4809e2bf9b92d7c636a4392775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

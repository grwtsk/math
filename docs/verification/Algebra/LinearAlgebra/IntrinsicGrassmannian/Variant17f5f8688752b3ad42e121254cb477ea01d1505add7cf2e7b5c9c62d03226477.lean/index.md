# Verification target: GRWTSK.Algebra.LinearAlgebra.IntrinsicGrassmannian.Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01532a39edd1d13714da9b96d3bac264ccf06d96",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01532a39edd1d13714da9b96d3bac264ccf06d96`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.StrongRankCondition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IntrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicplane--afc31dbfa10dc66163091d59.md) | 22 | `declaration-track:afc31dbfa10dc66163091d59c02e9b4bc21da78149c07d09d129d7432dfa5135` |
| 2 | `def` | [FullRankFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/fullrankframe--cc1821f49ac764ab49f1399c.md) | 26 | `declaration-track:cc1821f49ac764ab49f1399c0f14a671136f9e5d54f599c48ab3eb8fba24b574` |
| 3 | `def` | [representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/representedplane--b0fc0494df04ffacd8c909a5.md) | 30 | `declaration-track:b0fc0494df04ffacd8c909a5bc0144bff7c2166969e91f4a9b800bf6046dd6ec` |
| 4 | `theorem` | [representedPlane_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/representedplane-eq-iff--57ed0a05619e6ccf70d4b3fe.md) | 34 | `result-track:57ed0a05619e6ccf70d4b3fea09ad4b156b7f60f83c2ddaac60b329cd7ed121d` |
| 5 | `theorem` | [exists_frame_of_intrinsicPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/exists-frame-of-intrinsicplane--8d836d8007fad13417d465d4.md) | 44 | `result-track:8d836d8007fad13417d465d4035863f6900f05cbe71181c6e5dc123a25441883` |
| 6 | `theorem` | [representedPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/representedplane-surjective--6c5068191ae439c3242227e6.md) | 67 | `result-track:6c5068191ae439c3242227e66b6b1215e24c79e75fa6be72a4a9a9506b91c627` |
| 7 | `theorem` | [intrinsicPlane_dimension_le](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicplane-dimension-le--f03077ea37aa4fa42b5a4ec2.md) | 74 | `result-track:f03077ea37aa4fa42b5a4ec267024bdd00099c8120c3a629fcda79ab0cb4a2c9` |
| 8 | `theorem` | [no_intrinsicPlane_of_lt](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/no-intrinsicplane-of-lt--da7ac33d7b13342c38660357.md) | 81 | `result-track:da7ac33d7b13342c38660357ae1bde38d0d48284151731ce97fc3c2c95bcbbd1` |
| 9 | `def` | [planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/planeframe--c2072d9f57a464fc7b556b09.md) | 86 | `declaration-track:c2072d9f57a464fc7b556b0981bf88359968f9ceaf57e9ace0720d2fa5afdef2` |
| 10 | `theorem` | [representedPlane_planeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/representedplane-planeframe--b9768bd99f9a8dd3a12a6bd3.md) | 90 | `result-track:b9768bd99f9a8dd3a12a6bd3b5e19698c87f61825d13bc6132116fd91d9dd3c0` |
| 11 | `def` | [framePresentationSetoid](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/framepresentationsetoid--ec465affda1129b3a3f93390.md) | 95 | `declaration-track:ec465affda1129b3a3f93390cdc42b01f9302aa38ebb66a7c5e390ab4ffbec9d` |
| 12 | `abbrev` | [FramePresentationQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/framepresentationquotient--2e5b16feb74b25e32184f85b.md) | 100 | `declaration-track:2e5b16feb74b25e32184f85bf494960ad62b889c1f3c42de1363888728d210c4` |
| 13 | `def` | [quotientToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/quotienttoplane--ec2348f95839ce345e80ceec.md) | 103 | `declaration-track:ec2348f95839ce345e80ceec2e280c3baad22ca3952153927bae673bde694eef` |
| 14 | `def` | [planeToQuotient](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/planetoquotient--c30cbb118b365afa1fda320e.md) | 107 | `declaration-track:c30cbb118b365afa1fda320ef0058d8f508855edb81ba737f63e0a25de9d68a5` |
| 15 | `theorem` | [quotientToPlane_mk](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/quotienttoplane-mk--657caa6039c69c90c2cf68d6.md) | 111 | `result-track:657caa6039c69c90c2cf68d6bd8f3659c19f33d949d0ff25270e248c725871e3` |
| 16 | `theorem` | [planeToQuotient_representedPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/planetoquotient-representedplane--2f260c2bae626ad60ff48306.md) | 116 | `result-track:2f260c2bae626ad60ff48306293d8b481b3e7c5aaeb6e7126f321157743fd4c4` |
| 17 | `def` | [frameQuotientEquivPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/framequotientequivplane--156aabc028119db3eb7e7329.md) | 123 | `declaration-track:156aabc028119db3eb7e7329c86be561651b85492d2a8969bf371d54cc1f3717` |
| 18 | `theorem` | [frameClass_eq_iff_rowSpace](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/frameclass-eq-iff-rowspace--984f063a0409ab6029bcc874.md) | 135 | `result-track:984f063a0409ab6029bcc8744f6ec9e0db8e8bef1f43b5ef7def201e76671fa7` |
| 19 | `theorem` | [frameClass_eq_iff_orderedMinor_proportional](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/frameclass-eq-iff-orderedminor-proportional--63ba2b5706684071ffc9a489.md) | 142 | `result-track:63ba2b5706684071ffc9a489a88f81523a8b4fa310b0adf81eab7d1122d05a1b` |
| 20 | `theorem` | [intrinsicPlane_has_ordered_chart](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicplane-has-ordered-chart--5c7c6deebd68b4c6e81d1051.md) | 151 | `result-track:5c7c6deebd68b4c6e81d10511e9aac421474db3e9451095125e7f6e8aec6596c` |
| 21 | `def` | [IntrinsicNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicnonnegative--ba9729e4f99dce99793a7562.md) | 162 | `declaration-track:ba9729e4f99dce99793a7562bf076d340b9fd88a1ff7c0c21e6152ff7ca25532` |
| 22 | `def` | [IntrinsicPositive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicpositive--31b1aeb876019842ae2b8927.md) | 166 | `declaration-track:31b1aeb876019842ae2b8927b8a7309228b3a4ac2d077704341f424167cb5527` |
| 23 | `theorem` | [intrinsicNonnegative_of_positive](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/intrinsicnonnegative-of-positive--5a8ac0670a0990b194e4abab.md) | 170 | `result-track:5a8ac0670a0990b194e4ababc44444e941ae17469c75a84fba3f67dccf12e55d` |
| 24 | `def` | [NonnegativeFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/nonnegativeframe--46c807d772b935842a510e79.md) | 176 | `declaration-track:46c807d772b935842a510e79272fe7eefde75b5783c54f73e3d69904a225bce9` |
| 25 | `def` | [PositiveFrame](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/positiveframe--05ef22b912381527a0e31f2e.md) | 180 | `declaration-track:05ef22b912381527a0e31f2e796ec84994443398461f32198e294dc736581928` |
| 26 | `def` | [nonnegativeFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/nonnegativeframetoplane--1a2f6e1e45f31d7584320dc0.md) | 184 | `declaration-track:1a2f6e1e45f31d7584320dc006c5d27ca424f59e5e07bab26492a50f66bc9497` |
| 27 | `theorem` | [nonnegativeFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/nonnegativeframetoplane-surjective--915ce97e970aae00850c9861.md) | 189 | `result-track:915ce97e970aae00850c98614857ae506f34f06c753720b8eba6223e537d9a51` |
| 28 | `def` | [positiveFrameToPlane](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/positiveframetoplane--bfeb45d95f798484888f2b8d.md) | 197 | `declaration-track:bfeb45d95f798484888f2b8d629b09000f9042e62441fe8dc368044afd45932a` |
| 29 | `theorem` | [positiveFrameToPlane_surjective](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/positiveframetoplane-surjective--f890da776cacad2f45610c84.md) | 202 | `result-track:f890da776cacad2f45610c844eb405feaea3cfb723c9c1656c32beb47b72c93d` |
| 30 | `theorem` | [nonnegativeFrames_positiveGauge](../../../../../mathematics/Algebra/LinearAlgebra/IntrinsicGrassmannian/Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477.lean/declarations/nonnegativeframes-positivegauge--077f25be94b12faace0bd3ee.md) | 210 | `result-track:077f25be94b12faace0bd3ee67f0b1af9e149ddad17377123debe0072e2f9ea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

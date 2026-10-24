# Verification target: GRWTSK.NumberTheory.Moebius.NaturalScaleSquareModulusCongruenceL1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4917db8c9c95ada18c0c14f579fc4e21a7448eff",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4917db8c9c95ada18c0c14f579fc4e21a7448eff`.

Source path: `GRWTSK/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FixedToUniformSquareModulusObstruction`](../../../../mathematics/NumberTheory/Moebius/FixedToUniformSquareModulusObstruction.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertensEndpointCrossCongruenceFibre_eq_zero_of_endpoint_le_square](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/mertensendpointcrosscongruencefibre-eq-zero-of-endpoint-le-square--2f12c8f0b7f90b817e9425b3.md) | 42 | `result-track:2f12c8f0b7f90b817e9425b3219883eaaa1ee4b3ea116d118f71d1472f248146` |
| 2 | `def` | [effectiveEndpointSquareModulusSet](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/effectiveendpointsquaremodulusset--7632a7d7b31483fa5a808214.md) | 66 | `declaration-track:7632a7d7b31483fa5a80821472914a90b96cd97accfdcf2f07e4517b5b1bab72` |
| 3 | `theorem` | [mertensEndpointCrossCongruenceL1Mass_eq_effectiveSupport](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/mertensendpointcrosscongruencel1mass-eq-effectivesupport--444323961aae061419bd7b89.md) | 72 | `result-track:444323961aae061419bd7b89d7f228d7f1e692722de158afc8673f7d204c0fd0` |
| 4 | `theorem` | [sum_reciprocalEndpointDrop_Ico](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/sum-reciprocalendpointdrop-ico--58661d60c504aa7e3c05891c.md) | 93 | `result-track:58661d60c504aa7e3c05891c41d6821bef4c01f351495fb5e12215e8d7a388e8` |
| 5 | `theorem` | [sum_reciprocalEndpointDrop_dyadic_le](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/sum-reciprocalendpointdrop-dyadic-le--483b762b030cfdf4bfe2dacc.md) | 108 | `result-track:483b762b030cfdf4bfe2daccdb7b7875754bb22b713a3426e4d808753ff9dcdc` |
| 6 | `def` | [DyadicNaturalScaleSquareModulusCongruenceL1](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/dyadicnaturalscalesquaremoduluscongruencel1--a8fef0138135c0258bd70229.md) | 125 | `declaration-track:a8fef0138135c0258bd70229edfb6de9e857b5e82c556fd0126b73326a9f8867` |
| 7 | `theorem` | [subpolynomialWeightedMertensEndpointCrossCongruenceL1_of_naturalScale](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointcrosscongruencel1-of-naturalscale--6e0a7b004e44a3d8a0fe599a.md) | 136 | `result-track:6e0a7b004e44a3d8a0fe599ab1ede62d6e371f9104f87c218057294a666f991d` |
| 8 | `theorem` | [subpolynomialWeightedMertensEndpointCongruenceCrossCollision_of_naturalScale](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointcongruencecrosscollision-of-naturals--e6d981ab2d46e98ae3e60474.md) | 188 | `result-track:e6d981ab2d46e98ae3e604747517f43b2acc566e1cbb1acc27fb35c0f75f3393` |
| 9 | `theorem` | [subpolynomialWeightedMertensEndpointSquarefreeMidpointCrossCollision_of_naturalScale](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/subpolynomialweightedmertensendpointsquarefreemidpointcrosscollision-of--760d6fd05e7e319003cba449.md) | 196 | `result-track:760d6fd05e7e319003cba44972daaa145ae4c3cf3594a83f523308f61dafcac3` |
| 10 | `theorem` | [naturalScaleSquareModulusCongruenceL1_of_uniformPerFibre](../../../../mathematics/NumberTheory/Moebius/NaturalScaleSquareModulusCongruenceL1.lean/declarations/naturalscalesquaremoduluscongruencel1-of-uniformperfibre--a02a4862f0b578f4dfceb4fd.md) | 206 | `result-track:a02a4862f0b578f4dfceb4fda8200f06d12252b5bd5417e9aad5b46a1df6ca51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

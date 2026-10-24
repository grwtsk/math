# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredSquarefreeDivisorReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d52b106ee00114ae8cf25bfcdd8bc82944c131e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d52b106ee00114ae8cf25bfcdd8bc82944c131e`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredDegenerateWeightedBinary`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredDegenerateWeightedBinary.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareDivisorSet](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/squaredivisorset--bf05fbcb1bfb9c1885eb7a5f.md) | 17 | `declaration-track:bf05fbcb1bfb9c1885eb7a5f1fed0394b8679a7ef46c640406c7a10d8767857c` |
| 2 | `def` | [MobiusSquareDivisorExpansion](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/mobiussquaredivisorexpansion--29e1f68e3e6cdaddb15c8f60.md) | 22 | `declaration-track:29e1f68e3e6cdaddb15c8f60c9c0c8a60871b88e7ea99eb4b437ca15595c0071` |
| 3 | `def` | [squareDivisorExpandedWeightedBinary](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/squaredivisorexpandedweightedbinary--a505e4d1321cf4088d6d4c59.md) | 29 | `declaration-track:a505e4d1321cf4088d6d4c5934d1fad9e1b533e200050e2096c7b5ebcdefc6ef` |
| 4 | `theorem` | [squareDivisorExpandedWeightedBinary_eq](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/squaredivisorexpandedweightedbinary-eq--1304f3889ba5695329702ec3.md) | 34 | `result-track:1304f3889ba5695329702ec38a822a0bf9785ccba56313d6364ae09d14cb8e84` |
| 5 | `def` | [SquarefreeWeightedBinaryCollisionForm](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/squarefreeweightedbinarycollisionform--073933f6a7b2fd64d78856d5.md) | 46 | `declaration-track:073933f6a7b2fd64d78856d58953ee51664bce2c8c6a755247180d569bc70217` |
| 6 | `theorem` | [squarefreeWeightedBinaryCollisionForm_eq_divisorSquareSuperposition](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/squarefreeweightedbinarycollisionform-eq-divisorsquaresuperposition--69f4b0f2049692347d109b2c.md) | 50 | `result-track:69f4b0f2049692347d109b2c72ea6682096c771dfe169b246ef5c967db7f83b6` |
| 7 | `structure` | [DivisorSquareRestrictedBinaryCorrelationDatum](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/divisorsquarerestrictedbinarycorrelationdatum--5e5361ba07dbdad7067cf4d1.md) | 60 | `declaration-track:5e5361ba07dbdad7067cf4d1e1167704ca2e0c0d0acc54d45ebfa2843be7c343` |
| 8 | `def` | [divisorSquareRestrictedBinaryCorrelationTerm](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/divisorsquarerestrictedbinarycorrelationterm--9ca4c2361ed91648b1e7ba67.md) | 67 | `declaration-track:9ca4c2361ed91648b1e7ba677fd0f5cd7614f1ad730fafd9a5bf776e7890416a` |
| 9 | `structure` | [ToDivisorSquareRestrictedBinaryAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/todivisorsquarerestrictedbinaryadapter--312c70bc2174ae194ba3cbae.md) | 75 | `declaration-track:312c70bc2174ae194ba3cbae9ade2b9f3cdd727c998b39aac4694cc6c3250986` |
| 10 | `def` | [canonicalToDivisorSquareRestrictedBinaryAdapter](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/canonicaltodivisorsquarerestrictedbinaryadapter--c17458a064e11947e3718698.md) | 82 | `declaration-track:c17458a064e11947e3718698cbac254da9c9906d1c16507c511ad3169bb02bbc` |
| 11 | `def` | [RegularCenteredDivisorSquareRestrictedBinaryEnvelope](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/regularcentereddivisorsquarerestrictedbinaryenvelope--c80d74325e4c615d574e4657.md) | 91 | `declaration-track:c80d74325e4c615d574e46574202c4e0dee5af4eb4afceb0e08acde39dddfc13` |
| 12 | `structure` | [RegularCenteredSquarefreeDivisorReductionSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/regularcenteredsquarefreedivisorreductionsourcedata--4884f9644b1453fe36edc989.md) | 95 | `declaration-track:4884f9644b1453fe36edc989590b951c444ec261b1d7044f213a2ebb4686bd61` |
| 13 | `def` | [RegularCenteredSquarefreeDivisorReductionSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSquarefreeDivisorReduction.lean/declarations/regularcenteredsquarefreedivisorreductionsource--2681f1617e1d19214137ea2d.md) | 106 | `declaration-track:2681f1617e1d19214137ea2df22d17780d0ce95835a0174c90370b3e1c97cadc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

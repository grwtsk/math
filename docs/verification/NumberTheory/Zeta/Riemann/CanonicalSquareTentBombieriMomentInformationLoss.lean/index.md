# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a237718b7a1321fdfab175301b91dc131cf6895",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a237718b7a1321fdfab175301b91dc131cf6895`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bombieriMomentProfile](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/bombierimomentprofile--d5ddeddc308f7fb3b388ecb1.md) | 42 | `declaration-track:d5ddeddc308f7fb3b388ecb14acf1fc236a8a0838d188c28c95a20291e1e9f16` |
| 2 | `theorem` | [bombieriMomentProfile_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/bombierimomentprofile-zero--b803de1519111430ae436fe2.md) | 51 | `result-track:b803de1519111430ae436fe2d89099b43ccf62589d0141043738920a45de1e88` |
| 3 | `theorem` | [bombieriMomentProfile_correctedCoordinates](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/bombierimomentprofile-correctedcoordinates--58ddaade98029e1ec7ca7a42.md) | 58 | `result-track:58ddaade98029e1ec7ca7a4262e5d4c734f4e7babf031106e4e5cc7427d310ac` |
| 4 | `theorem` | [bombieriMomentProfile_not_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/bombierimomentprofile-not-injective--914a87113e0606449fa5efc4.md) | 68 | `result-track:914a87113e0606449fa5efc4c383cca599b06629af731aaa0b97384cdee31eec` |
| 5 | `def` | [FactorsThroughBombieriMoments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/factorsthroughbombierimoments--2890ccbc967a817abb51ac4a.md) | 80 | `declaration-track:2890ccbc967a817abb51ac4ac68a34ff457ca1486543c5e0987a58a5e65a9e27` |
| 6 | `theorem` | [readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/readout-eq-zero-on-corrected-of-factorsthroughbombierimoments--43fcea20a0202091f015ed9e.md) | 87 | `result-track:43fcea20a0202091f015ed9e0fb8ba6e7c044287c8f526f7ba66e0d88be1e2f0` |
| 7 | `theorem` | [not_factorsThroughBombieriMoments_of_separates_corrected](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/not-factorsthroughbombierimoments-of-separates-corrected--17993284d110d72b84d147f9.md) | 112 | `result-track:17993284d110d72b84d147f9a160a0b73d280718a04c4fad3a37b0e4ffefcbf3` |
| 8 | `theorem` | [hermitianForm_zero_left](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/hermitianform-zero-left--25c60c071ecf07e56ee47c87.md) | 122 | `result-track:25c60c071ecf07e56ee47c877607d67586dc39d363a63535336f2f58ffa39398` |
| 9 | `def` | [classicalDiagonalReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/classicaldiagonalreadout--e12147d46fbfd259661f37e6.md) | 132 | `declaration-track:e12147d46fbfd259661f37e6c3781653e9189ca7b3d403f78f229cd3c06613e8` |
| 10 | `theorem` | [classicalDiagonalReadout_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/classicaldiagonalreadout-zero--e67341065f64ef5dc97469d3.md) | 139 | `result-track:e67341065f64ef5dc97469d34761ea2987b7b4a778a3cef4d349d78de14fc7fc` |
| 11 | `def` | [ClassicalDiagonalFactorsThroughBombieriMoments](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/classicaldiagonalfactorsthroughbombierimoments--19ddb4c3f3d08d7e20217faa.md) | 148 | `declaration-track:19ddb4c3f3d08d7e20217faaad0ba5d47c3ef362ee74ccb6231e23273612f55d` |
| 12 | `theorem` | [no_classicalDiagonalFactorization_of_separates](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/no-classicaldiagonalfactorization-of-separates--1c25dd3ab4cfe7c716686c49.md) | 155 | `result-track:1c25dd3ab4cfe7c716686c491f03c423470bb149d739ed3d5d0c50907944f1ff` |
| 13 | `theorem` | [no_classicalDiagonalFactorization_of_positive](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/no-classicaldiagonalfactorization-of-positive--cc293c1487eca8ef2719b4a2.md) | 167 | `result-track:cc293c1487eca8ef2719b4a28751cfece374a9781f0aba63c853267e7ab54846` |
| 14 | `theorem` | [no_classicalDiagonalFactorization_of_exactTransport](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean/declarations/no-classicaldiagonalfactorization-of-exacttransport--71330787a1cdfbec4491c8c6.md) | 179 | `result-track:71330787a1cdfbec4491c8c674a58a07c4e670ca8acda055a70dcf08959e3b65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

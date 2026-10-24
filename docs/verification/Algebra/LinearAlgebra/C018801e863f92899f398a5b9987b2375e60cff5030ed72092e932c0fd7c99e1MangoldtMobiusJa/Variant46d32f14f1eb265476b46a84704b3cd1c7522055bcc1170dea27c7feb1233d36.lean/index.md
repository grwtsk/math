# Verification target: GRWTSK.Algebra.LinearAlgebra.C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa.Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e21e72770a08a8b34e7633d3ccb21cb0820114",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e21e72770a08a8b34e7633d3ccb21cb0820114`.

Source path: `GRWTSK/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedDilation](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signeddilation--a0eb61d1746b0d4fa0719214.md) | 41 | `declaration-track:a0eb61d1746b0d4fa0719214765cdd81cc813324b90722c092246041422ef222` |
| 2 | `def` | [jointVector](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/jointvector--74a2bc39c12cd296ef085835.md) | 45 | `declaration-track:74a2bc39c12cd296ef085835fcf973c73c5d56ee528cca112e0b1cbf0b77c7cd` |
| 3 | `theorem` | [signedDilation_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signeddilation-symmetric--99e4764f8ecea7fe10db130d.md) | 48 | `result-track:99e4764f8ecea7fe10db130dd4b953dcbfb8c9e59b97857f7c161f60ea5d62be` |
| 4 | `theorem` | [signedDilation_quadratic](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signeddilation-quadratic--28c2be50053f98d1db7d31a8.md) | 53 | `result-track:28c2be50053f98d1db7d31a84137d8ed70e14b20d125db950b11bfc5ba28112b` |
| 5 | `theorem` | [signedDilation_quadratic_sum](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signeddilation-quadratic-sum--6d9fff7251104496d9900842.md) | 64 | `result-track:6d9fff7251104496d9900842963ea489ff76ecbb2f4e8097cad791b155ea2c26` |
| 6 | `def` | [pairKernel](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/pairkernel--3e9aede6134df042c4adb285.md) | 80 | `declaration-track:3e9aede6134df042c4adb28519d9e6288afe2d6a35e17d22bf52f1892f17cf62` |
| 7 | `theorem` | [pairKernel_covariance](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/pairkernel-covariance--3c5c842c72b46ed9eb7674c5.md) | 82 | `result-track:3c5c842c72b46ed9eb7674c5c68f3351c68a102a0eed4030d14f9f7a76bbed0d` |
| 8 | `theorem` | [finiteMangoldtMobius_covariance](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/finitemangoldtmobius-covariance--48e17c0d046d10076f7ccf04.md) | 97 | `result-track:48e17c0d046d10076f7ccf04ba6ccf4bc3c59564a61c41480eed804bb70592d7` |
| 9 | `def` | [SourceAtom](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceatom--5c9fd394f2097fcba4d61275.md) | 111 | `declaration-track:5c9fd394f2097fcba4d612754a6b8ab806f185064ab7adc5414a4fb33828cec1` |
| 10 | `instance` | [sourceAtomFintype](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceatomfintype--2272c54029433e083f842fc8.md) | 115 | `declaration-track:2272c54029433e083f842fc8cd943528aab923a2ded0e6beed103e539234a363` |
| 11 | `instance` | [sourceAtomDecidableEq](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceatomdecidableeq--5d9c64c5d28a63d4a09804ea.md) | 119 | `declaration-track:5d9c64c5d28a63d4a09804ea7685dfb63fe482c8e6e455153f040bd7c63bf2c6` |
| 12 | `def` | [sourceMobiusRow](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourcemobiusrow--392474eae3d8e2d02a15af36.md) | 123 | `declaration-track:392474eae3d8e2d02a15af36a033134db0ffe91ed654787ed62ee4400f278cb0` |
| 13 | `def` | [sourceLogRow](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourcelogrow--813c0741f573a1d602c353b7.md) | 127 | `declaration-track:813c0741f573a1d602c353b77eac66d5abb9701e18cdf1d90b716ff0871c2156` |
| 14 | `def` | [sourceAtomWeight](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceatomweight--fd1f5aa21e3708ddd2fd4d7c.md) | 130 | `declaration-track:fd1f5aa21e3708ddd2fd4d7c0bed4bb0dd7f38765022cf7c4be36161446934b8` |
| 15 | `def` | [sourceSignedOperator](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourcesignedoperator--bd2d593c0a75b8774d7c3cdb.md) | 134 | `declaration-track:bd2d593c0a75b8774d7c3cdb0ba9a2c4f01a238ccf2e9841ccc3f9d2b0bb890a` |
| 16 | `def` | [sourceJointVector](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourcejointvector--5d50af589461b5f625237f4a.md) | 139 | `declaration-track:5d50af589461b5f625237f4a3f2245a8a3a6d59f4d86e6922ac4aa15b64b071b` |
| 17 | `def` | [sourceOperatorValue](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceoperatorvalue--3fbc0094f4a6f5605b1d6b31.md) | 143 | `declaration-track:3fbc0094f4a6f5605b1d6b31281a0d6e3f806302863d4ea5b62154e7a0dd2024` |
| 18 | `theorem` | [sourceOperatorValue_eq_twice_mobius](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceoperatorvalue-eq-twice-mobius--59dcba5c762307dd55bd9eb5.md) | 147 | `result-track:59dcba5c762307dd55bd9eb5c4edbdd2f25728521fadc62b8da351fa72cd1b04` |
| 19 | `theorem` | [sourceOperatorValue_eq_twice_residual](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/sourceoperatorvalue-eq-twice-residual--68fec251a523c977bf470e42.md) | 170 | `result-track:68fec251a523c977bf470e42ef89de652d280ea09a66d6b12608007ac5318c16` |
| 20 | `def` | [SignedOperatorTailUpperBound](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signedoperatortailupperbound--0484ea5206c00c584680240b.md) | 176 | `declaration-track:0484ea5206c00c584680240b9ed460ccbf8324380d9499bb23939e808ed56df3` |
| 21 | `theorem` | [signedOperatorTail_iff_mertensResidualTail](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/signedoperatortail-iff-mertensresidualtail--c668e9650de913d76dac3ba1.md) | 181 | `result-track:c668e9650de913d76dac3ba13649d13de28d183b907b46730dd656b285025504` |
| 22 | `theorem` | [estimate_of_signedOperatorTail](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/estimate-of-signedoperatortail--4f32c157a2910ad9a07b087e.md) | 197 | `result-track:4f32c157a2910ad9a07b087e3820a4063d64912ca14e12bf04da044961fec19d` |
| 23 | `theorem` | [cancellation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/cancellation-fixture--fe3e19a300401c9ace88805b.md) | 204 | `result-track:fe3e19a300401c9ace88805bae50a497b2bb15d82923869ba973c88c8bc35cdf` |
| 24 | `theorem` | [absolute_fixture](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/absolute-fixture--3e9a97fa1bcff666de2849b5.md) | 211 | `result-track:3e9a97fa1bcff666de2849b58ad35ef959e19928f70602b8f5c4fb5c692df4b6` |
| 25 | `theorem` | [unbounded_representation_fixture](../../../../../mathematics/Algebra/LinearAlgebra/C018801e863f92899f398a5b9987b2375e60cff5030ed72092e932c0fd7c99e1MangoldtMobiusJa/Variant46d32f14f1eb265476b46a84704b3cd1c7522055bcc1170dea27c7feb1233d36.lean/declarations/unbounded-representation-fixture--246d761fb308e913b5963923.md) | 218 | `result-track:246d761fb308e913b5963923075d5458f98af24339dace97b36cc815bcf8ee2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

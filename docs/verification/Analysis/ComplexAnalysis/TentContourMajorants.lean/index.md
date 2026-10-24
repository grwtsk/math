# Verification target: GRWTSK.Analysis.Complex.TentContourMajorants

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6112bcfd991df7cea0c12af7deea378f689bba53",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TentContourMajorants.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6112bcfd991df7cea0c12af7deea378f689bba53`.

Source path: `GRWTSK/Analysis/Complex/TentContourMajorants.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TentContourMajorants.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentMellinInversion`](../../../../mathematics/Analysis/ComplexAnalysis/TentMellinInversion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Complex.OrientedRectangle`](../../../../mathematics/Analysis/ComplexAnalysis/OrientedRectangle.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerProfile](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/powerprofile--f3894b7babb4bfc0f0da4dfd.md) | 36 | `declaration-track:f3894b7babb4bfc0f0da4dfd028fe29615f45a88be93d74cfdddf4646e38a783` |
| 2 | `def` | [numeratorProfile](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/numeratorprofile--7f09364a5d66ad479943639a.md) | 39 | `declaration-track:7f09364a5d66ad479943639a68a429274174a5524ced4a5b640757d17c186e84` |
| 3 | `def` | [profilePrimitive](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/profileprimitive--f7d43013e8cc8ef5e074a418.md) | 43 | `declaration-track:f7d43013e8cc8ef5e074a418e7bc44ba4413dc85c2588c3eaf58af18c684b4fa` |
| 4 | `def` | [horizontalBudget](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/horizontalbudget--f3816852d549edf6246d217f.md) | 49 | `declaration-track:f3816852d549edf6246d217f49aa4b83c5bfb1d8072e6d71a86a244bea0c53e3` |
| 5 | `theorem` | [numeratorProfile_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/numeratorprofile-nonneg--b184f7439f1cfa2c3d39a283.md) | 51 | `result-track:b184f7439f1cfa2c3d39a2838c0b7254ed646acbfb4dc6cb5fdd772ae306f827` |
| 6 | `theorem` | [continuous_numeratorProfile](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/continuous-numeratorprofile--a0698c4d2873b3cdad09d0be.md) | 55 | `result-track:a0698c4d2873b3cdad09d0be1a640a2ee36002624f7807d407cb39a50547a795` |
| 7 | `theorem` | [norm_logPower_exact](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-logpower-exact--8e6aebb420f053ce2b40f42d.md) | 59 | `result-track:8e6aebb420f053ce2b40f42d95637d4466802253689d54e85d8aa227bbb154fd` |
| 8 | `theorem` | [norm_numerator_le_profile](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-numerator-le-profile--d30d6963897c5362b1b762c6.md) | 64 | `result-track:d30d6963897c5362b1b762c6b7d16e5ab2e7c62f4a8a7d7d91b7426f9d8ebbb5` |
| 9 | `theorem` | [norm_kernel_le_profile_div](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-kernel-le-profile-div--6fcd76e4f4566c6281a469b6.md) | 76 | `result-track:6fcd76e4f4566c6281a469b69eebb2217d5fb55fcc34b7cb6101a1899cc2c05d` |
| 10 | `theorem` | [norm_kernel_horizontal_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-kernel-horizontal-le--6a7bea11141bf7acca2b026b.md) | 99 | `result-track:6a7bea11141bf7acca2b026b31d4f6544ec85c66e50352fa1c61ec9a5bbf740e` |
| 11 | `theorem` | [powerProfile_primitive_deriv](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/powerprofile-primitive-deriv--6641591ab9ff3ba7e935a3f4.md) | 112 | `result-track:6641591ab9ff3ba7e935a3f4376ceabb5ea263d8f94100125fe7d920aacce26f` |
| 12 | `theorem` | [profilePrimitive_deriv](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/profileprimitive-deriv--2ef83face45e9b6c1551b580.md) | 119 | `result-track:2ef83face45e9b6c1551b5808dcb3ea97e90efd93c876ac7d4a2a3389a9ae59c` |
| 13 | `theorem` | [profilePrimitive_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/profileprimitive-nonneg--eed79ca4f0d807b259bf60b7.md) | 125 | `result-track:eed79ca4f0d807b259bf60b785d5120e28f1e5b155f3fcfe505ee4826714e46c` |
| 14 | `theorem` | [integral_numeratorProfile](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/integral-numeratorprofile--dbff3ddb121d55c8c2aec728.md) | 134 | `result-track:dbff3ddb121d55c8c2aec72884a39f6d6f6237302cbd28730eeb2253ae51ac09` |
| 15 | `theorem` | [integral_numeratorProfile_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/integral-numeratorprofile-le--00405c4e5e5e15d4534fad27.md) | 142 | `result-track:00405c4e5e5e15d4534fad277357e7d376b7bf44e86983dd6c32dee09f618fd9` |
| 16 | `theorem` | [horizontalBudget_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/horizontalbudget-nonneg--f79edf224f53f7215c9ebef2.md) | 147 | `result-track:f79edf224f53f7215c9ebef295339b74e8a7f47748716637ff2ee6a49334301b` |
| 17 | `theorem` | [horizontal_kernel_mass_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/horizontal-kernel-mass-le--220ad35b14064362faf5dad1.md) | 152 | `result-track:220ad35b14064362faf5dad1e2d9929ecff9bd8c9d448e96b5c1dc1e8399f312` |
| 18 | `theorem` | [norm_horizontal_product_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-horizontal-product-le--933917bdfd8fa613c82ef2dc.md) | 172 | `result-track:933917bdfd8fa613c82ef2dc7de6e32f3cd5c320e3e722a2aff89d655ddb3aa6` |
| 19 | `theorem` | [numeratorProfile_left_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/numeratorprofile-left-le--fa6112cedb82c6c374ed98b7.md) | 204 | `result-track:fa6112cedb82c6c374ed98b747d707a0832ace508cf0373d63f205199df9884b` |
| 20 | `theorem` | [norm_kernel_left_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-kernel-left-le--acd971acfd032e9125fb1140.md) | 217 | `result-track:acd971acfd032e9125fb1140303bc43a09c1b81daf36555240f95bdb8ec2c9ba` |
| 21 | `theorem` | [finite_cauchy_mass_le_pi](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/finite-cauchy-mass-le-pi--0f6c0fadd90da1a9a9b233a1.md) | 240 | `result-track:0f6c0fadd90da1a9a9b233a1fd0bcc094baca0da2c9c63c2321ade315870f93f` |
| 22 | `theorem` | [vertical_kernel_mass_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/vertical-kernel-mass-le--4b94924ab0b0af42b86921fe.md) | 251 | `result-track:4b94924ab0b0af42b86921fe01ebef0be0596f50ad34e54b662684274d736e30` |
| 23 | `theorem` | [norm_vertical_product_le](../../../../mathematics/Analysis/ComplexAnalysis/TentContourMajorants.lean/declarations/norm-vertical-product-le--f7ba36db9959beb92f49a1e2.md) | 268 | `result-track:f7ba36db9959beb92f49a1e20829d04d71202a34f8f2755508f817da051bc254` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

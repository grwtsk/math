# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SecondDerivativeEnergy.Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bf2fbde2adca038dd50292cf84b0dee6744292f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bf2fbde2adca038dd50292cf84b0dee6744292f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.DerivativeEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourthInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/fourthinterior--10162e48b84af9f9702e2857.md) | 36 | `declaration-track:10162e48b84af9f9702e285728636f6d05ac6a036dd5d86f2d690935c30b81bc` |
| 2 | `def` | [normalizedSecondInterior](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondinterior--f4321ce59087af50c1f01e38.md) | 40 | `declaration-track:f4321ce59087af50c1f01e385df403f5832ea7988005d0fd8925e924584fb84b` |
| 3 | `def` | [normalizedSecondTest](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest--26da8b85b28b2e0728e821f7.md) | 44 | `declaration-track:26da8b85b28b2e0728e821f74435b96a83558be699d5e48970ad98139eb4f04d` |
| 4 | `theorem` | [thirdInterior_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/thirdinterior-hasderivat--ad2e1de50bcd171ea53fe489.md) | 48 | `result-track:ad2e1de50bcd171ea53fe489ee9ba827026010a1ec4ff8a07cf9b81f7e807a67` |
| 5 | `theorem` | [normalizedInteriorDerivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedinteriorderivative-hasderivat--48890d00dd3118bdee1087f9.md) | 59 | `result-track:48890d00dd3118bdee1087f927557ae7543c8c61abd25bff86a015b5894b04c7` |
| 6 | `theorem` | [normalizedSecondInterior_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondinterior-continuous--45e27768582bb90f1de340d1.md) | 64 | `result-track:45e27768582bb90f1de340d173d9d02822d9adc1f000518b44bafca0212bb211` |
| 7 | `theorem` | [normalizedSecondTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-integrable--e0bb7334f031803917555626.md) | 69 | `result-track:e0bb7334f031803917555626ca39212d47563adb9467c3baa47afba425e6de24` |
| 8 | `theorem` | [normalizedSecondTest_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-square-integrable--be0b01080f71dd083b246ae2.md) | 73 | `result-track:be0b01080f71dd083b246ae22da2d99589709e6cb434eb576cc51e0bef910724` |
| 9 | `theorem` | [normalized_derivative_hasDerivAt_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-derivative-hasderivat-ae--3d67b9771590073ffe63a090.md) | 84 | `result-track:3d67b9771590073ffe63a090a05157106dddc4820a494fbff5a2b81e948c04a9` |
| 10 | `theorem` | [normalized_second_derivative_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-second-derivative-ae--b03e7541398954bfd510fbad.md) | 110 | `result-track:b03e7541398954bfd510fbade968b64547a1afb4f8bf8ef5a6196409e5747591` |
| 11 | `def` | [unitSecond](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unitsecond--72c95391340f90315a292634.md) | 116 | `declaration-track:72c95391340f90315a292634d3499be4e08a3587b79926e2acb632863c7fd761` |
| 12 | `def` | [unitFourth](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unitfourth--e4d79f8ab834293560453d3f.md) | 117 | `declaration-track:e4d79f8ab834293560453d3f50a9149eb23bac55d9a31ce1aaa0b82adf965e54` |
| 13 | `theorem` | [unitSecond_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unitsecond-square-integral--08a7b597626f14012af1e6bc.md) | 119 | `result-track:08a7b597626f14012af1e6bc61136051472f8f117c4a9f96e01eee77288961f8` |
| 14 | `theorem` | [unitFourth_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unitfourth-square-integral--fb3453f6ba2894b1322c0007.md) | 133 | `result-track:fb3453f6ba2894b1322c000754084e06d15146369b1cc386b1e33565c03e4aef` |
| 15 | `theorem` | [unitFourth_mul_second_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unitfourth-mul-second-integral--61f427b304d8003b81e94434.md) | 147 | `result-track:61f427b304d8003b81e94434948097cc152b9c26690c9433671eff2dfe9c5a17` |
| 16 | `theorem` | [interior_square_scaling](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/interior-square-scaling--2b5e534e755ee3312c84054e.md) | 163 | `result-track:2b5e534e755ee3312c84054e1bc325a860c01acb489d6acef9dca8463975690c` |
| 17 | `theorem` | [unit_second_derivative_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/unit-second-derivative-square-integral--91ab9aac586216687cb16284.md) | 176 | `result-track:91ab9aac586216687cb1628449d9beac20fb41c30011528fc22fec0bd43d1d1c` |
| 18 | `theorem` | [normalizedSecondTest_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-square-integral--254c8d68fed2eae607d606f9.md) | 193 | `result-track:254c8d68fed2eae607d606f997bea0fde4ce4bec58f8c363300af36a760a0578` |
| 19 | `theorem` | [normalizedSecondTest_square_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-square-integral-le--53e6bce40782d6b157a152b6.md) | 211 | `result-track:53e6bce40782d6b157a152b6ad887630be8c2c359f35dc81daa61e8b85728da7` |
| 20 | `theorem` | [normalized_second_derivative_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-second-derivative-square-integrable--76cf623cd3cc5a62a19754fd.md) | 222 | `result-track:76cf623cd3cc5a62a19754fdaa36012df090e52062e0ef8a3057b86e27996102` |
| 21 | `theorem` | [normalized_second_derivative_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-second-derivative-square-integral--8406e271fe8b8b7740c06e7d.md) | 230 | `result-track:8406e271fe8b8b7740c06e7db8c41d355b154c963c42a2189db9ae9e836ac1db` |
| 22 | `theorem` | [normalized_second_derivative_square_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-second-derivative-square-integral-le--6d38edbfc03bdc424b48075d.md) | 240 | `result-track:6d38edbfc03bdc424b48075d69b12b499ee7c8e302b937b2511efa01e9863636` |
| 23 | `theorem` | [normalizedInteriorDerivative_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedinteriorderivative-endpoints--9ba696d304ec4196bbfa6fad.md) | 249 | `result-track:9ba696d304ec4196bbfa6fad52186a1516f5ddfb2420d43ecbfa92b4f9222dd8` |
| 24 | `theorem` | [normalizedSecondTest_pairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-pairing-integrable--cfc2ac876e91162fb95c057c.md) | 260 | `result-track:cfc2ac876e91162fb95c057cf9fcf0a2ecdfc7daed737de1641ae88242e9149c` |
| 25 | `theorem` | [normalized_derivative_pairing_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-derivative-pairing-integrable--817fec19b9c13ff9d46305ed.md) | 266 | `result-track:817fec19b9c13ff9d46305ed235c3866e76147245c8307a70b06362a467916a5` |
| 26 | `theorem` | [normalizedSecondTest_weakDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalizedsecondtest-weakderivative--1c14d6a20a1bc5ee100d0e89.md) | 276 | `result-track:1c14d6a20a1bc5ee100d0e8999b6d527d3ecd3c6c1a5bc409952b61d46ed6862` |
| 27 | `theorem` | [normalized_derivative_eq_projected](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-derivative-eq-projected--82220308b2cedaf4b439b6d8.md) | 298 | `result-track:82220308b2cedaf4b439b6d8835db19d0c0a7acf7e33df8c06f8903bfa922df4` |
| 28 | `theorem` | [normalized_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SecondDerivativeEnergy/Variantfd25c80dea58ef0e48984607298fb13b90541efd1d85771af9d18198fadb8cf6.lean/declarations/normalized-derivative-lipschitz--97f12490546d7d253d771a9b.md) | 318 | `result-track:97f12490546d7d253d771a9b55249123f585cb08b8a097321d44ca9aca0ec722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

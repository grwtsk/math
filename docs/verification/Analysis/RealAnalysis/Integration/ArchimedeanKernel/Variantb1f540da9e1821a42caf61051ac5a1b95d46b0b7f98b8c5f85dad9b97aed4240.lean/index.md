# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ArchimedeanKernel.Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba38176f029bb7c2db12acda37ab339dab77ab26",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba38176f029bb7c2db12acda37ab339dab77ab26`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/kernel--9bd8fea648b09a5354047a49.md) | 21 | `declaration-track:9bd8fea648b09a5354047a49e050b06d08dc8f4b4f2f5ed5d30d4b5d919bd8b3` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmomentintegrand--dbcf48869110d2914a58770f.md) | 22 | `declaration-track:dbcf48869110d2914a58770f88f53b8de7d136f85c83171826974ae384510e27` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/majorant--2b9de49279aa7ac19c084a03.md) | 23 | `declaration-track:2b9de49279aa7ac19c084a037e323106007b3cb56c328e5da70a523c665fc0e4` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/denominator-pos--69a1e118fba11dc8944f84dd.md) | 25 | `result-track:69a1e118fba11dc8944f84dd1c703c047873f08542a142e581c2ec454c82f711` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/kernel-nonneg--fce451aa955b2895308fd613.md) | 30 | `result-track:fce451aa955b2895308fd613f50fef59026f67fbdf37b45123e3fdb9d421b68f` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/reciprocal-denominator-bound--1468e9ad53e1818341d2d4f0.md) | 33 | `result-track:1468e9ad53e1818341d2d4f029aa40c663489cf3ed39c84d2759733683eec60d` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmoment-bound--fbbafad8ad2b6c7ea7df1b28.md) | 45 | `result-track:fbbafad8ad2b6c7ea7df1b289d82a9a0d20df64a867b3d8f00a4b1da08486c42` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/polynomial-exp-integrable--c4ae68dc82e3227bdf1b081c.md) | 57 | `result-track:c4ae68dc82e3227bdf1b081c9d0e3ae333472db844ce6cc13efe24635249d078` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/polynomial-exp-integral--cb44ce6f0ce0dbfb6f3cfda2.md) | 66 | `result-track:cb44ce6f0ce0dbfb6f3cfda285a820331d649fc20c01404927a743f788500d08` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/majorant-integrable--8398fefd74cbb2ece433a418.md) | 76 | `result-track:8398fefd74cbb2ece433a418d2c0b3a52881129fc8f79048acc08a2f094a3fb9` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/majorant-integral--45b68ff26adec9fb5be1e741.md) | 84 | `result-track:45b68ff26adec9fb5be1e741df564afafc010991b5ee417eecc0b16466c5ff58` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmoment-measurable--caaca0002a3c3f61202fc052.md) | 94 | `result-track:caaca0002a3c3f61202fc0523c1c7aad38f381032e0cb37aa6d394c680bfe9a5` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmoment-integrable--b8e957742dbe131546500f45.md) | 98 | `result-track:b8e957742dbe131546500f457792727feab8593b5c6b1c0a4406f98ccbe91ca6` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmoment-integral-nonneg--da4f1149ea185b5d616de076.md) | 105 | `result-track:da4f1149ea185b5d616de076e4e2de72232d1f460c47e7f9778b53214415605c` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/secondmoment-integral-le--2053d205eca8dad14f0ef38a.md) | 110 | `result-track:2053d205eca8dad14f0ef38a19a4b5cb304eb6424760d40ac2f611b796350f0e` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/weighteddeficit--0b7fc635fbf5b66071a35448.md) | 116 | `declaration-track:0b7fc635fbf5b66071a354480516fa726d4d2d1d4a3a257f5965a846d4adb4b1` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/weighteddeficit-measurable--697ac9604fd869b65a584268.md) | 118 | `result-track:697ac9604fd869b65a584268c4565f3e0da2e153b6adc808da64b5a488add080` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/weighteddeficit-bound--0c81b5310f55ef53f2e75122.md) | 123 | `result-track:0c81b5310f55ef53f2e7512266f84c72d8cc53e462c988dd21ec1b198a97aca0` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/weighteddeficit-integrable--53c777911168b8f9efbea904.md) | 131 | `result-track:53c777911168b8f9efbea90447076e605047600e0b5b363aac843f422f1241e6` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/weighteddeficit-integral-budget--7a3b51d5af4b3ed85e9c35bd.md) | 141 | `result-track:7a3b51d5af4b3ed85e9c35bde4e1cdb42971e77af0ba5f4d36725190afc39f4f` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArchimedeanKernel/Variantb1f540da9e1821a42caf61051ac5a1b95d46b0b7f98b8c5f85dad9b97aed4240.lean/declarations/gamma-budget-from-identity--7d1e542e80b539f63e8deef5.md) | 161 | `result-track:7d1e542e80b539f63e8deef5d00c9019fc95b9dd1d78ccf9d0be6408563c6a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

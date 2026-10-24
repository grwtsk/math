# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RateOneIntegrabilityStatements.Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "721cc28577d0eb80134deb9198b0fb3c38051a8e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `721cc28577d0eb80134deb9198b0fb3c38051a8e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rate_one_integrableOn_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/rate-one-integrableon-ioc--219a6aa4c0a90272c722ae2b.md) | 23 | `result-track:219a6aa4c0a90272c722ae2be659bbf0fd44bc5a3e30c6a2ad9ff254e44659bc` |
| 2 | `theorem` | [rate_one_integrable_of_eventual_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/rate-one-integrable-of-eventual-majorant--aebfb93483e98fa0ce8ff989.md) | 45 | `result-track:aebfb93483e98fa0ce8ff98973ab942ebae03aab4defe6a5346da13479f48a86` |
| 3 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/polynomial-stretched-integrable--2b4b8a7447fe51d4031f439b.md) | 79 | `result-track:2b4b8a7447fe51d4031f439bf057126d72e6f56106e238f472152fe90da18959` |
| 4 | `theorem` | [rate_one_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/rate-one-majorant-integrable--a999c09f421ed62744e6ab00.md) | 90 | `result-track:a999c09f421ed62744e6ab00e3e14154663149dc1779d28846036614cf3fb122` |
| 5 | `theorem` | [rate_one_integrable_of_stretched_majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/rate-one-integrable-of-stretched-majorant--746b62c5dcb573d9c0ee55e3.md) | 105 | `result-track:746b62c5dcb573d9c0ee55e310adec4f477cbd40acc15084ead91e8c7e4eec05` |
| 6 | `theorem` | [actual_scale_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/actual-scale-le--45183c378d9ef3dc156a04d2.md) | 113 | `result-track:45183c378d9ef3dc156a04d2712fc89e55061300cb5208729303549a278220e5` |
| 7 | `theorem` | [weighted_negativeSource_le_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/weighted-negativesource-le-of-pairing-bound--7b4f34c137902958bac603e5.md) | 124 | `result-track:7b4f34c137902958bac603e53a8b42ce248398d65fad9849e8453ea1f9b7cdec` |
| 8 | `theorem` | [rate_one_integrable_of_pairing_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/rate-one-integrable-of-pairing-bound--d325726c3bded5342df549a6.md) | 174 | `result-track:d325726c3bded5342df549a61ec5446b746c2e4f3979b44b8d8a18b96ca5fce6` |
| 9 | `theorem` | [integrable_of_one_le_rate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/integrable-of-one-le-rate--6d9f970acc8eaa7228893b81.md) | 185 | `result-track:6d9f970acc8eaa7228893b81aa5e431cf92ef9f499a8b346667b035d6c21dc40` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--12e15b988f2dbd910e5a3527.md) | 207 | `declaration-track:12e15b988f2dbd910e5a3527f4cc8977349cd3765440a2dc94a0a616b5fc8749` |
| 11 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--15b9b787f1741e7077acebe5.md) | 211 | `declaration-track:15b9b787f1741e7077acebe5171e0c301d253158ed02e1e251f719035652799c` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--893a5498e9811ab9be1c0e5d.md) | 217 | `declaration-track:893a5498e9811ab9be1c0e5d1fc1ccb37e662602f1ef613789ee3b593724ad85` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--421e15fb25a72e7ad646bbbe.md) | 221 | `declaration-track:421e15fb25a72e7ad646bbbefcc5e92feaf4c01b2649946ea723bb50852bb682` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--843a33debf563cd2e954584b.md) | 227 | `declaration-track:843a33debf563cd2e954584bbd73084b4f30d16249e30d0d0b230d1740ee5b28` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--f0b536e91ae9d2a9716284e1.md) | 234 | `declaration-track:f0b536e91ae9d2a9716284e1d91553291c2f63952a43688434da6fedac92b94c` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--a7975a5e7a99f3d3b84f6184.md) | 238 | `declaration-track:a7975a5e7a99f3d3b84f61841389ba0b98239bf87d61df24a4915bacc98bc3c2` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--0e979d1c4cbef2a848e75dcd.md) | 248 | `declaration-track:0e979d1c4cbef2a848e75dcd7d7f10bc51affdf10148200d7ea449933a8f940f` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RateOneIntegrabilityStatements/Variant1aa3faa33c3a34a1afae59d6478512b7c3e7e699daf609061373b43cf536f5d3.lean/declarations/example--86edcdc3774faa54647e8df9.md) | 255 | `declaration-track:86edcdc3774faa54647e8df94be6846dbf14250d8906ec118b9f800106123406` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

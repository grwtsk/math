# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualTiltEnergy.Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6472bc649ad343092f17db0a3a2fdd1dbebaec9c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6472bc649ad343092f17db0a3a2fdd1dbebaec9c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualUnitTilt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittilt--f5188996a3e99691b560663c.md) | 29 | `declaration-track:f5188996a3e99691b560663cd69b2244625241dc21c2d4d4aacca9810b106513` |
| 2 | `def` | [actualUnitTiltEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittiltenergy--6dab84bb27a82abe388263f4.md) | 33 | `declaration-track:6dab84bb27a82abe388263f4cc27cec4fec0d183b8932a6c9a05a4882add88a0` |
| 3 | `theorem` | [actualUnitTilt_sq_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittilt-sq-integrable--715c9d6a120f3c39b35a0ce7.md) | 37 | `result-track:715c9d6a120f3c39b35a0ce71b96533442bd6ab8867b21192e45ee844da6e49b` |
| 4 | `theorem` | [actualUnitTiltEnergy_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittiltenergy-eq-integral--ec0eaf6181c8f745dae174d5.md) | 52 | `result-track:ec0eaf6181c8f745dae174d5a07e585fb2393caeb943520b340ad9f0de78b0cb` |
| 5 | `theorem` | [actualUnitTilt_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittilt-transform--5e0e458c38183416d84fc27d.md) | 62 | `result-track:5e0e458c38183416d84fc27d15f7e7c5a193d90c059779b9aac1af582aa473d4` |
| 6 | `theorem` | [actualUnitTilt_integral_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittilt-integral-sq-le--e87c1c1fba515b05aa80c1d5.md) | 70 | `result-track:e87c1c1fba515b05aa80c1d5c33fd6565659fa9da124fe86908b2f8db2872ac0` |
| 7 | `theorem` | [actualUnitTiltEnergy_eventually_ge](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittiltenergy-eventually-ge--b652a706b1b0ccc1f2e3124d.md) | 100 | `result-track:b652a706b1b0ccc1f2e3124d7393fd839bd2400abe90ccb747871b9dee7fa537` |
| 8 | `theorem` | [actualUnitTiltEnergy_tendsto_atTop](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualTiltEnergy/Variantfb58df0a1f112c3125c624b9f5b53ff153dda39516e546189ca043fca27f1739.lean/declarations/actualunittiltenergy-tendsto-attop--88adb3e5b3385c3b42bf3e7c.md) | 150 | `result-track:88adb3e5b3385c3b42bf3e7ca12c6a34207a98d0f6ba91d0b7bc5e5ca8261769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

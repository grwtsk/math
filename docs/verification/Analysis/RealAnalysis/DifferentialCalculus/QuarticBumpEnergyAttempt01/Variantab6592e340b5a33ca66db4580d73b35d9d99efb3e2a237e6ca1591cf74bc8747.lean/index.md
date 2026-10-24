# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.QuarticBumpEnergyAttempt01.Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e3913b5ab746c25d496565ff5bf1d4191cc72d0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e3913b5ab746c25d496565ff5bf1d4191cc72d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `QuarticBumpODE` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rayValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayvalue--b1d60c55a8fa853485e746d0.md) | 19 | `declaration-track:b1d60c55a8fa853485e746d0db36b9b4a9b71adb49e1aef8483a36a4bd45093f` |
| 2 | `def` | [raySlope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayslope--93b1fb14ff4a4f67e1998f18.md) | 20 | `declaration-track:93b1fb14ff4a4f67e1998f1843800b295f91213d610707a82032e1b39948606f` |
| 3 | `def` | [weightedMass](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/weightedmass--a14f5612fe80744445c940a0.md) | 21 | `declaration-track:a14f5612fe80744445c940a0bbbb232d300006d9c245d222e2049e2ca2ce6801` |
| 4 | `def` | [weightedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/weightedenergy--7a9aa7e5cc39661509290424.md) | 22 | `declaration-track:7a9aa7e5cc39661509290424f0bf897179b0564b48f5f1fe92a056ce11cc4a13` |
| 5 | `theorem` | [rayValue_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayvalue-hasderivat--1e99cec4817e2d4c377ef53d.md) | 24 | `result-track:1e99cec4817e2d4c377ef53d5cc1c01a56c94a84edb8d6dabc43131b1573ff20` |
| 6 | `theorem` | [raySlope_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayslope-hasderivat--25c593b3335cf15c05403813.md) | 30 | `result-track:25c593b3335cf15c05403813b0fd85ad47ffd6b03c63ccb8a2d474a11ec5c274` |
| 7 | `theorem` | [rayValue_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayvalue-continuous--dafe1919778fda4fac91475b.md) | 38 | `result-track:dafe1919778fda4fac91475bc24161c7e68dbef3e0693ed0b66bb3c5f2cc065d` |
| 8 | `theorem` | [raySlope_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayslope-continuous--071b7be3de9ea0e6e0c7d69f.md) | 41 | `result-track:071b7be3de9ea0e6e0c7d69fc686d94b9ee3e92501a6acd0ee7f8ddc5d35914e` |
| 9 | `theorem` | [weightedRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/weightedray-hasderivat--da4e73bf4c96453210fea480.md) | 44 | `result-track:da4e73bf4c96453210fea480ccdcd5081a5a634a0609aa44ee881263deb235ea` |
| 10 | `theorem` | [conjugateRay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/conjugateray-hasderivat--f0ecf00d6a9d56b6374c5005.md) | 56 | `result-track:f0ecf00d6a9d56b6374c50050cece9b02bcbd57103134827ea0a4af7b0923082` |
| 11 | `theorem` | [mass_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/mass-integrand-continuous--782e735dd32544cda22b4fc3.md) | 60 | `result-track:782e735dd32544cda22b4fc3eae264e8424d1339159d03c2436153c7cf65cd13` |
| 12 | `theorem` | [energy_integrand_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/energy-integrand-continuous--6f02997ce8af8398f0419a3d.md) | 64 | `result-track:6f02997ce8af8398f0419a3d47e0be3a6767c5accc1b2bb32a90d511aa34293a` |
| 13 | `theorem` | [weightedEnergy_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/weightedenergy-nonneg--d5bb0516c9733a3e2e7b1287.md) | 68 | `result-track:d5bb0516c9733a3e2e7b128765f53d2c031a69bdf770d80b946c52ed0930f8dc` |
| 14 | `theorem` | [rayValue_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/rayvalue-zero--7a2d527d93f3843c602629ee.md) | 72 | `result-track:7a2d527d93f3843c602629ee07c0a777c677c54e6c1e9de1024851509342f80c` |
| 15 | `theorem` | [weightedMass_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/QuarticBumpEnergyAttempt01/Variantab6592e340b5a33ca66db4580d73b35d9d99efb3e2a237e6ca1591cf74bc8747.lean/declarations/weightedmass-pos--5f075571214cbc42a3ac539a.md) | 75 | `result-track:5f075571214cbc42a3ac539ad19e35dbe2005b8cadf6835732d43dcba05c2140` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt06.Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7609dd6e5b53435d408f9cc0ba3daffc2a99d424",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7609dd6e5b53435d408f9cc0ba3daffc2a99d424`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/kernel--46d8da93c9eac9c5924127ef.md) | 21 | `declaration-track:46d8da93c9eac9c5924127ef55412412ae5e31ca6777d5baf23d146d2c6cc342` |
| 2 | `def` | [secondMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmomentintegrand--be2897a6dea190cbada62f14.md) | 22 | `declaration-track:be2897a6dea190cbada62f1482a1c99e493172259dfb95ce3886605ae38ea1b4` |
| 3 | `def` | [majorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/majorant--529e34af13102e6fc1f2bbc4.md) | 23 | `declaration-track:529e34af13102e6fc1f2bbc475b67a80ddde31129cf1f500765f20333ded6cca` |
| 4 | `theorem` | [denominator_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/denominator-pos--be2b2fee550c5d06deaf449f.md) | 25 | `result-track:be2b2fee550c5d06deaf449ff1bb822d4179edf7880f8ee94ace609514e6851e` |
| 5 | `theorem` | [kernel_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/kernel-nonneg--6a5d82cb5adb49fcc42f0442.md) | 30 | `result-track:6a5d82cb5adb49fcc42f0442fcada12c839020b6ddc757b9401754897f5d088f` |
| 6 | `theorem` | [reciprocal_denominator_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/reciprocal-denominator-bound--9bab6b619b6cf931219f440a.md) | 33 | `result-track:9bab6b619b6cf931219f440a38a2fb7813d49e443ce4b0791907df2c22faee82` |
| 7 | `theorem` | [secondMoment_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmoment-bound--cef5c5a7fbd4acdf204a90f2.md) | 45 | `result-track:cef5c5a7fbd4acdf204a90f23f2902d147c68b53b7d21ff90899ef32c6482cc4` |
| 8 | `theorem` | [polynomial_exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/polynomial-exp-integrable--a60864fc96f602ab85764be4.md) | 57 | `result-track:a60864fc96f602ab85764be4129f237817f4982011f06e055c8dedda19d2d4c7` |
| 9 | `theorem` | [polynomial_exp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/polynomial-exp-integral--3e0ea50865bcb49bf0eef0f7.md) | 66 | `result-track:3e0ea50865bcb49bf0eef0f787385fc7c3523dec180f967375427ddad6583ada` |
| 10 | `theorem` | [majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/majorant-integrable--648ffd2e660545b29602a492.md) | 76 | `result-track:648ffd2e660545b29602a4927b173ddaeea7b6f07f67da4e913d5f3d05253a4f` |
| 11 | `theorem` | [majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/majorant-integral--232792200c556eff8189d87e.md) | 84 | `result-track:232792200c556eff8189d87ede7c6dedd9286d7546ef268a4ce0e521a70ce022` |
| 12 | `theorem` | [secondMoment_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmoment-measurable--243a9f6c33d3f7ab3d177ca0.md) | 94 | `result-track:243a9f6c33d3f7ab3d177ca07608026034917c3e08ebb83ee499b01c7f50ef85` |
| 13 | `theorem` | [secondMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmoment-integrable--9ed43951f997fad2b8db1109.md) | 98 | `result-track:9ed43951f997fad2b8db110915d541e5403b08abd3748a47cf43e7c590806342` |
| 14 | `theorem` | [secondMoment_integral_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmoment-integral-nonneg--a159fa6e1d444bd7f173de6e.md) | 105 | `result-track:a159fa6e1d444bd7f173de6eaac8cfb9ad0b731ee798430c12d833e7017e91aa` |
| 15 | `theorem` | [secondMoment_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/secondmoment-integral-le--e6e047b290e2ae928691bb46.md) | 110 | `result-track:e6e047b290e2ae928691bb460b0391d07b58119f6679ffff7fb9c39bb8883a8d` |
| 16 | `def` | [weightedDeficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/weighteddeficit--694c08651b8b9543b9037ac2.md) | 116 | `declaration-track:694c08651b8b9543b9037ac221e0ba4b4e1419217dbd6186f732eaa47b078ca9` |
| 17 | `theorem` | [weightedDeficit_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/weighteddeficit-measurable--4d292ac4e736937fe64d1ee6.md) | 118 | `result-track:4d292ac4e736937fe64d1ee6c09acb4444859f2040e231f434fc004dbc00f980` |
| 18 | `theorem` | [weightedDeficit_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/weighteddeficit-bound--cb47818791a70f338c0d2bd7.md) | 123 | `result-track:cb47818791a70f338c0d2bd7b99828cc2b5a692b7f3538312cbfbec2f8dad3ab` |
| 19 | `theorem` | [weightedDeficit_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/weighteddeficit-integrable--4b99971ed5fb7241ca16e18e.md) | 131 | `result-track:4b99971ed5fb7241ca16e18ea452fb28a1d2c906df9d6a3704273ef9e7b5a2df` |
| 20 | `theorem` | [weightedDeficit_integral_budget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/weighteddeficit-integral-budget--6915030b455fdadf20a8547b.md) | 141 | `result-track:6915030b455fdadf20a8547ba3efe89d462016b52dbbeacf73f4514dcd19ceae` |
| 21 | `theorem` | [gamma_budget_from_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt06/Variantdc20accdd43a298d0125f8a19f58a8ffdd41c9bad63f1c7896f5ff811632c53e.lean/declarations/gamma-budget-from-identity--8b535ac81e97c090dcd0d55b.md) | 161 | `result-track:8b535ac81e97c090dcd0d55ba76744c036a1141fdda68c8182b984aee50688a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

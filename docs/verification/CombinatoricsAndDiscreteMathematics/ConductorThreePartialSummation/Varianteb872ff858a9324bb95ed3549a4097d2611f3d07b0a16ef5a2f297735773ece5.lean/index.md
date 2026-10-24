# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ConductorThreePartialSummation.Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06c2c86f18669fff5cf5a1fec49c00a38c200959",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06c2c86f18669fff5cf5a1fec49c00a38c200959`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCharacterCoefficient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharactercoefficient--e86ccbded6f132ff3abf63d8.md) | 29 | `declaration-track:e86ccbded6f132ff3abf63d83b96a47e68f77faa53c67ca94e078e53bc00ea08` |
| 2 | `def` | [primeCharacterPartialSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterpartialsum--65bc1aa03c75f41c7cfbbde7.md) | 34 | `declaration-track:65bc1aa03c75f41c7cfbbde78b7138b3a7a6ac88ebc8251f0264804e099d4824` |
| 3 | `theorem` | [primeCharacterPartialSum_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterpartialsum-succ--d939a29fd82801eae68db8b5.md) | 37 | `result-track:d939a29fd82801eae68db8b535575791186521201bb7b9e76defe5e21a199ff5` |
| 4 | `theorem` | [conductorThreeTheta_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreetheta-succ--a6d390d2e1bc3678f63c086a.md) | 47 | `result-track:a6d390d2e1bc3678f63c086a5ce42759333124a7482840ba3b1fe3b55da7583e` |
| 5 | `theorem` | [conductorThreeTheta_eq_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreetheta-eq-abel--38c9b02c75a171affd1f7bbf.md) | 60 | `result-track:38c9b02c75a171affd1f7bbfea1e0ab9e848dd1ae3030cb7ea377b850b7be318` |
| 6 | `theorem` | [conductorThreeTheta_eq_primeCharacterSum_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreetheta-eq-primecharactersum-abel--51773fa7998d6eff8b05effc.md) | 77 | `result-track:51773fa7998d6eff8b05effc07399e03dd90faa55e5f3f4da9527a4e7d6e4aea` |
| 7 | `def` | [reciprocalLog](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/reciprocallog--90b940ae3cb2ec114d364451.md) | 88 | `declaration-track:90b940ae3cb2ec114d3644519bad75cbc3fb3e3a54ab4485a1069b6fff702e13` |
| 8 | `theorem` | [primeCharacterCoefficient_eq_theta_increment_div_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharactercoefficient-eq-theta-increment-div-log--978042fe53d7a9f79ec924a3.md) | 90 | `result-track:978042fe53d7a9f79ec924a39aa615ff61bac861226d2de269e8573cb3813af9` |
| 9 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel_add_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterpartialsum-eq-inverseabel-add-two--93bceeccc4050f1385956bc7.md) | 114 | `result-track:93bceeccc4050f1385956bc779add490e3946d8d3afcc4ff376650d67b318a9d` |
| 10 | `theorem` | [primeCharacterPartialSum_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterpartialsum-eq-inverseabel--5e0f01ce6e0a005d8ffde2ad.md) | 152 | `result-track:5e0f01ce6e0a005d8ffde2add175d41246970091bf56ddb0937c9976754b9a93` |
| 11 | `theorem` | [conductorThreePrimeCharacterSum_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreeprimecharactersum-eq-inverseabel--2ab64bf1e8f9d3430aa2457d.md) | 164 | `result-track:2ab64bf1e8f9d3430aa2457da31a9343b22f259f9b022da57c8e5ecbe2ce1d31` |
| 12 | `def` | [primeCharacterStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterstep--799a4ff8a3baa0f39517b2f3.md) | 177 | `declaration-track:799a4ff8a3baa0f39517b2f3747991cd134c5467b624ec72b738fcec949f987e` |
| 13 | `def` | [conductorThreeThetaStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreethetastep--72d1baa73ab4424d55dd5559.md) | 182 | `declaration-track:72d1baa73ab4424d55dd55591401931ff3e584ae5386cbdd8826f7d0c7a0021e` |
| 14 | `theorem` | [primeCharacterStep_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterstep-natcast--586acfbe4f00391ea248f516.md) | 185 | `result-track:586acfbe4f00391ea248f516fb8c0dd48289aa18877739e558b19290829633bf` |
| 15 | `theorem` | [conductorThreeThetaStep_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreethetastep-natcast--b7d5ec5a8ba8d4eb6452f175.md) | 189 | `result-track:b7d5ec5a8ba8d4eb6452f175191fd05cb507576a842ab4cb2b1d333711ab31af` |
| 16 | `theorem` | [conductorThreeThetaStep_eq_abel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/conductorthreethetastep-eq-abel--14c8a7fa7582d95ad4029303.md) | 194 | `result-track:14c8a7fa7582d95ad402930391e658554ae7c827e78a3f457f8253ebb1a4b4a3` |
| 17 | `theorem` | [primeCharacterStep_eq_inverseAbel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/declarations/primecharacterstep-eq-inverseabel--29c689f21825fd457a9d4ff2.md) | 204 | `result-track:29c689f21825fd457a9d4ff21cecefce70625bdc56914d87dedddae72bf73189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

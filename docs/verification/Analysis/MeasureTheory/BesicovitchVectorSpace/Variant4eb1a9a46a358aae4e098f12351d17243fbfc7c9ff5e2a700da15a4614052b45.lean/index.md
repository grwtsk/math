# Verification target: GRWTSK.Analysis.MeasureTheory.BesicovitchVectorSpace.Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1869385c3d944b59e8aa3a2782b82eae1267759e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1869385c3d944b59e8aa3a2782b82eae1267759e`.

Source path: `GRWTSK/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Covering.Besicovitch` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centerAndRescale](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/centerandrescale--5a6725c0248a9d5eacd5bf84.md) | 71 | `declaration-track:5a6725c0248a9d5eacd5bf84dbad4b57136529af7b07df430ea692f6fad4be7e` |
| 2 | `theorem` | [centerAndRescale_center](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/centerandrescale-center--0781a8053455c30660553f63.md) | 89 | `result-track:0781a8053455c30660553f633de923fa3a818ed6877ba044c47b1fdf2d7b4f44` |
| 3 | `theorem` | [centerAndRescale_radius](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/centerandrescale-radius--f16be07ebe6cd57040d3b322.md) | 92 | `result-track:f16be07ebe6cd57040d3b322b77190ddaf86f3afd155d27641504f4264770220` |
| 4 | `def` | [multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/multiplicity--937b71027b2f5d9e71cf772c.md) | 103 | `declaration-track:937b71027b2f5d9e71cf772c68102b7ecd75d11dacdfb598537992358634d502` |
| 5 | `theorem` | [card_le_of_separated](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/card-le-of-separated--e6a4bfd40dc80499c71f0bc7.md) | 114 | `result-track:e6a4bfd40dc80499c71f0bc771808290445705abc8f7cbf97fb769aad23f4935` |
| 6 | `theorem` | [multiplicity_le](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/multiplicity-le--b5257fc358da5b65849dda67.md) | 156 | `result-track:b5257fc358da5b65849dda67f32d0d5c251ea549d103628225c62b489633aa3c` |
| 7 | `theorem` | [card_le_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/card-le-multiplicity--808a97f6b149262e1ff0c44c.md) | 162 | `result-track:808a97f6b149262e1ff0c44c07bde62fb6544556fc7ea5b690d1743541557024` |
| 8 | `theorem` | [exists_goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/exists-good--f1bfa46192f06a0e6f26c73c.md) | 175 | `result-track:f1bfa46192f06a0e6f26c73c9e11e497542618d3381d5b5298668d31084f83ce` |
| 9 | `def` | [goodδ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/good--9f75622fa1634b3db6c87622.md) | 251 | `declaration-track:9f75622fa1634b3db6c876227fdd8e575eaa3bfc52a896b92cc787df558d6186` |
| 10 | `theorem` | [goodδ_lt_one](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/good-lt-one--146beb2ebbbcd2e24f34c1ad.md) | 254 | `result-track:146beb2ebbbcd2e24f34c1adda02ecb6aef730e275cab9f3bb87fc1099bdfee4` |
| 11 | `def` | [goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/good--83e3bbefada1a6ea2ccdf9cd.md) | 260 | `declaration-track:83e3bbefada1a6ea2ccdf9cdd70ef2aa294fe04d88f7e801a776f4cc59476a12` |
| 12 | `theorem` | [one_lt_goodτ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/one-lt-good--75acbc235bc0f49697613568.md) | 263 | `result-track:75acbc235bc0f49697613568bef71af78f5183647ba5149e56758b5815a511ad` |
| 13 | `theorem` | [card_le_multiplicity_of_δ](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/card-le-multiplicity-of--ef2f366f823a87b38ab9e938.md) | 268 | `result-track:ef2f366f823a87b38ab9e938c0e00f5773571b8bc0d2488499b93b93169cf0a5` |
| 14 | `theorem` | [le_multiplicity_of_δ_of_fin](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/le-multiplicity-of-of-fin--057efadada6fdfc8a1ea60d6.md) | 272 | `result-track:057efadada6fdfc8a1ea60d6d034ba42dcffd91c2c967813fb75b777eb0a2b28` |
| 15 | `theorem` | [exists_normalized_aux1](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/exists-normalized-aux1--8bae601764d3dcd23d7f4c81.md) | 316 | `result-track:8bae601764d3dcd23d7f4c8115b51471c4e495d6b9c0ea575dd2c1e022e5f0cf` |
| 16 | `theorem` | [exists_normalized_aux2](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/exists-normalized-aux2--89e950e8d1c8ef846081ee7c.md) | 347 | `result-track:89e950e8d1c8ef846081ee7c5cd0431336416532714d87e10b64d74befe680e8` |
| 17 | `theorem` | [exists_normalized_aux3](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/exists-normalized-aux3--9952eaa88b0187689ca92c72.md) | 400 | `result-track:9952eaa88b0187689ca92c72d84ca75f8f3f7f51956a597861c15ccb9b2e1c72` |
| 18 | `theorem` | [exists_normalized](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/exists-normalized--79ff8ade419f6247aba8ab10.md) | 456 | `result-track:79ff8ade419f6247aba8ab102243eaab67a41d5e497d5a305e29cd9ea2df37c4` |
| 19 | `theorem` | [isEmpty_satelliteConfig_multiplicity](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/isempty-satelliteconfig-multiplicity--1c59cf80b71609af04b7734b.md) | 493 | `result-track:1c59cf80b71609af04b7734bedae04f1427b3906f7bbc2cb37b06ffafef7e5e5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BesicovitchVectorSpace/Variant4eb1a9a46a358aae4e098f12351d17243fbfc7c9ff5e2a700da15a4614052b45.lean/declarations/instance--4abfa70df6ea180a2879f0ca.md) | 504 | `declaration-track:4abfa70df6ea180a2879f0ca1cc57a3474489bb2ff0f8f5b2c855a2958da8afc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

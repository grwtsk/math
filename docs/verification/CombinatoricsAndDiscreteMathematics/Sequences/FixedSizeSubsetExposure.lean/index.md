# Verification target: GRWTSK.Combinatorics.Sequences.FixedSizeSubsetExposure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f892475421f04d20782b1e111d51787f8e16876",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f892475421f04d20782b1e111d51787f8e16876`.

Source path: `GRWTSK/Combinatorics/Sequences/FixedSizeSubsetExposure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/FixedSizeSubsetExposure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ExposurePair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposurepair--fc396602cf8fb5080b02b4e3.md) | 29 | `declaration-track:fc396602cf8fb5080b02b4e3a7f3e68bcf2026e2c181c18b40f825b634f356d4` |
| 2 | `def` | [exposurePairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposurepairs--8ae09320238927a366d3f1a5.md) | 35 | `declaration-track:8ae09320238927a366d3f1a51daf445e642420a9773e7065364d0fb74529dbf5` |
| 3 | `def` | [pairUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/pairunion--4a3cd1953167dc57241b3a51.md) | 40 | `declaration-track:4a3cd1953167dc57241b3a511a1d9880b00242239e1fbcc97ee73edc2d253f56` |
| 4 | `theorem` | [mem_exposurePairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/mem-exposurepairs--d732913a05c5b8a05e28225c.md) | 44 | `result-track:d732913a05c5b8a05e28225c1b192743045c2965d9e43c86035331e7427edf09` |
| 5 | `theorem` | [exposure_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-disjoint--515e5daa70447c7214f31505.md) | 51 | `result-track:515e5daa70447c7214f31505fba81ffa4ea843d770ef7a64e73fb063db29758d` |
| 6 | `theorem` | [exposure_union_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-union-mem--08fa8fb9cc70d34ceb821b01.md) | 59 | `result-track:08fa8fb9cc70d34ceb821b01db4691b595b2c8a48ffe3df72b99d8e7bcc87f62` |
| 7 | `theorem` | [exposure_spaces_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-spaces-nonempty--e0341ef243330139633e60fe.md) | 74 | `result-track:e0341ef243330139633e60fe474ca7c5e37c232f5aa2288aa102d0a765684ce7` |
| 8 | `theorem` | [card_exposurePairs](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/card-exposurepairs--77ece2091115d21e0f186b2e.md) | 95 | `result-track:77ece2091115d21e0f186b2e80feb49bcf71814aab65c31d1fb51056caabb820` |
| 9 | `theorem` | [exposure_first_event_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-first-event-card--ad810d05ee5aae3713327b9d.md) | 112 | `result-track:ad810d05ee5aae3713327b9dae2c3a7d625b917facfa1ec3e842b8a2feae8541` |
| 10 | `theorem` | [exposure_first_fiber_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-first-fiber-card--836dc8febf57e6a9bc3d1dd3.md) | 141 | `result-track:836dc8febf57e6a9bc3d1dd320542022493c36e773a71292ec189959c75f393b` |
| 11 | `theorem` | [exposure_union_fiber_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-union-fiber-card--6f25bb5d2628cf2e0efb9ab8.md) | 148 | `result-track:6f25bb5d2628cf2e0efb9ab890946927ec437d5c404fcf2bffa4fa4faa9ab1d0` |
| 12 | `theorem` | [sum_exposure_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/sum-exposure-union--b63ef5af2209b4ffcda5f4c8.md) | 196 | `result-track:b63ef5af2209b4ffcda5f4c8f68f09dc5c8f072b0564c151ecea9b35767057e2` |
| 13 | `theorem` | [sum_exposure_union_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/sum-exposure-union-real--a379982a762aaeef8e1c067a.md) | 216 | `result-track:a379982a762aaeef8e1c067a135df93376ebffa570e9f8034753a6156edcb179` |
| 14 | `theorem` | [mean_union_exposure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/mean-union-exposure--c58f463963d4524e904610f7.md) | 228 | `result-track:c58f463963d4524e904610f70678623302c36dd2c5c0323c16ba991911540690` |
| 15 | `theorem` | [mean_union_le_of_conditional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/mean-union-le-of-conditional--07b244dc9a6404216f41f0b2.md) | 275 | `result-track:07b244dc9a6404216f41f0b245028b5e825605d3234ae7ef536734b80513908b` |
| 16 | `theorem` | [event_union_exposure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/event-union-exposure--9a3517334a8fc0321223725f.md) | 296 | `result-track:9a3517334a8fc0321223725f2631fde4b50eee0f1821ba8176c2e8c2eb7e1ee2` |
| 17 | `theorem` | [event_union_le_of_conditional](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/event-union-le-of-conditional--2ac0899bdb9d11c3082714f3.md) | 309 | `result-track:2ac0899bdb9d11c3082714f387a47b1f42fd78991472d7bc77d6b2950f2a5252` |
| 18 | `theorem` | [sum_union_exposure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/sum-union-exposure--ac28ddc20c9060080971e401.md) | 330 | `result-track:ac28ddc20c9060080971e4013bac2e7989a568b24350d6a23e9645ecbc89db70` |
| 19 | `theorem` | [exposure_first_fiber_card_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-first-fiber-card-pos--9d265d1f47782c93b1f000d3.md) | 366 | `result-track:9d265d1f47782c93b1f000d3e125371e831121eecee76dbf0dcc5c50988c4a3c` |
| 20 | `theorem` | [exposure_first_fiber_card_pos_real](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-first-fiber-card-pos-real--6764f82ec89284a0bb14f717.md) | 373 | `result-track:6764f82ec89284a0bb14f7174aa0c56c13c6e0c7215237f506f940d8ffdb971e` |
| 21 | `theorem` | [conditional_residual_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/conditional-residual-probability--774312596fbc6405d2ef51e8.md) | 383 | `result-track:774312596fbc6405d2ef51e84ea3712b7604e4028e13f8dffc4820cd309288c6` |
| 22 | `theorem` | [exposurePairs_card_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposurepairs-card-pos--5443e9bf5f2f1b1ae12c1066.md) | 396 | `result-track:5443e9bf5f2f1b1ae12c10666594bf55de1dd6f4461438cb9331c633de959c7b` |
| 23 | `theorem` | [exposure_first_marginal_probability](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/FixedSizeSubsetExposure.lean/declarations/exposure-first-marginal-probability--78262e2ed118aeb2be4ce987.md) | 407 | `result-track:78262e2ed118aeb2be4ce9879a67676e6c68216ed0cd1510991c6f31072df9c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

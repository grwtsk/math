# Verification target: GRWTSK.Topology.GeneralTopology.Oscillation.Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dc266c81fd0aa6fb4bb7e0f7cb4a8ddab998a40",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dc266c81fd0aa6fb4bb7e0f7cb4a8ddab998a40`.

Source path: `GRWTSK/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Diam` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillation--c07b802d1f1fc1329c09d3e7.md) | 42 | `declaration-track:c07b802d1f1fc1329c09d3e7a8fcaf46d800552e2555af017b664516daaa0a23` |
| 2 | `def` | [oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillationwithin--aacf6c33e712f354396e4804.md) | 46 | `declaration-track:aacf6c33e712f354396e48041dfa4c1eb579eee9a848dd9ec3d4103f97e352b5` |
| 3 | `theorem` | [oscillationWithin_nhds_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillationwithin-nhds-eq-oscillation--75796ea5a3abb3a833068fae.md) | 50 | `result-track:75796ea5a3abb3a833068fae0a6a5e8e53a960681c6b425186d22e794a8fff85` |
| 4 | `theorem` | [oscillationWithin_univ_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillationwithin-univ-eq-oscillation--d8e89f0d032fe65faa5f7590.md) | 58 | `result-track:d8e89f0d032fe65faa5f7590c725ef475af2fc032384c03d86c676873623b883` |
| 5 | `theorem` | [oscillationWithin_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillationwithin-eq-zero--4d2e672a9f1a013672084a6c.md) | 64 | `result-track:4d2e672a9f1a013672084a6c86e48e04376667313b64745262ab8c415c7bbcff` |
| 6 | `theorem` | [oscillation_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/oscillation-eq-zero--162f86abb4e4c259f514b271.md) | 76 | `result-track:162f86abb4e4c259f514b271c99be3ff39825430f8c79db05501231944efe133` |
| 7 | `theorem` | [eq_zero_iff_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/eq-zero-iff-continuouswithinat--560492a0016baadce3d7e5ae.md) | 86 | `result-track:560492a0016baadce3d7e5ae019fd2b5375e0798bdb50aa120d46bde4a7bb544` |
| 8 | `theorem` | [eq_zero_iff_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/eq-zero-iff-continuousat--78e74ef39dad227134a0c627.md) | 99 | `result-track:78e74ef39dad227134a0c627d699c3174162b00190d7ca3cf6d5c7a0dd5a3352` |
| 9 | `theorem` | [uniform_oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/uniform-oscillationwithin--57087ee44370d3a58e4dea4e.md) | 113 | `result-track:57087ee44370d3a58e4dea4e13edfea8aaab398acb6ebf76b8270ee60dc42374` |
| 10 | `theorem` | [uniform_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantcaa673857eae70aaadc5d17d0a66ee118d6f04e0eaa6ff68984b1e871f3bc339.lean/declarations/uniform-oscillation--b332b0ce2691e7447faa866a.md) | 159 | `result-track:b332b0ce2691e7447faa866a6a24dfb4fe7d24a236eaa402fbd0b1d12275c1b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

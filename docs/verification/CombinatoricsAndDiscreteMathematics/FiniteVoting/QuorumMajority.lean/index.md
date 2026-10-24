# Verification target: GRWTSK.Combinatorics.FiniteVoting.QuorumMajority

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3877b4d0029ed2e20620ee5eb7f3ef6168b16f2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/FiniteVoting/QuorumMajority.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3877b4d0029ed2e20620ee5eb7f3ef6168b16f2`.

Source path: `GRWTSK/Combinatorics/FiniteVoting/QuorumMajority.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/FiniteVoting/QuorumMajority.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasQuorum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/hasquorum--90802d1692f404465d46a97f.md) | 19 | `declaration-track:90802d1692f404465d46a97f0b7926f3634a19769f0e640ea18ac9d1ac5f7c13` |
| 2 | `def` | [StrictMajority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/strictmajority--93b6d7683a9a320cba5e40ff.md) | 21 | `declaration-track:93b6d7683a9a320cba5e40ffc275967e3599f83fe454546fe9e336700ade23d9` |
| 3 | `theorem` | [quorum_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/quorum-monotone--93d95eda759eb26d3764e1c3.md) | 23 | `result-track:93d95eda759eb26d3764e1c30dc0c4d9fe69e801e50b625c09a4a35bdf727de7` |
| 4 | `theorem` | [majority_iff_twice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/majority-iff-twice--0d2680b3bd4222059614ce2a.md) | 28 | `result-track:0d2680b3bd4222059614ce2a159c7d24dc60a4b25ffc98b8c7a04cdc1a3dda4e` |
| 5 | `theorem` | [majority_iff_threshold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/majority-iff-threshold--6046e14c42ac64aaab5080bb.md) | 33 | `result-track:6046e14c42ac64aaab5080bb3fd0b6be8b0384863c1bca17ba926f8ac8f49465` |
| 6 | `theorem` | [tie_not_majority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/tie-not-majority--ba2766346e0746e9e08529d8.md) | 39 | `result-track:ba2766346e0746e9e08529d8ccf1393f2d8d7f71776acd95c964fd879500071a` |
| 7 | `theorem` | [opposing_majorities_impossible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/opposing-majorities-impossible--0083f4580d0e672c1614c945.md) | 43 | `result-track:0083f4580d0e672c1614c945d538262eb89b65e8d86df1c88a45dcce4a24feed` |
| 8 | `theorem` | [empty_vote_not_majority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/empty-vote-not-majority--e2ec5123a4fd3e2d3c20adc7.md) | 48 | `result-track:e2ec5123a4fd3e2d3c20adc7882c84eeae7e34e6841ccc580d90e957f299491c` |
| 9 | `def` | [Attendance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/attendance--fd9abdc298f03813ab84f2aa.md) | 51 | `declaration-track:fd9abdc298f03813ab84f2aa197bcfbf7663e751716c514b16d79d5086a2d3e8` |
| 10 | `theorem` | [attendance_bounds_cast_votes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/attendance-bounds-cast-votes--879e3bdeb8578e770a00c433.md) | 54 | `result-track:879e3bdeb8578e770a00c43336208a68a0458d3ba82a22520c051d50a2581c65` |
| 11 | `theorem` | [quorum_and_majority_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/quorum-and-majority-iff--40e931f987dd40d7d98390ed.md) | 59 | `result-track:40e931f987dd40d7d98390ed444910c422c6f16f746f61a8eb15afdedb3f1cbe` |
| 12 | `theorem` | [majority_subsets_intersect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteVoting/QuorumMajority.lean/declarations/majority-subsets-intersect--e9254e9c4070c98d5d1db7aa.md) | 67 | `result-track:e9254e9c4070c98d5d1db7aad151937afb4130bfb6b5f0d921650f72f803defc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

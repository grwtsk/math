# Verification target: GRWTSK.Combinatorics.WeightedSubsetBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "496eb3818250efda875c99d11533d8f72fa4b2a0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/WeightedSubsetBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `496eb3818250efda875c99d11533d8f72fa4b2a0`.

Source path: `GRWTSK/Combinatorics/WeightedSubsetBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/WeightedSubsetBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedPairBudget`](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mass_mono](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/mass-mono--513ae1e82e45bc8aada20345.md) | 27 | `result-track:513ae1e82e45bc8aada2034522746cc0e87206c73bdf693fed92f61e452e98cf` |
| 2 | `theorem` | [remaining_add_known](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/remaining-add-known--6cb1d2ba4663f7461b43e4e1.md) | 32 | `result-track:6cb1d2ba4663f7461b43e4e1b85facc19eddd8882766873323235965cb898745` |
| 3 | `theorem` | [remaining_eq_sub](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/remaining-eq-sub--f0945b1cf730dd80bf329cc0.md) | 38 | `result-track:f0945b1cf730dd80bf329cc05937701fd2cfdc4d68a905e8e6c14d5c00f852d9` |
| 4 | `theorem` | [lower_le_upper](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/lower-le-upper--9a5a89c635c884a9c5b29aaf.md) | 45 | `result-track:9a5a89c635c884a9c5b29aafad44cd0ea9aa9dc25f38bdbc340528b9ef22a7ca` |
| 5 | `theorem` | [remaining_le_budget](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/remaining-le-budget--a95fac0649dc4bfd7fc4971e.md) | 51 | `result-track:a95fac0649dc4bfd7fc4971e11112506a2788b0c0a130d11fbd9a0d96fe9e44f` |
| 6 | `theorem` | [lower_weights_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/lower-weights-le-mass--ff90558f3675da419677de50.md) | 59 | `result-track:ff90558f3675da419677de50b60c96df6e87a3a0559250aadf44cc917a8cb7e5` |
| 7 | `theorem` | [known_add_pair_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/known-add-pair-le-mass--bfba9be0c13b8032ac24652e.md) | 64 | `result-track:bfba9be0c13b8032ac24652e853dd6a104ccddc5ce7010dc6de3b1340aa5408e` |
| 8 | `theorem` | [weight_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/weight-le-mass--e1509a749900ae4c584aa153.md) | 75 | `result-track:e1509a749900ae4c584aa15391f9af10ed993a4effebfee1873b7ee1eebd0d8a` |
| 9 | `theorem` | [eq_of_mass_eq](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/eq-of-mass-eq--3968518de1f7215336444cf7.md) | 81 | `result-track:3968518de1f7215336444cf75af595f3faa9293e2b781b97ff3061b80e8edfc7` |
| 10 | `theorem` | [one_missing_fixed_point_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/one-missing-fixed-point-fixture--88fc5fa3f15ffce207d584f6.md) | 94 | `result-track:88fc5fa3f15ffce207d584f641873f96f7148d2c35995346383ffb0c02292f4d` |
| 11 | `theorem` | [two_missing_exchanged_points_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/two-missing-exchanged-points-fixture--59ec45cdf99081250bae7717.md) | 100 | `result-track:59ec45cdf99081250bae771742c257acdf57090920dc46bf47a64a3968a55c7f` |
| 12 | `theorem` | [contaminated_known_set_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/contaminated-known-set-fixture--a8405a416db37d6798e6109c.md) | 106 | `result-track:a8405a416db37d6798e6109c4c6ac393445c49d5b346a60f14c3b9c09319b2c9` |
| 13 | `theorem` | [outside_known_set_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/outside-known-set-fixture--17149400fef4f03a84bb4bdb.md) | 112 | `result-track:17149400fef4f03a84bb4bdb94dcb029b521f48765a52fa98fc6af7aa0e55c60` |
| 14 | `theorem` | [overlapping_reports_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/overlapping-reports-fixture--140368d2d21792ba1a514a8d.md) | 119 | `result-track:140368d2d21792ba1a514a8d2d9df67185ee55dc534f63f366a3a5aa4f0da125` |
| 15 | `theorem` | [zero_weight_exhaustion_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/zero-weight-exhaustion-fixture--8c39d1a65599f8d04f154026.md) | 124 | `result-track:8c39d1a65599f8d04f154026c2e03448485f67c8c229165e132e5114b4694b6d` |
| 16 | `theorem` | [overclaimed_lower_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/overclaimed-lower-fixture--fd82afa830d25fffff252276.md) | 129 | `result-track:fd82afa830d25fffff2522763facc5a3b941d64537e5eebcc0fe8008bc03a747` |
| 17 | `theorem` | [repeated_fixed_point_inconclusive_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/declarations/repeated-fixed-point-inconclusive-fixture--75ec0dde415906711d13d6c5.md) | 135 | `result-track:75ec0dde415906711d13d6c56438be23787c7c0525d3426327fe861061211cac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

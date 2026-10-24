# Verification target: GRWTSK.Combinatorics.WeightedPairBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "973a7b477216f2b15197564142e860e45032035f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/WeightedPairBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `973a7b477216f2b15197564142e860e45032035f`.

Source path: `GRWTSK/Combinatorics/WeightedPairBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/WeightedPairBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/mass--de6615f0d98ca7e943435c58.md) | 26 | `declaration-track:de6615f0d98ca7e943435c584477444a71d9b9bd69aa6fbc8a5a3953fe528d20` |
| 2 | `theorem` | [pair_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/pair-le-mass--32443ce749e3249701403f71.md) | 29 | `result-track:32443ce749e3249701403f71aaae18a3d60b61ac1fd2bb79f2b24f1d7f0d4d9b` |
| 3 | `theorem` | [eq_of_upper_lt_lower_sum](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/eq-of-upper-lt-lower-sum--dd9f880c62d02c7e997a7742.md) | 47 | `result-track:dd9f880c62d02c7e997a7742e699b559343e64f43b702d573e9568d394822fd3` |
| 4 | `theorem` | [eq_of_upper_lt_twice_lower](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/eq-of-upper-lt-twice-lower--5b009ee3f9a177a79f56408c.md) | 59 | `result-track:5b009ee3f9a177a79f56408c68cca490207c56aa86319d195b19e3ac934add6c` |
| 5 | `theorem` | [zero_lower_cannot_pass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/zero-lower-cannot-pass--1e582c236ea7fddfa7e6b0ec.md) | 68 | `result-track:1e582c236ea7fddfa7e6b0ec3042a72087400ccd37e5b9056b3b15d80a363e12` |
| 6 | `theorem` | [nonstrict_pair_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/nonstrict-pair-fixture--ba324ba0095d88b97707b5eb.md) | 71 | `result-track:ba324ba0095d88b97707b5eb3518fd5fe22106f800ec315de9e5b8dc6cd125a8` |
| 7 | `theorem` | [double_weight_singleton_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/double-weight-singleton-fixture--3007d802d886ea249d99fa85.md) | 78 | `result-track:3007d802d886ea249d99fa8555efa77905c1b705df7343f4cca3ab63f0676fc5` |
| 8 | `theorem` | [repeated_identity_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/repeated-identity-fixture--5b9a170b0d702a2491c050ea.md) | 84 | `result-track:5b9a170b0d702a2491c050eabb356e3445ab48992416ba80c8b834fbfc366092` |
| 9 | `theorem` | [omitted_partner_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/omitted-partner-fixture--0c80c0512654ad4fa62d0c02.md) | 88 | `result-track:0c80c0512654ad4fa62d0c02286e4f63ef71636c85f78412b42b0e65a7d74438` |
| 10 | `theorem` | [unequal_weights_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/unequal-weights-fixture--cf52c6b082f4002466327ec6.md) | 93 | `result-track:cf52c6b082f4002466327ec6bae8070cac43fb459dc684bf84c90e2aa533c5c9` |
| 11 | `def` | [modelReflection](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/modelreflection--f5945268437d253eea51d58d.md) | 100 | `declaration-track:f5945268437d253eea51d58d8ac2dc8f337e610d4b6635ba276f7c7e71da0077` |
| 12 | `theorem` | [modelReflection_involutive](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/modelreflection-involutive--2a7cc38f35c28eafbe39c93f.md) | 103 | `result-track:2a7cc38f35c28eafbe39c93f3c443ab18f9706cc2d24a4ccdd69f51bbcd968fd` |
| 13 | `theorem` | [odd_mass_with_nonfixed_pair_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/odd-mass-with-nonfixed-pair-fixture--0ae02265227670d0431adda0.md) | 114 | `result-track:0ae02265227670d0431adda091719eeef84ffc5b05e60f2b1e41ff336ead40ed` |
| 14 | `theorem` | [selected_weight_only_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/declarations/selected-weight-only-fixture--ba8b1bfc8277595d8f4f1388.md) | 121 | `result-track:ba8b1bfc8277595d8f4f13886ad09c83759da083fc99a6453b52ae788c50a61c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

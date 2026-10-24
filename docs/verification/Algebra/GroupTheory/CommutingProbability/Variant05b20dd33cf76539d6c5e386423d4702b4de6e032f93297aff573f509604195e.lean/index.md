# Verification target: GRWTSK.Algebra.GroupTheory.CommutingProbability.Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff592e60cce0bc4900af9417acef8db17fa62ac0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff592e60cce0bc4900af9417acef8db17fa62ac0`.

Source path: `GRWTSK/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Abelianization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob--04fa249e5c6a298a99f2186a.md) | 38 | `declaration-track:04fa249e5c6a298a99f2186a1676137de891e80cb6ed698c31ad60a4d1bf3932` |
| 2 | `theorem` | [commProb_def](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-def--f2952ea091400605a3ed52ed.md) | 42 | `result-track:f2952ea091400605a3ed52edcf3acec0947784bb4ec252bae01a10c4701e505f` |
| 3 | `theorem` | [commProb_prod](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-prod--ec3be903a939ffdfb6ce60a2.md) | 47 | `result-track:ec3be903a939ffdfb6ce60a2900434d31afdad6d3fba1c17f77d56df74127db4` |
| 4 | `theorem` | [commProb_pi](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-pi--f58f6a1f5cdcd041024e4275.md) | 54 | `result-track:f58f6a1f5cdcd041024e4275b8a5f3b4dc404ac82f3f178cd3cbd2fabc95c857` |
| 5 | `theorem` | [commProb_function](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-function--405e3fca0615803f1d151159.md) | 62 | `result-track:405e3fca0615803f1d151159a0fe8d0d5f596aad4f8f21dcf3963ce7674f0f06` |
| 6 | `theorem` | [commProb_eq_zero_of_infinite](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-eq-zero-of-infinite--205f0213bcdfb628c91e36fc.md) | 67 | `result-track:205f0213bcdfb628c91e36fcd7f18a60a837fdea5abf47109ca057452b21a363` |
| 7 | `theorem` | [commProb_pos](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-pos--4c321c5b077e5887dc8091c3.md) | 72 | `result-track:4c321c5b077e5887dc8091c3c7e519dc17e0dfc1f79fe2f939274be239f4a511` |
| 8 | `theorem` | [commProb_le_one](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-le-one--15c3714b54501495bafe531d.md) | 78 | `result-track:15c3714b54501495bafe531d65897d3d328110a533c1c43fe749855e6ae589c3` |
| 9 | `theorem` | [commProb_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-eq-one-iff--0872c02de676281842db781b.md) | 86 | `result-track:0872c02de676281842db781b9b30b29370e1d958584b4fe0c91cd04850570a58` |
| 10 | `theorem` | [commProb_def'](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/commprob-def--697c840ef134e66c0d776571.md) | 98 | `result-track:697c840ef134e66c0d776571b68e1cdbf9949b5e50557582d11058bf9c01c379` |
| 11 | `theorem` | [Subgroup.commProb_subgroup_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/subgroup-commprob-subgroup-le--da25a25362da0734b1f4bd01.md) | 108 | `result-track:da25a25362da0734b1f4bd01053294b4ef8ee4203263a47f079e4144a00f1bfd` |
| 12 | `theorem` | [Subgroup.commProb_quotient_le](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/subgroup-commprob-quotient-le--bc8b778f63c88939f0f338cd.md) | 119 | `result-track:bc8b778f63c88939f0f338cd32fa3ab079f155bea9b9f17f883e060a8b0fb7e3` |
| 13 | `theorem` | [inv_card_commutator_le_commProb](../../../../../mathematics/Algebra/GroupTheory/CommutingProbability/Variant05b20dd33cf76539d6c5e386423d4702b4de6e032f93297aff573f509604195e.lean/declarations/inv-card-commutator-le-commprob--c5bd38b40adc655967e69eb5.md) | 133 | `result-track:c5bd38b40adc655967e69eb5faf3114186afd593a3dd5e20dace695daa353578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

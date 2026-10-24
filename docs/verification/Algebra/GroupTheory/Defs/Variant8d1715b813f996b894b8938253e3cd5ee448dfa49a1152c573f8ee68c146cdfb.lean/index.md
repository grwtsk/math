# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b508ece672c68caacecc0d5d692b1c5048423541",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b508ece672c68caacecc0d5d692b1c5048423541`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddIrreducible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/addirreducible--0198cd9ea90de541263be70b.md) | 26 | `declaration-track:0198cd9ea90de541263be70bf42f657ebd9d17b8d0973e4499684af8b1e7fd8a` |
| 2 | `structure` | [Irreducible](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/irreducible--3904b1f7df1c49dd2a64dbbf.md) | 40 | `declaration-track:3904b1f7df1c49dd2a64dbbfe8192ae2170b1ec112e06ab2fa58b5b77d21a931` |
| 3 | `lemma` | [irreducible_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/irreducible-iff--61ff9443590c831af351356a.md) | 53 | `result-track:61ff9443590c831af351356a1d985ac2a1254158d414cb47de861662595f33ba` |
| 4 | `lemma` | [not_irreducible_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/not-irreducible-one--99fa7a607f16dc8af743ad3d.md) | 59 | `result-track:99fa7a607f16dc8af743ad3d7b3390b627cffb2deab3687c8be7b623cdd676cc` |
| 5 | `lemma` | [Irreducible.ne_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/irreducible-ne-one--3e0e6f4d654411a6a24286dd.md) | 62 | `result-track:3e0e6f4d654411a6a24286dd729cfba556e1c31f88822009e397fa4b859f77a6` |
| 6 | `lemma` | [of_irreducible_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/of-irreducible-mul--630691173b7b14164a0b7c5d.md) | 65 | `result-track:630691173b7b14164a0b7c5d79bf7417210faf459366fb9e130577f1d2dab27a` |
| 7 | `lemma` | [irreducible_or_factor](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant8d1715b813f996b894b8938253e3cd5ee448dfa49a1152c573f8ee68c146cdfb.lean/declarations/irreducible-or-factor--4c6cb772a959d85745e04ca8.md) | 68 | `result-track:4c6cb772a959d85745e04ca848be9cd567a7918f2b271c2ac1f907047e6e3182` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

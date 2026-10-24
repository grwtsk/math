# Verification target: GRWTSK.Algebra.GroupTheory.Order.Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de67bc977889b053cee2102ba0373b1b35ba820",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de67bc977889b053cee2102ba0373b1b35ba820`.

Source path: `GRWTSK/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/le--74b30a26d455060655bd49f1.md) | 34 | `declaration-track:74b30a26d455060655bd49f15d2ce2c61d93d53d8b412a6dd2fb8811dbf210d6` |
| 2 | `instance` | [lt](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/lt--05f63aa839a6f03f170f4ea1.md) | 47 | `declaration-track:05f63aa839a6f03f170f4ea164b3f21de1f9ae12433e5cf63f4e5b25697a6d5b` |
| 3 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/mk-le-mk--a5598a9c21e146551d81dd97.md) | 60 | `result-track:a5598a9c21e146551d81dd97cbd38a4ace623393ff64d2a516bc89b728ee2d67` |
| 4 | `theorem` | [mk_lt_mk](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/mk-lt-mk--10658ae804dd1b8b09659bda.md) | 64 | `result-track:10658ae804dd1b8b09659bdadcde9bb0a376c89a809a6b09dd0322667c6f0ca9` |
| 5 | `instance` | [partialOrder](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/partialorder--c1d7aed124a9d134c9bbf63a.md) | 69 | `declaration-track:c1d7aed124a9d134c9bbf63a59364d585203134a1afd0d3915a78e2d42268764` |
| 6 | `instance` | [isOrderedCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/isorderedcancelmonoid--ae547dbcdba67e6b46eb0664.md) | 91 | `declaration-track:ae547dbcdba67e6b46eb0664b8dcf1e9708d37b39f8ceef8c0956830409c3752` |
| 7 | `instance` | [decidableLE](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/decidablele--891257be02d1c266802e2698.md) | 103 | `declaration-track:891257be02d1c266802e2698704cc38a71b0ab380d001f91d26f5b9110cb20e1` |
| 8 | `instance` | [decidableLT](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/decidablelt--b69918a6d77aed56b6369fe7.md) | 107 | `declaration-track:b69918a6d77aed56b6369fe79fc08c22086cf4b6741a99d46c986879508c7639` |
| 9 | `def` | [mkOrderEmbedding](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/mkorderembedding--c5755bb9479241f77181f19f.md) | 113 | `declaration-track:c5755bb9479241f77181f19f228e2b44b1c64029edc124a75f535bd0269b1e6b` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Order/Variant11dbdf6945e79981e1c8a3bf6ed873ceab49b30a978adf5062c96dd57c295b91.lean/declarations/instance--792fa658cadb92d6cbbf350f.md) | 121 | `declaration-track:792fa658cadb92d6cbbf350f0148fa625962d2b914aae7667dad6df2a1f4e122` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

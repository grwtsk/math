# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2feb540277974c4d9f6ffbca8375c38a9d93ea2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2feb540277974c4d9f6ffbca8375c38a9d93ea2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Loop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-step-attachwith--947047f32f07208d54eb26c3.md) | 25 | `result-track:947047f32f07208d54eb26c36dfb7bb1083ace96d78ba1f3e49873019d4fe27a` |
| 2 | `theorem` | [IterM.map_unattach_toList_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-map-unattach-tolist-attachwith--9456a24cc1a304e3b43ecc23.md) | 31 | `result-track:9456a24cc1a304e3b43ecc23064dac01b965cc9e9142d3df01adb76ad1231496` |
| 3 | `theorem` | [IterM.map_unattach_toListRev_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-map-unattach-tolistrev-attachwith--86c5be13219da8d35d880aea.md) | 50 | `result-track:86c5be13219da8d35d880aeab9548d4b99ea6d129f7c501d87671b7981e7903e` |
| 4 | `theorem` | [IterM.map_unattach_toArray_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-map-unattach-toarray-attachwith--892cc83d0c1b4bbf0aef3776.md) | 58 | `result-track:892cc83d0c1b4bbf0aef37767f871075e2e2e4947b144b7ccc25645ebab356ce` |
| 5 | `theorem` | [IterM.length_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-length-attachwith--f576160286d5f713a13aa365.md) | 67 | `result-track:f576160286d5f713a13aa365c4648b09fa7d047610aae521d4f9198bb4afac7c` |
| 6 | `def` | [IterM.count_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attach/Variant98060ba5ae6ef66cf88b6f013955012ae221900b73e3c0ca7e30cfbe68376246.lean/declarations/iterm-count-attachwith--4195743fa38edaec15dac9a4.md) | 77 | `declaration-track:4195743fa38edaec15dac9a4d332bfb8d7e7d075fa7ba579b2947f0ab9e0b9db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

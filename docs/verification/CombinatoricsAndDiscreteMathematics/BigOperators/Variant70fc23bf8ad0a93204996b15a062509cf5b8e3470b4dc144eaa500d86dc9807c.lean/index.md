# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61691cf9560f9ea0924dc0b9fd30a599951cd9ce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61691cf9560f9ea0924dc0b9fd30a599951cd9ce`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean/declarations/list-prod--fad85a5d28fcc2de07d9ad6c.md) | 21 | `result-track:fad85a5d28fcc2de07d9ad6c214f7e13c6aea27dc40347256b2ff93081e7d7ec` |
| 2 | `theorem` | [multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean/declarations/multiset-prod--7f4842ad5fe6ad1173ae1c9f.md) | 33 | `result-track:7f4842ad5fe6ad1173ae1c9fa2a0bd6915230f6b4ace8bc0475148cf0d0cf4e6` |
| 3 | `theorem` | [finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant70fc23bf8ad0a93204996b15a062509cf5b8e3470b4dc144eaa500d86dc9807c.lean/declarations/finset-prod--c6d268576f272f7bedc8bcf8.md) | 40 | `result-track:c6d268576f272f7bedc8bcf8278e5ffeacb0883be571af0b31c7c4d83d02b7d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

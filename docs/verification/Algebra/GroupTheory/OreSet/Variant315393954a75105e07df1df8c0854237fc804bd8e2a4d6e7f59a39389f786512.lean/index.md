# Verification target: GRWTSK.Algebra.GroupTheory.OreSet.Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f720b6f1b88ebe03211c1fcca4482cb70eb0a80c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f720b6f1b88ebe03211c1fcca4482cb70eb0a80c`.

Source path: `GRWTSK/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OreLocalization.OreSet` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oreSetOfCancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/declarations/oresetofcancelmonoidwithzero--4edff49a50afd5c7b918c60e.md) | 29 | `declaration-track:4edff49a50afd5c7b918c60ed0de9c4306406af25da06bef80c437a8c6ad0376` |
| 2 | `def` | [oreSetOfNoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/declarations/oresetofnozerodivisors--c088819e63e2bbf5e6bacb1b.md) | 39 | `declaration-track:c088819e63e2bbf5e6bacb1b2050c288db93183a648898869fc9081519d1b659` |
| 3 | `lemma` | [nonempty_oreSet_iff](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/declarations/nonempty-oreset-iff--53a11e27def00e9e0b18c87c.md) | 45 | `result-track:53a11e27def00e9e0b18c87c6008fe988cbf308e9fa1070790a7a47788d5fbf1` |
| 4 | `lemma` | [nonempty_oreSet_iff_of_noZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/OreSet/Variant315393954a75105e07df1df8c0854237fc804bd8e2a4d6e7f59a39389f786512.lean/declarations/nonempty-oreset-iff-of-nozerodivisors--03b1b5efd464dad9f9154fb0.md) | 54 | `result-track:03b1b5efd464dad9f9154fb0be57ff7d16649a01708d5741734daecb3047e90d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

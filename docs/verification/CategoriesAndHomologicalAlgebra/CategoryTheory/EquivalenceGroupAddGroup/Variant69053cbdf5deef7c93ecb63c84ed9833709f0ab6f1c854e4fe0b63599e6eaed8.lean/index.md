# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EquivalenceGroupAddGroup.Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c12e33f874da1f67f2f44eb0033b02b051d8681",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c12e33f874da1f67f2f44eb0033b02b051d8681`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/toaddgrp--d23acfdcfebb9a0275fe67c3.md) | 34 | `declaration-track:d23acfdcfebb9a0275fe67c39edb40ea4168d40677a289a7495163e9ff8a767f` |
| 2 | `def` | [toAddCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/toaddcommgrp--831b76f8b4e3fcd95052790d.md) | 45 | `declaration-track:831b76f8b4e3fcd95052790d02467eea49852145079e01c128539c8b230ae178` |
| 3 | `def` | [toGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/togrp--7581eb66930da5d808e610bb.md) | 56 | `declaration-track:7581eb66930da5d808e610bb33e150f021b9ed63425f489da0275c92cf711fe9` |
| 4 | `def` | [toCommGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/tocommgrp--4569225decc2a7a44e80c233.md) | 67 | `declaration-track:4569225decc2a7a44e80c233033685ddece535f05d2ad6a66170bb7561804339` |
| 5 | `def` | [groupAddGroupEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/groupaddgroupequivalence--9395e41f37e7c6408e9dafbf.md) | 76 | `declaration-track:9395e41f37e7c6408e9dafbfeb372fc8238de5207f064679929540143fcd639d` |
| 6 | `def` | [commGroupAddCommGroupEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EquivalenceGroupAddGroup/Variant69053cbdf5deef7c93ecb63c84ed9833709f0ab6f1c854e4fe0b63599e6eaed8.lean/declarations/commgroupaddcommgroupequivalence--d59330449a1dbebf42d230c6.md) | 85 | `declaration-track:d59330449a1dbebf42d230c6bf60ede1733c8e4d19063736ddc8815bd294fbf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.GroupTheory.EckmannHilton.Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e72b57b0293de7196fa6001b4f055055345d078a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e72b57b0293de7196fa6001b4f055055345d078a`.

Source path: `GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/isunital--bdaa85ca0d29103a9a189da1.md) | 43 | `declaration-track:bdaa85ca0d29103a9a189da12713c50b878885f513b7ddce92b19fc9b8b578a2` |
| 2 | `theorem` | [MulOneClass.isUnital](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/muloneclass-isunital--d36a4cbb2c2aacca56a64d4f.md) | 46 | `result-track:d36a4cbb2c2aacca56a64d4fc75c578cf5c2fa780028a282af23eb82f870c573` |
| 3 | `theorem` | [one](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/one--bebee8a5fbbf8e310d961cc8.md) | 61 | `result-track:bebee8a5fbbf8e310d961cc80475fc9866eb39fc5ecb395bf76c3ff5951b68a5` |
| 4 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/mul--3554046714942798a8f5dae4.md) | 68 | `result-track:3554046714942798a8f5dae4fb6665e6454d68f63119d246668557e6a487c376` |
| 5 | `theorem` | [mul_comm](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/mul-comm--fbcd4ddbc276f6d619b319f2.md) | 79 | `result-track:fbcd4ddbc276f6d619b319f28d25b5c79ce6ea1fec9ae5df2e89a6acee153af7` |
| 6 | `theorem` | [mul_assoc](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/mul-assoc--629a04576ed3b4323ec16b34.md) | 86 | `result-track:629a04576ed3b4323ec16b34862a61d1c9d0991f359bf049b31939e335edac86` |
| 7 | `abbrev` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/commmonoid--984d79471c11e8c23f612e09.md) | 94 | `declaration-track:984d79471c11e8c23f612e0915844225817145fd97399755d82617d62d105ce0` |
| 8 | `abbrev` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/EckmannHilton/Variant6e9a3566a7e924c2b39d5acea029d8b5bbde6eab1541e38c1f88cedf25fea65b.lean/declarations/commgroup--4727427002bb26d954c12e45.md) | 105 | `declaration-track:4727427002bb26d954c12e45e7eb88caf3ab1569414b0985b7f8928b48ff7aae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

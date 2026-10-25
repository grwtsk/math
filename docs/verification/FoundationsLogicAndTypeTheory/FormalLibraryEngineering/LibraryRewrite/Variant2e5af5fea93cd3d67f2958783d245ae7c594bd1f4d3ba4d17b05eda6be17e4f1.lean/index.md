# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryRewrite.Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec9f4f01c52f136a5582b9208f007ed47fc431a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec9f4f01c52f136a5582b9208f007ed47fc431a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Widget.LibraryRewrite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/declarations/atzero--802758dea0ae8230c7072035.md) | 185 | `declaration-track:802758dea0ae8230c707203530e1d0397add9951b0a84420693b9c87483b0762` |
| 2 | `theorem` | [atZero_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/declarations/atzero-neg--701ee977a0fffff5a3e613c6.md) | 187 | `result-track:701ee977a0fffff5a3e613c622edf3c830a0d3ee6ee597e5ca0ed42cc757b8b5` |
| 3 | `theorem` | [neg_atZero_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/declarations/neg-atzero-neg--179e560f2153987f9a85d47f.md) | 188 | `result-track:179e560f2153987f9a85d47ffcb5ce38ada89c70fa7e0a91b73425c4e8c7e15e` |
| 4 | `theorem` | [atZero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/declarations/atzero-add--db5140a2c6e19d4e7aba9363.md) | 190 | `result-track:db5140a2c6e19d4e7aba936391737611b8d54a14924918dadc7bee3ab90ab7ea` |
| 5 | `theorem` | [atZero_add_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibraryRewrite/Variant2e5af5fea93cd3d67f2958783d245ae7c594bd1f4d3ba4d17b05eda6be17e4f1.lean/declarations/atzero-add-const--14c086b6eb0a16bc407824e3.md) | 191 | `result-track:14c086b6eb0a16bc407824e3609f5342128f4ca00b55af1e4fce32291f470e7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.MatrixEncoding.Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfb0b8e243cbd42f0d9ceabe670a6fedfdc17cc3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfb0b8e243cbd42f0d9ceabe670a6fedfdc17cc3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.List` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Matrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tree.cellVariableTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-cellvariabletree--1a06a5c2c081758e17403ae6.md) | 17 | `declaration-track:1a06a5c2c081758e17403ae658661128bee3e01ea536d96988a18e84b698270f` |
| 2 | `def` | [Tree.cellConstTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-cellconsttree--bfcfc6db14c21cdb56d4fb00.md) | 25 | `declaration-track:bfcfc6db14c21cdb56d4fb0056acc42c88adf6b0d4d446d09d9f24cffe55145d` |
| 3 | `def` | [Tree.cellConstNetwork](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-cellconstnetwork--2d1187ec8dab24b2d55c2999.md) | 36 | `declaration-track:2d1187ec8dab24b2d55c2999c2013c3af8b08b7fb913452f6185ed31aefbbfb6` |
| 4 | `def` | [Tree.rowSupportTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-rowsupporttree--40db7a8b4a43346a225e9ff2.md) | 46 | `declaration-track:40db7a8b4a43346a225e9ff2c45f2db1140aa850343b2b697b3762fdaa7c7c40` |
| 5 | `def` | [Tree.supportTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-supporttree--70d0799e18f4278410b323d2.md) | 61 | `declaration-track:70d0799e18f4278410b323d21d4014b7b12a899664aa1624dfd0294ab3edca3a` |
| 6 | `def` | [Tree.anyTrueTree](../../../../../mathematics/Algebra/LinearAlgebra/MatrixEncoding/Variant3939d2c95b6b92b61e4b15445a483422631b648750427fb5225829c0191d1210.lean/declarations/tree-anytruetree--3c2b7776414cf863d5c767ce.md) | 73 | `declaration-track:3c2b7776414cf863d5c767ce2216f8245bca701502caf2d0de9cac5def10a113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

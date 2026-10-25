# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CommDiag.Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "961dcd67a57c4abc84bd64bc89d934d5433ebec3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `961dcd67a57c4abc84bd64bc89d934d5433ebec3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.PenroseDiagram` — import line 9; external provider; requires a separately pinned dependency.
- `ProofWidgets.Presentation.Expr` — import line 10; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.SelectionPanel` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Expr.app7?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/root-lean-expr-app7--e992654220fb417bb34a7179.md) | 19 | `declaration-track:e992654220fb417bb34a7179cb3f9feb7527484d1c5168df501d1a3d34203705` |
| 2 | `def` | [homType?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/homtype--523828945cdea3295ee5cc59.md) | 42 | `declaration-track:523828945cdea3295ee5cc59b03d3a8f9f4fa4b2dc3bbe050e9f587391db1609` |
| 3 | `def` | [homComp?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/homcomp--07833c848f279f04b360a9b9.md) | 47 | `declaration-track:07833c848f279f04b360a9b96c9bafd264fba8ce506ea077699c93c0d2603ede` |
| 4 | `abbrev` | [ExprEmbeds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/exprembeds--36aaa2c5da4579b194909a1c.md) | 52 | `declaration-track:36aaa2c5da4579b194909a1c4022a856735fe55b3b188ba0bebc172d5124e13e` |
| 5 | `def` | [mkCommDiag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/mkcommdiag--48ef1ca6558f67b769bb50ca.md) | 59 | `declaration-track:48ef1ca6558f67b769bb50ca3b1d5bebb600c318ce57455015856329277029b9` |
| 6 | `def` | [subTriangle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/subtriangle--8d04213e8f873fca3022c8e3.md) | 79 | `declaration-track:8d04213e8f873fca3022c8e315a224ac70643047cd3588f470684b861744473b` |
| 7 | `def` | [commTriangleM?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/commtrianglem--94e9e1271d3c3aaa70d6bc9b.md) | 83 | `declaration-track:94e9e1271d3c3aaa70d6bc9bacdd92ed42bb2ef63d8edae4831fff6789915754` |
| 8 | `def` | [commutativeTrianglePresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/commutativetrianglepresenter--40e33069e9f6f9a3e2e005ef.md) | 100 | `declaration-track:40e33069e9f6f9a3e2e005ef953b01f3c8aa7d45e99dcb8c6029507db4a7f3d4` |
| 9 | `def` | [subSquare](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/subsquare--fc013d9c4f2908e455e5091f.md) | 118 | `declaration-track:fc013d9c4f2908e455e5091f832d91639e09a68049e5de868b5e029efbffbbbc` |
| 10 | `def` | [commSquareM?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/commsquarem--e25f5dd3a15da0caddf00ce0.md) | 121 | `declaration-track:e25f5dd3a15da0caddf00ce02ed136da0fe7a5cc40c7fee34e6d0c6b0489a542` |
| 11 | `def` | [commutativeSquarePresenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CommDiag/Variantf7aa05b88e2f01b8b02c72ddd989b7259a255c258bf2914ad8ef6c656bb720bf.lean/declarations/commutativesquarepresenter--927f955a7b2b4428998ecb34.md) | 133 | `declaration-track:927f955a7b2b4428998ecb34801ea527bb4d37917f279900b78a2fa4b26e7fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

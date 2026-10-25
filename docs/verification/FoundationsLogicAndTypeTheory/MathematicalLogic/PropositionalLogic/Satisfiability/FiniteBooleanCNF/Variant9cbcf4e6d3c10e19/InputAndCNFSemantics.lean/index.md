# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PropositionalLogic.Satisfiability.FiniteBooleanCNF.Variant9cbcf4e6d3c10e19.InputAndCNFSemantics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434eedf84c2c50606d2db1a9771529806a814b53",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434eedf84c2c50606d2db1a9771529806a814b53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Pi` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bits](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/bits--82696758f666a896405e7019.md) | 52 | `declaration-track:82696758f666a896405e7019ee2b61eefec7784109d2c3ea746a509ead1424d7` |
| 2 | `abbrev` | [Assignment](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/assignment--082cf1a9f941824313ed03c2.md) | 55 | `declaration-track:082cf1a9f941824313ed03c244d16dc417166a005af215a3d3508eb21382940d` |
| 3 | `def` | [readInput](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/readinput--19dd2154d0e7e90cd8552bf1.md) | 58 | `declaration-track:19dd2154d0e7e90cd8552bf11e8f2626129fa9e4b2e62d6aa5003b68e3c272ca` |
| 4 | `def` | [inputAssignment](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/inputassignment--da5d1c7e96409b00bf8573b1.md) | 62 | `declaration-track:da5d1c7e96409b00bf8573b1578deeebb55a044036f07c8671016198bd0dc456` |
| 5 | `theorem` | [readInput_inputAssignment](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/readinput-inputassignment--a9e68167c69cc563c8255055.md) | 66 | `result-track:a9e68167c69cc563c8255055ae38c528178ffd15c576c324b531f241bb19d7d2` |
| 6 | `inductive` | [Literal](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/literal--952a8b5ff1e90f734e60158f.md) | 74 | `declaration-track:952a8b5ff1e90f734e60158f712098a66195f0c5111a2f752376da71a5ddf2e1` |
| 7 | `def` | [Holds](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds--ceb5e0cbab28e0efbc0aa04f.md) | 82 | `declaration-track:ceb5e0cbab28e0efbc0aa04fac995569aa28edb819bd1987b27425b0699e7a16` |
| 8 | `def` | [forBit](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/forbit--b3f1fd1ed32c04fc0ef3fd7b.md) | 87 | `declaration-track:b3f1fd1ed32c04fc0ef3fd7b5e1fcf7169b27e9fd5b008a379edcaa32a5d8d32` |
| 9 | `def` | [blocking](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/blocking--3d9a34d550af8346ed031f91.md) | 92 | `declaration-track:3d9a34d550af8346ed031f916bd9b232f73db3315e722df7c690d04b8bf256e4` |
| 10 | `theorem` | [holds_forBit](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-forbit--c55cf7e776ef96f673923d0a.md) | 97 | `result-track:c55cf7e776ef96f673923d0a605fe4c471a2dc639d51825d272ae29f6c414ed2` |
| 11 | `theorem` | [holds_blocking](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-blocking--fa948425fc2b125d2bfc0db6.md) | 102 | `result-track:fa948425fc2b125d2bfc0db6dd4ef707a6093ca6e0694c902c86c61da43b620e` |
| 12 | `abbrev` | [Clause](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/clause--d1803f08c5c71a8cf9deb216.md) | 109 | `declaration-track:d1803f08c5c71a8cf9deb216b8c92e33c098b2d33f90b734ef27ef89e975cac3` |
| 13 | `abbrev` | [CNF](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/cnf--4530f0318a051955f3009edd.md) | 112 | `declaration-track:4530f0318a051955f3009eddcb0122bdac95c79a83739e3dd074f5b2729a144e` |
| 14 | `def` | [Holds](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds--026e3a447913f799eb4503c6.md) | 117 | `declaration-track:026e3a447913f799eb4503c64c37348b018dd8a5b3b78316f694264251ca425d` |
| 15 | `theorem` | [holds_nil](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-nil--cf27684009bea614c586e230.md) | 121 | `result-track:cf27684009bea614c586e230898a4106afb3d1a3c2db0f5dc2b5be7fdc784ac5` |
| 16 | `theorem` | [holds_cons](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-cons--46e02acd464706d082b5d9a2.md) | 125 | `result-track:46e02acd464706d082b5d9a22c32ccbd929dc2c2f7524023e266e1dccc4b40d9` |
| 17 | `theorem` | [holds_singleton](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-singleton--a7abc6bff1eae153174ff4a3.md) | 130 | `result-track:a7abc6bff1eae153174ff4a336a5854159dbac9f55fe37e68dc7c146e9062ecd` |
| 18 | `def` | [Holds](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds--c03e0a4749128e7e7dffc33e.md) | 139 | `declaration-track:c03e0a4749128e7e7dffc33e4973f6ac5cd2b6e1563287baa5ff4275677b8f6f` |
| 19 | `def` | [Satisfiable](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/satisfiable--7238d37378835ae3fe14c260.md) | 143 | `declaration-track:7238d37378835ae3fe14c2607a5451f96ba41290cd8f228670650234dec5ab45` |
| 20 | `theorem` | [holds_nil](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-nil--22ea71e8d43842b28de4394d.md) | 147 | `result-track:22ea71e8d43842b28de4394dac4a1af01a85741c10ec3ea72413e1b686121b56` |
| 21 | `theorem` | [holds_cons](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-cons--80d7231f25a7df6f06d73b67.md) | 151 | `result-track:80d7231f25a7df6f06d73b674ed47215e8049609adfbb3df9e1c39f833d5a5ba` |
| 22 | `theorem` | [holds_append](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-append--322b71fc0331632ecf1547be.md) | 156 | `result-track:322b71fc0331632ecf1547be190e29792143e204bebae80c96893a81374bc6f5` |
| 23 | `theorem` | [holds_ofFn](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/PropositionalLogic/Satisfiability/FiniteBooleanCNF/Variant9cbcf4e6d3c10e19/InputAndCNFSemantics.lean/declarations/holds-offn--8ddff660976d34523e3c471d.md) | 170 | `result-track:8ddff660976d34523e3c471d871de284915512ea2a092432ea416e9a2ebefb39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

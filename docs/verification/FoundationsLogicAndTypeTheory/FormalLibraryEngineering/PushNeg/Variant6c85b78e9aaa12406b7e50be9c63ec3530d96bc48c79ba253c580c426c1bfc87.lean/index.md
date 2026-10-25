# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PushNeg.Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba7507706cff9cbe195fa758dfbb78389bef1e1d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba7507706cff9cbe195fa758dfbb78389bef1e1d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Algebra.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Conv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_not_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-not-eq--b3df0319484198e454eeeda2.md) | 29 | `result-track:b3df0319484198e454eeeda2c2b21060109b0caed2aae076b4c4f6d60e86ba76` |
| 2 | `theorem` | [not_and_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-and-eq--7dbd2ab1f26f3418a841e3e0.md) | 30 | `result-track:7dbd2ab1f26f3418a841e3e0133fa974c05aa548d5ed52302612e457ebd18241` |
| 3 | `theorem` | [not_and_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-and-or-eq--d0e630c12d6e97bbc807489c.md) | 31 | `result-track:d0e630c12d6e97bbc807489c4229fd4e2320ee7130cae9ea49f9ec7070762e30` |
| 4 | `theorem` | [not_or_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-or-eq--ddab759c1c212979cb834200.md) | 32 | `result-track:ddab759c1c212979cb8342008277828ddd6d356ce23cefe2fb208dfe3c9fd570` |
| 5 | `theorem` | [not_forall_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-forall-eq--c54012cd35a87324cfadb79d.md) | 33 | `result-track:c54012cd35a87324cfadb79d6b6aba2c476ba111cbecfdb1da61ebf9d0ce9f6a` |
| 6 | `theorem` | [not_exists_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-exists-eq--24f8a83e9296493f4a691404.md) | 34 | `result-track:24f8a83e9296493f4a691404289bf0eef42ffcf0e47cd6931f89e458d84780f9` |
| 7 | `theorem` | [not_implies_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-implies-eq--9e16393e59113e6e87a57230.md) | 35 | `result-track:9e16393e59113e6e87a57230587660ea22e18f721ced98e4454fa00fe722b240` |
| 8 | `theorem` | [not_ne_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-ne-eq--de6d61540f1a90a782fe892f.md) | 36 | `result-track:de6d61540f1a90a782fe892fc6b822795962dadc4357051fcf4d8dbabe33028f` |
| 9 | `theorem` | [not_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-iff--480afdcd997bbf9d115362fe.md) | 37 | `result-track:480afdcd997bbf9d115362fe7f428dd12d440d646514ceb22b5d3e5398faedc3` |
| 10 | `theorem` | [not_le_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-le-eq--8db3ef0e8ad685b9dc2ef2a1.md) | 41 | `result-track:8db3ef0e8ad685b9dc2ef2a1e4295cdd6fa16ce505503dcdc86e8c6fea02fcb0` |
| 11 | `theorem` | [not_lt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-lt-eq--acd871b64629e49cd233305c.md) | 42 | `result-track:acd871b64629e49cd233305c4b8b2634980daf831caf6b676a8535b119ff4048` |
| 12 | `theorem` | [not_ge_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-ge-eq--4a9c4677fd8bcf2f9b991022.md) | 43 | `result-track:4a9c4677fd8bcf2f9b991022d36453a542ec90bb3e0b7b5136ae232941cc5b79` |
| 13 | `theorem` | [not_gt_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/not-gt-eq--cad27028c322fe8a3664fc81.md) | 44 | `result-track:cad27028c322fe8a3664fc81cd926dd178fc6162b4f5b45b22f22694986a78c0` |
| 14 | `register_option` | [push_neg.use_distrib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/push-neg-use-distrib--29f0b5acea85a7a9e732ac8a.md) | 47 | `declaration-track:29f0b5acea85a7a9e732ac8aa36491cc14abcdc6f44c067aacc23c3f84d947cd` |
| 15 | `def` | [transformNegationStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/transformnegationstep--6cb235a8967294e1594fa34b.md) | 53 | `declaration-track:6cb235a8967294e1594fa34bf44c72b372020a677c87dda983d701e79e1ff802` |
| 16 | `def` | [transformNegation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/transformnegation--ca53b0e0492f576d125e2dbb.md) | 108 | `declaration-track:ca53b0e0492f576d125e2dbb8d57e2d42bd74972513fa9c6b664b5128578b9c8` |
| 17 | `def` | [pushNegCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/pushnegcore--0e9859b8f1d9090a6b13b147.md) | 117 | `declaration-track:0e9859b8f1d9090a6b13b147c69596dcda4d35af8efdfd4683404ba9171f1ebe` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/syntax--50ce6b8b44b89afd784c36f0.md) | 145 | `declaration-track:50ce6b8b44b89afd784c36f0ad30cd77ad4e5c07e92ab68be7e2693184a81c4e` |
| 19 | `def` | [elabPushNegConv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/elabpushnegconv--4b02664e46ac80159db676a1.md) | 148 | `declaration-track:4b02664e46ac80159db676a1d37464850f74d8d0d866e4aa842e85bbc877996e` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/macro--8f23fd9be262986525107a44.md) | 157 | `declaration-track:8f23fd9be262986525107a4418a9787ef9dc5873a69049432e5e0bbe488225ac` |
| 21 | `def` | [pushNegTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/pushnegtarget--23d31741bfbc56baf07d76e5.md) | 160 | `declaration-track:23d31741bfbc56baf07d76e539410ddd8f6617a6853d74cdcaa6a061c6acdaff` |
| 22 | `def` | [pushNegLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/pushneglocaldecl--68a2fe3ec27862404d3c23af.md) | 166 | `declaration-track:68a2fe3ec27862404d3c23af101454f23ae855e075f69d72533b856d607742e5` |
| 23 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PushNeg/Variant6c85b78e9aaa12406b7e50be9c63ec3530d96bc48c79ba253c580c426c1bfc87.lean/declarations/elab--a3b55b473e3309676a1d4698.md) | 198 | `declaration-track:a3b55b473e3309676a1d469897ceae53bbcb67140e2b46cdd3f7c276802ffe18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

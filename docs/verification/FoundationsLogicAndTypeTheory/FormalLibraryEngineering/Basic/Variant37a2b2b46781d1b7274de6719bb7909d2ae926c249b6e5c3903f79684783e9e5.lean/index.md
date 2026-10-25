# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e4c82b5535552c2c1ae8ead98c26593fd55954d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e4c82b5535552c2c1ae8ead98c26593fd55954d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Tree.](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/tree--ac3deda255e4876ffc81c9e3.md) | 28 | `declaration-track:ac3deda255e4876ffc81c9e3acca9bda0fc1e4e62d6c6397badc209ad046ebf2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/instance--f69b7a77f9cb247ef2f191b0.md) | 40 | `declaration-track:f69b7a77f9cb247ef2f191b01d701ba48f11ece38f017323d4d1821711170d05` |
| 3 | `def` | [traverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/traverse--a36cb83ddb21a5bfeac06f37.md) | 48 | `declaration-track:a36cb83ddb21a5bfeac06f3724fa5b79cef94150205f220b23390f867506b25c` |
| 4 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/map--14abfd0faa5b06e0f1b70c64.md) | 54 | `declaration-track:14abfd0faa5b06e0f1b70c64851a2bbb344037fba45cc827aedddb494ee6f817` |
| 5 | `theorem` | [id_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/id-map--a5c658a77c52c080ac8f8c6e.md) | 58 | `result-track:a5c658a77c52c080ac8f8c6e07b299378ccd777592fe823d496ddfe58d3a39fc` |
| 6 | `theorem` | [comp_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/comp-map--7c0febc17692fc7ec7f2708e.md) | 63 | `result-track:7c0febc17692fc7ec7f2708e25ac2cc54e664c1d4de7e3d019e6ccabe6df6b2d` |
| 7 | `theorem` | [traverse_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/traverse-pure--dc46e8c5d407bdd1a595d3ed.md) | 69 | `result-track:dc46e8c5d407bdd1a595d3edaa64e6703b9b766654765198e0464a005c88524c` |
| 8 | `def` | [numNodes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/numnodes--837e4fc41c6dd8412a7ed3ef.md) | 78 | `declaration-track:837e4fc41c6dd8412a7ed3efe3e46d49e5466349e0a2e389e6d32385db0b84b4` |
| 9 | `def` | [numLeaves](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/numleaves--5dbe8d82a96cf5395d3d4e40.md) | 84 | `declaration-track:5dbe8d82a96cf5395d3d4e4036427a0eb5f3a0cac27a73605d39fa2fd5b84f1f` |
| 10 | `def` | [height](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/height--07d945711ca6fe003c73f3c6.md) | 90 | `declaration-track:07d945711ca6fe003c73f3c6e92b1d73ef0f19c5a1d2982cba957c56ff14a66b` |
| 11 | `theorem` | [numLeaves_eq_numNodes_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/numleaves-eq-numnodes-succ--1d4c730f81f40ef7bf11f649.md) | 94 | `result-track:1d4c730f81f40ef7bf11f64994b58b5632ccad7000a70f4ec1ca254220ff1234` |
| 12 | `theorem` | [numLeaves_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/numleaves-pos--ad86f7c119a666a2f629f529.md) | 97 | `result-track:ad86f7c119a666a2f629f5297371b57109efd28845ca752c77f3385870bc26a7` |
| 13 | `theorem` | [height_le_numNodes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/height-le-numnodes--c55bb6e6b6efb64c7ea0bdbd.md) | 101 | `result-track:c55bb6e6b6efb64c7ea0bdbdc47d4c9cb69ba5791e59de26ef14d7a86f0c1e83` |
| 14 | `def` | [left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/left--794a9f297b52e2635218160d.md) | 109 | `declaration-track:794a9f297b52e2635218160d9689b01abd24e9eafac7e68cb6799c2d76fea33e` |
| 15 | `def` | [right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/right--20856caf545a54607483fc93.md) | 115 | `declaration-track:20856caf545a54607483fc93b9d05ffe81fbb710c4d629e34be9814fca677a04` |
| 16 | `def` | [unitRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/unitrecon--c13cb07ec7bd5094d6c0782c.md) | 124 | `declaration-track:c13cb07ec7bd5094d6c0782c9fd7fb80d5f56a8920044d67e6ee2dede134de23` |
| 17 | `theorem` | [left_node_right_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant37a2b2b46781d1b7274de6719bb7909d2ae926c249b6e5c3903f79684783e9e5.lean/declarations/left-node-right-eq-self--d4e9755d9deb8a72d11b8891.md) | 128 | `result-track:d4e9755d9deb8a72d11b8891a413296caac5fb130783f08711b60ded926f7829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

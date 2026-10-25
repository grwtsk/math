# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Alias.Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a9d6e9af8ad5ad5fcd64f901ea5208956684855",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a9d6e9af8ad5ad5fcd64f901ea5208956684855`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.DeclarationRange` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 13; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Deprecated` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/aliasinfo--6aa8e912f46ce071bceb4b70.md) | 32 | `declaration-track:6aa8e912f46ce071bceb4b70982b4f990b333c066439875e782bc968a17276b8` |
| 2 | `def` | [AliasInfo.name](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/aliasinfo-name--61c26fb7867834aa7bea20aa.md) | 42 | `declaration-track:61c26fb7867834aa7bea20aa41edcc37176d19c8451cc58ed73785b46348c578` |
| 3 | `def` | [AliasInfo.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/aliasinfo-tostring--4c899719d39a145590b33488.md) | 48 | `declaration-track:4c899719d39a145590b334880872e9708a474c36b7c06d2f4c79a4cae417ce00` |
| 4 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/initialize--bf361fcdb86148ad9859c226.md) | 55 | `declaration-track:bf361fcdb86148ad9859c22676b7c6c5d85184fbc1e1a1473cf08825b98016c9` |
| 5 | `def` | [getAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/getaliasinfo--519e486b70f28ccae4ed5e8f.md) | 62 | `declaration-track:519e486b70f28ccae4ed5e8fe3c3aded3dc2c04e43341f429b53fb3795a36c98` |
| 6 | `def` | [setAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/setaliasinfo--3eef4d1c0d1b6f806d596e81.md) | 66 | `declaration-track:3eef4d1c0d1b6f806d596e81b1166163ba8ac69852d8ef964e30b2638e8caa39` |
| 7 | `def` | [setDeprecatedTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/setdeprecatedtarget--f4dcb43ae1f9d45e5ad0fad6.md) | 70 | `declaration-track:f4dcb43ae1f9d45e5ad0fad6ba6ab7e8ee89269dca1f004c26e0a2a1f1261437` |
| 8 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/elab--4f9665c580682cfaf0baf7db.md) | 88 | `declaration-track:4f9665c580682cfaf0baf7dba29f90069f4f569c21044616ae46fc1c0e106399` |
| 9 | `def` | [mkIffMpApp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/mkiffmpapp--deaba45aa5b8aa6f60ec27d3.md) | 140 | `declaration-track:deaba45aa5b8aa6f60ec27d3c05af9075300a7876e0ae9c7f2cda74cf3176b0e` |
| 10 | `def` | [addSide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/addside--b83bd48319c0722241f65d8c.md) | 147 | `declaration-track:b83bd48319c0722241f65d8ccad23e4a0a1dce4e6263a1157525072cea08d31b` |
| 11 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4021bf95d030601dd23d3a2a65926b11d0d20b0d81c2c926092e0b6422cc718f.lean/declarations/elab--7ad0ee37ea1dc59fa08ba8c1.md) | 172 | `declaration-track:7ad0ee37ea1dc59fa08ba8c163077bd1851d969d75cdd145eb57a8868283e0ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

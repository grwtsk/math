# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellBijection.Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08b294f301dbee598cf17c05c5ab6fc24a9ca391",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08b294f301dbee598cf17c05c5ab6fc24a9ca391`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Expansion.ShellFiber` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shellMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/shellmatrix--f21b8c9f251a98d622f297ad.md) | 22 | `declaration-track:f21b8c9f251a98d622f297ad4e832e0c4dac446f063cc8d91489bf57c2e02c2f` |
| 2 | `def` | [matrixCenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/matrixcenter--b287b666a6f4dfbc2d39c20c.md) | 25 | `declaration-track:b287b666a6f4dfbc2d39c20c1b864cef1b3eae23110c9f3d16339d929d25c48e` |
| 3 | `def` | [matrixShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/matrixshell--0a0b7fac94f48cf21c10ea16.md) | 29 | `declaration-track:0a0b7fac94f48cf21c10ea160ae10fee4dd305283a3c37cfed73f45197f43019` |
| 4 | `structure` | [ShellEncoded](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/shellencoded--c1b46a8c25224d727cc0c330.md) | 32 | `declaration-track:c1b46a8c25224d727cc0c330fb52aa4f9f706dddc954c25f8b057b0197a3ab8c` |
| 5 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/ext--f7d8cb1b166e69c671d46ab5.md) | 39 | `result-track:f7d8cb1b166e69c671d46ab54ef1d626c4244ab173e254fe5f092d3f80d51b6f` |
| 6 | `def` | [encodeShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/encodeshell--60561a08e73826144979567b.md) | 55 | `declaration-track:60561a08e73826144979567bf1ad2f29438e0054bfa1252f13b5ed7f051ed5ae` |
| 7 | `def` | [decodedEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodedentry--47b2a121ffdc1dc8b291099f.md) | 66 | `declaration-track:47b2a121ffdc1dc8b291099f1c5d721fc6d525a7da2e0beeae7960fe09b035c6` |
| 8 | `theorem` | [decodedEntry_center](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodedentry-center--cbabc469dc9bf89c7496e3b4.md) | 77 | `result-track:cbabc469dc9bf89c7496e3b48780ba046a39ec504a3269be7cb83bbeb0ab37a8` |
| 9 | `theorem` | [decodedEntry_shell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodedentry-shell--0cf5e8cde247c813a8b5e910.md) | 87 | `result-track:0cf5e8cde247c813a8b5e9105c0a94ab6e4df5b1f74e6a3e279339148983711f` |
| 10 | `def` | [decodeShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodeshell--1224658abf56cc9a218cd749.md) | 95 | `declaration-track:1224658abf56cc9a218cd7495942778f417ae5e5c1eba28f83d5e7267732975b` |
| 11 | `theorem` | [get_decodeShell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/get-decodeshell--47cb964baa116be79ec52c79.md) | 101 | `result-track:47cb964baa116be79ec52c7987b155143a4461e78508dc386c62cde87014bc50` |
| 12 | `theorem` | [decodeShell_rows](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodeshell-rows--f323d088b842133f4eb3477f.md) | 110 | `result-track:f323d088b842133f4eb3477f1c63b406fd3eb044c55155c653076048ae4b644a` |
| 13 | `theorem` | [decodeShell_cols](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decodeshell-cols--c1917834702d0ec636cd7736.md) | 115 | `result-track:c1917834702d0ec636cd77369201821876e1b93b1a07b3ddc3dd2a764ea0ca02` |
| 14 | `theorem` | [decode_encode_shell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/decode-encode-shell--703d4f85784c548a2a8bf49b.md) | 119 | `result-track:703d4f85784c548a2a8bf49b8769df796b1d278a3457c6a9395f14eeeff0ee3a` |
| 15 | `theorem` | [encode_decode_shell](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ShellBijection/Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06.lean/declarations/encode-decode-shell--63c785a7077ba899c6cbedbc.md) | 138 | `result-track:63c785a7077ba899c6cbedbcebd8d8ee7a3219878e42fc84047aa4020dd0be28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

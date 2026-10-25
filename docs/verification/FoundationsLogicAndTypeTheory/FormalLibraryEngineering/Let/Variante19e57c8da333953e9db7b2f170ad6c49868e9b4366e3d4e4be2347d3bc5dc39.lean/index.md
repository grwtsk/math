# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Let.Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25c53116c1ba748743253f8a5568092c1708ab83",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25c53116c1ba748743253f8a5568092c1708ab83`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.BuiltinDo.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Do.PatternVar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LetOrReassign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/letorreassign--ca68c9af43f63e911aa62e63.md) | 21 | `declaration-track:ca68c9af43f63e911aa62e63e08001ca7c4cc4cce20e85e8d20ada25a8d20d42` |
| 2 | `def` | [LetOrReassign.getLetMutTk?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/letorreassign-getletmuttk--53a90e8f1b791905bf31cbfd.md) | 26 | `declaration-track:53a90e8f1b791905bf31cbfdc3794e6ec22bb8eaae0c79a4f832e4331a1590df` |
| 3 | `def` | [LetOrReassign.checkMutVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/letorreassign-checkmutvars--3469d5d28df38a1e3a598256.md) | 31 | `declaration-track:3469d5d28df38a1e3a598256aee109b471e63d0750936784363e1d61c802c3b4` |
| 4 | `def` | [LetOrReassign.registerReassignAliasInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/letorreassign-registerreassignaliasinfo--75b1f6c62d5d13dda63e9c3d.md) | 37 | `declaration-track:75b1f6c62d5d13dda63e9c3dd0fb0c3524074160063ef450d9c6aeeefdf3035c` |
| 5 | `def` | [elabDoLetOrReassignWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoletorreassignwith--75219869ca292833493c5ba7.md) | 42 | `declaration-track:75219869ca292833493c5ba7fdf53718d17d85e0fd9a38bbfc3672b47945a04e` |
| 6 | `def` | [elabWithReassignments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabwithreassignments--21afe8eb2d1236291841271e.md) | 51 | `declaration-track:21afe8eb2d1236291841271e5a1e5d1fd5b376aab7e9ec97f9d33aa56d4f9a63` |
| 7 | `def` | [pushTypeIntoReassignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/pushtypeintoreassignment--9ae4b2ba3ea8c18babb298d4.md) | 56 | `declaration-track:9ae4b2ba3ea8c18babb298d415f458b5119717f3f79e675d8f5e3276fdc091d1` |
| 8 | `def` | [checkLetConfigInDo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/checkletconfigindo--1e0e0ab73b6f9577c59012a8.md) | 80 | `declaration-track:1e0e0ab73b6f9577c59012a86fb1be67af0466220a22e656932fdb73829c39c0` |
| 9 | `def` | [elabDoLetOrReassign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoletorreassign--2751794aa8b773a7301c805b.md) | 86 | `declaration-track:2751794aa8b773a7301c805bd2aa08f476d7c81cde05ef17c29d3a3fc550cdc1` |
| 10 | `def` | [elabDoArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoarrow--4ed273723ae1db193bcb8ee0.md) | 162 | `declaration-track:4ed273723ae1db193bcb8ee0697c05ba06400e125912245ff5b81dd89c93e69a` |
| 11 | `def` | [getLetConfigAndCheckMut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/getletconfigandcheckmut--8f6093ca9320d44cef17dbb4.md) | 200 | `declaration-track:8f6093ca9320d44cef17dbb485bc777ced2adbb951ff3a00e9f32dbb83baaff6` |
| 12 | `def` | [elabDoLet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdolet--e4a30d8322cfb00a3b4230bf.md) | 206 | `declaration-track:e4a30d8322cfb00a3b4230bf26f01c32be19104afe8c7349dfe3d1ee70cfb7a5` |
| 13 | `def` | [elabDoHave](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdohave--ff7bcff3276a21423f86abc6.md) | 211 | `declaration-track:ff7bcff3276a21423f86abc68ae43322154446facc6a3ddb2031ddadba0bbdc1` |
| 14 | `def` | [elabDoLetRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoletrec--95523cc8ff3e7e067873e65d.md) | 216 | `declaration-track:95523cc8ff3e7e067873e65ded476a3a3cf283f824f70537654243e7665d56f0` |
| 15 | `def` | [elabDoReassign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoreassign--ca674fdedf842d2a98f84b72.md) | 227 | `declaration-track:ca674fdedf842d2a98f84b728c2ddd716589de5b51a80d7c1f90d1854719efbd` |
| 16 | `def` | [elabDoLetElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoletelse--90a2bc6a717fbc58c750ea80.md) | 239 | `declaration-track:90a2bc6a717fbc58c750ea8042bdc85a57d643fb17a93cb257e9d2decb2f6a7e` |
| 17 | `def` | [elabDoLetArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoletarrow--3b16cc13345142000bbabfe9.md) | 257 | `declaration-track:3b16cc13345142000bbabfe91eafc0e920f1509ee83565c9381be2115678ff9b` |
| 18 | `def` | [elabDoReassignArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Let/Variante19e57c8da333953e9db7b2f170ad6c49868e9b4366e3d4e4be2347d3bc5dc39.lean/declarations/elabdoreassignarrow--c946179fdb22e5bfd62935d4.md) | 265 | `declaration-track:c946179fdb22e5bfd62935d48d0043f15914003dae40fcfe1854dfe9ed7cc419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

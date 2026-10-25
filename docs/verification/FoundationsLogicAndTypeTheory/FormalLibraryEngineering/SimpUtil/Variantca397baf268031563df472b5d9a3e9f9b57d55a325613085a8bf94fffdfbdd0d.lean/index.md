# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpUtil.Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8272c5609c353d84af20dc344d78edb6b24cb36b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8272c5609c353d84af20dc344d78edb6b24cb36b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.MatchDiscrOnly` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.ForallProp` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Simproc` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.List` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.BuiltinSimprocs.Core` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Util` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Grind.Norm` — import line 21; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Main` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [registerNormTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/registernormtheorems--bb429ec27c6e77e1dd5e42f7.md) | 31 | `declaration-track:bb429ec27c6e77e1dd5e42f74d72a3a218a07e19277cbcadec8494f455d7b74c` |
| 2 | `def` | [isBoolEqTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/isbooleqtarget--a5e3148fc95b76e2c5b57dfa.md) | 41 | `declaration-track:a5e3148fc95b76e2c5b57dfa8f04ab15ddf2cab279e6365cc694680c0f62b877` |
| 3 | `def` | [getSimprocs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/getsimprocs--460c0fde669d0ce2b29ae6ff.md) | 152 | `declaration-track:460c0fde669d0ce2b29ae6ffce6208821c699b5530bc7605575ef35140ee90d8` |
| 4 | `def` | [addDeclToUnfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/adddecltounfold--39a262dc41e5f201dec4d3ff.md) | 181 | `declaration-track:39a262dc41e5f201dec4d3ffc66725207b46a0c04232bb2b1eb6a154bc41c35f` |
| 5 | `def` | [getNormTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/getnormtheorems--392ef5d53d21e5f8ea588c17.md) | 187 | `declaration-track:392ef5d53d21e5f8ea588c17a3d1aa7fade73626ec089c4d792e7dce68d9db25` |
| 6 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/getsimpcontext--6f3a59887392565c1bdd8684.md) | 197 | `declaration-track:6f3a59887392565c1bdd8684af7bd4cb05758cdd75a0169c24eb3c97acc35d26` |
| 7 | `def` | [normalizeImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpUtil/Variantca397baf268031563df472b5d9a3e9f9b57d55a325613085a8bf94fffdfbdd0d.lean/declarations/normalizeimp--6047e412727dce4ad9c66248.md) | 215 | `declaration-track:6047e412727dce4ad9c66248d2b28d83d6077d939ed5a756cf99c6d9e7e7ef7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a242928968c88303295a7974cd080eca723a6b0e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a242928968c88303295a7974cd080eca723a6b0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.SynthInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.sortFVarsByContextOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/meta-sortfvarsbycontextorder--43d2b30ce54ffd6e173dfdd1.md) | 22 | `declaration-track:43d2b30ce54ffd6e173dfdd1d48618416ac6f7e4d4b20ca126869fb84eec35a9` |
| 2 | `def` | [getExprMVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/getexprmvardecl--adbcfa17dd09ba75e6d92be4.md) | 32 | `declaration-track:adbcfa17dd09ba75e6d92be4a5b65ed8e959a163fd61fcdf4d11f8029bff4c44` |
| 3 | `def` | [declareExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/declareexprmvar--bca02953f8ca519996bf8826.md) | 43 | `declaration-track:bca02953f8ca519996bf8826edc1006467ea4478cf65f42b723f0f346de9071a` |
| 4 | `def` | [isExprMVarAssignedOrDelayedAssigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/isexprmvarassignedordelayedassigned--57d7453e61c419dbfad0ee9c.md) | 54 | `declaration-track:57d7453e61c419dbfad0ee9cdae41709ef8e58edc76e2d8b5defe08f6585c77d` |
| 5 | `def` | [isExprMVarDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/isexprmvardeclared--ac719b3dbbf2c16e5ce97cc0.md) | 61 | `declaration-track:ac719b3dbbf2c16e5ce97cc066c2ed46ba7fdd95bb57dca7018af15f59518d32` |
| 6 | `def` | [eraseExprMVarAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/eraseexprmvarassignment--14a633c0b0adb010b2fd0bc8.md) | 67 | `declaration-track:14a633c0b0adb010b2fd0bc888e3186e3b1e441a40b52e445a7f253852fb122d` |
| 7 | `def` | [unassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/unassignedexprmvars--39c2a55f7676f5b5b2950f28.md) | 78 | `declaration-track:39c2a55f7676f5b5b2950f284896492974a66b82d30c69d9bb57b81c88dadde2` |
| 8 | `def` | [isDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/isdeclared--299576967435b71bbda80ff5.md) | 95 | `declaration-track:299576967435b71bbda80ff5ab4812f3ca3f918003cc822f7b0b61e95fd3a713` |
| 9 | `def` | [eraseAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/eraseassignment--0ec0cb84b25f2d9395442007.md) | 101 | `declaration-track:0ec0cb84b25f2d93954420073e118f6ffe992d8c6f3b5ed90c13ba90bba6d7aa` |
| 10 | `def` | [synthInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/synthinstance--386ee6daabaa7e5cf2ec198a.md) | 106 | `declaration-track:386ee6daabaa7e5cf2ec198ad75eea8c740616844a0de507b22cedc526d4da73` |
| 11 | `def` | [getTypeCleanup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/gettypecleanup--cc7da979a1311ae84d803582.md) | 111 | `declaration-track:cc7da979a1311ae84d8035823cc880458a61d63e7a49887a84254ceaed591b00` |
| 12 | `def` | [getUnassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/getunassignedexprmvars--ebfe9c966f229b7c35b82c5f.md) | 123 | `declaration-track:ebfe9c966f229b7c35b82c5f09bcb6408aa229c101138ac70a69cb1ae0fde78e` |
| 13 | `def` | [unhygienic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/unhygienic--522e16cfe761fac065016404.md) | 130 | `declaration-track:522e16cfe761fac06501640480e64ee635b2517ec51c69d8efed981b9bec6f50` |
| 14 | `def` | [mkFreshIdWithPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/mkfreshidwithprefix--216e786b2c5caa9a8f886a96.md) | 138 | `declaration-track:216e786b2c5caa9a8f886a9626832e54bff491f61b3d02e21dd56b984e0841dd` |
| 15 | `def` | [saturate1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0b4b4f806416d95c9b67515baa4b1d2f11cad960e18987a7ca6c63c328baf423.lean/declarations/saturate1--aee19dfbd651e697fdab0e86.md) | 154 | `declaration-track:aee19dfbd651e697fdab0e8643c82f61c2bf872904dcf48c1b0f062893a8ba6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompilerM.Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2abfa00cc93e086d17a4658ca5835364c9e6744",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2abfa00cc93e086d17a4658ca5835364c9e6744`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.InitAttr` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LogEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logentry--541c44683ac3836c8838f545.md) | 29 | `declaration-track:541c44683ac3836c8838f545912add281b75ca41fe3fc48069c737a799d9877e` |
| 2 | `def` | [fmt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/fmt--398524b96db3b346248d410e.md) | 34 | `declaration-track:398524b96db3b346248d410e19185e617c652ca67a7b621405143e2708a47484` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/instance--7c3a767caabc1b5dab71b4d6.md) | 38 | `declaration-track:7c3a767caabc1b5dab71b4d6b44496fd1801a7c52021fd1b715840e1245aab4f` |
| 4 | `abbrev` | [Log](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/log--283b0d7dd2291d079fd2429f.md) | 41 | `declaration-track:283b0d7dd2291d079fd2429f1c31776561a64d20a567abb0bf4120b67ce12d97` |
| 5 | `def` | [Log.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/log-format--a4c2f5c35c027a56d8e26c62.md) | 43 | `declaration-track:a4c2f5c35c027a56d8e26c62d809b0efdd89d80f906aee44f57d52ee2000e166` |
| 6 | `def` | [Log.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/log-tostring--d66e731e5272e1be27a9cefd.md) | 47 | `declaration-track:d66e731e5272e1be27a9cefde1863876bc21ba7906af4b3fd0aabb5b443a2d2f` |
| 7 | `abbrev` | [CompilerM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/compilerm--936484e8f67ce1155465e671.md) | 50 | `declaration-track:936484e8f67ce1155465e671863160f3e1967fac1b6245290ad2ec5ed1590f8b` |
| 8 | `def` | [log](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/log--2855ad65e02193388d3a8091.md) | 52 | `declaration-track:2855ad65e02193388d3a8091d841190aa6e689e84edf102ebd3774eb6eb1b1e8` |
| 9 | `def` | [tracePrefixOptionName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/traceprefixoptionname--948797deb6eeb6b66bc267a9.md) | 55 | `declaration-track:948797deb6eeb6b66bc267a9dd8b63add5b3edc3a72a8d4dca15b0d1610b83c7` |
| 10 | `def` | [isLogEnabledFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/islogenabledfor--3287f290a427d0d59d01ba8e.md) | 57 | `declaration-track:3287f290a427d0d59d01ba8e2f99aba5bb6d7065487589257a6d357884d2addb` |
| 11 | `def` | [logDeclsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logdeclsaux--58b1c03c25a8c61df9936b00.md) | 62 | `declaration-track:58b1c03c25a8c61df9936b001f34b83b84461bc33d12bcef5adb9f9b96fecc8e` |
| 12 | `def` | [logDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logdecls--1095c0dad497146222a107f9.md) | 66 | `declaration-track:1095c0dad497146222a107f90224f48188c1ae5a54b694355f09ca5fb3795fdb` |
| 13 | `def` | [logMessageIfAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logmessageifaux--4b6ca2bb17966a9020a586df.md) | 69 | `declaration-track:4b6ca2bb17966a9020a586dfb08eaa5a60746caa0d8ef550c57d8b0e3951abaa` |
| 14 | `def` | [logMessageIf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logmessageif--3fa8a0d31d6e699e99cd6c14.md) | 73 | `declaration-track:3fa8a0d31d6e699e99cd6c14512c0d1c4bb357174bcbca5f98c1a358e5e3dbe8` |
| 15 | `def` | [logMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/logmessage--5019dfadf0c6da1308448e0d.md) | 76 | `declaration-track:5019dfadf0c6da1308448e0de3925c6bfc65718eb80c13bef57602570a16f15a` |
| 16 | `abbrev` | [DeclMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/declmap--bd3566e1019a213863606819.md) | 79 | `declaration-track:bd3566e1019a213863606819a4ad200c08fc84be4a2049f76508169886236f62` |
| 17 | `abbrev` | [declLt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/decllt--bb8ea6c170ebf6055db71542.md) | 81 | `declaration-track:bb8ea6c170ebf6055db71542d9ad79bfa32a03569d08587976b6a4df550eb6dd` |
| 18 | `abbrev` | [sortDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/sortdecls--6e6fb40b9aa0cc66137071fa.md) | 84 | `declaration-track:6e6fb40b9aa0cc66137071fa5c702df7b392c5b14babb7f91df0d459ffcaa322` |
| 19 | `abbrev` | [findAtSorted?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findatsorted--f1627523e6653087fc393c30.md) | 87 | `declaration-track:f1627523e6653087fc393c3058e5916e0ce170b3528e93df9b33e2fc19a99ff5` |
| 20 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/builtin-initialize--6dd288a3a256499f14afb9d6.md) | 91 | `declaration-track:6dd288a3a256499f14afb9d6d8d72fcbbebf4feab4b56c54db405b83c1fa572d` |
| 21 | `def` | [exportIREntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/exportirentries--25b7539914d81fc1d8454c20.md) | 129 | `declaration-track:25b7539914d81fc1d8454c20a0252a62700f76470be7766267203154bbb3aaf5` |
| 22 | `def` | [findEnvDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findenvdecl--d5b97efc60f3aec2ca7ffd2a.md) | 150 | `declaration-track:d5b97efc60f3aec2ca7ffd2a3ed89bc57cc89d161a194af6f0a2bb8bc456d943` |
| 23 | `def` | [findInterpDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findinterpdecl--a0e241fcbee8596418adb2ee.md) | 154 | `declaration-track:a0e241fcbee8596418adb2ee143d6678939e92f4677101fb95439c1e4041b74c` |
| 24 | `def` | [findInterpDeclBoxed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findinterpdeclboxed--2ff534d3c9879d8a001465f1.md) | 166 | `declaration-track:2ff534d3c9879d8a001465f1f61b2791c56fe2495444685068d50a1822d95575` |
| 25 | `def` | [hasCompileError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/hascompileerror--547bc080901a689846fbe896.md) | 181 | `declaration-track:547bc080901a689846fbe8963f8240a10d5d6514061d8ff99853d84ac9a865da` |
| 26 | `def` | [findDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/finddecl--3dcc18c2a1478bae8e92f8ff.md) | 188 | `declaration-track:3dcc18c2a1478bae8e92f8ff08c6b6e84da2b011ace505dc5d8e55948b0c0d1a` |
| 27 | `def` | [containsDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/containsdecl--19f10915b4bc9b81dcf210f1.md) | 191 | `declaration-track:19f10915b4bc9b81dcf210f108ba352b8eeb5be1c891fd49971455a09f7aa299` |
| 28 | `def` | [getDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/getdecl--987f62d225b7c5a21b414089.md) | 194 | `declaration-track:987f62d225b7c5a21b414089d5a432499f76f57ad0cc3dda2dd9f7b36615fe11` |
| 29 | `def` | [findLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findlocaldecl--e479c8bcb32e7db04def9f56.md) | 198 | `declaration-track:e479c8bcb32e7db04def9f56527f41cbbe88f41ed653bfb4a4c16be6aea96a82` |
| 30 | `def` | [getDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/getdecls--713e6b0c79c7445ae7671756.md) | 202 | `declaration-track:713e6b0c79c7445ae7671756f20409263444eeed001f54d3d76fa297737c1069` |
| 31 | `def` | [addDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/adddecl--6b6098da3e8d50c4cf96c064.md) | 205 | `declaration-track:6b6098da3e8d50c4cf96c064cd6d85e60e284187d1a7b735fa186a16549996f8` |
| 32 | `def` | [addDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/adddecls--90df36e2cdfe978b67462f55.md) | 208 | `declaration-track:90df36e2cdfe978b67462f5583941d80f041cb8902d51b11d05c012e5c91897d` |
| 33 | `def` | [findEnvDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/findenvdecl--c11875dc1d3c431ca49d1630.md) | 211 | `declaration-track:c11875dc1d3c431ca49d16303b548a62e27dde5eb8ad0c79ea17985d6bf1d1e3` |
| 34 | `def` | [findDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/finddecl--425a94f46da34c878c9cad7a.md) | 216 | `declaration-track:425a94f46da34c878c9cad7af14d28f280d31c80b502106f1a44aa2461b85473` |
| 35 | `def` | [containsDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/containsdecl--5dcd00c4401c086ceb1898a8.md) | 219 | `declaration-track:5dcd00c4401c086ceb1898a88c1f2f8fc4bffb109e2f93c478dfafbdd4ff4ba1` |
| 36 | `def` | [getDecl'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/getdecl--f6d8234f2e72dccbd44d256a.md) | 225 | `declaration-track:f6d8234f2e72dccbd44d256a4581cfecd289a843b30ac00aa014ef93f0c248e5` |
| 37 | `def` | [getSorryDep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/getsorrydep--4cbe2a9db0ba13cf633397b8.md) | 230 | `declaration-track:4cbe2a9db0ba13cf633397b800bf156e2a177d6a31ffce463595a7764ed624fb` |
| 38 | `def` | [getIRExtraConstNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompilerM/Variant2d4ff40b37d8ba0212d1b150185bb9aa619f2c6c90b6fffd4ddf93a13340a968.lean/declarations/getirextraconstnames--9c2eb87e6a2b44d3d9e70014.md) | 237 | `declaration-track:9c2eb87e6a2b44d3d9e70014844a5c6db55382b2463520acc40fcf7f51579c66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

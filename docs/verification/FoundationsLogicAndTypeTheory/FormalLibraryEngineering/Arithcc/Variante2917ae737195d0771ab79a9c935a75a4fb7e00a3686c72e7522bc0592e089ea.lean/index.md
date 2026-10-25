# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5067a00eac510d1599d2100e2d0ffe2e1d0c0fce",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5067a00eac510d1599d2100e2d0ffe2e1d0c0fce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/word--774652f70a0ad5a12a424a8e.md) | 62 | `declaration-track:774652f70a0ad5a12a424a8eae19a0c9d10a67980225d6506ee20eea8152266f` |
| 2 | `abbrev` | [Identifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/identifier--3a4356f479cd22d3e7c8d4ee.md) | 66 | `declaration-track:3a4356f479cd22d3e7c8d4ee8563a1b06c2f4f2abfd855dcc66efc5c6ff2d2a3` |
| 3 | `abbrev` | [Register](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/register--c5f5b29834a7be23383295b5.md) | 70 | `declaration-track:c5f5b29834a7be23383295b5d1d0d3691917572dd9ef0572f76f5e52c36db2e7` |
| 4 | `theorem` | [Register.lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/register-lt-succ-self--555c6b63fc221d84454095f9.md) | 73 | `result-track:555c6b63fc221d84454095f93b6682721f5ec8b3450afd9b2598dfe89f91f58b` |
| 5 | `theorem` | [Register.le_of_lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/register-le-of-lt-succ--37dd1eb466bfd0db856e5ca8.md) | 76 | `result-track:37dd1eb466bfd0db856e5ca80988241fa021987c8ed3ab3b2edc7f24b81382bc` |
| 6 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/expr--90ed2cc10d0da9129b15ecdc.md) | 87 | `declaration-track:90ed2cc10d0da9129b15ecdcab9fa4e130e25c6b7de4ecdb348a0d6675698095` |
| 7 | `def` | [value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/value--6c4efa3acf320b6e2b916831.md) | 95 | `declaration-track:6c4efa3acf320b6e2b9168310ee274390daad63f5d2003bfb2db0bf5adbb948c` |
| 8 | `inductive` | [Instruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/instruction--90b6e17cb2bd21957c10d2ec.md) | 108 | `declaration-track:90b6e17cb2bd21957c10d2ec7e6a02d56013c2ac7c0d29c0908581e07f19d37d` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/state--b8d5ed2bc1527a781235b395.md) | 120 | `declaration-track:b8d5ed2bc1527a781235b3951ac05d0d4692ca6e4d62d699606e313e5a5511e8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/instance--c7cbd255c5b2a702167a3973.md) | 124 | `declaration-track:c7cbd255c5b2a702167a3973d7a2d85159319cc815e0b0c03ce1ee07ad84b46d` |
| 11 | `def` | [read](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/read--8382c0b7402290caa28a06c9.md) | 130 | `declaration-track:8382c0b7402290caa28a06c9d83a2833c027b051dcc4dc4d5bef4be979f62982` |
| 12 | `def` | [write](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/write--8a3b9e066b1934616a0ede4e.md) | 135 | `declaration-track:8a3b9e066b1934616a0ede4e22e2e23f1de72eaee34159bd960da133130eca33` |
| 13 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/step--24bf9a9aa2ab6f2832c0c1aa.md) | 139 | `declaration-track:24bf9a9aa2ab6f2832c0c1aa34734909917d16a2b303a0c262c20a07058c784b` |
| 14 | `def` | [outcome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/outcome--12c43ac9c4cbcac0e73485b0.md) | 147 | `declaration-track:12c43ac9c4cbcac0e73485b0bcdb67bebbde930b1ea7eec753510dd56117258a` |
| 15 | `theorem` | [outcome_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/outcome-append--3d9d225a195bc8782d9fc096.md) | 153 | `result-track:3d9d225a195bc8782d9fc096b8672089b793da937d405f2142d587f02a5396d1` |
| 16 | `def` | [loc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/loc--19e46519b7e817b63528325f.md) | 170 | `declaration-track:19e46519b7e817b63528325fc9616888aa303227f16302e3a6fdfc4525afafcd` |
| 17 | `def` | [compile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/compile--d69bad674ce3de04b4897154.md) | 178 | `declaration-track:d69bad674ce3de04b48971544e8c6390248535b46ff5f4485098098fcd5435d1` |
| 18 | `def` | [StateEqRs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqrs--d1a4150c519cf1352901db03.md) | 191 | `declaration-track:d1a4150c519cf1352901db03e232cbcb755ee48e2849d43586d339a4202492da` |
| 19 | `theorem` | [StateEqRs.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqrs-refl--357970a5af8938c327c09332.md) | 197 | `result-track:357970a5af8938c327c093326aa0063f0b0c1fb87bb989d108fb0dfe5c558440` |
| 20 | `theorem` | [StateEqRs.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqrs-symm--8b2c86583a0f9c3218d3d12f.md) | 200 | `result-track:8b2c86583a0f9c3218d3d12f011b7fc457fc7b418d27e77312659f7b0f9bbf94` |
| 21 | `theorem` | [StateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqrs-trans--f27c600e0384f79ccb43593a.md) | 205 | `result-track:f27c600e0384f79ccb43593afc173c0d5eb338297523d3aa4b8240b09e1cf4dc` |
| 22 | `def` | [StateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeq--6191aaa24b931e485187fe7f.md) | 210 | `declaration-track:6191aaa24b931e485187fe7f280e7c117c18a9efffe52db40f4b37ab9d5507be` |
| 23 | `theorem` | [StateEq.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeq-refl--44f24570427e08abab8a4554.md) | 216 | `result-track:44f24570427e08abab8a45549563de2d6766f9123d917d063e4c1cc0f3a76c72` |
| 24 | `theorem` | [StateEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeq-symm--67ea8a0cc2136dbdb1da4f7b.md) | 219 | `result-track:67ea8a0cc2136dbdb1da4f7b06aad76cff7ae27a3c0b84435fe2e9859562136c` |
| 25 | `theorem` | [StateEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeq-trans--5c31b4fce64b8aabb08346e7.md) | 224 | `result-track:5c31b4fce64b8aabb08346e7064065d12c7db7426b87fc5298df4341bae72fab` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/instance--ef084fcbd8ba5b6a7c71ed95.md) | 231 | `declaration-track:ef084fcbd8ba5b6a7c71ed95f08be993b42dd41a00635b11d7c006f39596b77b` |
| 27 | `theorem` | [StateEqStateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqstateeqrs-trans--81b367dbcafb46642ce79a2c.md) | 236 | `result-track:81b367dbcafb46642ce79a2c1ec59ec2a5b5b0fd9f7c1c4a8a25cd6153d63b1e` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/instance--1ef2e2860b114a4c26e465a1.md) | 241 | `declaration-track:1ef2e2860b114a4c26e465a123aadb3f4fde2ecbf39f3807ffd9f72af5271efe` |
| 29 | `theorem` | [stateEq_implies_write_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeq-implies-write-eq--2c5f72a6f897625877df902c.md) | 245 | `result-track:2c5f72a6f897625877df902caa8a997ad04c6f7dffd8ce7c65f12d85cc4894d8` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/stateeqrs-implies-write-eq-rs--2f2644e59b9e4c5fbf7ee415.md) | 258 | `result-track:2f2644e59b9e4c5fbf7ee415470b2926c03b04dd97b44cb076f06dbbc394916a` |
| 31 | `theorem` | [write_eq_implies_stateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/write-eq-implies-stateeq--9d60ffad200b6c8a2c1bf41a.md) | 266 | `result-track:9d60ffad200b6c8a2c1bf41ac81a0dc96c93346a64ce29619db115a7b32a38d4` |
| 32 | `theorem` | [compiler_correctness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/compiler-correctness--dac77969572464f015d9ac25.md) | 279 | `result-track:dac77969572464f015d9ac25afb2018e43be0cef1dc4fc0f7207a1a7aa4407ca` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variante2917ae737195d0771ab79a9c935a75a4fb7e00a3686c72e7522bc0592e089ea.lean/declarations/example--d3cb3f00574835b5f70b7b4d.md) | 348 | `declaration-track:d3cb3f00574835b5f70b7b4d92e81c143839ef9edc9eeba59f42024e8100b405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

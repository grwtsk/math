# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Arithcc.Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "142a3ff54cfd57837a9d0d87c13bcfabc400528a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `142a3ff54cfd57837a9d0d87c13bcfabc400528a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Word](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/word--27987643897b04592a0da3b0.md) | 56 | `declaration-track:27987643897b04592a0da3b0430d0a30ad92297cf1a9ad110e1cd9e1cddbcfa6` |
| 2 | `def` | [Identifier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/identifier--abc218aefa57d6182041946a.md) | 62 | `declaration-track:abc218aefa57d6182041946aeb19cbd8d0665f9f14299417566ddc3b17b6169b` |
| 3 | `def` | [Register](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/register--56a8c9f83293476879dca472.md) | 68 | `declaration-track:56a8c9f83293476879dca4726589a96ac3f8897c5bea1103c2e872aac805d6b2` |
| 4 | `theorem` | [Register.lt_succ_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/register-lt-succ-self--927733678caba9adfe56d76b.md) | 72 | `result-track:927733678caba9adfe56d76bbda1eaa6210a2f236ba052e3d0c8645b59b445af` |
| 5 | `theorem` | [Register.le_of_lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/register-le-of-lt-succ--505a81f197f86be45873afe5.md) | 76 | `result-track:505a81f197f86be45873afe5c85d01d8dc631dfc19b0d30494ae761d5174827d` |
| 6 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/expr--99bacf8f228c02b3d3b451d3.md) | 88 | `declaration-track:99bacf8f228c02b3d3b451d3e68ce6e4e4ec8051fcb6ca4ff3b2f9c5f5c0ec6c` |
| 7 | `def` | [value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/value--cd5da99f3ae6b8fb3e3a90cb.md) | 97 | `declaration-track:cd5da99f3ae6b8fb3e3a90cbe7b0e1da6bbea6c6d380b6d166182886ab7b140a` |
| 8 | `inductive` | [Instruction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/instruction--9ec6b0331760fda53a965e34.md) | 111 | `declaration-track:9ec6b0331760fda53a965e34fd83aa67278ef0fd5125097c8dd4bf405a890f76` |
| 9 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/state--18f3b713bc315b5248821d11.md) | 124 | `declaration-track:18f3b713bc315b5248821d1118fbee8d94562c59c3c86d5bf10cdb19eba63e54` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/instance--731f7df467c6373aa8b459e4.md) | 129 | `declaration-track:731f7df467c6373aa8b459e462a97f847a40ee8e44130ac0629580a3bf8f1207` |
| 11 | `def` | [read](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/read--4d02cb08ed738441fa2f076c.md) | 135 | `declaration-track:4d02cb08ed738441fa2f076ca2e5665664936cb7bf96802a02ebc44204c3cada` |
| 12 | `def` | [write](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/write--4e59b4928db3c614abc00e49.md) | 141 | `declaration-track:4e59b4928db3c614abc00e491c55e28e9e830ba8fd7ef15b34bebe096806ba0c` |
| 13 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/step--8c8ba58f7644f6f740901aab.md) | 146 | `declaration-track:8c8ba58f7644f6f740901aabc513cf84d7d907a932572d57b0d49e099d3f48d5` |
| 14 | `def` | [outcome](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/outcome--025b82d23d44ef635f1450e6.md) | 155 | `declaration-track:025b82d23d44ef635f1450e682c761c8bdc79200dc47d53a0ddc7850f12b9dff` |
| 15 | `theorem` | [outcome_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/outcome-append--5d8dccd571afb4c2c9dd39d5.md) | 162 | `result-track:5d8dccd571afb4c2c9dd39d511d87c60d695f1db14d3e9b5d5fd2955aa3e5757` |
| 16 | `def` | [loc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/loc--490b1eecaabb8bf65503dd18.md) | 180 | `declaration-track:490b1eecaabb8bf65503dd18c581801dbbb15bb829f449c677702eb1c8eeb94e` |
| 17 | `def` | [compile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/compile--83b3c4643f6c3512246e1a4a.md) | 189 | `declaration-track:83b3c4643f6c3512246e1a4a0041893b8826f5fce0488c31deaad40fe9d144d5` |
| 18 | `def` | [StateEqRs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqrs--5915815188df8ee93bf7a7fc.md) | 203 | `declaration-track:5915815188df8ee93bf7a7fcc932e5e58053b7192cef54ea846f267d4faf23d3` |
| 19 | `theorem` | [StateEqRs.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqrs-refl--5343431c50a55bf46fad1638.md) | 210 | `result-track:5343431c50a55bf46fad163854bdc98fb223360dfd95e9bcea4ae2bb722a6be9` |
| 20 | `theorem` | [StateEqRs.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqrs-symm--34eddee5a909bab735376f75.md) | 214 | `result-track:34eddee5a909bab735376f75bded638a5e3ddc87ecdcb0c7968e941b50a4f3cc` |
| 21 | `theorem` | [StateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqrs-trans--dde48a1208e09522256cac0a.md) | 220 | `result-track:dde48a1208e09522256cac0abbf302d117c1dbb032f08a26993fa92feae5f1bd` |
| 22 | `def` | [StateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeq--562af01237fb5beaefc9c537.md) | 226 | `declaration-track:562af01237fb5beaefc9c5379479deae356bf4a66ae4c1da18cf786adc83586a` |
| 23 | `theorem` | [StateEq.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeq-refl--02e10fd98e9b5578505bf0d7.md) | 233 | `result-track:02e10fd98e9b5578505bf0d7f344cecb0af3cc7c363d9ddd1dbc362fb2526d8c` |
| 24 | `theorem` | [StateEq.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeq-symm--855f1d578da5c74a04997907.md) | 237 | `result-track:855f1d578da5c74a04997907a419ea1a16f4aa2bea5b5edaa3ab6a7493f55b20` |
| 25 | `theorem` | [StateEq.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeq-trans--79006186d5e6749cdbc823e0.md) | 243 | `result-track:79006186d5e6749cdbc823e0807cfcc526462e507f3d1756e1e1f7baccadf3c3` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/instance--615727a351280ba1e66745cb.md) | 252 | `declaration-track:615727a351280ba1e66745cb30a72d5e436117ba0e0979ce898b19387cb44c8c` |
| 27 | `theorem` | [StateEqStateEqRs.trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqstateeqrs-trans--870a14585755db1c99de4af0.md) | 257 | `result-track:870a14585755db1c99de4af0c6d0c8b8d82d0b1007f25f06872e9460f91ed876` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/instance--f3e04e9510be69673dee5c32.md) | 264 | `declaration-track:f3e04e9510be69673dee5c32a3e6ab5d3d74fe1f1008e151d3c8413a0e08ee12` |
| 29 | `theorem` | [stateEq_implies_write_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeq-implies-write-eq--08405faa68bc19ba0e7d19de.md) | 268 | `result-track:08405faa68bc19ba0e7d19de33b1edfce5472ecd9bed31012a750aae867a8a91` |
| 30 | `theorem` | [stateEqRs_implies_write_eq_rs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/stateeqrs-implies-write-eq-rs--37c975b24269e3ba4480afe0.md) | 282 | `result-track:37c975b24269e3ba4480afe0e8935226d5d293eed03a9742ef12e99604774428` |
| 31 | `theorem` | [write_eq_implies_stateEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/write-eq-implies-stateeq--f868f865690544159815d828.md) | 291 | `result-track:f868f865690544159815d828bdab1a6e129e7676432df4b514213b7b59577a43` |
| 32 | `theorem` | [compiler_correctness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/compiler-correctness--481f67b3f0055bba2291e972.md) | 305 | `result-track:481f67b3f0055bba2291e972382eec2936409f42466938de16c8c68dee5e4c46` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Arithcc/Variant97c4efe245325dd2673d0db6811f7c73f2fd2598865b7314c987db73fda4248e.lean/declarations/example--f723ffd45c4085961da75e91.md) | 383 | `declaration-track:f723ffd45c4085961da75e917e8ced7a2d3c1ffe3a449f9ceb6d78b879a73395` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

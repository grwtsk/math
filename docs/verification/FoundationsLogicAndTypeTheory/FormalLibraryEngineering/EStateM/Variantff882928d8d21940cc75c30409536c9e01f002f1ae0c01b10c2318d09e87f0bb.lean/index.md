# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EStateM.Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5efeca92105822e4c8371dc1ec82212f521798bb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5efeca92105822e4c8371dc1ec82212f521798bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/map--282154104473ba784e1c5013.md) | 18 | `declaration-track:282154104473ba784e1c5013537df8f0903d60f155797302a2871b6fb1ec68dd` |
| 2 | `theorem` | [map_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/map-ok--a1f9907e510038b16b4ea825.md) | 23 | `result-track:a1f9907e510038b16b4ea825162bebc3e522ccc0b4f43f43b58f13ba0237f6b3` |
| 3 | `theorem` | [map_error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/map-error--228cc9e20366edb2ff7d5b60.md) | 26 | `result-track:228cc9e20366edb2ff7d5b606cf785338300d94c57a575b559d79b5ba30c44c7` |
| 4 | `theorem` | [map_eq_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/map-eq-ok--dfdc410fe1e55c524a2c1101.md) | 29 | `result-track:dfdc410fe1e55c524a2c1101c3746574494077d56e05a6d55449aba36cd30890` |
| 5 | `theorem` | [map_eq_error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/map-eq-error--38a93b73cd9d1638279c3989.md) | 33 | `result-track:38a93b73cd9d1638279c39897a247d2ed11e803aec88596c5551ad3dfc0d8fb0` |
| 6 | `theorem` | [dummySave_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/dummysave-apply--e1a03abe97140e0a2e4de28f.md) | 39 | `result-track:e1a03abe97140e0a2e4de28fa293a2e78e7f6c428d3eb2740eeba55d94c47e05` |
| 7 | `theorem` | [dummyRestore_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/dummyrestore-apply--4a5454493bda5334f3c69883.md) | 41 | `result-track:4a5454493bda5334f3c69883ec96de4f59d5ce42bf26fae8ea1f7091416866a1` |
| 8 | `theorem` | [run'_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-pure--ad77fbbe43f969389acc33ee.md) | 43 | `result-track:ad77fbbe43f969389acc33ee3784df94ee67428fe5deda1c752df25ec2bbe9f9` |
| 9 | `theorem` | [run'_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-bind--373e45fc10c1551fbc5d8191.md) | 46 | `result-track:373e45fc10c1551fbc5d8191a465a2e16ffe0fbc7494081d4dda1160ed295cf7` |
| 10 | `theorem` | [run_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-map--cb0ee2df23744bbdc6115261.md) | 53 | `result-track:cb0ee2df23744bbdc611526135fef9816cebb1c7df76e41bc3904cd140b9ba84` |
| 11 | `theorem` | [run'_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-map--37e96191d3e9ae9e13a50776.md) | 56 | `result-track:37e96191d3e9ae9e13a507763bf6a032273c075594ca675a33b6f0e96d70e1b1` |
| 12 | `theorem` | [run_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seq--0ed67383ac04147099dd1f3a.md) | 61 | `result-track:0ed67383ac04147099dd1f3a0c82a38194b619f843857c21305d14911647376e` |
| 13 | `theorem` | [run'_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seq--a98fb0c8e53784e3fb22cd29.md) | 68 | `result-track:a98fb0c8e53784e3fb22cd29ee005ef4dfb6f4104d128e39ecddb6d12cb0e19b` |
| 14 | `theorem` | [run_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seqleft--9fb23696f9b0679b0648500e.md) | 75 | `result-track:9fb23696f9b0679b0648500e36ee847c831ec47c7c72cc194c0f4382db57fa7b` |
| 15 | `theorem` | [run'_seqLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seqleft--5e63811940d2d28b7db62715.md) | 82 | `result-track:5e63811940d2d28b7db627150a793d8ea514da8fb8af218c09f6c8aa61472293` |
| 16 | `theorem` | [run_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seqright--df2afc74de44865d76709fc6.md) | 88 | `result-track:df2afc74de44865d76709fc6117eddd5a947e4fa0389e0c859aaedea0c7bb72e` |
| 17 | `theorem` | [run'_seqRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-seqright--0bd4e5f9d5ddbb2553e9646d.md) | 93 | `result-track:0bd4e5f9d5ddbb2553e9646d767df1f41d32a22ecae4ecb546ef81da24f9c4c7` |
| 18 | `theorem` | [run'_get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-get--2690f40d4683bdd1ef2b6165.md) | 100 | `result-track:2690f40d4683bdd1ef2b61652aba5a587123e692c34c833312f767ee0ffcaeb5` |
| 19 | `theorem` | [run'_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-set--d9d304e2e9b620788b357700.md) | 103 | `result-track:d9d304e2e9b620788b357700ea1d07449f726e9367487c799e6bc5d69125eaf4` |
| 20 | `theorem` | [run'_modify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-modify--9bea584f08f899e11aaa4530.md) | 106 | `result-track:9bea584f08f899e11aaa45303abd03386e7da00e59648fef6637d8ca6c347485` |
| 21 | `theorem` | [run'_modifyGet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-modifyget--ebb131f71b6b6d6660bde436.md) | 109 | `result-track:ebb131f71b6b6d6660bde43657457ad6119e1218f76f5a88b85b581598a39542` |
| 22 | `theorem` | [run_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-getmodify--447c43f70fd2713013c24141.md) | 112 | `result-track:447c43f70fd2713013c24141eac808080a442aac38fcb1d68598b775b46dda16` |
| 23 | `theorem` | [run'_getModify](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-getmodify--73079ae0b6d221dca6c0df47.md) | 115 | `result-track:73079ae0b6d221dca6c0df47b21ac3f827e9cc0bc743b661ed5db459b5693c05` |
| 24 | `theorem` | [run'_throw](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-throw--cfb821ef03559616bc415d38.md) | 118 | `result-track:cfb821ef03559616bc415d3891508f1cd136a3254f4189edd2af12dafd3dd9bb` |
| 25 | `theorem` | [run_orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-orelse--940859dee2be4b0ed147009d.md) | 121 | `result-track:940859dee2be4b0ed147009dd9f62d1d981f4e4d8d9687579131b86e97b0ae85` |
| 26 | `theorem` | [run'_orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-orelse--8b49d29cdb8edc537c82eebe.md) | 130 | `result-track:8b49d29cdb8edc537c82eebe5b473887d6bac7f794e082d8bcb07037dcf1f8d7` |
| 27 | `theorem` | [run_tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-trycatch--b1592202caf6651d54d44beb.md) | 137 | `result-track:b1592202caf6651d54d44beb463df60e752fbc14d9e29cc48f5c164511139889` |
| 28 | `theorem` | [run'_tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-trycatch--92fa699e5dbc4046e19c3626.md) | 147 | `result-track:92fa699e5dbc4046e19c36265781229538a5277240b29c14ab5438f81f94d9a5` |
| 29 | `theorem` | [run'_adaptExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-adaptexcept--135185600f41739e35a5d5ab.md) | 155 | `result-track:135185600f41739e35a5d5ab36c931e5000d3bc1490ac953edb724aafed09a25` |
| 30 | `theorem` | [run_tryFinally'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-tryfinally--b7aa54fd3b659a6da12f6e71.md) | 160 | `result-track:b7aa54fd3b659a6da12f6e71f1db34ca20b163fb42408ca82c19cc910566a9ad` |
| 31 | `theorem` | [run'_tryFinally'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-tryfinally--aa0a5a798d9233854291d11d.md) | 169 | `result-track:aa0a5a798d9233854291d11d3c6c368fb8de41510dbc3c587a3eb7f857002e8e` |
| 32 | `theorem` | [run_fromStateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-fromstatem--71840386f3704f611e7c4042.md) | 179 | `result-track:71840386f3704f611e7c4042ccfd1a5b53fe0a29691281d58a9bf6765e4803ea` |
| 33 | `theorem` | [run'_fromStateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/run-fromstatem--9bd826ad0a12ba5581095f00.md) | 183 | `result-track:9bd826ad0a12ba5581095f00711eefec40cdf83e37ed741ba227bb0dc5c59652` |
| 34 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateM/Variantff882928d8d21940cc75c30409536c9e01f002f1ae0c01b10c2318d09e87f0bb.lean/declarations/ext--4c7f572a20b335fdb9f1a768.md) | 186 | `result-track:4c7f572a20b335fdb9f1a768324ded8d366e5ea65d129d4360e9555931a86783` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

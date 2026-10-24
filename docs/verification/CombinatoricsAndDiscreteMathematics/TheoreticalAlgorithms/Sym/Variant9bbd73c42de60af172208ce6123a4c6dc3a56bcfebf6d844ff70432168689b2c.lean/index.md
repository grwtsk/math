# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sym.Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d89879815d5c64a01e53258b5980df628c8da158",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d89879815d5c64a01e53258b5980df628c8da158`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Sym2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym2--a10f66295451b0a17aca0939.md) | 44 | `declaration-track:a10f66295451b0a17aca0939eee5af7369711decda50a928c3b5dc14422cdba4` |
| 2 | `theorem` | [sym2_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym2-map--0e21004fa88fd34315d4a684.md) | 48 | `result-track:0e21004fa88fd34315d4a68437cbfc49d470ec5a6c01b262d35245f27e5a7682` |
| 3 | `theorem` | [mem_sym2_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/mem-sym2-cons-iff--cf944c18f715835771f2145a.md) | 54 | `result-track:cf944c18f715835771f2145a8aeb46d3be6a56557b9b5c40be207767190674b0` |
| 4 | `theorem` | [sym2_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym2-eq-nil-iff--fbe9329672933da5b49529fe.md) | 60 | `result-track:fbe9329672933da5b49529fede6fd5a1207aa518fdaaa76f87efa21b87f8ebe7` |
| 5 | `theorem` | [left_mem_of_mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/left-mem-of-mk-mem-sym2--8a8a8d272913578ced4ee5da.md) | 63 | `result-track:8a8a8d272913578ced4ee5da958f23caaf65d153d7593726b44381867c2c62a3` |
| 6 | `theorem` | [right_mem_of_mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/right-mem-of-mk-mem-sym2--30e95cb9656f157a0f3c83d6.md) | 77 | `result-track:30e95cb9656f157a0f3c83d6eca4774a5342ee7e863eedd7367bb206fcd7cb09` |
| 7 | `theorem` | [mk_mem_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/mk-mem-sym2--329dd3a94412d7b47b5e09b4.md) | 82 | `result-track:329dd3a94412d7b47b5e09b4a36c1ea2536b363574ad706ab8242b59d7c95a23` |
| 8 | `theorem` | [mk_mem_sym2_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/mk-mem-sym2-iff--bc0a7b238d0f5a2a2116af56.md) | 95 | `result-track:bc0a7b238d0f5a2a2116af56abd090f53339fda14963bc2c1e2fa405edb9be5a` |
| 9 | `theorem` | [mem_sym2_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/mem-sym2-iff--dbf68ee778ae6eed29a60015.md) | 103 | `result-track:dbf68ee778ae6eed29a6001506821a43d0667782af21616f966744cef0bf505c` |
| 10 | `theorem` | [Nodup.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/nodup-sym2--59e5eaafec7f5f036bce37ab.md) | 108 | `result-track:59e5eaafec7f5f036bce37abc79bf9f1821d60d09de7c563a3e3e0f2a8a9e96b` |
| 11 | `theorem` | [map_mk_sublist_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/map-mk-sublist-sym2--e1d3aa36e106ff6f6d62f5b2.md) | 129 | `result-track:e1d3aa36e106ff6f6d62f5b28ad0222358883539f3c570973ddaeeebe5b98476` |
| 12 | `theorem` | [map_mk_disjoint_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/map-mk-disjoint-sym2--5d4c0d3d3ed6dfbe9af416ef.md) | 145 | `result-track:5d4c0d3d3ed6dfbe9af416ef68c1b8c5155209b8523feb8315e3d5854b8f319c` |
| 13 | `theorem` | [dedup_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/dedup-sym2--b32cde1d72cfd155ef097f25.md) | 173 | `result-track:b32cde1d72cfd155ef097f2560047db99aa03e2a95719676690d6a9de2fca765` |
| 14 | `theorem` | [Perm.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/perm-sym2--bf5eb3fb1e2276479f0969de.md) | 190 | `result-track:bf5eb3fb1e2276479f0969de115019154342d180ea9755ea507bc6ac799fc16c` |
| 15 | `theorem` | [Sublist.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sublist-sym2--370a8856475c1a08ceadc71f.md) | 207 | `result-track:370a8856475c1a08ceadc71ff6eb813add32ea39d2a38f325404b8ca3a836d1a` |
| 16 | `theorem` | [Subperm.sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/subperm-sym2--e273b2205453c8b0e71ff897.md) | 217 | `result-track:e273b2205453c8b0e71ff8977fb298d98f9fc5f683ecabdf97bfe1275b2bf433` |
| 17 | `theorem` | [length_sym2](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/length-sym2--1b0c78351b32958d5cd2757e.md) | 221 | `result-track:1b0c78351b32958d5cd2757e4570aa658c909f1ac37ec93a9227884c0c43a112` |
| 18 | `def` | [sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym--bfd682375b279ba9c8dbc00d.md) | 233 | `declaration-track:bfd682375b279ba9c8dbc00d9cec74fc40895ad6a19b343969d8041e7cfc6920` |
| 19 | `theorem` | [sym_one_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym-one-eq--766530180da2c9406b59aab8.md) | 240 | `result-track:766530180da2c9406b59aab8525756f556008c02387b01309f5abcf3290f641a` |
| 20 | `theorem` | [sym2_eq_sym_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym2-eq-sym-two--a1dc4a17d96c5157983ae26b.md) | 246 | `result-track:a1dc4a17d96c5157983ae26bf9e46b94bddcb97e05625b7f919e035969c47a7a` |
| 21 | `theorem` | [sym_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym-map--47179847721a84b4baed94b4.md) | 253 | `result-track:47179847721a84b4baed94b46d152ba604e385210f7a133f8d193c193f959323` |
| 22 | `theorem` | [Sublist.sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sublist-sym--873520e7501dd96ca780501a.md) | 265 | `result-track:873520e7501dd96ca780501a356eca873db0fa758b22a9a3fce21ba7cdcd813f` |
| 23 | `theorem` | [sym_sublist_sym_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/sym-sublist-sym-cons--6aa1e00bace049b3a64190ae.md) | 279 | `result-track:6aa1e00bace049b3a64190ae390d19df5c67773738c64a2bc3ca6323eaea6f9e` |
| 24 | `theorem` | [mem_of_mem_of_mem_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/mem-of-mem-of-mem-sym--af3005c4d28012cd3fe3841e.md) | 282 | `result-track:af3005c4d28012cd3fe3841eb2231c50b2036fb550d4f9f43b909662c1e22454` |
| 25 | `theorem` | [first_mem_of_cons_mem_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/first-mem-of-cons-mem-sym--dddaabc02286163d5dc72083.md) | 300 | `result-track:dddaabc02286163d5dc72083f01f39985695cd3e17cd7446d21267a747e0c567` |
| 26 | `theorem` | [Nodup.sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/nodup-sym--b2b3ecb9cd9257666171a363.md) | 304 | `result-track:b2b3ecb9cd9257666171a3630c9b98029493d0132a8d7fa06878de1b4b5192dc` |
| 27 | `theorem` | [length_sym](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sym/Variant9bbd73c42de60af172208ce6123a4c6dc3a56bcfebf6d844ff70432168689b2c.lean/declarations/length-sym--2125305692672850763219e4.md) | 321 | `result-track:2125305692672850763219e439f7cb7dab4b6bfe600c48d134a1a376ae21b0f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

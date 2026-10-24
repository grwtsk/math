# Verification target: GRWTSK.Algebra.EqCnstr.Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f88872c0e0fc1b6f09167e064498454595d5795",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/index.md) · [Full source](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f88872c0e0fc1b6f09167e064498454595d5795`.

Source path: `GRWTSK/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Diseq` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Proof` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Inv` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inSameRing?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/insamering--0db80fdff6490262d48b750f.md) | 27 | `declaration-track:0db80fdff6490262d48b750f3b5ee3ba78941838816d3963c3bf6a66c103e154` |
| 2 | `def` | [inSameSemiring?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/insamesemiring--0579b7fb57bf79d2ac57a2ff.md) | 34 | `declaration-track:0579b7fb57bf79d2ac57a2ffe27b35ed835446326c1c09a5bc696a5e66f74f4b` |
| 3 | `def` | [inSameNonCommRing?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/insamenoncommring--7acaca2357f8fc0c538722da.md) | 41 | `declaration-track:7acaca2357f8fc0c538722dab46ec1bdf29477f5c6b0c30d6f85115aa6b76936` |
| 4 | `def` | [inSameNonCommSemiring?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/insamenoncommsemiring--589fc0f2d24150271cfbb8a7.md) | 48 | `declaration-track:589fc0f2d24150271cfbb8a7c1ddcadcada455d7ca51ab03d2adf989ef69bbc4` |
| 5 | `def` | [mkEqCnstr](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/mkeqcnstr--87dabf35c8cec35132b70fd0.md) | 54 | `declaration-track:87dabf35c8cec35132b70fd05a9dd8da64366ed24636d3e4984acb2e8a9ac4f5` |
| 6 | `def` | [toRingExpr?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/toringexpr--34899666d49799ec94c7fb31.md) | 64 | `declaration-track:34899666d49799ec94c7fb31734243a580f7abcd7bfbc40394ab76237eeacd7e` |
| 7 | `def` | [toSemiringExpr?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/tosemiringexpr--5c0157ea6c0453173e9d397d.md) | 78 | `declaration-track:5c0157ea6c0453173e9d397d7d29cd1f6d921a7fa7d4c922b33261d4753ba544` |
| 8 | `def` | [_root_.GRWTSK.Algebra.InSameRing.Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.Lean.Grind.CommRing.Mon.findSimp?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/root-grwtsk-algebra-insamering-variant93f574b4989880851a22098c133a407b70--b5319408301512400490740e.md) | 96 | `declaration-track:b5319408301512400490740e93f0dc974cb71bccc75bc844bb8a4645594c417b` |
| 9 | `def` | [_root_.GRWTSK.Algebra.InSameRing.Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.Lean.Grind.CommRing.Poly.findSimp?](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/root-grwtsk-algebra-insamering-variant93f574b4989880851a22098c133a407b70--a72765ea1aa73966ed7411a5.md) | 109 | `declaration-track:a72765ea1aa73966ed7411a5e77899c634d15928870833b3ba414de926c83ad5` |
| 10 | `def` | [PolyDerivation.simplifyWith](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/polyderivation-simplifywith--c9778376a5a54c5029387248.md) | 118 | `declaration-track:c9778376a5a54c5029387248c16500ace2c57669b2c1066be525b9f44f231d96` |
| 11 | `def` | [PolyDerivation.simplifyNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/polyderivation-simplifynumeq0--eccad01a8886892851e30885.md) | 124 | `declaration-track:eccad01a8886892851e308856f3de9bb813be786a013b0ee0d668851c9932cb7` |
| 12 | `def` | [PolyDerivation.simplify](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/polyderivation-simplify--53d46939b4d53025a01e4bb7.md) | 130 | `declaration-track:53d46939b4d53025a01e4bb75f29edfde44e2a3cbc19cdf500b7e66abb593361` |
| 13 | `def` | [EqCnstr.simplifyWithCore](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifywithcore--b572c0e63452810cdff1f70c.md) | 142 | `declaration-track:b572c0e63452810cdff1f70cae804c20006c3bc2e8a930d18582c7ec92e83498` |
| 14 | `def` | [EqCnstr.simplifyWith](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifywith--45600a32e397b3940c1c4a60.md) | 153 | `declaration-track:45600a32e397b3940c1c4a607082376cbfe917fd97f4fa3c845177789df4dd88` |
| 15 | `def` | [EqCnstr.simplifyWithExhaustively](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifywithexhaustively--5a1aceb083f835579b84367e.md) | 158 | `declaration-track:5a1aceb083f835579b84367e09ce77465f9b1a0b2187bcb3918c5c47db825f2e` |
| 16 | `def` | [EqCnstr.simplifyUsingNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifyusingnumeq0--13b63339c00af59caba6f34f.md) | 162 | `declaration-track:13b63339c00af59caba6f34fb5aa3037a0f33e7843b2ecbd93131d549a8bceb5` |
| 17 | `def` | [EqCnstr.simplify](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplify--e38f8f2c24b3edf2e964aee7.md) | 190 | `declaration-track:e38f8f2c24b3edf2e964aee76011d5fe1e8abe66eca07fd6b6f8bb8ead55a2e2` |
| 18 | `def` | [EqCnstr.checkConstant](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-checkconstant--eb1aad55c5adbce27ce133cd.md) | 202 | `declaration-track:eb1aad55c5adbce27ce133cd640d178909b5bb072187a87be0b5ddfa98c9acf3` |
| 19 | `def` | [EqCnstr.simplifyAndCheck](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifyandcheck--23c15ddc1857cc2d96d4b845.md) | 237 | `declaration-track:23c15ddc1857cc2d96d4b84510ba8a1588f7629c2ac93b0460af0448c449c4a9` |
| 20 | `def` | [addSorted](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/addsorted--a217965a543fdf0e3a38605c.md) | 244 | `declaration-track:a217965a543fdf0e3a38605c3014c4b4f448387424dece7be9160b0574ea4ae2` |
| 21 | `def` | [addToBasisCore](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/addtobasiscore--779fdc98c6dcf356e619d8bb.md) | 252 | `declaration-track:779fdc98c6dcf356e619d8bbb6c6f92d2cc0955625907709dcf5314634ed5d72` |
| 22 | `def` | [EqCnstr.addToQueue](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-addtoqueue--6c34829f60cc7dd35b78cbe9.md) | 259 | `declaration-track:6c34829f60cc7dd35b78cbe9c0baa0f8b95ec2a0938ab018c8780cda5226d946` |
| 23 | `def` | [EqCnstr.superposeWith](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-superposewith--fe1643f6b40fe0427af08557.md) | 271 | `declaration-track:fe1643f6b40fe0427af08557dd983e83c22713b4d109257b96d34d19b6bfe925` |
| 24 | `def` | [EqCnstr.toMonic](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-tomonic--40b1f82b85f1b8651f844a82.md) | 293 | `declaration-track:40b1f82b85f1b8651f844a82d40336b66e012bb7ae12345c641e61dc789a3588` |
| 25 | `def` | [EqCnstr.simplifyBasis](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-simplifybasis--6514ea26e9cfe78784f940cf.md) | 318 | `declaration-track:6514ea26e9cfe78784f940cfc14f15a49f2b60102c73c64486ce8b34d754c0f2` |
| 26 | `def` | [EqCnstr.addToBasisAfterSimp](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-addtobasisaftersimp--767bcc232633c9714f0aa1ac.md) | 348 | `declaration-track:767bcc232633c9714f0aa1acd700d19c1e6175904ab2c0861472528797457e2b` |
| 27 | `def` | [checkNumEq0Updated](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/checknumeq0updated--346cc7c335e5b3138b2af6a8.md) | 355 | `declaration-track:346cc7c335e5b3138b2af6a8d5e158c03a1305ea0af9e33268f92d740bbf66b5` |
| 28 | `def` | [withCheckingNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/withcheckingnumeq0--2c5538a06a2acc75911753e3.md) | 363 | `declaration-track:2c5538a06a2acc75911753e3fb711240509fc38c23c5ac2e07fd2c6703195666` |
| 29 | `def` | [EqCnstr.addToBasis](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/eqcnstr-addtobasis--68c93b33a7c4ab7337746552.md) | 369 | `declaration-track:68c93b33a7c4ab73377465527efc79c6078ecbf2484042fd5bc6a529546eb510` |
| 30 | `def` | [addNewEq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/addneweq--094ff1fc3aac6722a023ba81.md) | 375 | `declaration-track:094ff1fc3aac6722a023ba81fc1f105239d7396240a26e87c38256baa9c6d157` |
| 31 | `def` | [DiseqCnstr.checkConstant](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/diseqcnstr-checkconstant--295f969aa7fc397e62a94395.md) | 384 | `declaration-track:295f969aa7fc397e62a94395a93f7d43189de9fb1093636950bdf208ce26921d` |
| 32 | `def` | [DiseqCnstr.simplify](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/diseqcnstr-simplify--88f401397edc87c28253c53b.md) | 392 | `declaration-track:88f401397edc87c28253c53b2b7228a7839caa6250267f972245339f0fbf3ca2` |
| 33 | `def` | [saveDiseq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/savediseq--ad9882873e76ce0cc0592a89.md) | 397 | `declaration-track:ad9882873e76ce0cc0592a89a756b064afad75ee2cfd0ab58e22c9b2ab6f6c87` |
| 34 | `def` | [addNewDiseq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/addnewdiseq--c56e7372cffe534f8a384ba8.md) | 401 | `declaration-track:c56e7372cffe534f8a384ba8a85682e73d34cde4e0cada86878db48dcc7a3c13` |
| 35 | `def` | [processNewEq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processneweq--225d7e153090a274b1db3d91.md) | 408 | `declaration-track:225d7e153090a274b1db3d91a1a9997d2cd9c8ce23f08a3dc324fee64713ae30` |
| 36 | `def` | [pre](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/pre--5f462a0401bff8003f50f234.md) | 428 | `declaration-track:5f462a0401bff8003f50f234ca548f7d493f77363657f50e233bf55ff5f1a7f7` |
| 37 | `def` | [diseqToEq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/diseqtoeq--850419c09a6a5ca8a32ffda0.md) | 433 | `declaration-track:850419c09a6a5ca8a32ffda0ddbd72a43bf5d5c82fb80f9d530bb2f340b6b981` |
| 38 | `def` | [diseqZeroToEq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/diseqzerotoeq--e1cc45f08ed0e8cca1ca2673.md) | 446 | `declaration-track:e1cc45f08ed0e8cca1ca2673f75e0e539fe6b425bf2a2d164a297f4d54c8bbc1` |
| 39 | `def` | [processNewDiseqCommRing](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processnewdiseqcommring--5beb23837cea8491d32905e9.md) | 458 | `declaration-track:5beb23837cea8491d32905e9b4689154c99e8f5690dded6e8b0840f4292ad9f1` |
| 40 | `def` | [processNewDiseqCommSemiring](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processnewdiseqcommsemiring--768391951c7d6b3975db4620.md) | 477 | `declaration-track:768391951c7d6b3975db46205b6b5804e793fb0cbd0a172fe122b4371b4d35b6` |
| 41 | `def` | [processNewDiseqNonCommRing](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processnewdiseqnoncommring--9fbd52194c752de4b7988a03.md) | 502 | `declaration-track:9fbd52194c752de4b7988a0302722ff3a2c9310125fbea4b04e771a7bbc35ec9` |
| 42 | `def` | [processNewDiseqNonCommSemiring](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processnewdiseqnoncommsemiring--0a6f8d58a461adc2dba5f662.md) | 512 | `declaration-track:0a6f8d58a461adc2dba5f6622680c9724bb031151a1e5e696af3480dffd3eded` |
| 43 | `def` | [processNewDiseq](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/processnewdiseq--bb927669bf900ae6e55e868e.md) | 518 | `declaration-track:bb927669bf900ae6e55e868ef3445f58b587b823e185668ab1285e040f656dce` |
| 44 | `def` | [needCheck](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/needcheck--2968c29c9f592eeb6be48514.md) | 531 | `declaration-track:2968c29c9f592eeb6be485143572ee1a7feb3d3465f372d2efe04802b3704129` |
| 45 | `def` | [checkDiseqs](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/checkdiseqs--552a291df9331620d0238c94.md) | 535 | `declaration-track:552a291df9331620d0238c94e0f0b9de53cb7a7e4432b42e6ec39acc7c67dfde` |
| 46 | `abbrev` | [PropagateEqMap](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/propagateeqmap--701cba2e679ca34193cfd0f5.md) | 543 | `declaration-track:701cba2e679ca34193cfd0f5ceaa0d1c8088ee1aa878c4f9f5b4c4a3a94d53d4` |
| 47 | `def` | [propagateEqs](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/propagateeqs--9c5d045526715ac00a728144.md) | 548 | `declaration-track:9c5d045526715ac00a728144b6e9fd631cb7e203366ea6e42d0a62eb7f6db3db` |
| 48 | `def` | [checkRing](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/checkring--0e722568381bcc40d96a8750.md) | 597 | `declaration-track:0e722568381bcc40d96a87504988228d442535fdf50ae3d93dc8657721077859` |
| 49 | `def` | [check](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/check--2326c957bd943563b2143a01.md) | 612 | `declaration-track:2326c957bd943563b2143a01fa1b23a68301ccb5553a3ef18ca993d899ecb93c` |
| 50 | `def` | [check'](../../../../mathematics/Algebra/EqCnstr/Variant03984db1c0ca370074b8c94eeb6f89df570fae6788adf8d9cb451abdcea3fdb0.lean/declarations/check--bb4f9727ecc1c03720d551f4.md) | 626 | `declaration-track:bb4f9727ecc1c03720d551f42bdc32077a7746e4d510abc95f3479b6a2fd5e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

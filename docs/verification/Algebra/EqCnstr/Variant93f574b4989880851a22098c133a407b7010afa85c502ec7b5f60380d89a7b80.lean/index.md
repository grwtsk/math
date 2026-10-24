# Verification target: GRWTSK.Algebra.EqCnstr.Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6df59ab70f234b8c96a98a7ada30873af94abf44",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/index.md) · [Full source](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6df59ab70f234b8c96a98a7ada30873af94abf44`.

Source path: `GRWTSK/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Diseq` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Proof` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Inv` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.SafePoly` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inSameRing?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/insamering--c062e3e5880d6608a0bffdc5.md) | 19 | `declaration-track:c062e3e5880d6608a0bffdc5d6a551ed81f7e2d3dfeb3687f53217c855da6fe5` |
| 2 | `def` | [inSameSemiring?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/insamesemiring--4f5acadd11f4e7fec538c7f1.md) | 26 | `declaration-track:4f5acadd11f4e7fec538c7f1c6e46fdcdce85f75df12bf431632af5cdbabf6c6` |
| 3 | `def` | [inSameNonCommRing?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/insamenoncommring--b0d3b888aeef5b41dd0952c3.md) | 33 | `declaration-track:b0d3b888aeef5b41dd0952c3ac5dfe19f22382aedd6a96d7ec3ada1b6be2f6ba` |
| 4 | `def` | [inSameNonCommSemiring?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/insamenoncommsemiring--25e173a0424fdc1d453eb3c2.md) | 40 | `declaration-track:25e173a0424fdc1d453eb3c23307c2bf2c018d5cd5ea8ea78c675b1c142d7340` |
| 5 | `def` | [mkEqCnstr](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/mkeqcnstr--0a2d40fd7df3934e7df80924.md) | 46 | `declaration-track:0a2d40fd7df3934e7df80924543d4c0de2fed6808d76fe5c4842af192bb7ab02` |
| 6 | `def` | [toRingExpr?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/toringexpr--4b24368e8fac3b9c422046ef.md) | 56 | `declaration-track:4b24368e8fac3b9c422046efae1b9fecc04a967d0d57f4fa9c04b2f62be97861` |
| 7 | `def` | [toSemiringExpr?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/tosemiringexpr--e2e895f8af7a372f1159e926.md) | 70 | `declaration-track:e2e895f8af7a372f1159e9264faafde3876e1c36fbe1a65b2609f0dc0006ee59` |
| 8 | `def` | [_root_.Lean.Grind.CommRing.Mon.findSimp?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/root-lean-grind-commring-mon-findsimp--be0589f9ff9f12a00ee45070.md) | 88 | `declaration-track:be0589f9ff9f12a00ee45070dcb3fae5beeb8eaf43e42e17cf80c163e2814667` |
| 9 | `def` | [_root_.Lean.Grind.CommRing.Poly.findSimp?](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/root-lean-grind-commring-poly-findsimp--b8712896d70691c4e965ee03.md) | 101 | `declaration-track:b8712896d70691c4e965ee032453f5db5bc50e0afaec7380fc0236e3c57f8e92` |
| 10 | `def` | [PolyDerivation.simplifyWith](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/polyderivation-simplifywith--80b31d58b47d742332ebe3e5.md) | 110 | `declaration-track:80b31d58b47d742332ebe3e58e23af125b5423943fef3418408428e7b3264bb7` |
| 11 | `def` | [PolyDerivation.simplifyNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/polyderivation-simplifynumeq0--d5a6c476c41c059f8d33f2be.md) | 116 | `declaration-track:d5a6c476c41c059f8d33f2bee3ad7073904a4c58b83d9dc49d6e71a945072f6a` |
| 12 | `def` | [PolyDerivation.simplify](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/polyderivation-simplify--5ea3871ac77a2045492c4536.md) | 122 | `declaration-track:5ea3871ac77a2045492c4536c36577525915a4e40ba519f8ed0882e6b1552041` |
| 13 | `def` | [EqCnstr.simplifyWithCore](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifywithcore--530168ba517bba0f113f6397.md) | 134 | `declaration-track:530168ba517bba0f113f63975f69a0b5e5435a98d168bcc911be230a848a0f36` |
| 14 | `def` | [EqCnstr.simplifyWith](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifywith--33e4eb1aceda5e967ef4cffa.md) | 145 | `declaration-track:33e4eb1aceda5e967ef4cffa783ef467e698c978e8ae215894609857598feb0e` |
| 15 | `def` | [EqCnstr.simplifyWithExhaustively](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifywithexhaustively--2e96bb2d2ae0a726b533f8f3.md) | 150 | `declaration-track:2e96bb2d2ae0a726b533f8f3c124856e8771bbd1ee9f16b8ec7412316a897b38` |
| 16 | `def` | [EqCnstr.simplifyUsingNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifyusingnumeq0--a0bd32cf0a98e0a451983317.md) | 154 | `declaration-track:a0bd32cf0a98e0a451983317e35839787ff57e4864037da83c9a5ae93006e44f` |
| 17 | `def` | [EqCnstr.simplify](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplify--e8c7da66f0f493371f3bde9f.md) | 182 | `declaration-track:e8c7da66f0f493371f3bde9f19a5dc5efb993084fa85716efac3280775d92ef1` |
| 18 | `def` | [EqCnstr.checkConstant](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-checkconstant--e1ebf50b72fdb5e4a557253b.md) | 194 | `declaration-track:e1ebf50b72fdb5e4a557253bab9355f774400b7a5f2e3419f2ad9a34e4014f01` |
| 19 | `def` | [EqCnstr.simplifyAndCheck](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifyandcheck--7a5618197998831f195b1674.md) | 229 | `declaration-track:7a5618197998831f195b167451b9c36b4291c5a3a88aa63b711f05f167f27643` |
| 20 | `def` | [addSorted](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/addsorted--469ba6bf291287330651ed40.md) | 236 | `declaration-track:469ba6bf291287330651ed40c751f1fc4df24716c1a336bc123194a0d019d7f2` |
| 21 | `def` | [addToBasisCore](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/addtobasiscore--3f0d4434f83465ce6289ceaf.md) | 244 | `declaration-track:3f0d4434f83465ce6289ceafa1ec24ef12fedb0a2abdbca7c7ac0b57f4b43af5` |
| 22 | `def` | [EqCnstr.addToQueue](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-addtoqueue--81c25c6ae1e0f8283f759228.md) | 251 | `declaration-track:81c25c6ae1e0f8283f7592280f6893c9f00a4dca9975107cfce9d30228aaee91` |
| 23 | `def` | [EqCnstr.superposeWith](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-superposewith--96bb4e4f723834aa917b6c43.md) | 263 | `declaration-track:96bb4e4f723834aa917b6c43de6e5035d47f1860766463a7f8a2510656e1c72d` |
| 24 | `def` | [EqCnstr.toMonic](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-tomonic--8f69d84d1b23b613a8949d70.md) | 285 | `declaration-track:8f69d84d1b23b613a8949d7065f1e7e3af4d42de1558b734dfc0afa780e5c368` |
| 25 | `def` | [EqCnstr.simplifyBasis](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-simplifybasis--e321946106666f9d311794f7.md) | 310 | `declaration-track:e321946106666f9d311794f7426b66278342710c38ac9cf304f68c3595485cbf` |
| 26 | `def` | [EqCnstr.addToBasisAfterSimp](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-addtobasisaftersimp--093c1e7c26f3ae0261901e57.md) | 340 | `declaration-track:093c1e7c26f3ae0261901e576c2089c56e233e51000d85ee31807071eb570b32` |
| 27 | `def` | [checkNumEq0Updated](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/checknumeq0updated--f2f124b454d094c4f012e443.md) | 347 | `declaration-track:f2f124b454d094c4f012e443fcf96c24c7f6a01e6ce2797d6892b1714290cc04` |
| 28 | `def` | [withCheckingNumEq0](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/withcheckingnumeq0--235b14fa48177dd730d135f6.md) | 355 | `declaration-track:235b14fa48177dd730d135f69d0d79509f4123429be21b985571f372cd22ec8e` |
| 29 | `def` | [EqCnstr.addToBasis](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/eqcnstr-addtobasis--139d8a14ca96aa27fef7a8b8.md) | 361 | `declaration-track:139d8a14ca96aa27fef7a8b8382d0276468776dad72b271a27ff78d9f1b4a7ef` |
| 30 | `def` | [addNewEq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/addneweq--f9fe2c78c0e4ea5301fbc304.md) | 367 | `declaration-track:f9fe2c78c0e4ea5301fbc304a1d2046f21eea7a32c9b656481e5729e7069452d` |
| 31 | `def` | [DiseqCnstr.checkConstant](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/diseqcnstr-checkconstant--8f08dae6766ae84abdf0d9c4.md) | 376 | `declaration-track:8f08dae6766ae84abdf0d9c4d460b8d2f3242e044a4646356a37cf1f412408ef` |
| 32 | `def` | [DiseqCnstr.simplify](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/diseqcnstr-simplify--59789399c3ad2bb10439e61a.md) | 384 | `declaration-track:59789399c3ad2bb10439e61a00a6683c7af89ea83eb390a19e8643bfe823c4a5` |
| 33 | `def` | [saveDiseq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/savediseq--1072feb967417ab104f460d3.md) | 389 | `declaration-track:1072feb967417ab104f460d33e429688fca13a45407387cffa73de6fed851b6a` |
| 34 | `def` | [addNewDiseq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/addnewdiseq--5daa0ce86dab8f2ee3ee99be.md) | 393 | `declaration-track:5daa0ce86dab8f2ee3ee99be00e21619c072f804bd0e304200cb233db2057287` |
| 35 | `def` | [processNewEq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processneweq--5ef01e8d6ad70f97ce43cf6d.md) | 400 | `declaration-track:5ef01e8d6ad70f97ce43cf6de3b151e9860f08c46902ce85132bbd6e432869fd` |
| 36 | `def` | [pre](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/pre--bb3d78e68c888bbd1c16c42e.md) | 420 | `declaration-track:bb3d78e68c888bbd1c16c42ef035e7e639c118284977e168402b2445faf0f8dc` |
| 37 | `def` | [diseqToEq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/diseqtoeq--962b7db65dd8bc1725cbe3e0.md) | 425 | `declaration-track:962b7db65dd8bc1725cbe3e068fcb091cbc530467e5e33b78c1fe8e2c3f3fe5a` |
| 38 | `def` | [diseqZeroToEq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/diseqzerotoeq--001d54d9cf61f5a7c336e2ea.md) | 438 | `declaration-track:001d54d9cf61f5a7c336e2ea59423a91455bb3eca05e066d13567c35d5ad64d1` |
| 39 | `def` | [processNewDiseqCommRing](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processnewdiseqcommring--5fa588848df470de9efdcd88.md) | 450 | `declaration-track:5fa588848df470de9efdcd88b3e20ad5186f0e623adf55811840d5f43eefb8cf` |
| 40 | `def` | [processNewDiseqCommSemiring](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processnewdiseqcommsemiring--4235f0c6a34edc273501f313.md) | 469 | `declaration-track:4235f0c6a34edc273501f313e17a36a3372cf8116e213cff8b437806f0e52703` |
| 41 | `def` | [processNewDiseqNonCommRing](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processnewdiseqnoncommring--7cfbc43c2e16d7005f4b32c8.md) | 494 | `declaration-track:7cfbc43c2e16d7005f4b32c8c5899c77147e367a9b8846edddd1e9e677346b39` |
| 42 | `def` | [processNewDiseqNonCommSemiring](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processnewdiseqnoncommsemiring--ccc153a8ba3c8f85ca143c88.md) | 504 | `declaration-track:ccc153a8ba3c8f85ca143c880ec5b4096a46029ef19766809cae0240671f5be9` |
| 43 | `def` | [processNewDiseq](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/processnewdiseq--1b25f14f77dba82cc8ef4525.md) | 510 | `declaration-track:1b25f14f77dba82cc8ef45251ad0c9b6e5f1a20c22766c56a032e4970f7fb402` |
| 44 | `def` | [needCheck](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/needcheck--c6b77e1c80a75a20eca21d97.md) | 523 | `declaration-track:c6b77e1c80a75a20eca21d97da0a125c16798668ea0e276401a17342501a76f6` |
| 45 | `def` | [checkDiseqs](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/checkdiseqs--54b07bf7f1100fb9f7dac99a.md) | 527 | `declaration-track:54b07bf7f1100fb9f7dac99a27ddb8394c2bde6833aa7c9fe66b121196888d13` |
| 46 | `abbrev` | [PropagateEqMap](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/propagateeqmap--1766bfcf028ff9ff7f441eff.md) | 535 | `declaration-track:1766bfcf028ff9ff7f441eff559b0a7183d6b46ae4d81881562600b280300172` |
| 47 | `def` | [propagateEqs](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/propagateeqs--35977c0193a03516f542f9d3.md) | 540 | `declaration-track:35977c0193a03516f542f9d381d6875c402fdd45935aa3c92ff7f0297095d2a0` |
| 48 | `def` | [checkRing](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/checkring--f1967b1cfa3a4c861165d727.md) | 589 | `declaration-track:f1967b1cfa3a4c861165d72714bc7201ca13e246541a53b131a1aea487bd7e4f` |
| 49 | `def` | [check](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/check--ee271d94bce70e3a931de657.md) | 604 | `declaration-track:ee271d94bce70e3a931de657b14944f878959bb114e2b635a19d164237751047` |
| 50 | `def` | [check'](../../../../mathematics/Algebra/EqCnstr/Variant93f574b4989880851a22098c133a407b7010afa85c502ec7b5f60380d89a7b80.lean/declarations/check--013fb75bb711840df12e91d1.md) | 618 | `declaration-track:013fb75bb711840df12e91d1910fe52b30dd0ee324132a096b36cbbd0ebf4755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

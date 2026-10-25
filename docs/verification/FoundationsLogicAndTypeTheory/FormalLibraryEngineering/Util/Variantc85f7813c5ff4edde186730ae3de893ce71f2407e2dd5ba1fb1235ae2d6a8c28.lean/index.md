# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e000552b7c91e2079b9eaad8380993ca7bcdf9",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e000552b7c91e2079b9eaad8380993ca7bcdf9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Gcd` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getzero--255ab8c81d1a355e6fba22f3.md) | 16 | `declaration-track:255ab8c81d1a355e6fba22f3a78b2e40e968e7a357d3caf3f60b6caf114fb9ee` |
| 2 | `def` | [getOne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getone--fff7d871eca6fb8d26a8fbf4.md) | 19 | `declaration-track:fff7d871eca6fb8d26a8fbf489ed3584bbfe52d4f6a36c95a11a45a73d84b7d9` |
| 3 | `def` | [isCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/iscommring--059c47d647300cc8ffea9c3d.md) | 24 | `declaration-track:059c47d647300cc8ffea9c3d80af1592a2a879965839bbd88138977e3472559d` |
| 4 | `def` | [isOrderedCommRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/isorderedcommring--139896ffe749276a7294ae2c.md) | 27 | `declaration-track:139896ffe749276a7294ae2c956743d2b3cbfb1cae4dc582d8b41aa80b4c214d` |
| 5 | `def` | [isLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/islinearorder--7d0c98f8bac4a3ecfde70052.md) | 30 | `declaration-track:7d0c98f8bac4a3ecfde70052cffd85ee2129352580000669b4ed5df11a53999d` |
| 6 | `def` | [hasNoNatZeroDivisors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/hasnonatzerodivisors--f7ebd172625fdc6bc39b0adc.md) | 33 | `declaration-track:f7ebd172625fdc6bc39b0adcd629036dd2521ce888b574d699a13eccadcef19c` |
| 7 | `def` | [getTermStructId?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/gettermstructid--5ef18ff746bbf89adb008b7c.md) | 36 | `declaration-track:5ef18ff746bbf89adb008b7ce35b605506a6f54a369c31c267356f9ac093f0ae` |
| 8 | `def` | [setTermStructId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/settermstructid--cbbfc7623dbb855c63d99975.md) | 39 | `declaration-track:cbbfc7623dbb855c63d9997555d7c94537bc8d06db517eb66da3081c3d3ca5a5` |
| 9 | `def` | [getNoNatDivInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getnonatdivinst--0966421c0feeacaeb5f066f6.md) | 50 | `declaration-track:0966421c0feeacaeb5f066f661a047665b627d2f9f4ee03e48a6fdfc79bf934f` |
| 10 | `def` | [getLEInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getleinst--d1c5624c2b36592a555dfe98.md) | 55 | `declaration-track:d1c5624c2b36592a555dfe984c60833cfc029f5ba3c192b2b1511aed441f5c1d` |
| 11 | `def` | [getLTInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getltinst--e6e7318fc36b933ed6b3369b.md) | 60 | `declaration-track:e6e7318fc36b933ed6b3369bb4782f024f8b764f9c690da9301ee62357e9ccb4` |
| 12 | `def` | [getLawfulOrderLTInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getlawfulorderltinst--756f78e5f456b196c1d434f9.md) | 65 | `declaration-track:756f78e5f456b196c1d434f9d3f7ceeb33af78106580b37c1391f847b7847311` |
| 13 | `def` | [getIsPreorderInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getispreorderinst--92e15079b5aeed1b6454d9ef.md) | 70 | `declaration-track:92e15079b5aeed1b6454d9efa7160d950dd2fa14c90498b84b1a416a6e481520` |
| 14 | `def` | [getOrderedAddInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getorderedaddinst--1bb99657404368f7312d37e3.md) | 75 | `declaration-track:1bb99657404368f7312d37e38bea561bd5b81c28ee05cc1a1c661370788f547f` |
| 15 | `def` | [isOrderedAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/isorderedadd--d7502653913dd2caaa9b9cfd.md) | 80 | `declaration-track:d7502653913dd2caaa9b9cfd3064cf0e771a4a226dbcfef10c6ee65d7678d725` |
| 16 | `def` | [getLtFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getltfn--29e980096ca607436b9795bb.md) | 83 | `declaration-track:29e980096ca607436b9795bb6ca83227a55ae748143eb467c55063fcd56a4558` |
| 17 | `def` | [getLeFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getlefn--db859a962ffebccbad60ac92.md) | 88 | `declaration-track:db859a962ffebccbad60ac92e2e190fc337d02ae82bfd505ddc72a248d5a3322` |
| 18 | `def` | [getIsLinearOrderInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getislinearorderinst--0a5f5b949bee2700db8a8097.md) | 93 | `declaration-track:0a5f5b949bee2700db8a809733578b57146829072f2b713785ceb7c98d3afbef` |
| 19 | `def` | [getRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getringinst--3132785362b8f8edbe6af831.md) | 98 | `declaration-track:3132785362b8f8edbe6af831de69b61530dab927743b61042ce5b452b09879f4` |
| 20 | `def` | [getCommRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getcommringinst--f8a074f9703a7892d33f9508.md) | 103 | `declaration-track:f8a074f9703a7892d33f95080ead9270363763cb9ca3215fa4cd2b1300699ded` |
| 21 | `def` | [getOrderedRingInst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getorderedringinst--175577b5c99c3ca2f94562f8.md) | 108 | `declaration-track:175577b5c99c3ca2f94562f83deaae74238454a81d12aa77393b1f236d4d49e1` |
| 22 | `def` | [_root_.Lean.Grind.Linarith.Poly.eval?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-eval--1c018d14163dbf583db4a136.md) | 117 | `declaration-track:1c018d14163dbf583db4a1362b00d4228dcb17be47999e2cbfb794f3327c51ec` |
| 23 | `def` | [IneqCnstr.satisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/ineqcnstr-satisfied--b649e4cb6bef4e9e206c1fbc.md) | 131 | `declaration-track:b649e4cb6bef4e9e206c1fbc2c6335d4e9bb7b7aea168be059ae18f7bdea6e52` |
| 24 | `def` | [DiseqCnstr.satisfied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/diseqcnstr-satisfied--afefae0212717511793b84b1.md) | 138 | `declaration-track:afefae0212717511793b84b1596c275809224e31245771db8b01dcea976b2936` |
| 25 | `def` | [resetAssignmentFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/resetassignmentfrom--2d7001ea4df8c55960958907.md) | 143 | `declaration-track:2d7001ea4df8c55960958907fdf6243636167b1dd289ee1c0ce3b0322f2e95c0` |
| 26 | `def` | [getVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getvar--7d10d02c5dfa9e0570ceba3e.md) | 146 | `declaration-track:7d10d02c5dfa9e0570ceba3e752d7c379c8215157bc5465466a7e16f14788653` |
| 27 | `def` | [inconsistent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/inconsistent--6447a2122300b2a709e73da6.md) | 150 | `declaration-track:6447a2122300b2a709e73da64a630aea456ed791474e27dada716b93bb2f8043` |
| 28 | `def` | [eliminated](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/eliminated--8cabd41202673304b7aef6e8.md) | 155 | `declaration-track:8cabd41202673304b7aef6e8466df3f54b2dc7bfc386d59fa032315f83640aad` |
| 29 | `def` | [getOccursOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/getoccursof--2fb2826a4735c905c23eea7e.md) | 159 | `declaration-track:2fb2826a4735c905c23eea7eac885c45040bf8bc83af79c4bc1b73ddc4de65ab` |
| 30 | `def` | [addOcc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/addocc--6dd83b3ca2747ae7a55bf1fd.md) | 166 | `declaration-track:6dd83b3ca2747ae7a55bf1fdeacae5906d5d2fe1103c388c4c3710a53ae5b47a` |
| 31 | `def` | [_root_.Lean.Grind.Linarith.Poly.updateOccs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-updateoccs--43c0015f7bd8b677917d20d7.md) | 174 | `declaration-track:43c0015f7bd8b677917d20d7204a2f3d1ef42b212baff5fc1dbf9c846eccb96e` |
| 32 | `def` | [_root_.Lean.Grind.Linarith.Poly.findVarToSubst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-findvartosubst--ad63055cd377b31f69838eef.md) | 185 | `declaration-track:ad63055cd377b31f69838eef3c1627a3f97976007244e4a484725eea816dd3bf` |
| 33 | `def` | [_root_.Lean.Grind.Linarith.Poly.gcdCoeffsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-gcdcoeffsaux--f758fe81b8b3a52dc773da76.md) | 194 | `declaration-track:f758fe81b8b3a52dc773da76dfc057d1e73e498148d84ea76c3aaaaa52080797` |
| 34 | `def` | [_root_.Lean.Grind.Linarith.Poly.gcdCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-gcdcoeffs--b2852bb832d3b7afa2b1e218.md) | 198 | `declaration-track:b2852bb832d3b7afa2b1e218837d019e842282ae8414b1e996628c8f926070ae` |
| 35 | `def` | [_root_.Lean.Grind.Linarith.Poly.div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-div--22663983ee7ecf9ff2e56f1d.md) | 203 | `declaration-track:22663983ee7ecf9ff2e56f1d99cc133287dcf400caff4664dc9ff090e7b5d843` |
| 36 | `def` | [_root_.Lean.Grind.Linarith.Poly.pickVarToElim?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantc85f7813c5ff4edde186730ae3de893ce71f2407e2dd5ba1fb1235ae2d6a8c28.lean/declarations/root-lean-grind-linarith-poly-pickvartoelim--d642c6d965000502eb9d73f4.md) | 211 | `declaration-track:d642c6d965000502eb9d73f4de4cd6af46e15a1b8b60b534d8422c07331f37bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

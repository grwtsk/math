# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Archimedean.Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f972eb5f4a4502b24281d7e67ebd8f6831635f04",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f972eb5f4a4502b24281d7e67ebd8f6831635f04`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean.json)

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
| 1 | `class` | [IsSuccArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/issuccarchimedean--b0f6f46b15acd572e189f26e.md) | 35 | `declaration-track:b0f6f46b15acd572e189f26e73b03bd276a8d303a9e1b7b44f7558768f77d51a` |
| 2 | `class` | [IsPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/ispredarchimedean--6177d6afcb0716eee3f99860.md) | 42 | `declaration-track:6177d6afcb0716eee3f99860e49550261d6d7785c4b0075fa4d365308ec8de54` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/instance--35fcaf25c119a7465d9df1cc.md) | 54 | `declaration-track:35fcaf25c119a7465d9df1cc6a014bfcf50f3130f1a10d9cc97e09a2ed4761d7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/instance--7a4b910b4f9648efde396aa2.md) | 58 | `declaration-track:7a4b910b4f9648efde396aa238d7f670932161bce9f0a64e93bd3067eaeedd48` |
| 5 | `theorem` | [LE.le.exists_succ_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/le-le-exists-succ-iterate--2cf1ecb2cb37a38774347839.md) | 66 | `result-track:2cf1ecb2cb37a3877434783974f3f84a19b8cb1ff2634d847229150d02f20eac` |
| 6 | `theorem` | [exists_succ_iterate_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/exists-succ-iterate-iff-le--2cb5d01ffe1db034e5db23cf.md) | 70 | `result-track:2cb5d01ffe1db034e5db23cf71ec102e4c40e871ca42df919eed8df21750d041` |
| 7 | `theorem` | [Succ.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/succ-rec--5cd04a4dd83aa20d234e2c96.md) | 79 | `result-track:5cd04a4dd83aa20d234e2c9652aa57ea40b7e01367dd39662a01536aa8ceb32e` |
| 8 | `theorem` | [Succ.rec_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/succ-rec-iff--cdea7f0a51739492e4960c70.md) | 90 | `result-track:cdea7f0a51739492e4960c7060d08cddd06e1b09d4b2b254860d32bffe1a2c35` |
| 9 | `lemma` | [le_total_of_codirected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/le-total-of-codirected--b70a4c2127fa573a99240fb8.md) | 96 | `result-track:b70a4c2127fa573a99240fb8c6e7d6dc74cbdcddfa2378e1fb8905fc29cbd0ea` |
| 10 | `lemma` | [lt_or_le_of_codirected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/lt-or-le-of-codirected--e18a380a74532b3d2f7d76c8.md) | 118 | `result-track:e18a380a74532b3d2f7d76c8dde8ef55214aa4c280a3de58939a146cdadac6e1` |
| 11 | `abbrev` | [IsSuccArchimedean.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/issuccarchimedean-linearorder--67f343641f267eddff924696.md) | 131 | `declaration-track:67f343641f267eddff92469602d001f1dbfb1c2e632f71fc284499036a184861` |
| 12 | `abbrev` | [IsPredArchimedean.linearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/ispredarchimedean-linearorder--cc4c6c83693fadcfcbcdb59a.md) | 146 | `declaration-track:cc4c6c83693fadcfcbcdb59a66624659bc31b49f764abd5f907e3c67ab013580` |
| 13 | `theorem` | [exists_succ_iterate_or](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/exists-succ-iterate-or--cbb02619237fb763199d4d3d.md) | 159 | `result-track:cbb02619237fb763199d4d3d48321ead47f83792d547fcc84d6f55f5b8446940` |
| 14 | `theorem` | [Succ.rec_linear](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/succ-rec-linear--66e9fac4355d05cb1d06e118.md) | 163 | `result-track:66e9fac4355d05cb1d06e118577eb9c70ef8eae663a3674a3cf32a500cefee50` |
| 15 | `lemma` | [StrictMono.not_bddAbove_range_of_isSuccArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictmono-not-bddabove-range-of-issuccarchimedean--356235a3fe25c3453cc76032.md) | 172 | `result-track:356235a3fe25c3453cc760323b1969ee0bdf53d8c5c0110d61b529791c49058b` |
| 16 | `lemma` | [StrictAnti.not_bddAbove_range_of_isSuccArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictanti-not-bddabove-range-of-issuccarchimedean--6db783bd8c531db664dd86d3.md) | 187 | `result-track:6db783bd8c531db664dd86d3d9483e02b6169ac3e374b35a5cb8c4f347d4f65e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/instance--808920384ac3c77730616754.md) | 198 | `declaration-track:808920384ac3c7773061675438a045113cb717aaa3bea0af68f7d45d67ff6cb6` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/instance--065e537caa121c5a8d4fa228.md) | 213 | `declaration-track:065e537caa121c5a8d4fa2281b67b9eb71258822867e8697695f8b5b246e5cc4` |
| 19 | `theorem` | [Succ.rec_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/succ-rec-bot--92b48f33a1307100d659840c.md) | 225 | `result-track:92b48f33a1307100d659840ce6cc72d8b541be7ea946f6fb7fae41596b8afa27` |
| 20 | `lemma` | [SuccOrder.forall_ne_bot_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/succorder-forall-ne-bot-iff--ccc803c1e1725a94c444ea04.md) | 231 | `result-track:ccc803c1e1725a94c444ea04416fb885c63ed62f383e4ecb5563f33ec2c0661b` |
| 21 | `lemma` | [BddAbove.exists_isGreatest_of_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/bddabove-exists-isgreatest-of-nonempty--5ec991b01e4b389cad34ddda.md) | 246 | `result-track:5ec991b01e4b389cad34dddaf7c2b5b1540ac7f53604a09783843fe84371b71d` |
| 22 | `lemma` | [IsSuccArchimedean.of_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/issuccarchimedean-of-orderiso--2fc64f946566e8e6a7db7452.md) | 277 | `result-track:2fc64f946566e8e6a7db7452b7f77574e61f7fcc0978124007c116d8f09ab040` |
| 23 | `lemma` | [IsPredArchimedean.of_orderIso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/ispredarchimedean-of-orderiso--36cfdc69d6a84dae38e15274.md) | 291 | `result-track:36cfdc69d6a84dae38e1527487c6c97292cc73e242d077b91ad13671c295b691` |
| 24 | `instance` | [Set.OrdConnected.isPredArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/set-ordconnected-ispredarchimedean--6cd1b418b1a30cedb59cdc03.md) | 309 | `declaration-track:6cd1b418b1a30cedb59cdc0382ec4b82119e0ef119dd4d3d9dde230353d5afdf` |
| 25 | `instance` | [Set.OrdConnected.isSuccArchimedean](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/set-ordconnected-issuccarchimedean--cb893b8294ff22776ff7b44e.md) | 334 | `declaration-track:cb893b8294ff22776ff7b44e4cd0b314c2c70be6b8281f9ebb87453446f89ea9` |
| 26 | `lemma` | [monotoneOn_of_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/monotoneon-of-le-succ--758108fd6a5a5e76b90bfa3e.md) | 347 | `result-track:758108fd6a5a5e76b90bfa3e595f2bfce9fb515b4129c5227f4cc43353c2a388` |
| 27 | `lemma` | [antitoneOn_of_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/antitoneon-of-succ-le--2850d407f9e37b1db812b21f.md) | 362 | `result-track:2850d407f9e37b1db812b21f276898be3bf2f97708d0da3d7d2e2088171f2cd8` |
| 28 | `lemma` | [strictMonoOn_of_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictmonoon-of-lt-succ--1a756ea8edb69a48beb6925c.md) | 366 | `result-track:1a756ea8edb69a48beb6925c8b7e488d695bf1a692c3dbefa9e71dbf0563f37d` |
| 29 | `lemma` | [strictAntiOn_of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictantion-of-succ-lt--0150058b27656b789291c653.md) | 383 | `result-track:0150058b27656b789291c653b519e46b22da383e9e7ac35c2e87214f3e2b3bd6` |
| 30 | `lemma` | [monotone_of_le_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/monotone-of-le-succ--831d31626da670180084e1bb.md) | 387 | `result-track:831d31626da670180084e1bb7142ce26e7b172d32def2a342201517bf3283a79` |
| 31 | `lemma` | [antitone_of_succ_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/antitone-of-succ-le--043db3eea5426698d3651433.md) | 390 | `result-track:043db3eea5426698d36514332b175e39d7b8a2f8ae4b75d8ebfd90abec1e8146` |
| 32 | `lemma` | [strictMono_of_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictmono-of-lt-succ--3d968313cf38005a66744e1a.md) | 393 | `result-track:3d968313cf38005a66744e1a435bac23ba9c1ca6ada0bb847ef6006e45689aa5` |
| 33 | `lemma` | [strictAnti_of_succ_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictanti-of-succ-lt--0f4d3d44c1e6d888be1f4f41.md) | 396 | `result-track:0f4d3d44c1e6d888be1f4f419703442e912063a5e7ddecb5b9ac201181ab89bd` |
| 34 | `lemma` | [monotoneOn_of_pred_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/monotoneon-of-pred-le--76755401f2e3823ebe8ceed3.md) | 404 | `result-track:76755401f2e3823ebe8ceed360306d4679b9d556c5b696730f1cf24ae48c21dc` |
| 35 | `lemma` | [antitoneOn_of_le_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/antitoneon-of-le-pred--0a167da7ac5c30d78fbfeeeb.md) | 419 | `result-track:0a167da7ac5c30d78fbfeeeb12ad59f5df42dd465c59419f63c2ce306316e361` |
| 36 | `lemma` | [strictMonoOn_of_pred_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictmonoon-of-pred-lt--601e8688748497018d122489.md) | 423 | `result-track:601e8688748497018d12248910d72ae8fb9538f2176acfda4cadcd0a9ef00546` |
| 37 | `lemma` | [strictAntiOn_of_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictantion-of-lt-pred--aef0ad602657910eb1fa35cf.md) | 440 | `result-track:aef0ad602657910eb1fa35cfc6fbac68966625a96c79162ff07a90e1340fd79d` |
| 38 | `lemma` | [monotone_of_pred_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/monotone-of-pred-le--72b4ef1dbea55311308f3424.md) | 444 | `result-track:72b4ef1dbea55311308f342455c3b316fe8089b6383f4fb90c197ed0bf103d2a` |
| 39 | `lemma` | [antitone_of_le_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/antitone-of-le-pred--d0c5bb3388bf6a92327e2ec9.md) | 447 | `result-track:d0c5bb3388bf6a92327e2ec956a24c22f746a30c09d8954cd16247e7089dea1e` |
| 40 | `lemma` | [strictMono_of_pred_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictmono-of-pred-lt--0d87d5b5464ac71e6cf1e3e0.md) | 450 | `result-track:0d87d5b5464ac71e6cf1e3e0dfd45a71820b0331aa5f051dbbac99b64df5bf29` |
| 41 | `lemma` | [strictAnti_of_lt_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Archimedean/Variant1e84ecb35175f2bd77e4683bd32de788581aa5e6588c3fd85395103abd16f7f9.lean/declarations/strictanti-of-lt-pred--aed579f0d19c26e3e49ecd5b.md) | 453 | `result-track:aed579f0d19c26e3e49ecd5b9be930d463c304d64587865aedac59d5086397f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

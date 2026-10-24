# Verification target: GRWTSK.Algebra.LinearAlgebra.VecNotation.Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7aedbdea64e7cdf5493b612f1c735ea62cea293",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7aedbdea64e7cdf5493b612f1c735ea62cea293`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecempty--6dcc38bd8a1e3fad4eea0d50.md) | 47 | `declaration-track:6dcc38bd8a1e3fad4eea0d50bc0e09e6007d0343649dd8f41149dc6f183f59af` |
| 2 | `def` | [vecCons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/veccons--4e8bbfb016ed25fcaf37c98a.md) | 55 | `declaration-track:4e8bbfb016ed25fcaf37c98acc40a6d00b7872c8d3117d446b05e1db32f1fbae` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/syntax--cff0ae19f6052ab53327b74e.md) | 66 | `declaration-track:cff0ae19f6052ab53327b74ef81307c39838e4cddba76c4882417b826f881271` |
| 4 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/macro-rules--88b57dc521b9b6d5aa79df8c.md) | 68 | `declaration-track:88b57dc521b9b6d5aa79df8cc56ef3f0c3fb0a66b0ef010a16d56f31950de41e` |
| 5 | `def` | [vecConsUnexpander](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecconsunexpander--d74257098362e99b9491106a.md) | 75 | `declaration-track:d74257098362e99b9491106a238d1a98ae3f7ed91e98fa949fbe84e144f83cbb` |
| 6 | `def` | [vecEmptyUnexpander](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecemptyunexpander--a9301ddd58696914f858be95.md) | 83 | `declaration-track:a9301ddd58696914f858be95e815affa755227b4581c1ddd2f73827eca1a83cb` |
| 7 | `def` | [vecHead](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vechead--6827a530192d241203104fc7.md) | 88 | `declaration-track:6827a530192d241203104fc7f75afb2bc6a1446fd4aed5d734a73136ddc510c4` |
| 8 | `def` | [vecTail](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vectail--4a5a74a76d7072ffedbea89d.md) | 92 | `declaration-track:4a5a74a76d7072ffedbea89dd8f86e2abf57590f5ed7a0da0762fc207d6ccd19` |
| 9 | `instance` | [_root_.PiFin.hasRepr](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/root-pifin-hasrepr--73019a8e4e36c8fb234d9b5b.md) | 103 | `declaration-track:73019a8e4e36c8fb234d9b5b89c48e0c77e48728c460909b766f72793740aec9` |
| 10 | `theorem` | [empty_eq](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/empty-eq--699eb477a1632cdd16702d6f.md) | 112 | `result-track:699eb477a1632cdd16702d6f6790e5e51c25d391392498d7faaa30b95e42c4bc` |
| 11 | `theorem` | [head_fin_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/head-fin-const--593ac3347ad2e193a4ac84c8.md) | 118 | `result-track:593ac3347ad2e193a4ac84c8d48cd1223cd1336677f8aad54a01971380ed523f` |
| 12 | `theorem` | [cons_val_zero](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-zero--bbe00572b6349fb35eb31cbb.md) | 122 | `result-track:bbe00572b6349fb35eb31cbb69087719d58bc03ea7a722bbd930a072a2ab06b6` |
| 13 | `theorem` | [cons_val_zero'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-zero--cdaec7c3a1c10bb1646f5e0d.md) | 125 | `result-track:cdaec7c3a1c10bb1646f5e0d8e0bd44573a6f7c090d8c5a5b653a9d3ca2c3d04` |
| 14 | `theorem` | [cons_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-succ--39305bfde84106f6eae85ac6.md) | 129 | `result-track:39305bfde84106f6eae85ac6a2ea9e7a6670716bc62390a1076687cec6230033` |
| 15 | `theorem` | [cons_val_succ'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-succ--07ec7d14024a8bbac8c79325.md) | 133 | `result-track:07ec7d14024a8bbac8c7932597593d04a86330aaf52207a470d1939ffcbe9ca6` |
| 16 | `def` | [matchVecConsPrefix](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/matchvecconsprefix--5f3c921daae29c363f6756b5.md) | 144 | `declaration-track:5f3c921daae29c363f6756b5325b85f8a7fcd4c35c48d90d50cf7fb950899975` |
| 17 | `theorem` | [head_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/head-cons--0a4d26365acf130eb679daac.md) | 190 | `result-track:0a4d26365acf130eb679daacaf08f93a7280a1f8790105b86aa9a2bc0966f96e` |
| 18 | `theorem` | [tail_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/tail-cons--d6eb0d555b60dfa883902d9d.md) | 194 | `result-track:d6eb0d555b60dfa883902d9d57aa3b3bb0ebd132b62cd70e966125ab0314782e` |
| 19 | `theorem` | [empty_val'](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/empty-val--f981d49fa98e3aa5c2eba13d.md) | 198 | `result-track:f981d49fa98e3aa5c2eba13daf17578f1bed0ca53dfabe39351310202c38d763` |
| 20 | `theorem` | [cons_head_tail](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-head-tail--f3b1ff8bd178b1d5787f3533.md) | 202 | `result-track:f3b1ff8bd178b1d5787f353358d5f0d7781080f539a8ca7f5a2ed8da9e516a81` |
| 21 | `theorem` | [range_cons](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/range-cons--f5b5c0e8a03122113c79a219.md) | 206 | `result-track:f5b5c0e8a03122113c79a21902af068b776c86adf9bcad30df94c9c0c324eecd` |
| 22 | `theorem` | [range_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/range-empty--b4eb53fed41fab68bd7a6166.md) | 210 | `result-track:b4eb53fed41fab68bd7a61667ab9d2dc613dcdcc85cb67bdb70797d613841e6e` |
| 23 | `theorem` | [range_cons_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/range-cons-empty--e4613070a6211f6fa44f2ccd.md) | 213 | `result-track:e4613070a6211f6fa44f2ccdf0316042c8dea8adcd3e780bc3c8ddc84bc7f5ec` |
| 24 | `theorem` | [range_cons_cons_empty](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/range-cons-cons-empty--984e83ecc1f84f183c39498b.md) | 217 | `result-track:984e83ecc1f84f183c39498b2841d48d600c308cb0e4eee2e03b35114f47b53e` |
| 25 | `theorem` | [vecCons_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/veccons-const--f958abd7027c9b97851a37e6.md) | 221 | `result-track:f958abd7027c9b97851a37e609436f6b20dd33d6ec471a2708e0d19c7bf6738b` |
| 26 | `theorem` | [vec_single_eq_const](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vec-single-eq-const--a1deae6bbb7b2878eaf9daf6.md) | 224 | `result-track:a1deae6bbb7b2878eaf9daf64f71a3572c0335b9a191c9ec6250b99a30a0762d` |
| 27 | `theorem` | [cons_val_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-one--7876cbb2b63e7f455ec6f937.md) | 234 | `result-track:7876cbb2b63e7f455ec6f937e05a028cbe9cc8c95fc137ca441c704c251a1111` |
| 28 | `theorem` | [cons_val_two](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-two--4888606214584c4943613dc4.md) | 237 | `result-track:4888606214584c4943613dc418c7042a942481a84a8a0bd859767c53656ef092` |
| 29 | `lemma` | [cons_val_three](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-three--1ac326a07b254fa99f5453f8.md) | 239 | `result-track:1ac326a07b254fa99f5453f87ab73646968f17f9fc919857145896d926df15ac` |
| 30 | `lemma` | [cons_val_four](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-four--8b169b4d4cedd01e7d60325d.md) | 243 | `result-track:8b169b4d4cedd01e7d60325dc11c970b2b983722943ab1147a3b9c2b28deba24` |
| 31 | `theorem` | [cons_val_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-val-fin-one--86f241b3588d04f9586e1770.md) | 248 | `result-track:86f241b3588d04f9586e1770205822a830dea5ad71ca703547b2d1ffb72a7f9e` |
| 32 | `theorem` | [cons_fin_one](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-fin-one--e084cc7b2c0628d922d1cbc3.md) | 252 | `result-track:e084cc7b2c0628d922d1cbc34a034eb8ecc71907449d7bbf2faf086cd8bc6c46` |
| 33 | `def` | [_root_.PiFin.mkLiteralQ](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/root-pifin-mkliteralq--ab22ebb62ec4cb6e6eea3667.md) | 257 | `declaration-track:ab22ebb62ec4cb6e6eea3667ada5e95a8a8fe8ad304c1c78dc9572f506a64c8b` |
| 34 | `instance` | [_root_.PiFin.toExpr](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/root-pifin-toexpr--00a61fffaf2f6da22e6b7307.md) | 269 | `declaration-track:00a61fffaf2f6da22e6b73070d3de5550c296889c08c679b1986e0718dbfb02c` |
| 35 | `def` | [vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecappend--18b66e28b3f98bab11c8dead.md) | 292 | `declaration-track:18b66e28b3f98bab11c8dead70c6ca2a2a572e5eec39058c7119f657c0587278` |
| 36 | `theorem` | [vecAppend_eq_ite](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecappend-eq-ite--39efb89a0952eaf81646eeb7.md) | 295 | `result-track:39efb89a0952eaf81646eeb78296a64c5db33893fe21f50c6d8426c61e942ee3` |
| 37 | `theorem` | [vecAppend_apply_zero](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecappend-apply-zero--91b45385ef12f37f54c6dcca.md) | 305 | `result-track:91b45385ef12f37f54c6dcca9e584fbed7f9f564262057995b7479a70a1a0dbf` |
| 38 | `theorem` | [empty_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/empty-vecappend--33ad953b6b27dbf1626569a3.md) | 310 | `result-track:33ad953b6b27dbf1626569a35f06b533ba0efa151b6626fd65ecac598b24bc1d` |
| 39 | `theorem` | [cons_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-vecappend--ebd2649d27c9ff5a57df45df.md) | 315 | `result-track:ebd2649d27c9ff5a57df45df44ba10a412a433548daa3b7bfc3981b8a2f62d80` |
| 40 | `def` | [vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecalt0--a20228030c1dad7aada5d839.md) | 331 | `declaration-track:a20228030c1dad7aada5d839c5316a9c2ffa1c4847fc4cea3ed0afee40c44956` |
| 41 | `def` | [vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecalt1--f4a8b4cf2a170df8b346d5d6.md) | 335 | `declaration-track:f4a8b4cf2a170df8b346d5d672bd086a8307a73a99e567baedd34868b93f7294` |
| 42 | `theorem` | [vecAlt0_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecalt0-vecappend--1b8ae44fea725973cafbc5d0.md) | 340 | `result-track:1b8ae44fea725973cafbc5d012557159d8d17899bd7e5c912ce48112ff2fd71b` |
| 43 | `theorem` | [vecAlt1_vecAppend](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vecalt1-vecappend--f12d066ef8347d2c94ce0058.md) | 352 | `result-track:f12d066ef8347d2c94ce0058f17323c875f204b98405b540da2b395fa83e0fcd` |
| 44 | `theorem` | [vecHead_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vechead-vecalt0--f3fdf584de6d17a979a78bfb.md) | 370 | `result-track:f3fdf584de6d17a979a78bfbce31e5f78a098d33af057538bd4e2ece634c0720` |
| 45 | `theorem` | [vecHead_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/vechead-vecalt1--17c678adb7343b6eb5d0b8ef.md) | 375 | `result-track:17c678adb7343b6eb5d0b8eff435ef4b8415b70eed2085d1f7364b0ae8603fe6` |
| 46 | `theorem` | [cons_vec_bit0_eq_alt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-vec-bit0-eq-alt0--a04052803a3aa0ff469b0053.md) | 378 | `result-track:a04052803a3aa0ff469b0053c3296a95b8acb4aa5cfe1a0906dca1239b77c853` |
| 47 | `theorem` | [cons_vec_bit1_eq_alt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-vec-bit1-eq-alt1--6a1d3a602a77b068ef981835.md) | 382 | `result-track:6a1d3a602a77b068ef981835165f516a2ae5dd7a70bf52bc65548c25d5984e10` |
| 48 | `theorem` | [cons_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-vecalt0--67aa5ace6389927154a71402.md) | 389 | `result-track:67aa5ace6389927154a71402b2b89202cae60f66f7c490b54a8b18db02167cca` |
| 49 | `theorem` | [empty_vecAlt0](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/empty-vecalt0--80ce73cbdc818ca9a752f6a8.md) | 399 | `result-track:80ce73cbdc818ca9a752f6a81ee5ed35c65b3a4537f0e0eaeb5f07b9fe186006` |
| 50 | `theorem` | [cons_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/cons-vecalt1--a8d6a39d249e96dc86bf851d.md) | 403 | `result-track:a8d6a39d249e96dc86bf851d7081c990c77be9a183dc4c4aec80767b8091b251` |
| 51 | `theorem` | [empty_vecAlt1](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/empty-vecalt1--ecf2068239194e81c24ecef5.md) | 412 | `result-track:ecf2068239194e81c24ecef5178a308d2386d0c5887af15bfdccbb7c9da05880` |
| 52 | `lemma` | [const_fin1_eq](../../../../../mathematics/Algebra/LinearAlgebra/VecNotation/Variant39fd12d19aa4fd2120eb2113b8bb5d46d00e0a0c5f56a908f328b946b916ef57.lean/declarations/const-fin1-eq--a56b81528ebbcb0fb2d8599a.md) | 417 | `result-track:a56b81528ebbcb0fb2d8599a5a00dc57b9659124f7d0dfa55792a55dd1040735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

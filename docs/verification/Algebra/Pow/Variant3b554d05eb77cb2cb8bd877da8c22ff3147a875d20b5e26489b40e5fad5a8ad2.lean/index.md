# Verification target: GRWTSK.Algebra.Pow.Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40a261a1976620191f9815e4a987d5c0503565b9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40a261a1976620191f9815e4a987d5c0503565b9`.

Source path: `GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natPow_zero](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/natpow-zero--4e2a0b2a7f553f57c2a04107.md) | 37 | `result-track:4e2a0b2a7f553f57c2a04107b79a6f3304ca74883c5ee8fccd578e53c52fc0b3` |
| 2 | `theorem` | [natPow_one](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/natpow-one--523f74c2557f2e25756d579d.md) | 38 | `result-track:523f74c2557f2e25756d579d02798de7fe17a176bcca24de958d6feb41b8b61d` |
| 3 | `theorem` | [zero_natPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/zero-natpow--b429bb9449e60dbae51df9b5.md) | 39 | `result-track:b429bb9449e60dbae51df9b56760a5e4fe6d8d849e728359f6ce4e9d32ea6bd5` |
| 4 | `theorem` | [one_natPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/one-natpow--5b6d3bff1e8841e0c7b75f64.md) | 40 | `result-track:5b6d3bff1e8841e0c7b75f648313f58ac7cb059274684d23137e47f87d9a528f` |
| 5 | `structure` | [IsNatPowT](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnatpowt--2916d9156240574364de9d12.md) | 46 | `declaration-track:2916d9156240574364de9d12a86ed333a198e65e0e3d2087d1a424adaa0f3b1f` |
| 6 | `theorem` | [IsNatPowT.run](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnatpowt-run--3688b66418ea66b47fd4f22b.md) | 50 | `result-track:3688b66418ea66b47fd4f22bade50e469b69b2278414b821561880bf898c48d3` |
| 7 | `theorem` | [IsNatPowT.trans](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnatpowt-trans--e1a4341b502fd7dd21666845.md) | 55 | `result-track:e1a4341b502fd7dd2166684510f490578f133ff8f3f5bd103e1d63eab8b60f53` |
| 8 | `theorem` | [IsNatPowT.bit0](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnatpowt-bit0--b19e92359022ab7fe68c5943.md) | 59 | `result-track:b19e92359022ab7fe68c5943681f919eff3234ac785164392f9a9226310da08a` |
| 9 | `theorem` | [IsNatPowT.bit1](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnatpowt-bit1--5d723e7ab63eaa99129f388f.md) | 62 | `result-track:5d723e7ab63eaa99129f388fd75219e700fba968763d1e54510cfa61bd0962c5` |
| 10 | `def` | [evalNatPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/evalnatpow--e8d662eab744e2d4dc5bad43.md) | 76 | `declaration-track:e8d662eab744e2d4dc5bad4338e1e760e59b9fb79739de0a20dcd2ab166e6851` |
| 11 | `theorem` | [intPow_ofNat](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/intpow-ofnat--3ff53c3cf9f1a655b944bd4a.md) | 120 | `result-track:3ff53c3cf9f1a655b944bd4aaaf97dd673568aded3aa251df066acc5a9f3e117` |
| 12 | `theorem` | [intPow_negOfNat_bit0](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/intpow-negofnat-bit0--fc4b180847deb63b2cb52c69.md) | 123 | `result-track:fc4b180847deb63b2cb52c697e9fea8af23b37b4662dac5fb796a8d86ce1bce4` |
| 13 | `theorem` | [intPow_negOfNat_bit1](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/intpow-negofnat-bit1--7d844dd48934e33f68ab389d.md) | 130 | `result-track:7d844dd48934e33f68ab389d6180b4b99127ed9551bdefe38a1c4caceceec98c` |
| 14 | `def` | [evalIntPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/evalintpow--d9efc63e9c87e5afec11d769.md) | 138 | `declaration-track:d9efc63e9c87e5afec11d769711ebd391e0c3125e962f9e807695dfa109e50fd` |
| 15 | `theorem` | [isNat_pow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnat-pow--ded619adce6f58dbde121c85.md) | 163 | `result-track:ded619adce6f58dbde121c856cddca18372ac99a831b8551e38669232854adbc` |
| 16 | `theorem` | [isInt_pow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isint-pow--f5e4974c7f4cbbb650ab1cab.md) | 168 | `result-track:f5e4974c7f4cbbb650ab1cab16f6622be7b991a72271040f9134a54752012a55` |
| 17 | `theorem` | [isRat_pow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/israt-pow--0d1c5443782c3a3ece0990a3.md) | 173 | `result-track:0d1c5443782c3a3ece0990a3e7952e41e4ec3d9758232fc40441a1ccc1cc130b` |
| 18 | `theorem` | [isNNRat_pow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnnrat-pow--190b5e15ca4f7f4db866d46e.md) | 182 | `result-track:190b5e15ca4f7f4db866d46edba5a757c4b39426743a0644c156eb870d04223f` |
| 19 | `def` | [evalPow.core](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/evalpow-core--10e4f4d828e99b33a026042a.md) | 192 | `declaration-track:10e4f4d828e99b33a026042ab86e2661966e7edd65ade0d6dded8f84b0345367` |
| 20 | `def` | [evalPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/evalpow--bd809be166e35cb0c04806b3.md) | 224 | `declaration-track:bd809be166e35cb0c04806b3e6117769fdb5ab64198bda651c5e51198036fab5` |
| 21 | `theorem` | [isNat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnat-zpow-pos--1b1ea8a6a4eaf36637b0b28a.md) | 236 | `result-track:1b1ea8a6a4eaf36637b0b28a7fb78aa6f915d3708ff87ffd1606d1fd4b6400da` |
| 22 | `theorem` | [isNat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnat-zpow-neg--972487a06f7e71ef1a199688.md) | 241 | `result-track:972487a06f7e71ef1a199688f01a30ab3bd16164832feb9eff455429c01da064` |
| 23 | `theorem` | [isInt_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isint-zpow-pos--0f35874a8579b4c99ffc2f8b.md) | 246 | `result-track:0f35874a8579b4c99ffc2f8b25a2bd18fd58816f6a7eef4a1799888024767a25` |
| 24 | `theorem` | [isInt_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isint-zpow-neg--2c6a7dfff0ae88ca4b1d7dc3.md) | 251 | `result-track:2c6a7dfff0ae88ca4b1d7dc3a58f30771b4372a295dc0ed2131794c0c85ec7b9` |
| 25 | `theorem` | [isNNRat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnnrat-zpow-pos--de1fc80b656a9f61d8d4d1ff.md) | 256 | `result-track:de1fc80b656a9f61d8d4d1ff0a8f030e2336eeba77d5685e9bda0530bd80049a` |
| 26 | `theorem` | [isNNRat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/isnnrat-zpow-neg--16c477e3de67be392affd859.md) | 262 | `result-track:16c477e3de67be392affd859ed17c44b8ed7561a15e4303ad6ad273632ff3582` |
| 27 | `theorem` | [isRat_zpow_pos](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/israt-zpow-pos--6c1863cf9ed7c5b64a062660.md) | 268 | `result-track:6c1863cf9ed7c5b64a06266098ea71c62426afe2f9bb25b847caa2c2565b735f` |
| 28 | `theorem` | [isRat_zpow_neg](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/israt-zpow-neg--d02dd9654fe37402179cc8b1.md) | 274 | `result-track:d02dd9654fe37402179cc8b110272bdb94d779f803d67e4281c20fc7872e7ed5` |
| 29 | `def` | [evalZPow](../../../../mathematics/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/declarations/evalzpow--8b436b405fdc9a6366e0896b.md) | 291 | `declaration-track:8b436b405fdc9a6366e0896b13e85d0b2b6f32d8d1a19ecaa349bece743193ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

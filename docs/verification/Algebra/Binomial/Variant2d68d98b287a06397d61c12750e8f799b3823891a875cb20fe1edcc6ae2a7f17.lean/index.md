# Verification target: GRWTSK.Algebra.Binomial.Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md) · [Full source](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7`.

Source path: `GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Smeval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BinomialRing](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/binomialring--4122bd7673176cf71ee6cc9d.md) | 78 | `declaration-track:4122bd7673176cf71ee6cc9dcbe9027489e755b0c77cce096064975c81f649a0` |
| 2 | `def` | [multichoose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose--3d8447464fc186aaba93d7f1.md) | 95 | `declaration-track:3d8447464fc186aaba93d7f1ba4bc9b83f4cebcebd3e881c5aa7bdcb78708821` |
| 3 | `theorem` | [multichoose_eq_multichoose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-eq-multichoose--7d14320a1f8294f500a6ce8b.md) | 98 | `result-track:7d14320a1f8294f500a6ce8bcf68da27b9d943c0a61898320fe8e25f2640f08b` |
| 4 | `theorem` | [factorial_nsmul_multichoose_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/factorial-nsmul-multichoose-eq-ascpochhammer--2f29b8e61a315c73ed289a49.md) | 101 | `result-track:2f29b8e61a315c73ed289a49de19c3b6832e7508e569da35a0b8ca7dbaafaf69` |
| 5 | `theorem` | [multichoose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-zero-right--fb0aadbbc942d3d320ac8b65.md) | 106 | `result-track:fb0aadbbc942d3d320ac8b65e2361810fcddf4170306b5ea993b6a3cc0da34a6` |
| 6 | `theorem` | [multichoose_zero_right](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-zero-right--e01475c20406a3946da06e43.md) | 110 | `result-track:e01475c20406a3946da06e4304e3b412695cfc1c16ec2c0d8f618d1f503cd2a1` |
| 7 | `theorem` | [multichoose_one_right'](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-one-right--03dadd95146238b4205d3e75.md) | 115 | `result-track:03dadd95146238b4205d3e75b392cb952e72dab5832878e92f521ad019214641` |
| 8 | `theorem` | [multichoose_one_right](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-one-right--11bf4693256c6cb9d7db5ec9.md) | 120 | `result-track:11bf4693256c6cb9d7db5ec95b6090e97952d8f1001c8148f4f7aea58ccb0d3c` |
| 9 | `theorem` | [multichoose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-zero-succ--4aebc977c970917265cd7989.md) | 126 | `result-track:4aebc977c970917265cd7989dc06b7d8253d29964142ce310790920a8ba560a8` |
| 10 | `theorem` | [ascPochhammer_succ_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/ascpochhammer-succ-succ--fff3d4734a035d2cd27b0391.md) | 131 | `result-track:fff3d4734a035d2cd27b03911f69314af615268d5aa99a275c17e9aaa76bca15` |
| 11 | `theorem` | [multichoose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-succ-succ--cb1ef1c25f350b79dca558a6.md) | 142 | `result-track:cb1ef1c25f350b79dca558a6bb8e294b304d4ca2be014cbdca91532085991ede` |
| 12 | `theorem` | [multichoose_one](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-one--c845d6a7980202c7dafa0e67.md) | 149 | `result-track:c845d6a7980202c7dafa0e67a5c4f4c8c1c4962d140cc2589ccc1d6b6064507d` |
| 13 | `theorem` | [multichoose_two](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-two--034b45c0d00415e9e0221e84.md) | 156 | `result-track:034b45c0d00415e9e0221e849e353f6c2c181a61e9450eb073d3e2d10c2b4b37` |
| 14 | `theorem` | [ascPochhammer_smeval_cast](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/ascpochhammer-smeval-cast--59f2bb2b8e367e56d6653a0f.md) | 173 | `result-track:59f2bb2b8e367e56d6653a0f38cd5aa8cca70c14675ad25680b283f3a8fdd153` |
| 15 | `theorem` | [ascPochhammer_smeval_eq_eval](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/ascpochhammer-smeval-eq-eval--3c162efe239caaed8cd2f271.md) | 185 | `result-track:3c162efe239caaed8cd2f271c78387fad1831b63881a7c916e905250ae902b18` |
| 16 | `theorem` | [descPochhammer_smeval_eq_ascPochhammer](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/descpochhammer-smeval-eq-ascpochhammer--5dac76299025263208e68fc9.md) | 191 | `result-track:5dac76299025263208e68fc9a7db4f2a9cfc011e690b18530ff4eb7eb869d5aa` |
| 17 | `theorem` | [descPochhammer_smeval_eq_descFactorial](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/descpochhammer-smeval-eq-descfactorial--fcbf2d2b2f3621ed0e385234.md) | 201 | `result-track:fcbf2d2b2f3621ed0e385234aaf168eebc05a1fd492b244b1a20620e8fa82caa` |
| 18 | `theorem` | [ascPochhammer_smeval_neg_eq_descPochhammer](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/ascpochhammer-smeval-neg-eq-descpochhammer--5a6a59faef8437c82946115a.md) | 213 | `result-track:5a6a59faef8437c82946115a85e0c31d8968be95665eeb3b4f105dc0dcd3d599` |
| 19 | `instance` | [Nat.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/nat-instbinomialring--2660981bf17d810df7e9a3db.md) | 232 | `declaration-track:2660981bf17d810df7e9a3dbd18d19b8ff22e7c0c1e2ec06c5cf5853b9aa0a7f` |
| 20 | `def` | [Int.multichoose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/int-multichoose--9ac54fdef4ec165797e0025d.md) | 240 | `declaration-track:9ac54fdef4ec165797e0025dffb04aadd5340f786ed5fda4af187c1908074630` |
| 21 | `instance` | [Int.instBinomialRing](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/int-instbinomialring--6e576cfbcc1c5519a764987a.md) | 245 | `declaration-track:6e576cfbcc1c5519a764987ac595637a614a7453119b8759a8fc2889a21f85ae` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/instance--5b59cfa7682a7f22297b6443.md) | 262 | `declaration-track:5b59cfa7682a7f22297b6443353ecc28d13a901b00b36b42a837bdb93f8635a2` |
| 23 | `theorem` | [smeval_ascPochhammer_self_neg](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-self-neg--9e4cff65076774fa3438fbfc.md) | 282 | `result-track:9e4cff65076774fa3438fbfc3453719f75f56de95c790e69383eee1620a53beb` |
| 24 | `theorem` | [smeval_ascPochhammer_succ_neg](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-succ-neg--0f9bfec9de2029c57291d2a8.md) | 295 | `result-track:0f9bfec9de2029c57291d2a89ea9b8b5fb944b75d0c7670c3bc4711f2d2def6f` |
| 25 | `theorem` | [smeval_ascPochhammer_neg_add](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-neg-add--7b4b338b9b3411dec2079141.md) | 300 | `result-track:7b4b338b9b3411dec2079141cb7928859901dfa0f6cfcc806bba0485c6cb4e1c` |
| 26 | `theorem` | [smeval_ascPochhammer_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-neg-of-lt--5ae3d65d38beb081655826d6.md) | 309 | `result-track:5ae3d65d38beb081655826d62d00713867671f737441ee822b053fc7bb401916` |
| 27 | `theorem` | [smeval_ascPochhammer_nat_cast](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-nat-cast--edf9ec44de40c1689e7a42c2.md) | 313 | `result-track:edf9ec44de40c1689e7a42c276d7957d20588cda27cf5016af9963ce5a169d3f` |
| 28 | `theorem` | [multichoose_neg_self](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-neg-self--ee2ac027c42ade5ce86f5e4f.md) | 317 | `result-track:ee2ac027c42ade5ce86f5e4fe7b0916de6bd573d3ee3c8cb75ebcea5ce5b670a` |
| 29 | `theorem` | [multichoose_neg_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-neg-succ--fa3515cf036af02dcb7334ff.md) | 323 | `result-track:fa3515cf036af02dcb7334ff9d061002d076fd8b1322344d7034d1a835f1f145` |
| 30 | `theorem` | [multichoose_neg_add](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-neg-add--6fc756f300305ff5b6291843.md) | 327 | `result-track:6fc756f300305ff5b629184395329b49cde59d436aa28e2677722da66a0d10d8` |
| 31 | `theorem` | [multichoose_neg_of_lt](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-neg-of-lt--09aef9995e7ffcfd004bbc64.md) | 332 | `result-track:09aef9995e7ffcfd004bbc6436fb19b9ae17dda887eaffff9319013b47a523ee` |
| 32 | `theorem` | [multichoose_succ_neg_natCast](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/multichoose-succ-neg-natcast--dfba35939e1a7a4224a22fc2.md) | 336 | `result-track:dfba35939e1a7a4224a22fc2bc51171fa4320ff7f3707bb683c64e7a15310e42` |
| 33 | `theorem` | [smeval_ascPochhammer_int_ofNat](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/smeval-ascpochhammer-int-ofnat--4c6644e5713e0bf037057ff1.md) | 342 | `result-track:4c6644e5713e0bf037057ff1f0bbf8eb2a3139fc9fff8963ee3735264a94ce6f` |
| 34 | `def` | [choose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose--caf97dbea2da86ffd4aeab7c.md) | 368 | `declaration-track:caf97dbea2da86ffd4aeab7c5b2d5f3d1cb55392e62e080caa37e4d7e5993437` |
| 35 | `theorem` | [descPochhammer_eq_factorial_smul_choose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/descpochhammer-eq-factorial-smul-choose--eb040ca67de95fd823738569.md) | 373 | `result-track:eb040ca67de95fd8237385691c86ebdcf41a923726e94ab669e9f524a3edc0d5` |
| 36 | `theorem` | [choose_natCast](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-natcast--072de7b5c8a845f3388d740d.md) | 382 | `result-track:072de7b5c8a845f3388d740d44b4c445e06a5a24e02027843ab4f66cf2408732` |
| 37 | `theorem` | [choose_zero_right'](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-zero-right--8ca826a008d4d97e4d9163b4.md) | 388 | `result-track:8ca826a008d4d97e4d9163b48a114996857d2be9c0dce5777a47b87fe55424b8` |
| 38 | `theorem` | [choose_zero_right](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-zero-right--b8d7f8287db511c34b4e4dc6.md) | 393 | `result-track:b8d7f8287db511c34b4e4dc6f6e6b78040aeeaa72b84012d71eb39cb749ee3ae` |
| 39 | `theorem` | [choose_zero_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-zero-succ--f4494a4ee41b1c7c13fca259.md) | 397 | `result-track:f4494a4ee41b1c7c13fca259879d349bcdb2b372c2282e66d3cc3231a0c7809c` |
| 40 | `theorem` | [choose_zero_pos](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-zero-pos--880569bc230edfc04abe7f20.md) | 401 | `result-track:880569bc230edfc04abe7f20791d20fbf22e1c80c7f95c7254a06a8d79381701` |
| 41 | `theorem` | [choose_zero_ite](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-zero-ite--f0ae29cd420008bd631c741a.md) | 405 | `result-track:f0ae29cd420008bd631c741a479d174d1c46eb73018518a9322134f0c2afa1b0` |
| 42 | `theorem` | [choose_one_right'](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-one-right--5fe7c613ba1ca3cc60cbc030.md) | 412 | `result-track:5fe7c613ba1ca3cc60cbc03074a4a37c3339bef2091558ea54c479e72ba6c20f` |
| 43 | `theorem` | [choose_one_right](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-one-right--7e1a36179cfb6c9ebaf4d944.md) | 415 | `result-track:7e1a36179cfb6c9ebaf4d9448d9fab0cbc1f1e85ff8ac7e80a35982836865e17` |
| 44 | `theorem` | [choose_neg](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-neg--1ebada668bc1893774d1debb.md) | 418 | `result-track:1ebada668bc1893774d1debbaf40007951ec503445ba3a6bfe361e3b9a601070` |
| 45 | `theorem` | [descPochhammer_succ_succ_smeval](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/descpochhammer-succ-succ-smeval--9e800b8758af6f4fdde37bc5.md) | 425 | `result-track:9e800b8758af6f4fdde37bc5c782b463b64f98516f0d7fa87c1b82b7150face8` |
| 46 | `theorem` | [choose_succ_succ](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-succ-succ--e4270ee8f58a76798df0beca.md) | 436 | `result-track:e4270ee8f58a76798df0beca6d72c8813129f84a5d93f1bb388c19be6d44333e` |
| 47 | `theorem` | [choose_eq_nat_choose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-eq-nat-choose--69ca59b0d172412f2f1beee9.md) | 443 | `result-track:69ca59b0d172412f2f1beee9a7b53413ee61048236156d7cb6a5e723b8aaca96` |
| 48 | `theorem` | [choose_smul_choose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-smul-choose--96e1fd03e9190b18054cb9ef.md) | 452 | `result-track:96e1fd03e9190b18054cb9efdc0f0a7099d5fded5d3b0fc4326eb29511cbebda` |
| 49 | `theorem` | [choose_add_smul_choose](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/choose-add-smul-choose--b41c169c9462718bfd2ccce8.md) | 463 | `result-track:b41c169c9462718bfd2ccce8422e0c40f203191cc79878893bea2ef3699da6a5` |
| 50 | `theorem` | [descPochhammer_smeval_add](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/descpochhammer-smeval-add--52ea68afc38e12df3ddd3107.md) | 473 | `result-track:52ea68afc38e12df3ddd3107ac063d63cc5f8cc6eda683c8e18fe9ecda297e70` |
| 51 | `theorem` | [add_choose_eq](../../../../mathematics/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/declarations/add-choose-eq--0912ac7c9d883b9396c01008.md) | 502 | `result-track:0912ac7c9d883b9396c01008af8e2d11513636ae116726dd54392bb8fcd0c040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

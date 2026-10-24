# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b737b4d50541c1fea525ccd2c82c9d94621c249",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b737b4d50541c1fea525ccd2c82c9d94621c249`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/addcon--d43164ab51f1a44792630835.md) | 57 | `declaration-track:d43164ab51f1a44792630835da85309d490e9cc5e95dbd26d58e38ca53914fa4` |
| 2 | `structure` | [Con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/con--ec5e0b8395fd71645dd2a5b1.md) | 64 | `declaration-track:ec5e0b8395fd71645dd2a5b1cb6108d946633229eb9064b586ad33e98e036776` |
| 3 | `inductive` | [AddConGen.Rel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/addcongen-rel--13f4fc4a10a8ff324772145b.md) | 78 | `declaration-track:13f4fc4a10a8ff324772145bad9805cfb1aa71d43bfefcdba4df9028e4a594b4` |
| 4 | `inductive` | [ConGen.Rel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-rel--e8cb2fac0b06d4df45e021dd.md) | 88 | `declaration-track:e8cb2fac0b06d4df45e021dd90f338bac21113f2fe939e97d46c513b16b0a541` |
| 5 | `def` | [conGen](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen--8c3ba89225219009eb3e6489.md) | 99 | `declaration-track:8c3ba89225219009eb3e6489403337a5491026f6ad140fbcad34157878ae7218` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--938d4dc867079ff2a6d4208d.md) | 109 | `declaration-track:938d4dc867079ff2a6d4208dd39b7f8e4b0aed2aae09af4ed036e637308905c8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--539a60ea047be8e9259b380e.md) | 114 | `declaration-track:539a60ea047be8e9259b380e2eead87e18a3cdee24330e09fcebcb48c5fb3c3c` |
| 8 | `theorem` | [rel_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/rel-eq-coe--bcd97521c47d6e71d8753f0f.md) | 123 | `result-track:bcd97521c47d6e71d8753f0f872a1d491b42a0fa2b70ca88a42de7659659e17b` |
| 9 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/refl--fc0f0444fd53f3586cafb5bf.md) | 128 | `result-track:fc0f0444fd53f3586cafb5bfad84ad5ee60eed98abde69ec825ebb376afa47df` |
| 10 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/symm--1eb81608f7b27d5ade0ddb9d.md) | 133 | `result-track:1eb81608f7b27d5ade0ddb9d159357ee6b639c486ce1ba810404675c58d231b5` |
| 11 | `theorem` | [trans](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/trans--9755f5103ebb65b1e9d58c82.md) | 137 | `result-track:9755f5103ebb65b1e9d58c822c452563991c0f6d83f3508fe49e19df6e629b96` |
| 12 | `theorem` | [mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/mul--5f0827ce7f5d2c0ae1f469ff.md) | 141 | `result-track:5f0827ce7f5d2c0ae1f469ff6da43d911ed87abc4567d8fa351a353ec79be655` |
| 13 | `theorem` | [rel_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/rel-mk--016703a334e7b889ca9cff10.md) | 144 | `result-track:016703a334e7b889ca9cff106832de5b4d271c64fe3f369deeb625e7831b63c6` |
| 14 | `instance` | [instMembershipProd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instmembershipprod--9dff4ef0f09ba824ceb788c1.md) | 152 | `declaration-track:9dff4ef0f09ba824ceb788c1d82cee7682387038991fb21300762474047ada7d` |
| 15 | `theorem` | [ext'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/ext--11bb5404985db0484ecaa3ad.md) | 160 | `result-track:11bb5404985db0484ecaa3addfa7660ee8b7f6b2d8e0e10858da0aa9bbc73a04` |
| 16 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/ext--0edd65ef0f2d272f8115cb35.md) | 164 | `result-track:0edd65ef0f2d272f8115cb35821035fbf40f1f77f1b9905e37adc371e3a16ce3` |
| 17 | `theorem` | [toSetoid_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/tosetoid-inj--95e294cc8afb16934ae070ff.md) | 170 | `result-track:95e294cc8afb16934ae070fff3d500d3d277d69c95713edbc09e606b78d6237c` |
| 18 | `theorem` | [coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-inj--4fbe0a0cc50b7f3ac10a0079.md) | 176 | `result-track:4fbe0a0cc50b7f3ac10a0079950347cc79be819d1086565dfbef561ff72ba9e1` |
| 19 | `def` | [Quotient](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/quotient--458dc334cd4926af4d16e5c7.md) | 184 | `declaration-track:458dc334cd4926af4d16e5c752cc5ba5f125ab083f422dd8a17102fa1a7228b2` |
| 20 | `def` | [toQuotient](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/toquotient--806a97a653fda929134b8cf8.md) | 191 | `declaration-track:806a97a653fda929134b8cf8313f7cf2bf793cf4133b0126a39f1a6a25792d7d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--86ba8481a8bb50ecab5035c2.md) | 202 | `declaration-track:86ba8481a8bb50ecab5035c265d31631e44bf64f4e5f5ab3432f76cb75801252` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--a076b71780b7ee9270631f7a.md) | 208 | `declaration-track:a076b71780b7ee9270631f7a705ad46bfe39424aec2698b55c3973d465417c64` |
| 23 | `theorem` | [quot_mk_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/quot-mk-eq-coe--c28edffd0e29bbbf78495420.md) | 212 | `result-track:c28edffd0e29bbbf7849542008c67b50f362da7e7dc56468e49f939bc023fca2` |
| 24 | `def` | [liftOn](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/lifton--506e0aceac25a10d8b7a7a73.md) | 220 | `declaration-track:506e0aceac25a10d8b7a7a73b33abe709bc3de8a8128e405d5abbfaedd7f861c` |
| 25 | `def` | [liftOn₂](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/lifton--fba6abf46a58431ece196382.md) | 229 | `declaration-track:fba6abf46a58431ece196382623c5e8f4c1429624f41fcfed9757897b2fa4a2a` |
| 26 | `def` | [hrecOn₂](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/hrecon--8d3020691e249788bdfd542c.md) | 235 | `declaration-track:8d3020691e249788bdfd542ca1e52b5718cd238988cd8a948f980017adf39be1` |
| 27 | `theorem` | [hrec_on₂_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/hrec-on-coe--0154792a73be0ec52cd0a3be.md) | 241 | `result-track:0154792a73be0ec52cd0a3be638f744c12cf8d3be69a15569cc00798a91d34dd` |
| 28 | `theorem` | [induction_on](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/induction-on--6bd4dc0554df16b4bc1e8342.md) | 253 | `result-track:6bd4dc0554df16b4bc1e83422a2a0715d68b20083ab1bee6a3cf9d393b9af638` |
| 29 | `theorem` | [induction_on₂](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/induction-on--7df40c1fa5396ee0c895d277.md) | 259 | `result-track:7df40c1fa5396ee0c895d277c8a8e0445a81d7701b04b601f3210a2b144c0044` |
| 30 | `theorem` | [eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/eq--4518260ae683f1529d984c71.md) | 269 | `result-track:4518260ae683f1529d984c719d27fe4b03414014bf9e66b0c7c09486286bbbb5` |
| 31 | `instance` | [hasMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/hasmul--b1d480e57b75833037dcde52.md) | 276 | `declaration-track:b1d480e57b75833037dcde52899ffc67a9511b21cea8fccb62330be7e74d84ae` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-mul--6b3a595990700523d0c388ae.md) | 285 | `result-track:6b3a595990700523d0c388ae8864d9a13d05c7967e41802e889e46d2a73640e9` |
| 33 | `theorem` | [liftOn_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/lifton-coe--908c456ca6b28ab96edbcede.md) | 292 | `result-track:908c456ca6b28ab96edbcedee95efe5d47afd71caeec70de7f1b6284ec33c065` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--37f32f4a8b7a1a26732014dc.md) | 301 | `declaration-track:37f32f4a8b7a1a26732014dc55db0e59eeb2e1fd6af783e50621a7375afba129` |
| 35 | `theorem` | [le_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/le-def--0c7c5604db7d2e9bf8426e56.md) | 306 | `result-track:0c7c5604db7d2e9bf8426e56df976108ba1b63abaf9d08dc0a0b5648fa698ea6` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--9a2911093305f0e86f21c49d.md) | 312 | `declaration-track:9a2911093305f0e86f21c49d3edd2bd38e90e3187c24737bcfd32dbffb562b29` |
| 37 | `theorem` | [sInf_toSetoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/sinf-tosetoid--8a69a15b4fc8f694b45a5f85.md) | 323 | `result-track:8a69a15b4fc8f694b45a5f851041125ad642166235306dfb0f74143d9b508886` |
| 38 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-sinf--43362c74033dd34366a935f4.md) | 332 | `result-track:43362c74033dd34366a935f460b83397c6abc02d52bde4564eaa4f74ad20cfc7` |
| 39 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-iinf--c75ac31d7de436c6ad76e059.md) | 339 | `result-track:c75ac31d7de436c6ad76e05955faec66fba107f5ffcdf78b9d35602ae17b0f95` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--5209b092a42eeb0cb7008023.md) | 343 | `declaration-track:5209b092a42eeb0cb7008023264adb00a527e257e23f5e1fafa48de23f1e7714` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--89433714f81cc11a588a0d44.md) | 351 | `declaration-track:89433714f81cc11a588a0d44c026adb11cdde5a65b4e90685d09e63563d44ad1` |
| 42 | `theorem` | [coe_inf](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-inf--0a891e7f2da619fd591b9d48.md) | 370 | `result-track:0a891e7f2da619fd591b9d48ba310a6d319f0dfdf71c3924f5df7454cd4f20d9` |
| 43 | `theorem` | [inf_iff_and](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/inf-iff-and--4a6cc6717333d3e79afeb615.md) | 375 | `result-track:4a6cc6717333d3e79afeb615f3cdec31386981dd8be9f98fe1a07fcbbae07ee3` |
| 44 | `theorem` | [conGen_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-eq--e6a6acac261658cce35d4553.md) | 383 | `result-track:e6a6acac261658cce35d4553ca0a4efe79c473ba466d181a5720301e111db51b` |
| 45 | `theorem` | [conGen_le](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-le--88e189bca8121ae2bff4bb27.md) | 399 | `result-track:88e189bca8121ae2bff4bb2780ee150e972f25ef4fb47e188c38abb735fa16e6` |
| 46 | `theorem` | [conGen_mono](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-mono--abdc18d23c824b7921d895a4.md) | 407 | `result-track:abdc18d23c824b7921d895a49f5002ff81f085e98929b28c7ce0140110b928be` |
| 47 | `theorem` | [conGen_of_con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-of-con--16c6c459197f2e81fc06bb61.md) | 413 | `result-track:16c6c459197f2e81fc06bb61d861660448307d2dbd255f694f66b8b28e78a34b` |
| 48 | `theorem` | [conGen_idem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/congen-idem--28a6babca9193bb1a68197ab.md) | 420 | `result-track:28a6babca9193bb1a68197ab41969b81b8957625613faaa01972c2824d200270` |
| 49 | `theorem` | [sup_eq_conGen](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/sup-eq-congen--2bca5e5f41c9e3db5abdedb3.md) | 427 | `result-track:2bca5e5f41c9e3db5abdedb3de55f4bbc8517ca350087c4dadf3f49d6d9a2436` |
| 50 | `theorem` | [sup_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/sup-def--f4102fcb9fd64d185fda765c.md) | 436 | `result-track:f4102fcb9fd64d185fda765cea33eeea21a91ddc2fdb69faafcb362100de4bef` |
| 51 | `theorem` | [sSup_eq_conGen](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/ssup-eq-congen--c71c8cb5ab6082f35ee02e9d.md) | 444 | `result-track:c71c8cb5ab6082f35ee02e9d5bfefebf996ba77476af81b994398620ec35b895` |
| 52 | `theorem` | [sSup_def](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/ssup-def--a4bc23e69948edb3aab76e96.md) | 456 | `result-track:a4bc23e69948edb3aab76e960c010e6ccb738b1a28f10cd5d22ce8cbd51842c5` |
| 53 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/gi--e98ceaa5f9e6b08754ade97e.md) | 468 | `declaration-track:e98ceaa5f9e6b08754ade97e5c5a5a86ccd7f2b14021737cabbcd99cbd083d71` |
| 54 | `def` | [comap](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/comap--4c33fa9c346cd94307490004.md) | 483 | `declaration-track:4c33fa9c346cd943074900046b1252564b4fed805ac8b216a745dd7f4c8f748e` |
| 55 | `theorem` | [comap_rel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/comap-rel--14a22f4c04d89a525471317f.md) | 488 | `result-track:14a22f4c04d89a525471317f00525242e9e50d738bb0eb05090bc9db86293907` |
| 56 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/muloneclass--b9e5b7861fcc3e88395f31c7.md) | 507 | `declaration-track:b9e5b7861fcc3e88395f31c7b78d46f86f62f95fa9512c7e966831a8322b837a` |
| 57 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/coe-one--754e2d1a04a18497c0926ee5.md) | 518 | `result-track:754e2d1a04a18497c0926ee59bc2ac2e22ce20ea05a5ee9d2a878b5ce805568f` |
| 58 | `instance` | [Quotient.inhabited](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/quotient-inhabited--04ef8cc3fa082304bdf6e32b.md) | 524 | `declaration-track:04ef8cc3fa082304bdf6e32b1ff4ed44395ce78943aa319309e9161e604c4fd9` |
| 59 | `theorem` | [pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/pow--80fe353b8f47b7640f0ce43c.md) | 533 | `result-track:80fe353b8f47b7640f0ce43c7bddd005baea1aee596d61c45e9c69c47e25767e` |
| 60 | `instance` | [one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/one--90c53049bb035f504a2e242c.md) | 539 | `declaration-track:90c53049bb035f504a2e242cb3d717527d528c1cdc44563611f45ac69bdc2389` |
| 61 | `instance` | [_root_.AddCon.Quotient.nsmul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/root-addcon-quotient-nsmul--ffaedaf20bacd389cab54cfa.md) | 547 | `declaration-track:ffaedaf20bacd389cab54cfaff1e9f2b60dfe2b2f7ba1c7082f009de1c864382` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/instance--2d55bc1a299d08c48dfff2dd.md) | 552 | `declaration-track:2d55bc1a299d08c48dfff2dd7973866fa2482d486645fe48d2e0ce40cd44d030` |
| 63 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/semigroup--03f50200663a4f29b2e2af2a.md) | 558 | `declaration-track:03f50200663a4f29b2e2af2a27972fc24fa94d374dba9f2c9ae3015d42821de9` |
| 64 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/commsemigroup--2cbd68acaac1bc89d21ab57e.md) | 564 | `declaration-track:2cbd68acaac1bc89d21ab57eda2474af9cb9dba4c4292fa38bb2148ec4044d7d` |
| 65 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/monoid--70ce5fab0b7599dc4dee011d.md) | 570 | `declaration-track:70ce5fab0b7599dc4dee011d42bfb799273ef6878b656e19e4891978444d87e4` |
| 66 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/commmonoid--3ca8e07ddf38a7b8ae753d7a.md) | 576 | `declaration-track:3ca8e07ddf38a7b8ae753d7abd5742dceab0d517f023257419518179e34694b3` |
| 67 | `theorem` | [map_of_mul_left_rel_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/map-of-mul-left-rel-one--1d05a7638726717fb562405e.md) | 591 | `result-track:1d05a7638726717fb562405e37d9dc356626b696c4d63aa6fe4768298a057c90` |
| 68 | `theorem` | [inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/inv--e14232ac3ff644bb31c94c31.md) | 610 | `result-track:e14232ac3ff644bb31c94c311ff7bc928e7b43257c172366e1be531113dc034a` |
| 69 | `theorem` | [div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/div--ffa770df82614f89478d530b.md) | 615 | `result-track:ffa770df82614f89478d530bf9409c9d23762104f8f59af753e732f78a41acb4` |
| 70 | `theorem` | [zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/zpow--a40ec73bfde9deb735020d70.md) | 620 | `result-track:a40ec73bfde9deb735020d7093dd6eba9960ea9ae786512de805ae8b9a6558dc` |
| 71 | `instance` | [hasInv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/hasinv--eeda525e599a1e668edfdcd3.md) | 628 | `declaration-track:eeda525e599a1e668edfdcd3ad143f2e0339b734955b74f7b3551423467e2c99` |
| 72 | `instance` | [hasDiv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/hasdiv--9b9dd76b9895998fa2d398d3.md) | 635 | `declaration-track:9b9dd76b9895998fa2d398d36ae2690e8aaabf3ccb8ab919c2603d9ec40a793a` |
| 73 | `instance` | [_root_.AddCon.Quotient.zsmul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/root-addcon-quotient-zsmul--0c7971ec9311c7bfeb10b84a.md) | 640 | `declaration-track:0c7971ec9311c7bfeb10b84ae2b6ca8550cb02fe73aed3ecb5c6424d0f1dc15b` |
| 74 | `instance` | [zpowinst](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/zpowinst--a0d82876060625056cf59b2f.md) | 647 | `declaration-track:a0d82876060625056cf59b2f285b3cc0d95cdc422210ae26f4da53bca2c51d6f` |
| 75 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/group--3568cffb5df54790a2fb95f6.md) | 653 | `declaration-track:3568cffb5df54790a2fb95f6166a384556d3f40481e60c7393984ac4e8ba5ad9` |
| 76 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/commgroup--5e9be6055d8dedba3eaabb56.md) | 660 | `declaration-track:5e9be6055d8dedba3eaabb56482c7018e0b9ccbd8aef731bfe774e2f1e72e497` |
| 77 | `def` | [liftOnUnits](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/liftonunits--e669517bcf653f0d8f1d321b.md) | 675 | `declaration-track:e669517bcf653f0d8f1d321bb16afced745f0a1caedee08b7310d84a36c3e60b` |
| 78 | `theorem` | [liftOnUnits_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/liftonunits-mk--714ec2244b75e0ef35b41bfd.md) | 699 | `result-track:714ec2244b75e0ef35b41bfdecf2a49d0c269f5285c0e18f7b7cc962b2d40a6f` |
| 79 | `theorem` | [induction_on_units](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant6d58a395898a7b0c71228129a0f6afc11422d4e4473655a3dd9916ff2ccb2143.lean/declarations/induction-on-units--f3258482d71c4ca21e00d4f3.md) | 706 | `result-track:f3258482d71c4ca21e00d4f35363758da3501b944a1d83997ddd1a62d67d071a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

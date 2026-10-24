# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f388dad1e03416dbd04aff5a7adb3c06eaf705",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f388dad1e03416dbd04aff5a7adb3c06eaf705`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.UnionLift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/map-continuousat--962d386395e9491285791091.md) | 28 | `result-track:962d386395e949128579109116b1c418ad2bc596c1235a42aa95579a00e7d522` |
| 2 | `theorem` | [map_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/map-continuouswithinat--c9e648ccd1b198238176e8fc.md) | 31 | `result-track:c9e648ccd1b198238176e8fcba3f2c301fefa566fd85e9b6958db7414e914e34` |
| 3 | `theorem` | [continuousAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/continuousat--6a39925674fccb7a43f759c7.md) | 47 | `result-track:6a39925674fccb7a43f759c73930c80259426a2fb7c0242671130cb9983632df` |
| 4 | `theorem` | [map_specializes](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/map-specializes--7f2e85375ac2b8519a270003.md) | 50 | `result-track:7f2e85375ac2b8519a27000380e443261721538a7ca9668243a669a36445bbe6` |
| 5 | `def` | [equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/equivfnofdiscrete--8e590c398702f09d7fcb7784.md) | 60 | `declaration-track:8e590c398702f09d7fcb77843ceaf292feb55439546ec3e7e0e773a0e87b4b17` |
| 6 | `lemma` | [coe_equivFnOfDiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-equivfnofdiscrete--6250037de33257a66981e09f.md) | 66 | `result-track:6250037de33257a66981e09fb9d77af8abaaab68cac9e3ef03a97e42bfdeee68` |
| 7 | `lemma` | [equivFnOfDiscrete_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/equivfnofdiscrete-symm-apply--dff6c74e4caab36b7e8ac179.md) | 68 | `result-track:dff6c74e4caab36b7e8ac179f69869aafd10d198f9018a7d9ee3eb70d90347c6` |
| 8 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/id--7a8659bbd2fe33a912fce1ba.md) | 75 | `declaration-track:7a8659bbd2fe33a912fce1bad3510a53aa401b5150f25b2431e7b4a11c1564a7` |
| 9 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-id--e634b29af304fcd81e618e05.md) | 79 | `result-track:e634b29af304fcd81e618e054eb951fd330667d099f107253b36bc31a860797c` |
| 10 | `def` | [const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/const--66f9bc43dd4c7665c1bf5368.md) | 83 | `declaration-track:66f9bc43dd4c7665c1bf53681d721a5b9d956d3e3bf6458aa08126704a5dfbcc` |
| 11 | `theorem` | [coe_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-const--930d060f3d62280425376332.md) | 87 | `result-track:930d060f3d622804253763325036ea839112c4ea9f609b9b6d251b4cf90ca2c9` |
| 12 | `def` | [constPi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/constpi--56191975468bbf8de98b36bd.md) | 92 | `declaration-track:56191975468bbf8de98b36bdf861eaed56cf1e902160ca4393be0be78fee6330` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/instance--2c3628568981e5203f9cd5bf.md) | 95 | `declaration-track:2c3628568981e5203f9cd5bf8ca8fd4c085243000ee3a771fb2f15bfc7f9be54` |
| 14 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/id-apply--9d6568e9876264ea7a8f14b7.md) | 101 | `result-track:9d6568e9876264ea7a8f14b733033775c1b2d6ce428c6c32a2dd5d860f7cffc1` |
| 15 | `theorem` | [const_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/const-apply--1a29d13641d6e3aa81d29955.md) | 105 | `result-track:1a29d13641d6e3aa81d29955306d3f90bce3e7fa7a3df660a64d56871c06f687` |
| 16 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/comp--f9d312e66caafb95a8dad5fb.md) | 109 | `declaration-track:f9d312e66caafb95a8dad5fb5fa0620daea0e05fa365aedb06f23819ddab2b4e` |
| 17 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-comp--d461cbb3e7da05437da598c6.md) | 113 | `result-track:d461cbb3e7da05437da598c65d3a6fb5044a73d181fe743aff3e51a51aa32a6c` |
| 18 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/comp-apply--8b6df10c6e184757ee6dafd3.md) | 117 | `result-track:8b6df10c6e184757ee6dafd3a81c54107b1d9f1791bd57c06ecdedf739ae88de` |
| 19 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/comp-assoc--88fabc800c242fade1e3c577.md) | 121 | `result-track:88fabc800c242fade1e3c577a0ba661c755c50720598862992cfffb940cf88ea` |
| 20 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/id-comp--37f0fbfa44ff283d2541b74c.md) | 126 | `result-track:37f0fbfa44ff283d2541b74c62b3ede939e27f8ad7dd2b3e2c0b051c4ad4e22b` |
| 21 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/comp-id--2cb2325dfa2dc86df99adcef.md) | 130 | `result-track:2cb2325dfa2dc86df99adcefaa034e044ed17d503c52f1af47de624bed14e398` |
| 22 | `theorem` | [const_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/const-comp--98fa9da83d6f437e1974e9e6.md) | 134 | `result-track:98fa9da83d6f437e1974e9e6d0ab8f97a00aa9cc94756e600bc3d4d7e78e1c1e` |
| 23 | `theorem` | [comp_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/comp-const--68d6f6c3ccfeebf239b04197.md) | 138 | `result-track:68d6f6c3ccfeebf239b041977c505077bda9844e9f93dabbf307647a0def188b` |
| 24 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/cancel-right--e18392707f9af80ec30b505f.md) | 142 | `result-track:e18392707f9af80ec30b505fa0a98c9e8cc4d16bf0fb9ae7e330a7b7f72be1a6` |
| 25 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/cancel-left--d38573e59a36259c389913d9.md) | 147 | `result-track:d38573e59a36259c389913d9333ba7f8156fac649fd314974b09ff3187d29fa5` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/instance--de6e17aafa9a57214e7f8b06.md) | 151 | `declaration-track:de6e17aafa9a57214e7f8b063f585ab028f04243377f2385a49ef58f1805afa6` |
| 27 | `def` | [fst](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/fst--106abdc957a63843a2564b8c.md) | 162 | `declaration-track:106abdc957a63843a2564b8cfe0277e170bac360f58276f85e1e5eb1b9d2ff31` |
| 28 | `def` | [snd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/snd--528afa562305f924e476f178.md) | 167 | `declaration-track:528afa562305f924e476f178d3a4c2573fea6d657e4c28d9651a8f649f3030e9` |
| 29 | `def` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/prodmk--a29cb7cce2e6b9c0eeb0ef9a.md) | 171 | `declaration-track:a29cb7cce2e6b9c0eeb0ef9aa045c7aa1dc9a901600ac29eff5edd715140f125` |
| 30 | `def` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/prodmap--49864efc66df4bedb1828c18.md) | 176 | `declaration-track:49864efc66df4bedb1828c18f83aa596f24e6377ae74edc44b16a951cdd8cd54` |
| 31 | `theorem` | [prod_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/prod-eval--c6ac9960b326b63fdc43b2bb.md) | 180 | `result-track:c6ac9960b326b63fdc43b2bb9db76fb31e3260fffd06f5dfc46b7d3408a4d3c2` |
| 32 | `def` | [prodSwap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/prodswap--b28b02dbfeafd6ba44a5b0ca.md) | 185 | `declaration-track:b28b02dbfeafd6ba44a5b0ca24d3ad98d7d9287805846494dc91d8cfe437bbcc` |
| 33 | `def` | [sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/sigmamk--874392410722e908c5db1829.md) | 195 | `declaration-track:874392410722e908c5db182992d3a86804c66628a106d30c01a7918fbce53197` |
| 34 | `def` | [sigma](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/sigma--c35f387bfd4b2889695096d5.md) | 203 | `declaration-track:c35f387bfd4b2889695096d5d885c19663231b68f8ba64c522c8bc85846c4c10` |
| 35 | `def` | [sigmaEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/sigmaequiv--d7604a5b4808176e71a1f73e.md) | 212 | `declaration-track:d7604a5b4808176e71a1f73edf028231765b0eedda02b56bda3a391a19f91d52` |
| 36 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/pi--cd6710f347c5fca898bc936d.md) | 226 | `declaration-track:cd6710f347c5fca898bc936d9d6344529389d09ee2c9bbc9d6fa2526556741aa` |
| 37 | `theorem` | [pi_eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/pi-eval--19513db312b12363412766aa.md) | 230 | `result-track:19513db312b12363412766aaab2316add8bd133408521194283a130b3d1e6bd8` |
| 38 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/eval--a7bdd0694d9582a1d773e0a9.md) | 235 | `declaration-track:a7bdd0694d9582a1d773e0a95a0d69032d73f043f09a0eab29556df72f049a00` |
| 39 | `def` | [piEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/piequiv--d7b9fbdd77e620a27287024d.md) | 244 | `declaration-track:d7b9fbdd77e620a27287024d13c9314f40a30615061d7db82bef2a59dc76f7bb` |
| 40 | `def` | [piMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/pimap--0fd404960f359c89e611512f.md) | 253 | `declaration-track:0fd404960f359c89e611512f42b5273e18cd4bdda63ed4feac770da3c9ad674f` |
| 41 | `def` | [precomp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/precomp--a4557f736f2b130a1408d9ac.md) | 257 | `declaration-track:a4557f736f2b130a1408d9ac7fb78a4933589c7ec82d1eb886fde320e0a81806` |
| 42 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/restrict--fe9ca1d16f0669c6bf012706.md) | 267 | `declaration-track:fe9ca1d16f0669c6bf012706154e9f560b9f729d192618a9c169cd52cf4a3509` |
| 43 | `theorem` | [coe_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-restrict--d67cee254910473c41774642.md) | 271 | `result-track:d67cee254910473c417746422bb42fa5656f1e527ea3bd5f52ee7163c4ebfb0c` |
| 44 | `theorem` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/restrict-apply--1aefdaa7ee55e10112abd877.md) | 275 | `result-track:1aefdaa7ee55e10112abd877ea8b6decd444e69c3743fa00ad5573d5dc745380` |
| 45 | `theorem` | [restrict_apply_mk](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/restrict-apply-mk--3b5d77380ef8ac8b491ef211.md) | 279 | `result-track:3b5d77380ef8ac8b491ef21185f83316a08b447d4e1af16b28726632c6afba54` |
| 46 | `theorem` | [injective_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/injective-restrict--e6ccb6810fdecb5e6d7e3b61.md) | 283 | `result-track:e6ccb6810fdecb5e6d7e3b61b213ce07e3507e11c3937c3871dd7ebcb32acb04` |
| 47 | `def` | [restrictPreimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/restrictpreimage--66b8797bdb32a2725e7fac93.md) | 290 | `declaration-track:66b8797bdb32a2725e7fac936fe0d1aa984e6093ffc213e7faf51390f23ee641` |
| 48 | `def` | [liftCover](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover--8cbcbdc89ee9d794e4a4742b.md) | 305 | `declaration-track:8cbcbdc89ee9d794e4a4742b52667f8fb8244d017d3b887faf978b3e2574981f` |
| 49 | `theorem` | [liftCover_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover-coe--17e77d35dd37432fe28d60f5.md) | 316 | `result-track:17e77d35dd37432fe28d60f5c81f7db6c44df91da58603228f3c0461ba815d2f` |
| 50 | `theorem` | [liftCover_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover-restrict--fadf29cdc8e8341d783e365d.md) | 320 | `result-track:fadf29cdc8e8341d783e365d578a3a7b3cd3e3eece1e256ede9ddb9905b18e5f` |
| 51 | `def` | [liftCover'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover--998e5ceae0e020019dce538f.md) | 332 | `declaration-track:998e5ceae0e020019dce538f2818d34d3bf20e5984d95ff1a3bc77a2ac1a8d95` |
| 52 | `theorem` | [liftCover_coe'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover-coe--c66a362de6d9922351519a91.md) | 343 | `result-track:c66a362de6d9922351519a911fef4f1d6637dbc473190a1bb713c2e4a7e2967e` |
| 53 | `theorem` | [liftCover_restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftcover-restrict--5c6262c9af9ab7be2717b44a.md) | 348 | `result-track:5c6262c9af9ab7be2717b44a829e28af59d64935389e0faba13525fe9580c30f` |
| 54 | `def` | [inclusion](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/inclusion--60c9f52719aef79e9033384c.md) | 354 | `declaration-track:60c9f52719aef79e9033384ca96efa16e491662aafda542d3cb1491b635cc639` |
| 55 | `def` | [Function.RightInverse.homeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/function-rightinverse-homeomorph--4d811b3efa7b0cb0bda01f74.md) | 367 | `declaration-track:4d811b3efa7b0cb0bda01f74dce9fb993a4343f9bf5893b282de27866a173573` |
| 56 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/homeomorph--ff5d93771c97a0e5eb91a1ea.md) | 380 | `declaration-track:ff5d93771c97a0e5eb91a1ea40e2ddc7c08ee25a97ca1e6b7204fa0faf572300` |
| 57 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/lift--c51217e2bad8657ddec9c64c.md) | 395 | `declaration-track:c51217e2bad8657ddec9c64c8764fac455dc2f6e2c8fc28685808ba0428eb5d3` |
| 58 | `theorem` | [lift_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/lift-comp--d194c01112ec39cb083da8c5.md) | 412 | `result-track:d194c01112ec39cb083da8c5f66a04ed38e83b709247fbb33bf0dd3bbac74381` |
| 59 | `def` | [liftEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/liftequiv--d9896fb98afd055b24d79779.md) | 418 | `declaration-track:d9896fb98afd055b24d79779064ced22590548214d293837158a0ebe41fee04c` |
| 60 | `instance` | [instContinuousMapClass](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/instcontinuousmapclass--e5b91fd72f8bec4f625280d3.md) | 435 | `declaration-track:e5b91fd72f8bec4f625280d3a8157c90643e62879354cc117693971be55b1b26` |
| 61 | `theorem` | [coe_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-refl--f0f0d789b2f701244833debf.md) | 439 | `result-track:f0f0d789b2f701244833debfc6a0c64b694abef53ae025d73317d34e90def6d9` |
| 62 | `theorem` | [coe_trans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/coe-trans--053680608d5ebcfea59eed8a.md) | 443 | `result-track:053680608d5ebcfea59eed8a115db146ae0f0ed71cf3e36dd74ba55946849152` |
| 63 | `theorem` | [symm_comp_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/symm-comp-tocontinuousmap--8c87481d4679bbaf68cd5abf.md) | 448 | `result-track:8c87481d4679bbaf68cd5abf9629971c54ce616c933281f69e76780540c5a851` |
| 64 | `theorem` | [toContinuousMap_comp_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant3571c5f719ba1835d92491c89be1876cdea3c8db78261a171187f9d35bc5ecc0.lean/declarations/tocontinuousmap-comp-symm--532946b03a352f2c4f535038.md) | 454 | `result-track:532946b03a352f2c4f535038d9809a4aef6da97cac48b1dae172b465e229398e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

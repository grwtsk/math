# Verification target: GRWTSK.Algebra.Basic.Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43c5ad6059f4ee16137d18d8ef5c32ac7f89abb2`.

Source path: `GRWTSK/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean.json)

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
| 1 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/mappievalringhom--830d15b568edd9dc0c52d6cb.md) | 95 | `declaration-track:830d15b568edd9dc0c52d6cb5a6fd8608b06a540807bffaf241c450678b38f24` |
| 2 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/mappievalringhom-bijective--2985c7c714709f3d4505ee57.md) | 100 | `result-track:2985c7c714709f3d4505ee57384c0aebab6f824bc51f49fde1d485c30ccb5330` |
| 3 | `lemma` | [finite](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/finite--a0dd1c3a9495cc65f1510c42.md) | 132 | `result-track:a0dd1c3a9495cc65f1510c42ab20c8c1ffea3aad7b3837d74793228b39173ba8` |
| 4 | `theorem` | [linearMap_compatibleSMul](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/linearmap-compatiblesmul--73b52e2708853527270e3050.md) | 143 | `result-track:73b52e2708853527270e30507ebe78ff657a9af2775d5c7800450677b487f8fe` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--8adb56f046f8636b6676e764.md) | 151 | `declaration-track:8adb56f046f8636b6676e7647e52ebd8e4947f293e2492acf674893c1681fddf` |
| 6 | `theorem` | [algHom_subsingleton](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/alghom-subsingleton--365ea6c0da40e84e4dcecf82.md) | 163 | `result-track:365ea6c0da40e84e4dcecf82d06b8527ff4129ffee827dafda6ebb9fc11dff9c` |
| 7 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv--e72d234b1a126f893f986252.md) | 179 | `declaration-track:e72d234b1a126f893f9862520afc4e846d5a8a34e8cd8fe35e88562479c74afb` |
| 8 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-mk--5352534f5b98f2466abda5da.md) | 185 | `result-track:5352534f5b98f2466abda5dab5d45e85aea4946c99473bda245d3db2cb765bc8` |
| 9 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-symm-mk--10d5366bc65e290faacd666c.md) | 188 | `result-track:10d5366bc65e290faacd666cbd13ca739c4ed9a121c02bf3cb1c1949fa2b0780` |
| 10 | `lemma` | [bijective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/bijective--d15a2b911c3fcbfe900631d1.md) | 192 | `result-track:d15a2b911c3fcbfe900631d1dca4d89c93aac28e76eb044b2dcc303353ad3071` |
| 11 | `def` | [liftAlgHom](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/liftalghom--042d9857af591eba537f01a9.md) | 210 | `declaration-track:042d9857af591eba537f01a94750bbbfb50d460e97420a39a7bd55ebfdc5ea54` |
| 12 | `theorem` | [liftAlgHom_toRingHom](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/liftalghom-toringhom--88579e7d8be05a147ef6b14f.md) | 214 | `result-track:88579e7d8be05a147ef6b14fb1b61b22c097261a65a3c410295c63ecaf292872` |
| 13 | `theorem` | [coe_liftAlgHom](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/coe-liftalghom--5e502407fd90d3f05b4b9e2a.md) | 217 | `result-track:5e502407fd90d3f05b4b9e2ac5715c785b720b75c650085c7e12a0a94b314f23` |
| 14 | `theorem` | [liftAlgHom_apply](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/liftalghom-apply--276c5cd52ae5d4808184b3e6.md) | 219 | `result-track:276c5cd52ae5d4808184b3e689bbcc7c50040cca79c3295ecf5268b40767b90f` |
| 15 | `def` | [algEquivOfAlgEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequivofalgequiv--da960d663cefc16532836519.md) | 240 | `declaration-track:da960d663cefc165328365190897b1f3d7456ffbfbd05f584c7ae4ec02650dd9` |
| 16 | `theorem` | [algEquivOfAlgEquiv_eq_map](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequivofalgequiv-eq-map--488ea96eb966c666a4fa9503.md) | 247 | `result-track:488ea96eb966c666a4fa9503b75385aab3a6131f808c6eb4f71065a733fff91e` |
| 17 | `theorem` | [algEquivOfAlgEquiv_eq](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequivofalgequiv-eq--b0e9e80e09a27ef36fe4ff8d.md) | 253 | `result-track:b0e9e80e09a27ef36fe4ff8d06cbbee88ad1f478bb664ee0aa6598dd9ee0a3c4` |
| 18 | `theorem` | [algEquivOfAlgEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequivofalgequiv-mk--aac14c9c3601dd5779de0041.md) | 259 | `result-track:aac14c9c3601dd5779de00416cd4db77e4e7a0662cadb50394138033c7984ee3` |
| 19 | `theorem` | [algEquivOfAlgEquiv_symm](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequivofalgequiv-symm--6280abb6479997687cc6d2de.md) | 264 | `result-track:6280abb6479997687cc6d2dee65b5488bb381d710496f1c0568208a9eb811fac` |
| 20 | `lemma` | [smul_mem_iff](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/smul-mem-iff--0f88ccdfb0617a89aea6f907.md) | 280 | `result-track:0f88ccdfb0617a89aea6f9079ecd965cfa380059e8b75285ab9878fa2bd3b7a4` |
| 21 | `lemma` | [of_le_isUnit_of_bijective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/of-le-isunit-of-bijective--9eae7a919c96acb345744f6c.md) | 290 | `result-track:9eae7a919c96acb345744f6ced14a9090d2d35b2ca994dc274036e55d8ebf089` |
| 22 | `lemma` | [of_le_isUnit](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/of-le-isunit--0140f26a222bbcda6d2f3885.md) | 301 | `result-track:0140f26a222bbcda6d2f3885d281a860c020ed9f5b91eb44fa9cdb9720fac130` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--5384bfebbea688d61835f70d.md) | 307 | `declaration-track:5384bfebbea688d61835f70dc4b043c62420c609c47e086a875b4967e2f69738` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--9ddb37ac107f46f6d7f437cf.md) | 309 | `declaration-track:9ddb37ac107f46f6d7f437cfb294751657bcf78bf04eefdc6d94e1859b49e0b5` |
| 25 | `def` | [atUnits](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/atunits--dddb7be6cd799f44646bacc5.md) | 315 | `declaration-track:dddb7be6cd799f44646bacc5e98d67fd1084a4fd025874f0302a4939ae06aa12` |
| 26 | `theorem` | [isLocalization_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-of-algequiv--c1d2a5e488bbfc32730da63a.md) | 337 | `result-track:c1d2a5e488bbfc32730da63a1d9721bb7b7c8ffd5cb42f5b8dfb61aa8ce0fe00` |
| 27 | `theorem` | [self](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/self--f1f1738e03e9e8d4509b18f9.md) | 354 | `result-track:f1f1738e03e9e8d4509b18f97e587e6a33fa8002712a70ec9b756995222b1ec3` |
| 28 | `theorem` | [isLocalization_iff_of_algEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-iff-of-algequiv--3fe078245519c31c1da2ad2a.md) | 357 | `result-track:3fe078245519c31c1da2ad2aa382b98e4ee8c3140d8eb4732caf9b7353e2aa7a` |
| 29 | `theorem` | [isLocalization_iff_of_ringEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-iff-of-ringequiv--012c55a27cffcb004fcdc3a1.md) | 361 | `result-track:012c55a27cffcb004fcdc3a16986ad8dc1bfa2086dc749a8300d91cc1eeb3e12` |
| 30 | `theorem` | [isLocalization_iff_of_isLocalization](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-iff-of-islocalization--1af2db8ee0d0b1a7eef1a402.md) | 370 | `result-track:1af2db8ee0d0b1a7eef1a4023990531ce5dc4f3e0919bb94b5401e861a453157` |
| 31 | `theorem` | [iff_of_le_of_exists_dvd](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/iff-of-le-of-exists-dvd--6ca0446581d2f256ae2625a8.md) | 375 | `result-track:6ca0446581d2f256ae2625a86ec86eced9363931187352c769ff9f4177a413ab` |
| 32 | `lemma` | [commutes](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/commutes--9cdf82812c2a35de54475114.md) | 387 | `result-track:9cdf82812c2a35de54475114603614950fedf2bf24e0052c4fb1f88f3e5547f2` |
| 33 | `theorem` | [algEquiv_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-comp-algebramap--b926765d39ab1ffa154af135.md) | 432 | `result-track:b926765d39ab1ffa154af135fe4acce0318a90d6466f40237aa094bc9997f34b` |
| 34 | `theorem` | [algEquiv_comp_algebraMap_apply](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-comp-algebramap-apply--781550d0c99c7f8d81955516.md) | 440 | `result-track:781550d0c99c7f8d81955516c185c3402b04fa8bcdf51a2ba009e194d12472c7` |
| 35 | `theorem` | [mk_natCast](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/mk-natcast--e9757c9c078594df4ccb4c81.md) | 452 | `result-track:e9757c9c078594df4ccb4c81197843f234e41c1ae652a2f776dd79e6c10ec689` |
| 36 | `def` | [algEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv--8644386bc8794a0759313b91.md) | 463 | `declaration-track:8644386bc8794a0759313b91674276a83f73c805683f399b3476f762f6e75e00` |
| 37 | `def` | [_root_.GRWTSK.Algebra.MapPiEvalRingHom.Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.IsLocalization.unique](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/root-grwtsk-algebra-mappievalringhom-variant770408aa83260eb06bd451a4c00e--b490a7497943805d0b891795.md) | 468 | `declaration-track:b490a7497943805d0b891795c2a11c4d3d6a07fa3115b23e7f4ac23d8b01ddc2` |
| 38 | `theorem` | [algEquiv_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-mk--515096f946a9dabfe3e602ca.md) | 475 | `result-track:515096f946a9dabfe3e602caf1989c476d33e9081a25037653f3a6a6447cb5a1` |
| 39 | `theorem` | [algEquiv_symm_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-symm-mk--8a39b8ab0efeb0835e199eca.md) | 478 | `result-track:8a39b8ab0efeb0835e199ecae5c79c8bff52f849db2d8a404913a2cee5bcc82c` |
| 40 | `theorem` | [algEquiv_mk](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-mk--7450104e9152f1931431b07a.md) | 482 | `result-track:7450104e9152f1931431b07ac8667d33fec3aef977dcbad981b75b1ea89c1256` |
| 41 | `theorem` | [algEquiv_symm_mk](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-symm-mk--4a535016abf501ce26b381fd.md) | 484 | `result-track:4a535016abf501ce26b381fd88193b9bdd081e60249cc45553b6d85419a3818a` |
| 42 | `lemma` | [coe_algEquiv](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/coe-algequiv--0f74288d150d690a141cfaa8.md) | 487 | `result-track:0f74288d150d690a141cfaa836c26c3f342b676f28b169b8f7e1cc13b0b499aa` |
| 43 | `lemma` | [coe_algEquiv_symm](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/coe-algequiv-symm--4eaf9a391df51242d8bfb6e3.md) | 491 | `result-track:4eaf9a391df51242d8bfb6e3384699a7db8d2532404636c9aa2a29486a17873e` |
| 44 | `theorem` | [IsField.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/isfield-localization-map-bijective--087bf6fb1ea3b5dabe6a749f.md) | 500 | `result-track:087bf6fb1ea3b5dabe6a749f1b873a4ff0096cfe34fa780f2c456c0f8e5b21d5` |
| 45 | `theorem` | [Field.localization_map_bijective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/field-localization-map-bijective--49a3e8c334ca4c452d7bdab0.md) | 511 | `result-track:49a3e8c334ca4c452d7bdab0a7214a1d8d919bff5acc55ce94d363e5c0030512` |
| 46 | `def` | [localizationAlgebra](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localizationalgebra--976eb6e1a5b521fade88ef69.md) | 539 | `declaration-track:976eb6e1a5b521fade88ef693f545828da9df0903318d6ae1b6da80fa6355eaf` |
| 47 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--ca2f5e809ff237bb36fc5039.md) | 544 | `declaration-track:ca2f5e809ff237bb36fc50397315e0342c6357c11edb7069b9a1ec709f28f30f` |
| 48 | `lemma` | [isScalarTower_localizationAlgebra](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/isscalartower-localizationalgebra--c2d95a86059e64da39b69ec4.md) | 549 | `result-track:c2d95a86059e64da39b69ec48aedd629918956e9ded34c5242c97d25508c53d4` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--0f2f82eeec8aabff9b4c8524.md) | 556 | `declaration-track:0f2f82eeec8aabff9b4c8524117bb274a363b553d773965f260a84c8ed6d6b69` |
| 50 | `theorem` | [IsLocalization.map_units_map_submonoid](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-map-units-map-submonoid--b41e7807b372cc6b566a5594.md) | 566 | `result-track:b41e7807b372cc6b566a5594a729f61d849533d5874845b478cb23582cdb70cf` |
| 51 | `theorem` | [IsLocalization.algebraMap_mk'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-algebramap-mk--acf3724dcc443207f3bd2eb0.md) | 571 | `result-track:acf3724dcc443207f3bd2eb0ec5d87b7b2296f75305cb7c941546cbbd3070e5a` |
| 52 | `theorem` | [IsLocalization.algebraMap_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-algebramap-eq-map-map-submonoid--c24f1b3d684eae300b3a08e9.md) | 590 | `result-track:c24f1b3d684eae300b3a08e9fb5d11515ef0ee70078b8fded44ec20d7d0c11af` |
| 53 | `theorem` | [IsLocalization.algebraMap_apply_eq_map_map_submonoid](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-algebramap-apply-eq-map-map-submonoid--e6af9aa5bf9d7a714abb0339.md) | 605 | `result-track:e6af9aa5bf9d7a714abb033910fa24e80183dc0500cde63fce2dbfcdb8dbcac0` |
| 54 | `theorem` | [IsLocalization.lift_algebraMap_eq_algebraMap](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-lift-algebramap-eq-algebramap--07ba39b79bb5a906025b9081.md) | 611 | `result-track:07ba39b79bb5a906025b90814c0358a7664f0e39c01c054abbbe0b1f6a9dce61` |
| 55 | `theorem` | [localizationAlgebraMap_def](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localizationalgebramap-def--354443c0b1aac086e09a1360.md) | 620 | `result-track:354443c0b1aac086e09a1360ca8a4d72a7aaf9c21a5869ca0cb9ec8a88a07a34` |
| 56 | `theorem` | [localizationAlgebra_injective](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localizationalgebra-injective--5551d92c2a3f702cb34b4ba0.md) | 627 | `result-track:5551d92c2a3f702cb34b4ba0dd5c58e8dae3c3323048fb09483df7b2cb385de3` |
| 57 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/instance--9929e877d5fccada72f8101a.md) | 632 | `declaration-track:9929e877d5fccada72f8101a001200953e3a4265b3b5095b491dcd286f2a3049` |
| 58 | `theorem` | [map_injective_of_injective'](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/map-injective-of-injective--df2e05f58d752766718d6bde.md) | 650 | `result-track:df2e05f58d752766718d6bde46cc7c21c3298f423aada59e33cc9a1f27721aa8` |
| 59 | `theorem` | [Localization.mk_intCast](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localization-mk-intcast--d97728b7a246cb0e4b2318f9.md) | 661 | `result-track:d97728b7a246cb0e4b2318f951b23c4e4e866c6b6e8f3f8d5841bbbe640025ba` |
| 60 | `theorem` | [Localization.r_iff_of_le_nonZeroDivisors](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localization-r-iff-of-le-nonzerodivisors--6a56d156c6f8b62474e43d32.md) | 664 | `result-track:6a56d156c6f8b62474e43d324ef07b10f5c7c72ccefc4bdf88a63fe7caa2557e` |
| 61 | `theorem` | [IsLocalization.algHom_ext](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/islocalization-alghom-ext--f05bfb8cb43ca0d182dcab13.md) | 680 | `result-track:f05bfb8cb43ca0d182dcab138a9664dbda5799eaa2b3e0cda1875045cc354191` |
| 62 | `theorem` | [Localization.algHom_ext](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/localization-alghom-ext--81fe37e4155e59f0f9c5aeee.md) | 691 | `result-track:81fe37e4155e59f0f9c5aeeebd3271f3154c1f96f170c7b2bd0c6cc18797bb50` |
| 63 | `def` | [AlgHom.extendScalarsOfIsLocalization](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/alghom-extendscalarsofislocalization--2e6fdbdb4ae748d74a0255a3.md) | 707 | `declaration-track:2e6fdbdb4ae748d74a0255a3f280c60155140d6127b764aa35feafc7c3c0ed80` |
| 64 | `theorem` | [AlgHom.extendScalarsOfIsLocalization_apply](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/alghom-extendscalarsofislocalization-apply--e1238c1667f79b4a1de24f20.md) | 718 | `result-track:e1238c1667f79b4a1de24f208e7d68b2fb667a161c75bb2085d5f758a6b2ba81` |
| 65 | `def` | [AlgEquiv.extendScalarsOfIsLocalization](../../../../mathematics/Algebra/Basic/Variant44c2005992e57b760efaa710ad7623ff02b1afe0a793a363fde000e55eae471d.lean/declarations/algequiv-extendscalarsofislocalization--dd60f9de61e5fb66e64411b8.md) | 725 | `declaration-track:dd60f9de61e5fb66e64411b8982594cf1773fb19895c84ae472ca9ddb09f83bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

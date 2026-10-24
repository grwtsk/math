# Verification target: GRWTSK.Algebra.Basic.Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97618acb5e87b04371c918dd6e2ecf1defdae322",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97618acb5e87b04371c918dd6e2ecf1defdae322`.

Source path: `GRWTSK/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonnegHomClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/nonneghomclass--8a5ba9f312b3f9c32881acad.md) | 84 | `declaration-track:8a5ba9f312b3f9c32881acad5ebd4ec01990b923d0dec8b72bb7c6fce386bfd8` |
| 2 | `class` | [SubadditiveHomClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/subadditivehomclass--b66d5b90ce87a13c6ec0f7f2.md) | 89 | `declaration-track:b66d5b90ce87a13c6ec0f7f2ccb9fb3b0f324cab0debe6b4fa06c9889bd3181e` |
| 3 | `class` | [SubmultiplicativeHomClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/submultiplicativehomclass--3b7be6d216706861f6e3df2c.md) | 96 | `declaration-track:3b7be6d216706861f6e3df2c7694f423cee96309372153111164019adecbe9f6` |
| 4 | `class` | [MulLEAddHomClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/mulleaddhomclass--81f49d1d137b31efde4d194a.md) | 103 | `declaration-track:81f49d1d137b31efde4d194acae749ad37fa070ae9b8d8cc133ffeeeef6f754c` |
| 5 | `class` | [NonarchimedeanHomClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/nonarchimedeanhomclass--86e29275e687f92a20977352.md) | 109 | `declaration-track:86e29275e687f92a209773522cec9c0173e4cc3afb75199c05ec37e0979eaf57` |
| 6 | `theorem` | [le_map_mul_map_div](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/le-map-mul-map-div--852b0ef17dfb2d4e1c5c827e.md) | 129 | `result-track:852b0ef17dfb2d4e1c5c827e7825a35aa954fe320d13080e5c5afb49878ad954` |
| 7 | `theorem` | [le_map_add_map_div](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/le-map-add-map-div--cc00490e0a9480ff2931e2e7.md) | 134 | `result-track:cc00490e0a9480ff2931e2e7468f2c9c146e80ca1d032900b7fe03d8544c8e94` |
| 8 | `theorem` | [le_map_div_mul_map_div](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/le-map-div-mul-map-div--8c7f77e4c0d4ffff020783ac.md) | 139 | `result-track:8c7f77e4c0d4ffff020783ac0bc15358281188e111b19499a05e0859ea2379ad` |
| 9 | `theorem` | [le_map_div_add_map_div](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/le-map-div-add-map-div--db3c49abf18b087c4dc2b9c0.md) | 144 | `result-track:db3c49abf18b087c4dc2b9c0880b822c16701c76a84ea6c4d5fe01e7ffcff5c5` |
| 10 | `def` | [evalMap](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/evalmap--f37460fa8184852b8cc18eda.md) | 154 | `declaration-track:f37460fa8184852b8cc18eda6b79cd073283d3fcfe2ac69a1a5897d4363fc908` |
| 11 | `class` | [AddGroupSeminormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/addgroupseminormclass--968be1534b6539d684ee7f17.md) | 169 | `declaration-track:968be1534b6539d684ee7f1701ac426b4f360cc28e88e0801b2b4a31cc8d8ce4` |
| 12 | `class` | [GroupSeminormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/groupseminormclass--651d6fbb91cf7c58e92111c8.md) | 181 | `declaration-track:651d6fbb91cf7c58e92111c8d9b465574c279d8e479d871f5e4a656797701b05` |
| 13 | `class` | [AddGroupNormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/addgroupnormclass--f28dcb29f0d66699ad524d5a.md) | 193 | `declaration-track:f28dcb29f0d66699ad524d5a2ab8a5da73e83c0844ad7544c531e76221d2d049` |
| 14 | `class` | [GroupNormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/groupnormclass--c4871bab8b20296f04503253.md) | 203 | `declaration-track:c4871bab8b20296f045032539f0f8e654ed80a9304b423417b7057eda911a26e` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/instance--cf8a66d8d486e57f17c64cb0.md) | 226 | `declaration-track:cf8a66d8d486e57f17c64cb0cc84baa25fa80e55a6522a79a1535911d0579b51` |
| 16 | `theorem` | [map_div_le_add](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/map-div-le-add--3dfe0f711a3e795a72f0c6fb.md) | 235 | `result-track:3dfe0f711a3e795a72f0c6fbdcd033b77e3a0eb869b55dfe0212a4faba54b516` |
| 17 | `theorem` | [map_div_rev](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/map-div-rev--407c7ce9a6fd67517c8545b7.md) | 240 | `result-track:407c7ce9a6fd67517c8545b7378cbdfc38b37fd6ca27106cba8ef6f5ddba881f` |
| 18 | `theorem` | [le_map_add_map_div'](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/le-map-add-map-div--27e564a93cc68093df797334.md) | 243 | `result-track:27e564a93cc68093df7973346cb491c2a5c0e94b1e181ce868d4f83b9ffe3141` |
| 19 | `theorem` | [abs_sub_map_le_div](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/abs-sub-map-le-div--3564c7cfa2d02e02aaacbc96.md) | 249 | `result-track:3564c7cfa2d02e02aaacbc96f1741e169cb4a625eed441375eb8502c92406c21` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/instance--6954ab8cfcaaffb236740c8f.md) | 257 | `declaration-track:6954ab8cfcaaffb236740c8f428090b452a6f0a148bbcfce4a5e95e794c90799` |
| 21 | `theorem` | [map_eq_zero_iff_eq_one](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/map-eq-zero-iff-eq-one--b1b9c4e084846acebb578288.md) | 271 | `result-track:b1b9c4e084846acebb578288d7a8e577c9c58298a64f7c73535d27bb4ddc9d85` |
| 22 | `theorem` | [map_ne_zero_iff_ne_one](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/map-ne-zero-iff-ne-one--4dbb0683e09cb4abeaf528e6.md) | 277 | `result-track:4dbb0683e09cb4abeaf528e6997ae7170ec08affeac83a0e9433ae7ac12b4190` |
| 23 | `theorem` | [map_pos_of_ne_one](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/map-pos-of-ne-one--6fbb3ff922c048ab57c78436.md) | 283 | `result-track:6fbb3ff922c048ab57c784361ec955a2373e5b6922bace5145415bb62103c5f5` |
| 24 | `class` | [RingSeminormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/ringseminormclass--69f76713ff4129ade23a17f2.md) | 294 | `declaration-track:69f76713ff4129ade23a17f2eca4e27ff7f0c13791441e27254b3b1d3f1434c6` |
| 25 | `class` | [RingNormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/ringnormclass--95546a1ca5750a440688f2e9.md) | 301 | `declaration-track:95546a1ca5750a440688f2e902503dedeb2b8a10ac88b9dec7e2779e8344c21e` |
| 26 | `class` | [MulRingSeminormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/mulringseminormclass--248b0a026329b679581b7648.md) | 309 | `declaration-track:248b0a026329b679581b764894c20cde99badfa7da4b072deb7c30eb48c3b4a6` |
| 27 | `class` | [MulRingNormClass](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/mulringnormclass--00bcbf8a8901f83e2cae25d6.md) | 321 | `declaration-track:00bcbf8a8901f83e2cae25d6fd04966235c41d7409ab9cb538e1571bf9d32030` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/instance--393b95384750037ca04350a1.md) | 327 | `declaration-track:393b95384750037ca04350a11b57c9c34dce87b9ba3438c7255b18d7be5602b9` |
| 29 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/instance--c85d643f7a173d04c4604707.md) | 333 | `declaration-track:c85d643f7a173d04c460470783b1f3bed5643f7b9008e9a72b8fe99ef94cce02` |
| 30 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant5330528645920938d1a389ac5a050d8dda72c2a852475cc04f6393f0afb05fc5.lean/declarations/instance--96e87ece90bdbd26e3dba9a7.md) | 338 | `declaration-track:96e87ece90bdbd26e3dba9a7619b341b80737c17884c097b22c5be98ddd8a08c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

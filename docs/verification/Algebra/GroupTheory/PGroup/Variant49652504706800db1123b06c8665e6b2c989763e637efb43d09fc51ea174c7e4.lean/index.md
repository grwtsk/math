# Verification target: GRWTSK.Algebra.GroupTheory.PGroup.Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a94d534642d53121cd507a93c59834f950c767bf",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a94d534642d53121cd507a93c59834f950c767bf`.

Source path: `GRWTSK/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ZMod.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.SpecificGroups.Cyclic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPGroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/ispgroup--4391c0012fbd5bd0b8d1ca79.md) | 32 | `declaration-track:4391c0012fbd5bd0b8d1ca792e83b9128819fefee0bca5e398c708f873d5fa3f` |
| 2 | `theorem` | [iff_orderOf](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/iff-orderof--6430a2b3521fb53d99596121.md) | 40 | `result-track:6430a2b3521fb53d9959612120070a0844696f4013cb1af72f79897e9e7bf78e` |
| 3 | `theorem` | [of_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/of-card--eefa8d815058390e03777cc5.md) | 48 | `result-track:eefa8d815058390e03777cc549debac8239fe163d3f6b1e14b29a98b56b463a3` |
| 4 | `theorem` | [of_bot](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/of-bot--9ee4bebf1279bfa1b719017a.md) | 52 | `result-track:9ee4bebf1279bfa1b719017a180347aaef008f6bf4a0735550a66716f95a4108` |
| 5 | `theorem` | [iff_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/iff-card--d73746bef1d511c6271f92e9.md) | 56 | `result-track:d73746bef1d511c6271f92e93b16eaba5bc5aa3bc96961d7ade5ba099574832f` |
| 6 | `theorem` | [of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/of-injective--b33c5a0075bbbfcf45c574c5.md) | 74 | `result-track:b33c5a0075bbbfcf45c574c5be96c59b29946dd981a54d3fd60f995d1e87ce28` |
| 7 | `theorem` | [to_subgroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-subgroup--357a3426e9fc3d724b1e29e6.md) | 80 | `result-track:357a3426e9fc3d724b1e29e64157bb58b734530df324f800282f3df1373dde4b` |
| 8 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/of-surjective--e68fdf596acb14a868d11064.md) | 84 | `result-track:e68fdf596acb14a868d11064e5a822bf3f2092ca906bc2f5c3740a40bf6aa531` |
| 9 | `theorem` | [to_quotient](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-quotient--a31053d97eb6b2cbf7aa12ed.md) | 90 | `result-track:a31053d97eb6b2cbf7aa12ed932cffac26be35706cdf0cf8f0b555748fba2a53` |
| 10 | `theorem` | [of_equiv](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/of-equiv--808e14582b5817c52f266d61.md) | 94 | `result-track:808e14582b5817c52f266d615ed453e15ad24c8f94463b05b0086dfbace2d599` |
| 11 | `theorem` | [orderOf_coprime](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/orderof-coprime--181aeae25d0d9d58fbd48fd6.md) | 98 | `result-track:181aeae25d0d9d58fbd48fd686d5c406229afd71f294bf6841f2a604504268f4` |
| 12 | `def` | [powEquiv](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/powequiv--1a2f92b6e3a7a538a0cb03cc.md) | 104 | `declaration-track:1a2f92b6e3a7a538a0cb03ccf38c88d70162f05192c48fa9e2b8463f23c40296` |
| 13 | `theorem` | [powEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/powequiv-apply--eea8bded70cc44226426867f.md) | 118 | `result-track:eea8bded70cc44226426867f5495e3e55b04516ba1cfc923d52656879c65de6c` |
| 14 | `theorem` | [powEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/powequiv-symm-apply--fce6fede357a09450aea9982.md) | 123 | `result-track:fce6fede357a09450aea9982927b5436512b59c407497593ba631287d1fbadb0` |
| 15 | `def` | [powEquiv'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/powequiv--e64938cd0b5e1f4f330b379e.md) | 131 | `declaration-track:e64938cd0b5e1f4f330b379effe2d77572333c4ca8d054aaa814079890e51877` |
| 16 | `theorem` | [index](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/index--e58813868f262ac5481b1d7d.md) | 135 | `result-track:e58813868f262ac5481b1d7d265e57f9c42900857b36fe7dd86827f367e3118c` |
| 17 | `theorem` | [card_eq_or_dvd](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/card-eq-or-dvd--05d1207abde24d630518a702.md) | 145 | `result-track:05d1207abde24d630518a702fb35eaf78708b4a3ea6d7f359693878325f4fb37` |
| 18 | `theorem` | [nontrivial_iff_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/nontrivial-iff-card--8a3cc3f195ab29b07f57f1e2.md) | 156 | `result-track:8a3cc3f195ab29b07f57f1e21d376e99b1eeba903232098c8a7f0fc800d4fddf` |
| 19 | `theorem` | [card_orbit](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/card-orbit--5e887de16f3636e5c1560655.md) | 170 | `result-track:5e887de16f3636e5c15606550277b2446e69be692d595fe150efe1fdc1d97a19` |
| 20 | `theorem` | [card_modEq_card_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/card-modeq-card-fixedpoints--1a6a3f42df59b4c154c1e187.md) | 182 | `result-track:1a6a3f42df59b4c154c1e1871d1caae474a1651849faf70e6d57b63df99a9490` |
| 21 | `theorem` | [nonempty_fixed_point_of_prime_not_dvd_card](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/nonempty-fixed-point-of-prime-not-dvd-card--449292ca8f10e711356bbb2c.md) | 220 | `result-track:449292ca8f10e711356bbb2ce1a5916a6456f53e9422409568a78936a7ee6601` |
| 22 | `theorem` | [exists_fixed_point_of_prime_dvd_card_of_fixed_point](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/exists-fixed-point-of-prime-dvd-card-of-fixed-point--0f67d93273e574ad95baaa4f.md) | 233 | `result-track:0f67d93273e574ad95baaa4fcb1770c2f84085e7efdd1feb9804a0b120ce2e69` |
| 23 | `theorem` | [center_nontrivial](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/center-nontrivial--3679ce01ec8847fe6d03de93.md) | 245 | `result-track:3679ce01ec8847fe6d03de93040c6111f48a2cc158c7e519689a282fe7203bed` |
| 24 | `theorem` | [bot_lt_center](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/bot-lt-center--cb755858707eca215c6308ef.md) | 257 | `result-track:cb755858707eca215c6308ef76ec6003c711b1fed6a4fdcafc5d6652752f7597` |
| 25 | `theorem` | [to_le](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-le--af001730ef7028231d44cf47.md) | 266 | `result-track:af001730ef7028231d44cf4753ed3e07e0e2f3f72e86b46ff6db56d3e3c128c5` |
| 26 | `theorem` | [to_inf_left](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-inf-left--0104fa15a96387f4497d3ead.md) | 273 | `result-track:0104fa15a96387f4497d3ead1879edb60deb029fe88e695eff0403ae0608bf89` |
| 27 | `theorem` | [to_inf_right](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-inf-right--b6c2629df5f5d0351e5b268f.md) | 277 | `result-track:b6c2629df5f5d0351e5b268fe3278f74c0c2d39d4b9252bda3c1dbf8764a123f` |
| 28 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/map--5686c8539063fee452ca26ee.md) | 281 | `result-track:5686c8539063fee452ca26ee674419c3936b10ce9d87e6e7c070c8d16aca40e3` |
| 29 | `theorem` | [comap_of_ker_isPGroup](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/comap-of-ker-ispgroup--fdd3cfd12665466be8102463.md) | 287 | `result-track:fdd3cfd12665466be8102463c9256093a4a7e6d997941fcb14775727a9c23f2e` |
| 30 | `theorem` | [ker_isPGroup_of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/ker-ispgroup-of-injective--d8d6fc6e6987b1bb28eed720.md) | 297 | `result-track:d8d6fc6e6987b1bb28eed72019ad6fd4ebf4d9eace5c9b75cb4a9de468e8da67` |
| 31 | `theorem` | [comap_of_injective](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/comap-of-injective--35f793886251de5313b87acb.md) | 302 | `result-track:35f793886251de5313b87acb5b0c39d6dc136ef6409254df6fd88f7657132223` |
| 32 | `theorem` | [comap_subtype](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/comap-subtype--9fd97ba185eed885bb6872d3.md) | 307 | `result-track:9fd97ba185eed885bb6872d3d4b306fb2e45dd090c70034dd476f0346a18d050` |
| 33 | `theorem` | [to_sup_of_normal_right](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-sup-of-normal-right--d0657c6d676c1bc826eed8b5.md) | 312 | `result-track:d0657c6d676c1bc826eed8b5b99302a59c3a6d57f2a3dba3a45e4bc09d707191` |
| 34 | `theorem` | [to_sup_of_normal_left](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-sup-of-normal-left--f31dde915918476eaf4da91a.md) | 319 | `result-track:f31dde915918476eaf4da91a45d2af4b28981e9088a6c6c63d8553c57ad243a3` |
| 35 | `theorem` | [to_sup_of_normal_right'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-sup-of-normal-right--84643e5833a3d6f341799122.md) | 324 | `result-track:84643e5833a3d6f34179912268dfd8e27a50880b34ef99db0bed3c98e9b5e760` |
| 36 | `theorem` | [to_sup_of_normal_left'](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/to-sup-of-normal-left--9ce456dad702acb9ae51f9d5.md) | 335 | `result-track:9ce456dad702acb9ae51f9d5936c3b0052ccb96a3a7887067a1a46748160feb8` |
| 37 | `theorem` | [coprime_card_of_ne](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/coprime-card-of-ne--5eeb404e55c73f880db9444d.md) | 341 | `result-track:5eeb404e55c73f880db9444d8f3997779bfc96bc08d34ab36e5c403c5a2303b2` |
| 38 | `theorem` | [disjoint_of_ne](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/disjoint-of-ne--f8877cd12bff8f06c99bfced.md) | 351 | `result-track:f8877cd12bff8f06c99bfceddd6ad32d2cfa94a43e8d7ed7b09aa0c7274aecc3` |
| 39 | `theorem` | [card_center_eq_prime_pow](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/card-center-eq-prime-pow--08d4281a5e674008b29ebdc9.md) | 371 | `result-track:08d4281a5e674008b29ebdc93f97a0ee4b70137d77c7c4389dfdcbdafa09b679` |
| 40 | `theorem` | [cyclic_center_quotient_of_card_eq_prime_sq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/cyclic-center-quotient-of-card-eq-prime-sq--f539a1612c0e320770d6f89d.md) | 380 | `result-track:f539a1612c0e320770d6f89dfefd396b4a1ef1be9fbc9713a73cd078014c1de2` |
| 41 | `def` | [commGroupOfCardEqPrimeSq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/commgroupofcardeqprimesq--5ab2b64617f916901d5af429.md) | 398 | `declaration-track:5ab2b64617f916901d5af429c1044a1fdffc1978baac5dd71fc74a9547f312f7` |
| 42 | `theorem` | [commutative_of_card_eq_prime_sq](../../../../../mathematics/Algebra/GroupTheory/PGroup/Variant49652504706800db1123b06c8665e6b2c989763e637efb43d09fc51ea174c7e4.lean/declarations/commutative-of-card-eq-prime-sq--9da780706bf7e963dd2c3e99.md) | 405 | `result-track:9da780706bf7e963dd2c3e992bf2c1b61ec4b0b7afc15953aed08b9314cbb4e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.Solvable.Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cae02262568d84e33787eef50e909c5e51929a0",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/index.md) · [Full source](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cae02262568d84e33787eef50e909c5e51929a0`.

Source path: `GRWTSK/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.BaseChange` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.IdealOperations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Flat.FaithfullyFlat.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeriesOfIdeal](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal--4c067c5e5ac505e17dc919cc.md) | 53 | `declaration-track:4c067c5e5ac505e17dc919ccbafbe40a14d1752a772ef30222022297d54555be` |
| 2 | `theorem` | [derivedSeriesOfIdeal_zero](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-zero--ee1877193f97eb6da12ca7e0.md) | 57 | `result-track:ee1877193f97eb6da12ca7e0035229dbc80f3ed89a3ff29fdd218b6cfaaefe95` |
| 3 | `theorem` | [derivedSeriesOfIdeal_succ](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-succ--3cce13ace133dd11aaf380c4.md) | 61 | `result-track:3cce13ace133dd11aaf380c41954e69f69d94cb26ec0a345b5fcd1b7d01f8db8` |
| 4 | `abbrev` | [derivedSeries](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries--6e39f915dada43e4ed952102.md) | 67 | `declaration-track:6e39f915dada43e4ed95210293599dddd6e2c72cab8ec20b071bdd7fc70787b9` |
| 5 | `theorem` | [derivedSeries_def](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-def--40a833571275e67ab80a435c.md) | 70 | `result-track:40a833571275e67ab80a435cc78ca9ddadc72ffa3e01444c546cf015685bd6a0` |
| 6 | `theorem` | [derivedSeriesOfIdeal_add](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-add--00a79522cc9bfd25063f48c8.md) | 77 | `result-track:00a79522cc9bfd25063f48c870fb2896edc298b9911ab6430fa235bf66bd3b82` |
| 7 | `theorem` | [derivedSeriesOfIdeal_le](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-le--0913879ca30a769aa8a73b36.md) | 83 | `result-track:0913879ca30a769aa8a73b36b96ef10208acf9e904c007d818ef7805c7a49c8c` |
| 8 | `theorem` | [derivedSeriesOfIdeal_succ_le](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-succ-le--bf700c91b9002ed6adeb4510.md) | 93 | `result-track:bf700c91b9002ed6adeb4510114da917cdc45edd291f009de2fbb8ebea88f13f` |
| 9 | `theorem` | [derivedSeriesOfIdeal_le_self](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-le-self--83ecc1f7221c5529544548e2.md) | 96 | `result-track:83ecc1f7221c5529544548e2a0fef9f4018602c63ea060f91c24cbebd4abc4ff` |
| 10 | `theorem` | [derivedSeriesOfIdeal_mono](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-mono--7801385ff0467ffedf7fc00c.md) | 99 | `result-track:7801385ff0467ffedf7fc00c62ef4772df36012ec320f77ffa028de89f661ff5` |
| 11 | `theorem` | [derivedSeriesOfIdeal_antitone](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-antitone--1ff3992021286b7cd6ca6024.md) | 102 | `result-track:1ff3992021286b7cd6ca60248c6b46970dd7884a9708e8332b9608ee8837d62e` |
| 12 | `theorem` | [derivedSeriesOfIdeal_add_le_add](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-add-le-add--4f847246220e658381337fb7.md) | 105 | `result-track:4f847246220e658381337fb76a6e39ffeb6b1bbc4ae1d1008652663290d1324e` |
| 13 | `theorem` | [derivedSeries_of_bot_eq_bot](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-of-bot-eq-bot--29f230470351daa903eba8c4.md) | 115 | `result-track:29f230470351daa903eba8c48b6c28396207f820919959b6896a867973bae153` |
| 14 | `theorem` | [abelian_iff_derived_one_eq_bot](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/abelian-iff-derived-one-eq-bot--8b5849ff9b942b688eae25d5.md) | 118 | `result-track:8b5849ff9b942b688eae25d53634638862d171028f6378dc9e5179ce3c901263` |
| 15 | `theorem` | [abelian_iff_derived_succ_eq_bot](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/abelian-iff-derived-succ-eq-bot--fd10902de66ae9028befdfcb.md) | 122 | `result-track:fd10902de66ae9028befdfcbad0cd2c689e7198d6587e7558c0f0f593d085459` |
| 16 | `theorem` | [derivedSeriesOfIdeal_baseChange](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseriesofideal-basechange--11822dde94b69450803e91fc.md) | 127 | `result-track:11822dde94b69450803e91fc46326cb6e29fc2a46091e2a947934ae820499791` |
| 17 | `theorem` | [derivedSeries_baseChange](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-basechange--8a7d7f09e42862eb5fd8aee6.md) | 136 | `result-track:8a7d7f09e42862eb5fd8aee611583b2c76206a974a4c1e45078a022acb12d880` |
| 18 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_comap](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-eq-derivedseriesofideal-comap--26e1b12ab6aa9943fcfdf7e7.md) | 149 | `result-track:26e1b12ab6aa9943fcfdf7e706079e46c427a64355513831ae94372a5622b1de` |
| 19 | `theorem` | [derivedSeries_eq_derivedSeriesOfIdeal_map](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-eq-derivedseriesofideal-map--ffae43f8940c680b1e9b7f3f.md) | 158 | `result-track:ffae43f8940c680b1e9b7f3f403d32a308d827b45975e4940ab6ff973e8be3a4` |
| 20 | `theorem` | [derivedSeries_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-eq-bot-iff--8abb6feded5a884f51eb7feb.md) | 163 | `result-track:8abb6feded5a884f51eb7feba160e63b55d82a5f61d16969ac57adb7747fa67a` |
| 21 | `theorem` | [derivedSeries_add_eq_bot](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-add-eq-bot--d04b31a481678273884bff3a.md) | 167 | `result-track:d04b31a481678273884bff3a845064478a54f11d477a01cbf13fa5f0b2e88687` |
| 22 | `theorem` | [derivedSeries_map_le](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-map-le--c9dc782662b9d46b521fdac3.md) | 176 | `result-track:c9dc782662b9d46b521fdac30da8c9abf9f4a9c3ab78c992a0f9f26c24cddc44` |
| 23 | `theorem` | [derivedSeries_map_eq](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-map-eq--f75d7917084d91ff59022c71.md) | 183 | `result-track:f75d7917084d91ff59022c71647f12f595c4502d57b2fef9c001122dbb53e05b` |
| 24 | `theorem` | [derivedSeries_succ_eq_top_iff](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-succ-eq-top-iff--0ee058b125fbbeea184dbe86.md) | 192 | `result-track:0ee058b125fbbeea184dbe869bc698173722342beddfecf3b518143f04444197` |
| 25 | `theorem` | [derivedSeries_eq_top](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-eq-top--5eb8cccddcc0fd3dc0f50061.md) | 204 | `result-track:5eb8cccddcc0fd3dc0f500619a15544255adca93ac709c13b007309d747c2220` |
| 26 | `theorem` | [coe_derivedSeries_eq_int_aux](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/coe-derivedseries-eq-int-aux--52c6c00a5f8f00717ee775aa.md) | 210 | `result-track:52c6c00a5f8f00717ee775aac2867b598c13833f5b627eccfcbcdc6c452df42d` |
| 27 | `theorem` | [coe_derivedSeries_eq_int](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/coe-derivedseries-eq-int--4d8c3e5de3ea01f946fdc328.md) | 227 | `result-track:4d8c3e5de3ea01f946fdc3284f403b2f0980fbe0b14f093f70d785b3222393b0` |
| 28 | `class` | [IsSolvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvable--6b094dbdbfc0ce9791d38f14.md) | 251 | `declaration-track:6b094dbdbfc0ce9791d38f14bfc62de40148ada73a04d74e8098bf5fd9d3af0b` |
| 29 | `instance` | [isSolvableBot](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvablebot--9705f65e8b62d8b2f48f08e9.md) | 255 | `declaration-track:9705f65e8b62d8b2f48f08e9f7119afb3570ca652dd260ff141803d8a1933389` |
| 30 | `lemma` | [isSolvable_iff](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvable-iff--8179c08646ac4e17f284827f.md) | 258 | `result-track:8179c08646ac4e17f284827f2e21281414354880b51db5324993aff9372c85a8` |
| 31 | `lemma` | [IsSolvable.solvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvable-solvable--56a64b9c37d7f56d6a9f94ef.md) | 261 | `result-track:56a64b9c37d7f56d6a9f94ef2691a9402e11c0d42358b77dd2c18da1b37a7b0a` |
| 32 | `lemma` | [IsSolvable.mk](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvable-mk--34a57fda0fde7e94ed1e370a.md) | 265 | `result-track:34a57fda0fde7e94ed1e370aae76514877b99e57ae69f74c31a92aa918c6793b` |
| 33 | `instance` | [isSolvableAdd](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvableadd--9b92580e21614c01407724bc.md) | 268 | `declaration-track:9b92580e21614c01407724bc1bb5c689838901c2af08633c0b07149159154f9f` |
| 34 | `theorem` | [derivedSeries_lt_top_of_solvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-lt-top-of-solvable--56887f6c4b2f72522bfb9e5e.md) | 274 | `result-track:56887f6c4b2f72522bfb9e5e5eb514ba35a60bc3e76d065dc1a6c0c2dd5c9cc7` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/instance--4984ec2a5940744267b635f3.md) | 283 | `declaration-track:4984ec2a5940744267b635f36e19e32fbb735c3c35c39b6c16544b6011e6bd9c` |
| 36 | `theorem` | [isSolvable_tensorProduct_iff](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/issolvable-tensorproduct-iff--cad2ca24de5974cf483ffcaf.md) | 291 | `result-track:cad2ca24de5974cf483ffcaff4646402a99d1046673d3f9199647d0183fcf74b` |
| 37 | `theorem` | [Injective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/injective-liealgebra-issolvable--96a05f599e7b4dd1f235487a.md) | 311 | `result-track:96a05f599e7b4dd1f235487aa44bc757d22d5d890fb95e1a36132b71fc99965e` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/instance--6d7c81956e97d3df47c7f262.md) | 319 | `declaration-track:6d7c81956e97d3df47c7f262126f7ffcedbe6047628806a79302dcb5c6fb1845` |
| 39 | `theorem` | [Surjective.lieAlgebra_isSolvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/surjective-liealgebra-issolvable--bed27d3e9785ca3eefcf65aa.md) | 322 | `result-track:bed27d3e9785ca3eefcf65aacab256b807d2fba66b0cd9ac91adbbe9a569223e` |
| 40 | `instance` | [LieHom.isSolvable_range](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/liehom-issolvable-range--e5ae99da42f8fc811324834e.md) | 332 | `declaration-track:e5ae99da42f8fc811324834ee798c39d507f8eb6bfb7c2f95835531d58cb2f99` |
| 41 | `theorem` | [solvable_iff_equiv_solvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/solvable-iff-equiv-solvable--d15f0a49c874be17526e7f31.md) | 338 | `result-track:d15f0a49c874be17526e7f31f78f03b3f96fd9fe06918ad16d175384136b62ad` |
| 42 | `theorem` | [le_solvable_ideal_solvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/le-solvable-ideal-solvable--2c28b7f444264cfdb60d16ca.md) | 343 | `result-track:2c28b7f444264cfdb60d16ca4c025165024de710f837d3e9bd2c909819d3dc0b` |
| 43 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/instance--f2bb2f38ab48e33951072795.md) | 349 | `declaration-track:f2bb2f38ab48e33951072795518ab5432dd131c6763d986af37592a44a4a3cf9` |
| 44 | `def` | [radical](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/radical--77ea39a37dd47850ef833597.md) | 355 | `declaration-track:77ea39a37dd47850ef8335970d88bc3b96ce632bf413b05d8e7dec7b736510b8` |
| 45 | `instance` | [radicalIsSolvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/radicalissolvable--1fa95446f1ae3e45a8f17764.md) | 359 | `declaration-track:1fa95446f1ae3e45a8f1776452473b239ac68a6709ecc02c8a9c19c38e932342` |
| 46 | `theorem` | [LieIdeal.solvable_iff_le_radical](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/lieideal-solvable-iff-le-radical--8e96b4f2e480f03635f5ab19.md) | 368 | `result-track:8e96b4f2e480f03635f5ab19d449348d79b93eb13989c780676373bb1f43dba1` |
| 47 | `theorem` | [center_le_radical](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/center-le-radical--b39d7fd2c0edca6d95ff90ff.md) | 372 | `result-track:b39d7fd2c0edca6d95ff90ffcd04d3698677df2e8f53c6e895ce9294b9b51ebf` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/instance--79520ffd7deaf5722332594a.md) | 376 | `declaration-track:79520ffd7deaf5722332594a1704872281b21bb793f22bffdfb75dd6c93ecfdc` |
| 49 | `lemma` | [radical_eq_top_of_isSolvable](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/radical-eq-top-of-issolvable--090a9bfaaa3b995b648d504e.md) | 379 | `result-track:090a9bfaaa3b995b648d504ef0f7239317820f8ed062726c32972b6892ba585d` |
| 50 | `def` | [derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedlengthofideal--7d79d1d312f224ad1dbbbf73.md) | 389 | `declaration-track:7d79d1d312f224ad1dbbbf7342c2f60f892e255b06727c524ec49a8a0ee5ef1f` |
| 51 | `abbrev` | [derivedLength](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedlength--f2c85711dad36a0da4f31243.md) | 395 | `declaration-track:f2c85711dad36a0da4f31243766945d4f4dcfbc6ac1d56b3886443861a8f0fdc` |
| 52 | `theorem` | [derivedSeries_of_derivedLength_succ](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedseries-of-derivedlength-succ--730336188f4a23a5ed4db142.md) | 398 | `result-track:730336188f4a23a5ed4db1424418dc360ba899423715f8110627348f127c9629` |
| 53 | `theorem` | [derivedLength_eq_derivedLengthOfIdeal](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedlength-eq-derivedlengthofideal--5078420433242d161682485e.md) | 411 | `result-track:5078420433242d161682485edd0435c9dc28b326a4d33b22a5b150ec51df3043` |
| 54 | `def` | [derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedabelianofideal--eb1173f224c55e8241ff86bf.md) | 424 | `declaration-track:eb1173f224c55e8241ff86bff118cda56190e1234fc88cd35492b950f3685f45` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/instance--98add23357cb0ebc84287847.md) | 429 | `declaration-track:98add23357cb0ebc8428784799f284211848f1e5bbf98e01ca386399e2924b57` |
| 56 | `theorem` | [abelian_derivedAbelianOfIdeal](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/abelian-derivedabelianofideal--5bd86cb73a8d953fde3ee0be.md) | 432 | `result-track:5bd86cb73a8d953fde3ee0be60a12b8f1e77ce6c00b87b622d27374cc273bde1` |
| 57 | `theorem` | [derivedLength_zero](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/derivedlength-zero--8c17fe0918d7d45b4bb3bc02.md) | 439 | `result-track:8c17fe0918d7d45b4bb3bc0205aef394ac5dfa1f80f532ab09f2cd0efa4552b6` |
| 58 | `theorem` | [abelian_of_solvable_ideal_eq_bot_iff](../../../../mathematics/Algebra/Solvable/Variant151bcaec808bcb7082255a27fab8a2293e0f8cca9768680294d6d5c4360232b0.lean/declarations/abelian-of-solvable-ideal-eq-bot-iff--4b595ac5376ecee5ff7545c4.md) | 449 | `result-track:4b595ac5376ecee5ff7545c4c5a471443b82a44914fcb0961efb8b44b4a6aaae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

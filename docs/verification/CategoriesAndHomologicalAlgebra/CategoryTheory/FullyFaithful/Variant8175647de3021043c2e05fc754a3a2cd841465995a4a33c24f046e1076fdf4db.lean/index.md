# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eda5303287b88592e7b3f85f31bc8bdbd861565",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eda5303287b88592e7b3f85f31bc8bdbd861565`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.NatIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full--3068d9280e52247a640de93b.md) | 41 | `declaration-track:3068d9280e52247a640de93b6a20c7a415dc3482b6df0cf3bdc5c6bedb19cba4` |
| 2 | `class` | [Faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful--ebe680599df20c6483f71cd4.md) | 46 | `declaration-track:ebe680599df20c6483f71cd4edbc1f88b9894d8492940294c1d372c1822c4d68` |
| 3 | `theorem` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-injective--4319eb38f372708f36dbc664.md) | 53 | `result-track:4319eb38f372708f36dbc664b9086377697d42f0c77ba0ee43119af0b7e67e7d` |
| 4 | `lemma` | [map_injective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-injective-iff--5868c60069d28fc90abc7f88.md) | 57 | `result-track:5868c60069d28fc90abc7f8805d1ad9b9acf29d7d61595d8f372174613f7a0a7` |
| 5 | `theorem` | [mapIso_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/mapiso-injective--94ffff14c01e11e8fcbaffa0.md) | 61 | `result-track:94ffff14c01e11e8fcbaffa01fb3ef718d67ae33edad19e9c74c845ac18f5d01` |
| 6 | `theorem` | [map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-surjective--e922fe72b6e9a466e8633889.md) | 65 | `result-track:e922fe72b6e9a466e8633889a8003a4dff7fa4b8672cb78e532fed3825361b8d` |
| 7 | `def` | [preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage--7a20d571809fdbfaad8298f8.md) | 70 | `declaration-track:7a20d571809fdbfaad8298f84da0b99e1540f4bb20f28ecb6865c8d5078fcd9a` |
| 8 | `theorem` | [map_preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-preimage--2939f28a2d1741ff4eeb405e.md) | 74 | `result-track:2939f28a2d1741ff4eeb405e2c116f1147163575e026cf381bba7eb4c4bbcfa4` |
| 9 | `theorem` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage-id--74775592cb92f8eb751515d4.md) | 84 | `result-track:74775592cb92f8eb751515d46c58f180a5e0b908258926de73d564dec21806ad` |
| 10 | `theorem` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage-comp--c4cabd6f1603ef0077e1f76c.md) | 88 | `result-track:c4cabd6f1603ef0077e1f76c1ba97b0ab171946d0bd1d0f01f0b001168fa4717` |
| 11 | `theorem` | [preimage_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage-map--87f4c5a64974b0650d69a205.md) | 93 | `result-track:87f4c5a64974b0650d69a2053e1c3d7749cb5f55595c29dc5868000acfb90430` |
| 12 | `def` | [preimageIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimageiso--c72288036e178201b3c40870.md) | 100 | `declaration-track:c72288036e178201b3c40870b4befd9dfefb4b7cc8a751f9b1052f00e06a5222` |
| 13 | `theorem` | [preimageIso_mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimageiso-mapiso--fd374d6fb446fc8299324e27.md) | 108 | `result-track:fd374d6fb446fc8299324e2795e5c3b1fa6c36d29e9689aa2e9744ef23308f45` |
| 14 | `structure` | [FullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/fullyfaithful--b904a2046190432098bbdeb2.md) | 117 | `declaration-track:b904a2046190432098bbdeb2707fef7117029e34a6f77a42dc68e6821144af8f` |
| 15 | `def` | [ofFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/offullyfaithful--cf260e0bae98f88289456c12.md) | 130 | `declaration-track:cf260e0bae98f88289456c12c4723c5ccd4cb0852a78df389d37676e38080b6d` |
| 16 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/id--a7d8daea20550cd1be33722a.md) | 137 | `declaration-track:a7d8daea20550cd1be33722a919b74aa9c08daf8ab891f844a2ffb4dec4ffac4` |
| 17 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/homequiv--1ffae15ae1193d1c0857c983.md) | 147 | `declaration-track:1ffae15ae1193d1c0857c9839d79048d6f8ef01d766e50a68ae4fd66c496f7cf` |
| 18 | `lemma` | [map_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-injective--f3680db3b957c2784c60820b.md) | 153 | `result-track:f3680db3b957c2784c60820b50e18b10588ff39ff8ce6f5086e93cd9a4e30592` |
| 19 | `lemma` | [map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-surjective--d22234cb1517caa2a44bfc50.md) | 156 | `result-track:d22234cb1517caa2a44bfc50c8abf36ac9809f6ac389d7da8817a7a3a3c4a958` |
| 20 | `lemma` | [map_bijective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/map-bijective--019ba26879273a2b892cff17.md) | 160 | `result-track:019ba26879273a2b892cff179c11e3574388956edf078cedef5f44c9a2bdebda` |
| 21 | `lemma` | [preimage_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage-id--f1653b03a570e07fdf1b7ad7.md) | 165 | `result-track:f1653b03a570e07fdf1b7ad7b7bfca6e0149649074e6795b9f3838910f9762b4` |
| 22 | `lemma` | [preimage_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimage-comp--23bc060b77f873ca7befa972.md) | 170 | `result-track:23bc060b77f873ca7befa972dcbb2f6a212ff8180669c9bf0951c18650e03e7f` |
| 23 | `lemma` | [full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full--1a0ea2da4ace4c16412efe03.md) | 174 | `result-track:1a0ea2da4ace4c16412efe03f5663ecb4328e8a14039c5e73739ba4d4130e9f1` |
| 24 | `lemma` | [faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful--92d3d5bd725521a7c3d772df.md) | 177 | `result-track:92d3d5bd725521a7c3d772df5209e8907498882a9cb585c10cae7a9aa230552e` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/instance--254849f2439648788cafc8f3.md) | 180 | `declaration-track:254849f2439648788cafc8f385ac794c404c1f16ca509a4b63340c4f79539e61` |
| 26 | `def` | [preimageIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/preimageiso--0578ad1caf6b33cb947602cf.md) | 192 | `declaration-track:0578ad1caf6b33cb947602cf097eec559373e97b180aad7e914bc7c83290ff54` |
| 27 | `lemma` | [isIso_of_isIso_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/isiso-of-isiso-map--6a3fd2c5a8401884bcdcf462.md) | 198 | `result-track:6a3fd2c5a8401884bcdcf462dbe2405873a1d5fac08452d89544c9fac4fb071c` |
| 28 | `def` | [isoEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/isoequiv--c120876f235afc0fcda5b7d2.md) | 204 | `declaration-track:c120876f235afc0fcda5b7d2218e2a243d9a22d11294c8640c7f0b8abbd6d770` |
| 29 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/comp--25e35439dbe135c3a8895701.md) | 212 | `declaration-track:25e35439dbe135c3a889570164bd01a512f790d9d37ff64ef6f7f2e27c548160` |
| 30 | `def` | [ofCompFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/ofcompfaithful--95c0876b959a27215aaebc49.md) | 218 | `declaration-track:95c0876b959a27215aaebc493ee2863450f99ba4adf9cd48d45357a2c9e7046a` |
| 31 | `theorem` | [isIso_of_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/isiso-of-fully-faithful--67c1c1822db2db61030c2a49.md) | 236 | `result-track:67c1c1822db2db61030c2a4944432cdd09c2350fb4503231138f1cd923bae3a4` |
| 32 | `instance` | [Full.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full-id--fbb52e63eb99fdca4a491d4f.md) | 250 | `declaration-track:fbb52e63eb99fdca4a491d4f653d29a805f5fd8f11ea277f145a51c9e67725ea` |
| 33 | `instance` | [Faithful.id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-id--6c86e3af4b1089bb4642b246.md) | 252 | `declaration-track:6c86e3af4b1089bb4642b2460cac8ffede7c59334d3c0c05a086d9e02afb3905` |
| 34 | `instance` | [Faithful.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-comp--0d78ed1ec7da8bc0a40ffad9.md) | 257 | `declaration-track:0d78ed1ec7da8bc0a40ffad9c86e12ce45030b792db822956d32cc5d7f9def81` |
| 35 | `theorem` | [Faithful.of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-of-comp--c5893213956768a8cf51edd4.md) | 260 | `result-track:c5893213956768a8cf51edd433829a084f7a25d53b8e2775957d06b6b825e5fd` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/instance--2c8ba329a92fd48de857ecd0.md) | 264 | `declaration-track:2c8ba329a92fd48de857ecd029c713be984a444c8fe07d3c0f036a8b2ce15590` |
| 37 | `lemma` | [Full.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full-of-iso--6235e8d416944162a4b090d6.md) | 271 | `result-track:6235e8d416944162a4b090d679b225383d765df5eadf4dbd050bfc9837c25973` |
| 38 | `theorem` | [Faithful.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-of-iso--59ae4233b2a1806ea957e482.md) | 275 | `result-track:59ae4233b2a1806ea957e482be8f680560574bbfa54696a1278aee484b829e59` |
| 39 | `theorem` | [Faithful.of_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-of-comp-iso--7b7e50ccc7e9f889e76da19a.md) | 283 | `result-track:7b7e50ccc7e9f889e76da19ae4ab8eb56b01d606c7a52b7491c4f73ebca194ad` |
| 40 | `theorem` | [Faithful.of_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-of-comp-eq--ca9a6315fcd708e25ee3b765.md) | 290 | `result-track:ca9a6315fcd708e25ee3b765f58273fa19c8e5004c75c1058b460a321b998406` |
| 41 | `def` | [Faithful.div](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-div--da340e9389c0a809757b7b52.md) | 297 | `declaration-track:da340e9389c0a809757b7b52952047cb83cc1b82111760d53d8f97815e0b593b` |
| 42 | `theorem` | [Faithful.div_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-div-comp--b9c010000a96ebd3addc0f9e.md) | 319 | `result-track:b9c010000a96ebd3addc0f9ec2954dc9cf31c9b8b26da01ec9e521757e29ff26` |
| 43 | `theorem` | [Faithful.div_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/faithful-div-faithful--da7c04ec58a8f1c643ce981b.md) | 332 | `result-track:da7c04ec58a8f1c643ce981b2fa53595c876594ccde26d15c697173124df9083` |
| 44 | `instance` | [Full.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full-comp--b5e19827c130c87fd793955b.md) | 338 | `declaration-track:b5e19827c130c87fd793955b07ec7703531d54bef5b8b09941ca1a2ad53da4d4` |
| 45 | `lemma` | [Full.of_comp_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full-of-comp-faithful--39f96fbde36e660592ea4fec.md) | 342 | `result-track:39f96fbde36e660592ea4fec92039a9abc59825ef01389df391072416065fccb` |
| 46 | `lemma` | [Full.of_comp_faithful_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/full-of-comp-faithful-iso--7cf22201b30c1a98c6611af8.md) | 346 | `result-track:7cf22201b30c1a98c6611af89112834f746bc80906d7447dba21717e7564b677` |
| 47 | `def` | [fullyFaithfulCancelRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/fullyfaithfulcancelright--8cae9cfe7a9f208295809346.md) | 354 | `declaration-track:8cae9cfe7a9f2082958093465d48085674b38ef74a99fa739398398e56fd2e39` |
| 48 | `theorem` | [fullyFaithfulCancelRight_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/fullyfaithfulcancelright-hom-app--f056e2b33ef699cf8cd41ac6.md) | 360 | `result-track:f056e2b33ef699cf8cd41ac6a2b311982ff466f897d90c9db01452006e37babc` |
| 49 | `theorem` | [fullyFaithfulCancelRight_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant8175647de3021043c2e05fc754a3a2cd841465995a4a33c24f046e1076fdf4db.lean/declarations/fullyfaithfulcancelright-inv-app--0504bf5609ea5492603e8b85.md) | 366 | `result-track:0504bf5609ea5492603e8b85e93dee7bc0ff3f7c5f483db865120bdaf4cfe36a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.Addition.Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d310bdb5ad5199fc7e1ec71545fa410e079839b",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d310bdb5ad5199fc7e1ec71545fa410e079839b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.HahnSeries.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--370bb9630de82ba0e61276a1.md) | 50 | `declaration-track:370bb9630de82ba0e61276a1483a40ae6342e71d0d182130d242bfd5825d9169` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--d9749e23aa8e1fe7362b3b88.md) | 55 | `declaration-track:d9749e23aa8e1fe7362b3b888daf9654820c6b38ab6bea5d8295a20b2605c735` |
| 3 | `theorem` | [coeff_add'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-add--dfd1e6986f47b854c14ab6e3.md) | 70 | `result-track:dfd1e6986f47b854c14ab6e3ad5497784b88fd45c52779a79474bb70f61d4d64` |
| 4 | `theorem` | [coeff_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-add--a51d07f0cdf67e9808ff389c.md) | 75 | `result-track:a51d07f0cdf67e9808ff389cd6c8d04cf406b989624957da71f415c42df4dc07` |
| 5 | `theorem` | [coeff_nsmul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-nsmul--9cda2fd1f480e5686443ce6b.md) | 81 | `result-track:9cda2fd1f480e5686443ce6bfb5f1073ec9733039937abc9b1888e4c0f632b95` |
| 6 | `lemma` | [map_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/map-add--1fd388ce1b1b943ed4270a18.md) | 89 | `result-track:1fd388ce1b1b943ed4270a180e0281217e6c4f0265a5dd43fe4c6863a547f1f7` |
| 7 | `def` | [addOppositeEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv--c0071035ca91bbb5866681a5.md) | 98 | `declaration-track:c0071035ca91bbb5866681a55881245f66a2e50c4e1e057e47fcf0012e1dc740` |
| 8 | `lemma` | [addOppositeEquiv_support](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-support--e7b6116e9012b56cc3eb7869.md) | 111 | `result-track:e7b6116e9012b56cc3eb786953e55a4b102fd196744984d3d4c567cb4f6c5e08` |
| 9 | `lemma` | [addOppositeEquiv_symm_support](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-symm-support--d3166e4c8c3e6eb88a1caa0f.md) | 117 | `result-track:d3166e4c8c3e6eb88a1caa0f7df890fd3132daaca3796fc751cbe8b7b1b038c9` |
| 10 | `lemma` | [addOppositeEquiv_orderTop](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-ordertop--01bdb38bb25411d1a4d901a9.md) | 122 | `result-track:01bdb38bb25411d1a4d901a98fc1328d3b36f3bb66f8a76c78c70b39c63c8fd8` |
| 11 | `lemma` | [addOppositeEquiv_symm_orderTop](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-symm-ordertop--6f1dc49103b147d50bd49a98.md) | 132 | `result-track:6f1dc49103b147d50bd49a980863d1b4833a307f0e86c72b9d0d3945ba7c142c` |
| 12 | `lemma` | [addOppositeEquiv_leadingCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-leadingcoeff--ebb603fafded3ae1c73f8f4a.md) | 137 | `result-track:ebb603fafded3ae1c73f8f4abfe364974c8101ee0e763a6a93caa50880c729f0` |
| 13 | `lemma` | [addOppositeEquiv_symm_leadingCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/addoppositeequiv-symm-leadingcoeff--14659d120e49ad92de5124d9.md) | 148 | `result-track:14659d120e49ad92de5124d94e4355efb64067bf239303d0f7a080fd78c31ef8` |
| 14 | `theorem` | [support_add_subset](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/support-add-subset--0f9c25c0d38f42fd98d16310.md) | 153 | `result-track:0f9c25c0d38f42fd98d16310da03a525d668607e69fa693cc96b1def01c5256a` |
| 15 | `theorem` | [min_le_min_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/min-le-min-add--cf1310b325e42c1c5be39585.md) | 160 | `result-track:cf1310b325e42c1c5be39585031488e24ff565c2ef2d421ff3f52cc446bb3d1b` |
| 16 | `theorem` | [min_orderTop_le_orderTop_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/min-ordertop-le-ordertop-add--7f8708c6f53f3377d44621b0.md) | 168 | `result-track:7f8708c6f53f3377d44621b046e203bfc0ff19c7b8a042812050e7bdeef2586c` |
| 17 | `theorem` | [min_order_le_order_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/min-order-le-order-add--4954fbea6f9d6a1b1d623de2.md) | 177 | `result-track:4954fbea6f9d6a1b1d623de243e31d2d9eebcb7702ac65ad119642b011bce2c9` |
| 18 | `theorem` | [orderTop_add_eq_left](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ordertop-add-eq-left--306111f1e1b442b2749621ae.md) | 184 | `result-track:306111f1e1b442b2749621aedc484f392acef28a02686d9437ada1e242f450f1` |
| 19 | `theorem` | [orderTop_add_eq_right](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ordertop-add-eq-right--e06f8238f790383079f27b51.md) | 197 | `result-track:e06f8238f790383079f27b51a8225bcd641bdc90929302f8eb3d76b717fc2054` |
| 20 | `theorem` | [leadingCoeff_add_eq_left](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/leadingcoeff-add-eq-left--424e7a0c6ed012789bd63ab5.md) | 203 | `result-track:424e7a0c6ed012789bd63ab550c268759eebd5c9b824fe65db37e9d0671e8e5e` |
| 21 | `theorem` | [leadingCoeff_add_eq_right](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/leadingcoeff-add-eq-right--d5b0a3861d14e90992617cf2.md) | 214 | `result-track:d5b0a3861d14e90992617cf24509659bbebda64590c8f8816a64c0c0b3547b9b` |
| 22 | `theorem` | [ne_zero_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ne-zero-of-eq-add-single--ede5e3d42d4f99d3cd8a5f06.md) | 220 | `result-track:ede5e3d42d4f99d3cd8a5f06f880b41dc33273ef9a7fba3d08797163ecd69d5f` |
| 23 | `theorem` | [coeff_order_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-order-of-eq-add-single--68fc762c33b90b10d113db17.md) | 226 | `result-track:68fc762c33b90b10d113db176b44cb4554435f10722bdcd7f9a96d3e647c7ccd` |
| 24 | `theorem` | [order_lt_order_of_eq_add_single](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/order-lt-order-of-eq-add-single--9743ff708b5f93b291aacf4e.md) | 239 | `result-track:9743ff708b5f93b291aacf4e80656ce4a0096c7831d3f04652b9ba4c69d34b49` |
| 25 | `def` | [single.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/single-addmonoidhom--0b2898611b2c8ae932c3be80.md) | 263 | `declaration-track:0b2898611b2c8ae932c3be8066a78b18ab3a3ba6da8b7bda4f8d2d68f90ab105` |
| 26 | `def` | [coeff.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-addmonoidhom--98f18806f491f4fd0dd9d8f4.md) | 271 | `declaration-track:98f18806f491f4fd0dd9d8f460e0ae4d413aaca6a7ce2c62cbb62bb9bead28a6` |
| 27 | `theorem` | [embDomain_add](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/embdomain-add--a0c2cf5fddd307ea41cf35e4.md) | 280 | `result-track:a0c2cf5fddd307ea41cf35e457ca025db46bdf8fb0a035c1157746918176572c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--ebfba37bc70b4cc8367d357d.md) | 296 | `declaration-track:ebfba37bc70b4cc8367d357d285e5078fc412afecb3811390d26c51744b6d0b9` |
| 29 | `theorem` | [coeff_sum](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-sum--dce0c2ada44c14c1c7e5102f.md) | 305 | `result-track:dce0c2ada44c14c1c7e5102f481ad933c957e1388edc43f73c5672edf96574db` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--5a528e4f0e1390c957a76a37.md) | 315 | `declaration-track:5a528e4f0e1390c957a76a378784af5457950e29e27c23d85ad6128ec9c6e639` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--09f1d8166e7486acbc04eb98.md) | 322 | `declaration-track:09f1d8166e7486acbc04eb981db902c5df6e34e8471f5da111e01fe0a17f2f56` |
| 32 | `theorem` | [coeff_neg'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-neg--2c6a28316fd00bfa36f5a16c.md) | 330 | `result-track:2c6a28316fd00bfa36f5a16ce0fb04530e428251491450688a3878d57b8afd6f` |
| 33 | `theorem` | [coeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-neg--d53ea7f32a08b9752c83f619.md) | 335 | `result-track:d53ea7f32a08b9752c83f619fb1c6eda70b02a7e33314e92e41d4657fac0b5c0` |
| 34 | `theorem` | [support_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/support-neg--a4cc8fb2ab9c89eb444b09bf.md) | 341 | `result-track:a4cc8fb2ab9c89eb444b09bfbc38f3ae3cffe9e73fae92335f119b8198506eb7` |
| 35 | `lemma` | [map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/map-neg--6b92f09120400dcf363519aa.md) | 346 | `result-track:6b92f09120400dcf363519aa71f5c382c2b3ebedafe2b19383036cb50f6d9895` |
| 36 | `theorem` | [orderTop_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ordertop-neg--545106d4c1d17b24a8c5c4b4.md) | 350 | `result-track:545106d4c1d17b24a8c5c4b44f520ee0ff79e020ce0f7d221cd85640ee62ac11` |
| 37 | `theorem` | [order_neg](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/order-neg--d984a673d11857aaa95c7328.md) | 354 | `result-track:d984a673d11857aaa95c7328533fedf413f8c7a7de0b00044e2002087ed0b13e` |
| 38 | `theorem` | [coeff_sub'](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-sub--3c20ecdd4484a7bc4443a976.md) | 361 | `result-track:3c20ecdd4484a7bc4443a976df656d81ccb07ca089df3ba14fa3722b5dc33692` |
| 39 | `theorem` | [coeff_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-sub--3f471960b1dcf11b172c35bc.md) | 367 | `result-track:3f471960b1dcf11b172c35bcb49bb479d4b8243763dfd7f45c405a0a21a857ef` |
| 40 | `lemma` | [map_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/map-sub--aa8ec5a6ede5f7a24adcaa64.md) | 373 | `result-track:aa8ec5a6ede5f7a24adcaa64f5c6a4f83d3b24f6ac2e4828c9da35ace782ebd4` |
| 41 | `theorem` | [min_orderTop_le_orderTop_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/min-ordertop-le-ordertop-sub--a50ab62e09a35eec2475282a.md) | 377 | `result-track:a50ab62e09a35eec2475282a540dfdd8b400089c107a3c766c1af84528faa2d4` |
| 42 | `theorem` | [orderTop_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ordertop-sub--82b63e5bacfc52a3822ddc56.md) | 382 | `result-track:82b63e5bacfc52a3822ddc569e68030ffddbd544ad1bc6bd1fd52bd5f3236d0b` |
| 43 | `theorem` | [leadingCoeff_sub](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/leadingcoeff-sub--a81ae0dcc8e87317ae65d754.md) | 388 | `result-track:a81ae0dcc8e87317ae65d7547c8d4fa6c16b40810fd27960bd42a0bc695834ad` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--993f37e67c33a7d21c44470b.md) | 396 | `declaration-track:993f37e67c33a7d21c44470bc55fccd3acca210455ec15b0c31db03da3147a0a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--08a80e9532256f1c4c54f71c.md) | 406 | `declaration-track:08a80e9532256f1c4c54f71c5409012392da5197bc1fa8ba576816dd1fcd02cf` |
| 46 | `theorem` | [coeff_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-smul--8c375df2f11db7a0b595611b.md) | 412 | `result-track:8c375df2f11db7a0b595611b9af82dcd699b64d657e3259aad7cc913695e329b` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--5f77cd9c967fe5d8929360d2.md) | 417 | `declaration-track:5f77cd9c967fe5d8929360d24c25204b6abcf77ade968cc402eb20c57cf8057d` |
| 48 | `theorem` | [orderTop_smul_not_lt](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/ordertop-smul-not-lt--524958b7ee99e239f8fc205b.md) | 424 | `result-track:524958b7ee99e239f8fc205b3260f0ce24462b46efad8420bdd7651e2f78c033` |
| 49 | `theorem` | [order_smul_not_lt](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/order-smul-not-lt--4076c2a86ae821aad2ee0568.md) | 432 | `result-track:4076c2a86ae821aad2ee056890e70d5479c5b8622b0699a1a66edaba0a715f12` |
| 50 | `theorem` | [le_order_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/le-order-smul--c4f8e3e412c8d59a3d4064e7.md) | 438 | `result-track:c4f8e3e412c8d59a3d4064e7235feaf8a716b72832b275ef8ee7fb6ae3aef948` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--e364e10b16fc55a7e53f8cb6.md) | 448 | `declaration-track:e364e10b16fc55a7e53f8cb6c539566baa967c6a5fa4dc064941a25e191db74c` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--313ea9734eb24436c7030066.md) | 465 | `declaration-track:313ea9734eb24436c70300666c0ed8f1066b8c43bcbf9222812510b08b3bd9b4` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--a20a0b072c31e6f5bb3f14f9.md) | 470 | `declaration-track:a20a0b072c31e6f5bb3f14f9e62eb71594526f032cb53ba5b062feb182fed6bb` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/instance--c5077e70787303b73afb5792.md) | 481 | `declaration-track:c5077e70787303b73afb579263326dbab7eb3397fc5e595238b2542f4bb2ba8c` |
| 55 | `def` | [single.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/single-linearmap--3df70d6497feaae7120eb74b.md) | 492 | `declaration-track:3df70d6497feaae7120eb74b93590ec99a970d1925c033826cf6407d8255421e` |
| 56 | `def` | [coeff.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/coeff-linearmap--11ced0ca43d5dc25f7d075ad.md) | 500 | `declaration-track:11ced0ca43d5dc25f7d075ad90ae839526306d395810a246d382c466a40d2d3c` |
| 57 | `lemma` | [map_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/map-smul--aff6cb18fecdecf8246f0891.md) | 504 | `result-track:aff6cb18fecdecf8246f089108e2493a41c66dcbf6b0a919e51432aa5f2dcbdd` |
| 58 | `theorem` | [embDomain_smul](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/embdomain-smul--ce95bc91ce307ae6e247573c.md) | 512 | `result-track:ce95bc91ce307ae6e247573cb82fc88d10ff637902bb79871f6f3a52eac054a6` |
| 59 | `def` | [embDomainLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/declarations/embdomainlinearmap--c141d2faeb16544be57d7233.md) | 522 | `declaration-track:c141d2faeb16544be57d72335f9e0da01224a31bd1cfbb99469534f9177dde49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

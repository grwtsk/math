# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29eb6303d7823fbf569daf4f65aa054e2b953d23",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29eb6303d7823fbf569daf4f65aa054e2b953d23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap--8222433c64814c3883f4efdd.md) | 60 | `declaration-track:8222433c64814c3883f4efdd4b3eb0c535e1b7112bc410386c22e2b328723a94` |
| 2 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-tmul--7b2624b4953761894f7de379.md) | 63 | `result-track:7b2624b4953761894f7de3793e5e36c96afaba5c61b2553f3de09f73fdea19c4` |
| 3 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-map-comp-eq--a1e188b52f20b719a6a34793.md) | 65 | `result-track:a1e188b52f20b719a6a3479389d6ceca1ed45d6f93deaf905699ff9a698b5f22` |
| 4 | `theorem` | [mulMap_op](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-op--c140d9f4a9b579320771fa40.md) | 76 | `result-track:c140d9f4a9b579320771fa40e4f8515d89225b9b3b092432dd63ed8ef0c06a8f` |
| 5 | `theorem` | [mulMap_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-comm-of-commute--d699d149bae7fd4374bcbf47.md) | 85 | `result-track:d699d149bae7fd4374bcbf47537abf0b0726d250723fb9a498728a12a111248e` |
| 6 | `theorem` | [mulMap_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-comp-rtensor--f59c67ca48a12894a1bc0012.md) | 92 | `result-track:f59c67ca48a12894a1bc0012b31ee35784d9c9bc8fd8dd157011c772db3b4a7b` |
| 7 | `theorem` | [mulMap_comp_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-comp-ltensor--6e530b765b3a8a89e0d9d4aa.md) | 97 | `result-track:6e530b765b3a8a89e0d9d4aac68c4ba8cc77b8432194dcc537cc3286024e670a` |
| 8 | `theorem` | [mulMap_comp_map_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-comp-map-inclusion--3c940b40c5ae7f95af245298.md) | 102 | `result-track:3c940b40c5ae7f95af2452984b31efe2436c770c310e3ebfb01dee382a5e581c` |
| 9 | `theorem` | [mulMap_eq_mul'_comp_mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-eq-mul-comp-mapincl--8fc3205c9b678bc3e12cf5ed.md) | 106 | `result-track:8fc3205c9b678bc3e12cf5eded8e71448b11aa3abf14d29a1124e218239e4bca` |
| 10 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-range--3812ad57e87d726e79feb7d6.md) | 109 | `result-track:3812ad57e87d726e79feb7d6f5fa6dfe434ada332e10c7dd9279d2ab3276825f` |
| 11 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap--86f966b6a5d52876a288a80b.md) | 120 | `declaration-track:86f966b6a5d52876a288a80b07d6a00f0de1b52f7310fb8a5a155bd82acc0c40` |
| 12 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/val-mulmap-tmul--ea3c3bccee6353839a4997df.md) | 125 | `result-track:ea3c3bccee6353839a4997df8802404bd85dea5156fdcea42ea86dfe3b5eeace` |
| 13 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-surjective--db1f967b463d69926f7f3948.md) | 127 | `result-track:db1f967b463d69926f7f394801dd1bb1ff7ec7463487c31c49fc1a7443270ddb` |
| 14 | `def` | [lTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone--54dee0fe43189e7d72e12ac8.md) | 134 | `declaration-track:54dee0fe43189e7d72e12ac8faae5e0e8608f6e0860a2cef61450135a3649471` |
| 15 | `theorem` | [lTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone-tmul--7d28ee5cc5b079288bc316e5.md) | 141 | `result-track:7d28ee5cc5b079288bc316e50880f6c48e7938ec89887243ec68e1c21be5c958` |
| 16 | `theorem` | [lTensorOne'_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone-one-tmul--7737e69fdb13bf070b4465d4.md) | 149 | `result-track:7737e69fdb13bf070b4465d4e9a8ea789dfe275387e6ac0ba306493e30e0c477` |
| 17 | `def` | [lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone--1707dd1db004bda3a1a79fdb.md) | 156 | `declaration-track:1707dd1db004bda3a1a79fdbee362c50d5d00f63fa82c825d03244a7f99ae6bf` |
| 18 | `theorem` | [lTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone-tmul--958b122e8afdadf73f961f9c.md) | 166 | `result-track:958b122e8afdadf73f961f9cb7400639c4b8387c281f773dab76525aa9ebbfbb` |
| 19 | `theorem` | [lTensorOne_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone-one-tmul--6163edb5e64444df2ae1d77a.md) | 171 | `result-track:6163edb5e64444df2ae1d77ac6d8c95af80016d5de7b7249d42c6634fa208d37` |
| 20 | `theorem` | [lTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/ltensorone-symm-apply--fa989b3667e6a7e618c49123.md) | 176 | `result-track:fa989b3667e6a7e618c491235f75ad8e14c5968987a2d08f5c3c56ef819c6d24` |
| 21 | `theorem` | [mulMap_one_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-one-left-eq--b85df0d7bcee2815ac10309f.md) | 178 | `result-track:b85df0d7bcee2815ac10309f58adaf539a8798a5cbaef7ed9297f3e95fd5b4d9` |
| 22 | `def` | [rTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone--a94d66319fe54dd4a1e6d845.md) | 185 | `declaration-track:a94d66319fe54dd4a1e6d845e1c09d3bd0a2654fd99990c7cbda6cbaef421d7e` |
| 23 | `theorem` | [rTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone-tmul--c7ef1161a3e86f52900b9bd2.md) | 192 | `result-track:c7ef1161a3e86f52900b9bd2edf3e1977fe9476fbc31df2647c328a6d7f0f50c` |
| 24 | `theorem` | [rTensorOne'_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone-tmul-one--6e41c2bddd55d5fb5f37a1cf.md) | 201 | `result-track:6e41c2bddd55d5fb5f37a1cf16c90b1cb78c46af62656a115764c5ca231fd4a1` |
| 25 | `def` | [rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone--cc445fa1a9a3eec291e1bc67.md) | 208 | `declaration-track:cc445fa1a9a3eec291e1bc67349e35b618d9cbf69d8e93cbee17df553739d645` |
| 26 | `theorem` | [rTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone-tmul--0a58674bfc5eaf53fdbefec7.md) | 218 | `result-track:0a58674bfc5eaf53fdbefec7cf51e30ce0736bab39fec7401150d3cb0db41249` |
| 27 | `theorem` | [rTensorOne_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone-tmul-one--24ffd5332bd79ac00ea3643f.md) | 223 | `result-track:24ffd5332bd79ac00ea3643fb3581fed28f5c2d84114a25cfb49fb18e5148785` |
| 28 | `theorem` | [rTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/rtensorone-symm-apply--7cb10148009c50a7b6dca8fd.md) | 228 | `result-track:7cb10148009c50a7b6dca8fd19328a4835659f26a3a9a7d93bece219584d4e3b` |
| 29 | `theorem` | [mulMap_one_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-one-right-eq--6e00f2afcda3836b6f734945.md) | 230 | `result-track:6e00f2afcda3836b6f7349459c5897d33df19bd09fc9e5bdd192bf98f8a79ea8` |
| 30 | `theorem` | [comm_trans_lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/comm-trans-ltensorone--fa97a72dfe738f6ff1cd8add.md) | 235 | `result-track:fa97a72dfe738f6ff1cd8add80845b7d9451c77573df5b767c38f4323e22a3f6` |
| 31 | `theorem` | [comm_trans_rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/comm-trans-rtensorone--3f99a422259cdc09e8055bf4.md) | 243 | `result-track:3f99a422259cdc09e8055bf433e35c8459a936dfb9517b026f7bd2787a9a42f7` |
| 32 | `theorem` | [mulLeftMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulleftmap-eq-mulmap-comp--40899d42ff64e729bf38ae12.md) | 251 | `result-track:40899d42ff64e729bf38ae124330867b8aa94d19a7ebc147307b2c8fc213f4a3` |
| 33 | `theorem` | [mulRightMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulrightmap-eq-mulmap-comp--56e10f6cd46ca9efc4689aa3.md) | 257 | `result-track:56e10f6cd46ca9efc4689aa34e6d4ae392273b3e4841de581efb4767d9a96d83` |
| 34 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variante2b94950b9496cf15fa1f85cd1bd8385b6d83859fde6bdf0f6299efacf559fbb.lean/declarations/mulmap-comm--5fec3a8cdd9c533570a37c8a.md) | 270 | `result-track:5fec3a8cdd9c533570a37c8a529fb8b2ed130cab0d27c03348578748b7dd84f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

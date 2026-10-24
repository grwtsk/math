# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Behrend.Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4172d38d8a681aa347b81d0c994a9cef488018de",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4172d38d8a681aa347b81d0c994a9cef488018de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.AP.Three.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.ExponentialBounds` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [threeAPFree_frontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/threeapfree-frontier--5e6bf3dcaf2a79aefc602d2a.md) | 55 | `result-track:5e6bf3dcaf2a79aefc602d2a12c49b658bbd2560a55d7dc42a1a577a3017df9a` |
| 2 | `lemma` | [threeAPFree_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/threeapfree-sphere--719fd8e9691dad0d057e8473.md) | 69 | `result-track:719fd8e9691dad0d057e84738eaabd708f2ebd0de48482f9ba6cd9b2df928c1e` |
| 3 | `def` | [box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/box--efb3b558a223315a1c4bca06.md) | 93 | `declaration-track:efb3b558a223315a1c4bca06511885db56e31fc69d2ec78f83f82596da027861` |
| 4 | `theorem` | [mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/mem-box--8097ee42b6e844360c61e919.md) | 96 | `result-track:8097ee42b6e844360c61e919c36c7f049c22e1c80bf38886bb81833c337f206d` |
| 5 | `theorem` | [card_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/card-box--e31c5cf87f77531d7fa125f9.md) | 99 | `result-track:e31c5cf87f77531d7fa125f9279c1591f8b4534cb324f9a33266514028b3043c` |
| 6 | `theorem` | [box_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/box-zero--7792ad3aaad98ddc139e3ef5.md) | 102 | `result-track:7792ad3aaad98ddc139e3ef511328fe39bead9e19fe5272633ee77a6e9ad548d` |
| 7 | `def` | [sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sphere--4b5e98071adbc4d63b85bb26.md) | 106 | `declaration-track:4b5e98071adbc4d63b85bb266d037ab2536756b98e1c2e88ce7c46ddb1d8e1c1` |
| 8 | `theorem` | [sphere_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sphere-zero-subset--94859150b0fa5f3e046e0aab.md) | 108 | `result-track:94859150b0fa5f3e046e0aab273184cb070fb84fd74a7faf865dc1b7e70456ba` |
| 9 | `theorem` | [sphere_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sphere-zero-right--6127b27ca5066601844a3b5d.md) | 111 | `result-track:6127b27ca5066601844a3b5d8d8d548525a865e2a5de5f6209cf2e9a79f75764` |
| 10 | `theorem` | [sphere_subset_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sphere-subset-box--144fcfbc4207c964ca981e95.md) | 113 | `result-track:144fcfbc4207c964ca981e952526e2f7d521ea1222655b5d12f4dad8c111e927` |
| 11 | `theorem` | [norm_of_mem_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/norm-of-mem-sphere--212aa610c1a20d5a98eb6075.md) | 116 | `result-track:212aa610c1a20d5a98eb607571ab2dbda80066cfcad74f4a20fad14456e37c48` |
| 12 | `theorem` | [sphere_subset_preimage_metric_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sphere-subset-preimage-metric-sphere--e91860aaa6aeaa118f8e6d11.md) | 122 | `result-track:e91860aaa6aeaa118f8e6d118d0af8939c4bafb2f690d98a919fe3d561f4cf05` |
| 13 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map--3be7ab59feb1a1dc5337c2ac.md) | 129 | `declaration-track:3be7ab59feb1a1dc5337c2ac4bc55415fd1525bc9de6185f6225c36c1adc67ae` |
| 14 | `theorem` | [map_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-zero--94169bfccfbafa5bb6d5234a.md) | 134 | `result-track:94169bfccfbafa5bb6d5234a8bd1d3e65cbf6f85bdac4c8d6111c185957e9894` |
| 15 | `theorem` | [map_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-succ--9e9e215d4d197fcb533a8ed3.md) | 136 | `result-track:9e9e215d4d197fcb533a8ed3ec9c8260212555c5af351e6566c46626e7eb7483` |
| 16 | `theorem` | [map_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-succ--0f3ba39c1901e9ca7aa98a3d.md) | 140 | `result-track:0f3ba39c1901e9ca7aa98a3d6ef1e2375f5a780207248379c54f284ad641b1a5` |
| 17 | `theorem` | [map_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-monotone--978ddcad6e8d4dac46ffe61f.md) | 143 | `result-track:978ddcad6e8d4dac46ffe61fe0e51f55fe23fe43c16f9a385ae293b201eca60b` |
| 18 | `theorem` | [map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-mod--6b15e578aa221dc8fa06c424.md) | 146 | `result-track:6b15e578aa221dc8fa06c424987589bdc9993dd2dc774eab8d7ea78f814dff1b` |
| 19 | `theorem` | [map_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-eq-iff--10a24201deb4049dc0884cbd.md) | 149 | `result-track:10a24201deb4049dc0884cbd8b263a4d67bf2f71a13a0e6c3d5f41a49afa6e71` |
| 20 | `theorem` | [map_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-injon--0354d7a8d8a2d4e4ac8b32aa.md) | 157 | `result-track:0354d7a8d8a2d4e4ac8b32aab6e3b4c764b8d9fb1b086410638f5f9027229f38` |
| 21 | `theorem` | [map_le_of_mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/map-le-of-mem-box--6ba8be3a70228e6df8a3513e.md) | 166 | `result-track:6ba8be3a70228e6df8a3513e9ead19df504f41f208c7f9eaf46986538dcaeb1c` |
| 22 | `theorem` | [threeAPFree_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/threeapfree-sphere--5adfe6c6cd1c92a02b84732c.md) | 170 | `result-track:5adfe6c6cd1c92a02b84732c707332835e6077318aa32a242905f310a57de3ee` |
| 23 | `theorem` | [threeAPFree_image_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/threeapfree-image-sphere--e3b8c185eed43e290a40e7ff.md) | 181 | `result-track:e3b8c185eed43e290a40e7ff427e3082757624ed82f222a85d53caddb1f841df` |
| 24 | `theorem` | [sum_sq_le_of_mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sum-sq-le-of-mem-box--415f3c733ee01ac0e79b785b.md) | 193 | `result-track:415f3c733ee01ac0e79b785bcfdc5be2fb236037a7c1b975edd75d3751cf3e49` |
| 25 | `theorem` | [sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sum-eq--37b5220de65221404200bdd2.md) | 199 | `result-track:37b5220de65221404200bdd21d3edf5112d2ec60d3af7f003f50714f2cd6547d` |
| 26 | `theorem` | [sum_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/sum-lt--89b58d63fe16c31f51dfb154.md) | 204 | `result-track:89b58d63fe16c31f51dfb1546664b1c70f50f7386128fa59bae3a4ddbf5bae73` |
| 27 | `theorem` | [card_sphere_le_rothNumberNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/card-sphere-le-rothnumbernat--3ee3f70ea0ebfe2cb7460cf2.md) | 207 | `result-track:3ee3f70ea0ebfe2cb7460cf25438c847c2b9cd6a2fc5bfa4a34e46b290d39de1` |
| 28 | `theorem` | [exists_large_sphere_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/exists-large-sphere-aux--cd526c8167620a2912999d6e.md) | 232 | `result-track:cd526c8167620a2912999d6ec01a0cb3af20f5efe2546d4c9b045ac2cf4375da` |
| 29 | `theorem` | [exists_large_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/exists-large-sphere--a69708679e2b77a6beae608f.md) | 240 | `result-track:a69708679e2b77a6beae608fbd94e27accf255111f68d31381d724327bd79e0f` |
| 30 | `theorem` | [bound_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/bound-aux--84cfe7c887714ce366475011.md) | 259 | `result-track:84cfe7c887714ce36647501107a475cbe45c8a13920f51b85c6f8f253bf69363` |
| 31 | `theorem` | [bound_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/bound-aux--939f7d59deacebd640dac93f.md) | 263 | `result-track:939f7d59deacebd640dac93f0598967844722b5f38dfb59aeb5a50a4aae6c664` |
| 32 | `theorem` | [log_two_mul_two_le_sqrt_log_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/log-two-mul-two-le-sqrt-log-eight--9890c1e2c0aba492918d0819.md) | 275 | `result-track:9890c1e2c0aba492918d08195bfa8915646c249d7952e4dfd9840d677d9190e4` |
| 33 | `theorem` | [two_div_one_sub_two_div_e_le_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/two-div-one-sub-two-div-e-le-eight--f299fc90878c6c649723f3f0.md) | 282 | `result-track:f299fc90878c6c649723f3f063ade26125deb283059710f65f957afdc29dc102` |
| 34 | `theorem` | [le_sqrt_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/le-sqrt-log--cd3ba448b4100a4b6ba834fc.md) | 287 | `result-track:cd3ba448b4100a4b6ba834fc2592d806eab45c836825f3cad5b4e7da990fb13d` |
| 35 | `theorem` | [exp_neg_two_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/exp-neg-two-mul-le--4604940f047b8d3a13f00caa.md) | 302 | `result-track:4604940f047b8d3a13f00caa2298eafc69c9d19ecffea1163ba86a4887cee543` |
| 36 | `theorem` | [div_lt_floor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/div-lt-floor--86bc1420044a8646a5b0aa0a.md) | 313 | `result-track:86bc1420044a8646a5b0aa0ae703da7ed9bf571bac6962d323dcb3ba09acddd0` |
| 37 | `theorem` | [ceil_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/ceil-lt-mul--f0c9b582491a57d0a1f1e743.md) | 323 | `result-track:f0c9b582491a57d0a1f1e74336b13ad51b1399a71a6967cdd01eca10cce70e53` |
| 38 | `def` | [nValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/nvalue--27912c78b6b45f90b52da42b.md) | 334 | `declaration-track:27912c78b6b45f90b52da42b678b5d41b8c5d5f540e83623c77253f78713dcde` |
| 39 | `def` | [dValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/dvalue--d6d584d4baa611be923293be.md) | 338 | `declaration-track:d6d584d4baa611be923293be7c46f5f5ef6c55afe7c89004f5c9f1ab4df88849` |
| 40 | `theorem` | [nValue_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/nvalue-pos--766d0d493ce6ce46eea6ded6.md) | 340 | `result-track:766d0d493ce6ce46eea6ded6292f207cf01f190ca310a2166b82ad8fb816541b` |
| 41 | `theorem` | [three_le_nValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/three-le-nvalue--55fd1773be6a1c4151803335.md) | 343 | `result-track:55fd1773be6a1c4151803335f4024790fcb4216cbd0cfbd9f9cf29ba8a354d92` |
| 42 | `theorem` | [dValue_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/dvalue-pos--a87d7b01bc7538c93ea5da1e.md) | 354 | `result-track:a87d7b01bc7538c93ea5da1e32a770b5b2afcc9daf92fecb44ee9f16c5597bab` |
| 43 | `theorem` | [le_N](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/le-n--90af8d6fc296672189c1fcf5.md) | 374 | `result-track:90af8d6fc296672189c1fcf50c185654edeb828d0a55668ed35fac999168b097` |
| 44 | `theorem` | [bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/bound--26f05c33c1ed166b58b18944.md) | 389 | `result-track:26f05c33c1ed166b58b18944e6b6ad73102896287cfcfccad90f587a7d492635` |
| 45 | `theorem` | [roth_lower_bound_explicit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/roth-lower-bound-explicit--9c1e6590e4760bdb5c3df4ac.md) | 418 | `result-track:9c1e6590e4760bdb5c3df4ace6608715eed6ba9f67ddd32b1a1a0d48228f84f7` |
| 46 | `theorem` | [exp_four_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/exp-four-lt--f7461b0d8acb57c0f755fec3.md) | 452 | `result-track:f7461b0d8acb57c0f755fec3e9f29763132aa908d0a533fcde36fbd52c681ea5` |
| 47 | `theorem` | [four_zero_nine_six_lt_exp_sixteen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/four-zero-nine-six-lt-exp-sixteen--8de49fc72e2b95a4d5d9cdce.md) | 458 | `result-track:8de49fc72e2b95a4d5d9cdceca27eb17d442bf78492ec1dc49a8c53fec79c911` |
| 48 | `theorem` | [lower_bound_le_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/lower-bound-le-one--f2ab8edc20bf0f76a936e314.md) | 463 | `result-track:f2ab8edc20bf0f76a936e3146c60840e53d97efa4c5e6515b589d52bc3e89035` |
| 49 | `theorem` | [lower_bound_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/lower-bound-le-one--08e9f919de55d8e065aad83f.md) | 474 | `result-track:08e9f919de55d8e065aad83f76800bbdb0567bdcafd2829fba8d8f31477e85b4` |
| 50 | `theorem` | [roth_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant88c4ac3ba2a3caf57d97d2dc6dc3f5a3ccabf5427970bf14f2620a626fc95842.lean/declarations/roth-lower-bound--66ccdb203c752f8266696370.md) | 480 | `result-track:66ccdb203c752f826669637020525f82f0f0434ebc1db338c1d503a16a8046b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.Submodule.Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543307cb87d8957cdcf9cc4385ce81a62a6ecb7e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543307cb87d8957cdcf9cc4385ce81a62a6ecb7e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DirectSum.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulMap](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap--75c0fb3095c8bee6b11d6da3.md) | 68 | `declaration-track:75c0fb3095c8bee6b11d6da3929353aeb47acda4f7df17c91f89b0934509e275` |
| 2 | `theorem` | [mulMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-tmul--bd2f2e4971ee7fdb8ca2260a.md) | 71 | `result-track:bd2f2e4971ee7fdb8ca2260a044cef76c7302bdd7a164d06d351e571ee6962ad` |
| 3 | `theorem` | [mulMap_map_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-map-comp-eq--9f64576b7a0291e60232725f.md) | 73 | `result-track:9f64576b7a0291e60232725fafab80cfb9336d00668cdaa15e30c7139961ad81` |
| 4 | `theorem` | [mulMap_op](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-op--f89310450816b34643932030.md) | 84 | `result-track:f89310450816b3464393203014be6f4052e5d92424ac8cf02934dc933c7cc1a4` |
| 5 | `theorem` | [mulMap_comm_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-comm-of-commute--844161d41b5f2155ea48af15.md) | 93 | `result-track:844161d41b5f2155ea48af1521b79067b82825ebd47b69b5cdf1a5564abd60f1` |
| 6 | `theorem` | [mulMap_comp_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-comp-rtensor--05fe56a3c0501feb2d699f55.md) | 100 | `result-track:05fe56a3c0501feb2d699f55c5cf386598386058bdd57b5adc8481d0a5444a6f` |
| 7 | `theorem` | [mulMap_comp_lTensor](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-comp-ltensor--db6d5924b308beb98624f299.md) | 105 | `result-track:db6d5924b308beb98624f2994ea7c40bda9ab76284d42edc4ab0876d0d2086a4` |
| 8 | `theorem` | [mulMap_comp_map_inclusion](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-comp-map-inclusion--040337d63377489fa3f9d87c.md) | 110 | `result-track:040337d63377489fa3f9d87cde705794bd708e5fc683bcd5aeda957d75b10a20` |
| 9 | `theorem` | [mulMap_eq_mul'_comp_mapIncl](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-eq-mul-comp-mapincl--20b455e706a8028caa0be081.md) | 114 | `result-track:20b455e706a8028caa0be08138121aad1e01c1373fb0f90b2eb74376215fc6e6` |
| 10 | `theorem` | [mulMap_range](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-range--fcef2292ba2468e4f214e778.md) | 117 | `result-track:fcef2292ba2468e4f214e778d9fad874befb2080469409d560e17863a57a2629` |
| 11 | `def` | [mulMap'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap--f063130f68efc3b27a0c6ecf.md) | 128 | `declaration-track:f063130f68efc3b27a0c6ecf52fef8cde989ff904e1cab05171e74dbfacae264` |
| 12 | `theorem` | [val_mulMap'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/val-mulmap-tmul--c64862a65bff405873745e34.md) | 133 | `result-track:c64862a65bff405873745e347757beb5ec49217ed4e995a3eb4b4cf226664e13` |
| 13 | `theorem` | [mulMap'_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-surjective--80aa552e3f8271bad7bc89ea.md) | 135 | `result-track:80aa552e3f8271bad7bc89ea7cccc6067c23bd510821d5e56a716c7c0b840131` |
| 14 | `def` | [lTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone--1f95cb4beeeb6ba7ce5a9828.md) | 142 | `declaration-track:1f95cb4beeeb6ba7ce5a98280a0a2c2c9bea28b7670f98a312e14faeadee982e` |
| 15 | `theorem` | [lTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone-tmul--efab884738fdad344fac2732.md) | 149 | `result-track:efab884738fdad344fac2732c6733214c1f3cd7b40ae2fdc5400f0d572316394` |
| 16 | `theorem` | [lTensorOne'_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone-one-tmul--984e3d446a6650558b0b2516.md) | 157 | `result-track:984e3d446a6650558b0b2516cbcecc001f8d0aee9f2d1e9e3acebb5e37266098` |
| 17 | `def` | [lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone--8d4a3a8337d33391b9a180e8.md) | 164 | `declaration-track:8d4a3a8337d33391b9a180e8459cbd396aee0353c4bb3762fab508832561bd3e` |
| 18 | `theorem` | [lTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone-tmul--fddda4cdbaeaf6c03f2ced97.md) | 174 | `result-track:fddda4cdbaeaf6c03f2ced97142a523292f9165903d5fbdb7111ca55cf230bab` |
| 19 | `theorem` | [lTensorOne_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone-one-tmul--2b469aa62dd7a143692c79dc.md) | 179 | `result-track:2b469aa62dd7a143692c79dc58b3c08f31097ef758ecc6aeff01d1d034782f49` |
| 20 | `theorem` | [lTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/ltensorone-symm-apply--fab2e006e3c0afd4e274ae38.md) | 184 | `result-track:fab2e006e3c0afd4e274ae38bdb3422d8627fdc0b0424e798ad5f94ed102dcb0` |
| 21 | `theorem` | [mulMap_one_left_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-one-left-eq--ce87ac08af07802a9b8e5c68.md) | 186 | `result-track:ce87ac08af07802a9b8e5c68e0387a082a73b8cbf706cb57db54351322aa236d` |
| 22 | `def` | [rTensorOne'](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone--49f799855e74dd3349ac8519.md) | 193 | `declaration-track:49f799855e74dd3349ac8519a2ad7cab4538413a31db3c4239f46225c97dffe8` |
| 23 | `theorem` | [rTensorOne'_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone-tmul--48173eadd8f5106ec972e565.md) | 200 | `result-track:48173eadd8f5106ec972e56520cee0851dcb62ab7f4f370db0c68e64b147be17` |
| 24 | `theorem` | [rTensorOne'_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone-tmul-one--a82ab1c14ae21d85e25e060c.md) | 209 | `result-track:a82ab1c14ae21d85e25e060c9dbb7fa30ce2eb31cb8a7f6c08750b7f230fb856` |
| 25 | `def` | [rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone--b80517237aeb4fc9ca2c4a96.md) | 216 | `declaration-track:b80517237aeb4fc9ca2c4a960a9efc784ffb642dad3e8fa9281bd6e074c9e888` |
| 26 | `theorem` | [rTensorOne_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone-tmul--e727ade2b302fc7fbef440e8.md) | 226 | `result-track:e727ade2b302fc7fbef440e89b724716fab23ccab7a9340e1e6d87ad20d42107` |
| 27 | `theorem` | [rTensorOne_tmul_one](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone-tmul-one--facfaa952b56e543713bea02.md) | 231 | `result-track:facfaa952b56e543713bea0217a034b2aac5ffea692ba18fdcc025e4913a26c8` |
| 28 | `theorem` | [rTensorOne_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/rtensorone-symm-apply--9c723814a219decc2e459432.md) | 236 | `result-track:9c723814a219decc2e459432f50407898210c33ea2d50443606d083731923974` |
| 29 | `theorem` | [mulMap_one_right_eq](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-one-right-eq--fbe89c13a29373f4c4bb2108.md) | 238 | `result-track:fbe89c13a29373f4c4bb2108a23bc688fbb3f5eda856a09e2c2c6bdb925b0624` |
| 30 | `theorem` | [comm_trans_lTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/comm-trans-ltensorone--37736cbdd3325385b9468a53.md) | 243 | `result-track:37736cbdd3325385b9468a53dd0f21cbcab52ed636b12fcd898f9f5a52af9e14` |
| 31 | `theorem` | [comm_trans_rTensorOne](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/comm-trans-rtensorone--3066746accd9b6e499a93dd2.md) | 251 | `result-track:3066746accd9b6e499a93dd2d78d37368892e0a6a1ce1aa06191f8b09a32576f` |
| 32 | `theorem` | [mulLeftMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulleftmap-eq-mulmap-comp--c01fa5f18805891e7f39d212.md) | 259 | `result-track:c01fa5f18805891e7f39d2128d5673b6b5d696bbbe349439f784bb60d9c6beae` |
| 33 | `theorem` | [mulRightMap_eq_mulMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulrightmap-eq-mulmap-comp--bc51d48ef302a045b55f3477.md) | 265 | `result-track:bc51d48ef302a045b55f34775025679d4f4729ae4144bcebfd70c5adfb10d6ce` |
| 34 | `theorem` | [mulMap_comm](../../../../../mathematics/Algebra/LinearAlgebra/Submodule/Variantac91b75f429b0d6b5021f3056bd150d56dace1221c7e2deaafb0c2b4f427c7c7.lean/declarations/mulmap-comm--0421ee7743583065d8449a5a.md) | 278 | `result-track:0421ee7743583065d8449a5af4a9b23a0d7f62bbdb1f524d43e61f1c725dcff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

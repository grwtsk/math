# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.UnionProd.Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a6de4130ba70cbcf0f16344e81638b7f98613c9",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a6de4130ba70cbcf0f16344e81638b7f98613c9`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIndex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/isindex--7921c1f5a812a5394f5c4aa7.md) | 96 | `declaration-track:7921c1f5a812a5394f5c4aa7e12588762910b42847193ee30c1181fe1bec0396` |
| 2 | `lemma` | [isIndex_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/isindex-zero--400a11d4f847c19ad4895057.md) | 103 | `result-track:400a11d4f847c19ad4895057d41f458a6fd387f21a79238cc3812c669f294781` |
| 3 | `lemma` | [isIndex_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/isindex-succ--4636313065f72d98147b4ba4.md) | 105 | `result-track:4636313065f72d98147b4ba467b0978ec17cff9a80d55f63e9b4eb1ac234d2f4` |
| 4 | `lemma` | [mem_range_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/mem-range-left--ea0686ce39c103a3bcbc572b.md) | 111 | `result-track:ea0686ce39c103a3bcbc572b80f2347bf8e43fc4ed5c2ca1c4c6e24a59ba00e7` |
| 5 | `lemma` | [mem_range_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/mem-range-right--60409fb3b88519d925eb4dce.md) | 118 | `result-track:60409fb3b88519d925eb4dce56fbe20101ac54614945b8c1e90fea50dec20370` |
| 6 | `def` | [finset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/finset--0d4df3a42f92cb4080f3191b.md) | 129 | `declaration-track:0d4df3a42f92cb4080f3191be7f881de9e5c28ee52394a486754a60edf0b547b` |
| 7 | `lemma` | [mem_finset_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/mem-finset-iff--b6bda261c590e824b36d401b.md) | 133 | `result-track:b6bda261c590e824b36d401b0fee5a725881c139174498e5d05a4d56f79314f1` |
| 8 | `lemma` | [nonempty_finset](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/nonempty-finset--bd6849b0cc132307dba94fe3.md) | 137 | `result-track:bd6849b0cc132307dba94fe30d677c37c6b9b2b98aa08f85237db81c6c5855e7` |
| 9 | `def` | [min](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/min--a3e9406e2567660570d012d8.md) | 144 | `declaration-track:a3e9406e2567660570d012d88beef70c46d300dc08ea703aa48586d12ce6c671` |
| 10 | `lemma` | [simplex_fst_min](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-min--e9ed222279a57635fa818d3a.md) | 146 | `result-track:e9ed222279a57635fa818d3af8a93b6c675800d2decaaf9d2ab91bae91f2c1ad` |
| 11 | `lemma` | [simplex_fst_le_castSucc_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-le-castsucc-iff--97e8321a48f6281b1e108e13.md) | 150 | `result-track:97e8321a48f6281b1e108e13c91570b97022d1e9530cb8a270d6eac6fef3cbd7` |
| 12 | `lemma` | [simplex_fst_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-castsucc--83b0e7aa64a3e92d9866790d.md) | 175 | `result-track:83b0e7aa64a3e92d9866790db295d28084a9e9c4817cb2cc29d368983c6a0c8d` |
| 13 | `lemma` | [simplex_fst_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-succ--58a69b1bd31fc018977a2364.md) | 178 | `result-track:58a69b1bd31fc018977a23641cd9fd6aa3ad2075621aab01587f20cb3cbdcdfe` |
| 14 | `lemma` | [simplex_snd_succ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-snd-succ--c9b74d13dc923088a66ee6eb.md) | 181 | `result-track:c9b74d13dc923088a66ee6eba7891d96c68e6f9c02310971877a29faa100ec48` |
| 15 | `lemma` | [succ_le_simplex_fst_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/succ-le-simplex-fst-iff--94572218adabb3b001461496.md) | 184 | `result-track:94572218adabb3b001461496a79ad5d97b117866fdb9004cefbe0dfe30213bb3` |
| 16 | `lemma` | [simplex_fst_le_castSucc_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-le-castsucc-iff--abd310b5d0369f1b265fd027.md) | 196 | `result-track:abd310b5d0369f1b265fd027ed532115c1cb3adf6118d2d357036abef58f2ed1` |
| 17 | `lemma` | [min_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/min-eq--82f30fb7d333e7f1cd240012.md) | 200 | `result-track:82f30fb7d333e7f1cd24001292aa196f97d112c6abd4fe4d1ef1b271ba73d389` |
| 18 | `lemma` | [unique](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/unique--124f4858101c94fc62937b90.md) | 206 | `result-track:124f4858101c94fc62937b902a48d03a77bfbcd3b85ce02fb8bf8a92f2da7b3b` |
| 19 | `abbrev` | [δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/anonymous--0a92bec9ade5e0db524e1959.md) | 220 | `declaration-track:0a92bec9ade5e0db524e1959de47f4fb154657cf2f5fb3690c1e51671acffefb` |
| 20 | `structure` | [Type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/type--99457487cf94990a7364be60.md) | 251 | `declaration-track:99457487cf94990a7364be60526f9f6825292c839818faccb6f0ce3c3178b9f6` |
| 21 | `def` | [IsIndex.type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/isindex-type--2449d4d6c1f1147526d1bfc1.md) | 264 | `declaration-track:2449d4d6c1f1147526d1bfc18f49353b1c5ed6284f3f4cde4326201c0d20d8a7` |
| 22 | `lemma` | [ext_iff](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/ext-iff--52985bae9f2502372c4158c7.md) | 274 | `result-track:52985bae9f2502372c4158c7d54c255f400088046654f1cede3d38349d02fa0f` |
| 23 | `abbrev` | [δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/anonymous--8b2dae429688736983752286.md) | 287 | `declaration-track:8b2dae42968873698375228661d574f01e1f189be5120d7c88cfd8492ac4bb7a` |
| 24 | `def` | [IsType₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/istype--9bfe00cda91035192fc3398d.md) | 297 | `declaration-track:9bfe00cda91035192fc3398dd03c9cffbf0fe6bd5a608979270bfd789cd2367f` |
| 25 | `def` | [φ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/anonymous--b8cd7cb6e31e054a48837f08.md) | 306 | `declaration-track:b8cd7cb6e31e054a48837f08c117e484a681ad938d91c1ef145debfdc665e926` |
| 26 | `lemma` | [φ_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/castsucc--f4c5b0185882f4b6213cca20.md) | 312 | `result-track:f4c5b0185882f4b6213cca2007155f2d3c52f632721cdf7fc81f5130a2a123e5` |
| 27 | `lemma` | [φ_succAbove](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/succabove--379ebe4e5505d8bdaf4a2bfb.md) | 317 | `result-track:379ebe4e5505d8bdaf4a2bfb6a1a11cd6654deee61a2ad062c8483e3671c0074` |
| 28 | `lemma` | [φ_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/of-ne--d675bb6812b71da6ed616a76.md) | 322 | `result-track:d675bb6812b71da6ed616a766558f2de5424fce5bd6ac5825852a844101a76bd` |
| 29 | `lemma` | [φ_of_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/of-lt--06fe5ceae115316a340e6c10.md) | 326 | `result-track:06fe5ceae115316a340e6c10f245f8bb7803ab91b0d3d2dc98c8d677d2f29488` |
| 30 | `lemma` | [φ_of_gt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/of-gt--73b1be613bc8900a6e283ada.md) | 330 | `result-track:73b1be613bc8900a6e283adacda9f9c9548f8b30356a96c63125b1363467f5d7` |
| 31 | `lemma` | [φ_succ_snd](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/succ-snd--e41ac65fef1902bf6503126a.md) | 336 | `result-track:e41ac65fef1902bf6503126acb80c0aec2a664746697fe70148175cb34af73e1` |
| 32 | `lemma` | [φ_succ_fst](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/succ-fst--3d68599ae4cfd69e4b717d00.md) | 342 | `result-track:3d68599ae4cfd69e4b717d00adcabceb597ed2f5883310826e693d6753dbd31a` |
| 33 | `lemma` | [strictMono_φ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/strictmono--de121584e78b37931affa3ca.md) | 350 | `result-track:de121584e78b37931affa3cab029e25f222669ec4575bbd83a7f2d2ea70353db` |
| 34 | `abbrev` | [simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex--0a4d03c09af74405ca9f592e.md) | 385 | `declaration-track:0a4d03c09af74405ca9f592edb7f51e65dfb42dbd3a801cf70cf381954f5b760` |
| 35 | `lemma` | [simplex_fst_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-fst-apply--eff1d7cc41adbe0f074fdafd.md) | 389 | `result-track:eff1d7cc41adbe0f074fdafd2f37112605e6efba4bb237dfe0169e8adbf13721` |
| 36 | `lemma` | [simplex_snd_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-snd-apply--eb4530b2bd72e7e13df03674.md) | 393 | `result-track:eb4530b2bd72e7e13df03674067d0c8d883c74fef023d527557be3264c8d2b70` |
| 37 | `lemma` | [simplex_mem_nonDegenerate](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex-mem-nondegenerate--5d528bd28b70adc92b543141.md) | 396 | `result-track:5d528bd28b70adc92b54314132179f5cd8465ad47c59dd8203ff0d10cefbe09d` |
| 38 | `lemma` | [δ_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/simplex--759aaaa13142397ea129f7a2.md) | 401 | `result-track:759aaaa13142397ea129f7a2853ffd3877be4e5b032f8b648ffe6c1baa85fcbb` |
| 39 | `lemma` | [notMem_simplex](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/notmem-simplex--fae48b1d990d24b22aa01d2a.md) | 407 | `result-track:fae48b1d990d24b22aa01d2a036878fb9f821ae67b2c004a25651d92a3ec4e39` |
| 40 | `def` | [type₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/type--0e3dacc23de4f1710b654902.md) | 416 | `declaration-track:0e3dacc23de4f1710b654902cce918555b6b9038510354f1f0dbab1f98644bff` |
| 41 | `lemma` | [min_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/min--7414b6f86ec8bf9a399d51f4.md) | 433 | `result-track:7414b6f86ec8bf9a399d51f4990267309e21b867f30d7b4f5a58a1487d728e01` |
| 42 | `lemma` | [isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/istype--cc214575fb81812c7a1cc55d.md) | 447 | `result-track:cc214575fb81812c7a1cc55d62a2549c8585d60aa9fcaf4a968f41780c5691a5` |
| 43 | `lemma` | [eq_of_isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/eq-of-istype--3c12ab391814cf9027c97876.md) | 459 | `result-track:3c12ab391814cf9027c978765c070c5e1b6ef0eb5971f3b7d58af4bb82f1b514` |
| 44 | `lemma` | [IsType₂.type₁_eq_of_δ_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/istype-type-eq-of-eq--596d3c8ea7f75195b0b38961.md) | 485 | `result-track:596d3c8ea7f75195b0b38961c5ced08401f92fe9566bbf3d19b3d279e8062679` |
| 45 | `lemma` | [Type₁.isType₂_δ](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/type-istype--40cbec7869e00ff0b4f0177f.md) | 515 | `result-track:40cbec7869e00ff0b4f0177f1e30ddd89a3230a4e5a3e0ccc0f96885b162f7de` |
| 46 | `lemma` | [IsIndex.δ_injective](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/isindex-injective--acc312d66b8b679cb4ebcc5a.md) | 519 | `result-track:acc312d66b8b679cb4ebcc5a28d058cde70012138f27905842449c0b0d46853b` |
| 47 | `def` | [pairingCore](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/pairingcore--c75927de1d67160bc6ea404d.md) | 537 | `declaration-track:c75927de1d67160bc6ea404dafb30ea30d5412454707c24a83f081735ee3af49` |
| 48 | `lemma` | [type₁_pairingCore](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/type-pairingcore--8f6706bf0003562365bf4fe6.md) | 579 | `result-track:8f6706bf0003562365bf4fe6a7ab758509a569f3227c4cdd17174209f55dcaf1` |
| 49 | `def` | [weakRankFunction](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/weakrankfunction--dfca54a05211835c7c865a7e.md) | 587 | `declaration-track:dfca54a05211835c7c865a7e1d541e9312cd7599bb8bbbe7288185c91874cac4` |
| 50 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/instance--5a5a68302f9b05f8bb41efa8.md) | 641 | `declaration-track:5a5a68302f9b05f8bb41efa859d103b9fa03dbd71e64ea7ff9fdf732a1b7675c` |
| 51 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/instance--86ad8719a3262b19e93967e5.md) | 645 | `declaration-track:86ad8719a3262b19e93967e53884f918d1d0c0f9d5ac850c005db97c8c22c1ea` |
| 52 | `def` | [pairing](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/pairing--bf644748c38a8db780ef7387.md) | 661 | `declaration-track:bf644748c38a8db780ef7387358ffac1a4800a6c050f04dae10a878c57e86d98` |
| 53 | `lemma` | [pairing_castSucc](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/pairing-castsucc--8c4b9f4eb2ae43d6080226a3.md) | 675 | `result-track:8c4b9f4eb2ae43d6080226a3b0c856671322651e1c040802b4da414968d3409b` |
| 54 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/instance--cc0471416f20d2c3db91bbdf.md) | 680 | `declaration-track:cc0471416f20d2c3db91bbdf80a69e0b04adfbc474011eddbcd763a3160944ce` |
| 55 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/UnionProd/Variant42b4f97b4a6402cb0ea0c14c0662cec0ebc258e23a50a997d4a928eebfd567da.lean/declarations/instance--1727ec2272d65724f9c1cc67.md) | 691 | `declaration-track:1727ec2272d65724f9c1cc675d1e0b87b212fc80855f7390ee041c03f40fbce7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

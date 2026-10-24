# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrictSegal.Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Nerve` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Path` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/strictsegal--1189483cd83815b427dc87c2.md) | 39 | `declaration-track:1189483cd83815b427dc87c2657f09957eb323a385dbd061263052f746b28fae` |
| 2 | `class` | [IsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/isstrictsegal--bc89c90f9a45e8ebea0a5392.md) | 51 | `declaration-track:bc89c90f9a45e8ebea0a539299ced583ecd2db435f073974351b2c479347f6a6` |
| 3 | `def` | [ofIsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/ofisstrictsegal--84faae5c97ceba0a1a38ef7c.md) | 58 | `declaration-track:84faae5c97ceba0a1a38ef7ce76aaada7b59646a96f9fd0e2dbbb4d9c12e1166` |
| 4 | `lemma` | [spine_spineToSimplex_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-spinetosimplex-apply--b4cf108e14832e81070f5f5e.md) | 71 | `result-track:b4cf108e14832e81070f5f5edde18b8874ad6a278eb4678df2aaf4cf8bd1c129` |
| 5 | `lemma` | [spineToSimplex_spine_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-spine-apply--4d046c7622ae943f036a45db.md) | 76 | `result-track:4d046c7622ae943f036a45db871be419379b32013d7006d0c49dbc0aaa365573` |
| 6 | `def` | [spineEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spineequiv--bceec21183f4c38fe1479b8e.md) | 86 | `declaration-track:bceec21183f4c38fe1479b8e3d590640f5c1e4454608eb225e11f8c042379813` |
| 7 | `theorem` | [spineInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spineinjective--46683432d0f5bed7e83db108.md) | 92 | `result-track:46683432d0f5bed7e83db108feb088e31eb66e6f76d06c39f2c601fd0090111b` |
| 8 | `def` | [spineToDiagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetodiagonal--db8af8743bd91cb04f4399be.md) | 97 | `declaration-track:db8af8743bd91cb04f4399be8c56255ddb9bbb3693f21b71b27f7171f749f560` |
| 9 | `lemma` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/isstrictsegal--b8cdf2947128d9288475e144.md) | 104 | `result-track:b8cdf2947128d9288475e1444376197dca9994b41d808286a9a28f6cb1a2014a` |
| 10 | `theorem` | [spineToSimplex_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-vertex--891af7980b0ecf54b6c8b4e8.md) | 110 | `result-track:891af7980b0ecf54b6c8b4e862d4cbfa0c79a0768db57fc4b0bcd71bc3654228` |
| 11 | `theorem` | [spineToSimplex_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-arrow--45cc80a4ea193f22fc20f085.md) | 116 | `result-track:45cc80a4ea193f22fc20f08550d40b2eaa0bee81f291bf919d6877a331ec4834` |
| 12 | `theorem` | [spineToSimplex_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-interval--cb912db3ebf8e878c012fedd.md) | 121 | `result-track:cb912db3ebf8e878c012feddb5e786b2328c8def8d3df04394af7fc854359142` |
| 13 | `theorem` | [spineToSimplex_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-edge--d700456392c41f0d4f993160.md) | 130 | `result-track:d700456392c41f0d4f9931609078f6c736eabc5db5348ac62e9d334aa643ba31` |
| 14 | `lemma` | [spineToSimplex_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-map--758b10226714854144c030a2.md) | 141 | `result-track:758b10226714854144c030a2768430b369d4d6b0880049da8221165b98e66c2b` |
| 15 | `lemma` | [spine_δ_vertex_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-vertex-lt--b27353b147881b889515216b.md) | 159 | `result-track:b27353b147881b889515216bb6d5871265e58dd853eb1357b8321e9c92c3c5a8` |
| 16 | `lemma` | [spine_δ_vertex_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-vertex-ge--572fa8bee1c47a2fbf2c24eb.md) | 171 | `result-track:572fa8bee1c47a2fbf2c24eb60f5df0381e99109809ee91cc13bff67977a06ee` |
| 17 | `lemma` | [spine_δ_arrow_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-lt--9d4eccc7ff6e0b3340519fb3.md) | 185 | `result-track:9d4eccc7ff6e0b3340519fb3c254ff71f1806f4322fc3c0d1fdafc7b2019f982` |
| 18 | `lemma` | [spine_δ_arrow_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-gt--5cf803a85e35ba83b090a462.md) | 194 | `result-track:5cf803a85e35ba83b090a4628d31c044e2451d9ee537fa5be5d82ba19737d166` |
| 19 | `lemma` | [spine_δ_arrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-eq--c7fc6323327a712fa99a59b5.md) | 205 | `result-track:c7fc6323327a712fa99a59b57da20c4793a402c4f11eddcdc80b6f5e31d268e4` |
| 20 | `structure` | [StrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/strictsegal--710b8cc196eae73a981fff55.md) | 219 | `declaration-track:710b8cc196eae73a981fff554867a28d3a0db4d0477abe09673d9dd89c385e75` |
| 21 | `class` | [IsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/isstrictsegal--4736dbdec015efa32d4a6a85.md) | 229 | `declaration-track:4736dbdec015efa32d4a6a85ec3de20a1ad58a2b65c986bc8f5d18a3cda129c9` |
| 22 | `def` | [ofIsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/ofisstrictsegal--59b6ca14d7d4103567421410.md) | 236 | `declaration-track:59b6ca14d7d41035674214102dd18d2af42dee69f2b808cc1d083ce7c754589d` |
| 23 | `def` | [truncation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/truncation--4bfeb401f0d6e6a2fa4b06a4.md) | 248 | `declaration-track:4bfeb401f0d6e6a2fa4b06a496e3c3f81b66219f9e73baf41412e7ac461c63f6` |
| 24 | `lemma` | [spine_spineToSimplex_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-spinetosimplex-apply--801682905ff2399cb55b3f28.md) | 254 | `result-track:801682905ff2399cb55b3f28c1326f5fefe1144da92bf9257fe9110a968a8014` |
| 25 | `lemma` | [spineToSimplex_spine_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-spine-apply--b2d65186c059e3e215c173a4.md) | 259 | `result-track:b2d65186c059e3e215c173a458a7717bb16f0f700aa2e18bbc7b55fa0f8c2afe` |
| 26 | `def` | [spineEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spineequiv--460d13b98b2ce10ca7e6fc65.md) | 265 | `declaration-track:460d13b98b2ce10ca7e6fc65575f23573a37c865844e000f639c7d73d0b30390` |
| 27 | `theorem` | [spineInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spineinjective--d5372376056f571b55c30616.md) | 273 | `result-track:d5372376056f571b55c3061616e2251b9683688ed64ef5d077c81cb05e09363d` |
| 28 | `lemma` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/isstrictsegal--e9329a265f32efeb5c633ca6.md) | 278 | `result-track:e9329a265f32efeb5c633ca6865622b7e60377a33bdeb72f16af13b96611c957` |
| 29 | `theorem` | [spineToSimplex_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-vertex--6b35360aad7e9a75a72b4c05.md) | 282 | `result-track:6b35360aad7e9a75a72b4c05f20ed4f6ea60049ebaa5bda66f307b9c521426ee` |
| 30 | `theorem` | [spineToSimplex_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-arrow--bf0e5979cc122d2ab28cb990.md) | 288 | `result-track:bf0e5979cc122d2ab28cb9906a0f2d9666cb6e823d99a3e052bbc60003aa7209` |
| 31 | `def` | [spineToDiagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetodiagonal--a49bfd5a4b02f59f48771287.md) | 294 | `declaration-track:a49bfd5a4b02f59f48771287b739e2b47a21d40dd131ac0fa32459acfa6f642d` |
| 32 | `theorem` | [spineToSimplex_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-interval--8e6578c466d3db86a8b34e1c.md) | 302 | `result-track:8e6578c466d3db86a8b34e1c4b799dad94d06da7e8d97045cadc0e5ca29c746f` |
| 33 | `theorem` | [spineToSimplex_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-edge--6fc6e2ade440a3f0f294b35c.md) | 310 | `result-track:6fc6e2ade440a3f0f294b35c371ea71c60d7d57db7d9a25afb7658a3ec42f2f4` |
| 34 | `lemma` | [spineToSimplex_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spinetosimplex-map--e837827000e3952b400b008e.md) | 321 | `result-track:e837827000e3952b400b008e8ca69fa9358827e2f37a1e5aebe30b0f6d1e4acd` |
| 35 | `lemma` | [spine_δ_vertex_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-vertex-lt--2949025139cecacffe1be67c.md) | 336 | `result-track:2949025139cecacffe1be67ca18ae6d6bdcd121520b137b4ae42f51d6729b7d1` |
| 36 | `lemma` | [spine_δ_vertex_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-vertex-ge--30679a443bd1bbab68d7360d.md) | 349 | `result-track:30679a443bd1bbab68d7360db8e70ce15110c75f15792b229d3ffb1b51198dda` |
| 37 | `lemma` | [spine_δ_arrow_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-lt--ae9448baac567f25d7571ea7.md) | 363 | `result-track:ae9448baac567f25d7571ea7f8bebf1c6cff7cb70fa7bf341311bf7ff34e645d` |
| 38 | `lemma` | [spine_δ_arrow_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-gt--a47ab706224f3238c2695e17.md) | 372 | `result-track:a47ab706224f3238c2695e178f6f1bebe89f085f81514b77f0847e27a09fd236` |
| 39 | `lemma` | [spine_δ_arrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/spine-arrow-eq--d84bc32d970624779bbfec55.md) | 381 | `result-track:d84bc32d970624779bbfec553052e552a3ca5d2c6d006c488d882abd8d7dbf62` |
| 40 | `def` | [strictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/strictsegal--37a6391124e19a13c2ff1fe8.md) | 399 | `declaration-track:37a6391124e19a13c2ff1fe8d387a47412c047fc64b7c93a3aead785ac3c1da7` |
| 41 | `instance` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/declarations/isstrictsegal--7e5d17813d7cc56fb00142cc.md) | 421 | `declaration-track:7e5d17813d7cc56fb00142cc46ebeee756c3495b0893056ed0a028a6d70043f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

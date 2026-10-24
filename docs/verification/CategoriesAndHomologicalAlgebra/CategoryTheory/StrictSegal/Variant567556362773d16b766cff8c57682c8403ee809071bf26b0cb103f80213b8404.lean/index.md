# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.StrictSegal.Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "648ecad381769f42f29ee7f912e2ed5c8ea8511c",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `648ecad381769f42f29ee7f912e2ed5c8ea8511c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Nerve` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.Path` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/strictsegal--b233f691254a21abacdfaa14.md) | 47 | `declaration-track:b233f691254a21abacdfaa14be6bc430c309cccdeb99f21379e998652a5d64ab` |
| 2 | `class` | [IsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/isstrictsegal--8e996f04df93e4564bca92d8.md) | 59 | `declaration-track:8e996f04df93e4564bca92d8f396f8ed092cb6315a88d8f1c064eaf26c7c5572` |
| 3 | `def` | [ofIsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/ofisstrictsegal--b57e1c2548b1493b99f009b6.md) | 66 | `declaration-track:b57e1c2548b1493b99f009b6b5fd4af7a685329569d6215cbab47812719a9746` |
| 4 | `lemma` | [spine_spineToSimplex_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-spinetosimplex-apply--22aac2be710f20a960266e73.md) | 79 | `result-track:22aac2be710f20a960266e73aca64f17656cfe8956278c55790c9f49e59f949e` |
| 5 | `lemma` | [spineToSimplex_spine_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-spine-apply--6c7e885b9e46e6b51d4dd740.md) | 84 | `result-track:6c7e885b9e46e6b51d4dd7402ba44260aa918ab0606887e4905c808d8ca0b002` |
| 6 | `def` | [spineEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spineequiv--af411359b295f596c3b88d2c.md) | 94 | `declaration-track:af411359b295f596c3b88d2c32382f042e9573d741d60675e7efe08b840a65e3` |
| 7 | `theorem` | [spineInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spineinjective--4c398b74773190967c39f942.md) | 100 | `result-track:4c398b74773190967c39f94286616fae1e25fbe121a13f8e5810fa9d3ec17a43` |
| 8 | `def` | [spineToDiagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetodiagonal--818b70658ea6033927419006.md) | 105 | `declaration-track:818b70658ea6033927419006e89b85ae77a1750098e0c41a15a50ab6783fe7e2` |
| 9 | `lemma` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/isstrictsegal--ec54fbc9de82102777eb1ac7.md) | 112 | `result-track:ec54fbc9de82102777eb1ac7bb12c8aa6e3ee8370c39d24afb616c4dd765a701` |
| 10 | `theorem` | [spineToSimplex_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-vertex--7c102c03879ed1f54a6f3867.md) | 118 | `result-track:7c102c03879ed1f54a6f3867ac319f955083431bc803d89e652ed9517ee37d69` |
| 11 | `theorem` | [spineToSimplex_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-arrow--175ecb8a8c814498ae1ec732.md) | 124 | `result-track:175ecb8a8c814498ae1ec73240b9f0a09b20ba49364227be58224fa739763e3a` |
| 12 | `theorem` | [spineToSimplex_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-interval--a65772f51482af6a34362712.md) | 129 | `result-track:a65772f51482af6a343627122478a7ac6a50855cc7931832714c358aa010d0b6` |
| 13 | `theorem` | [spineToSimplex_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-edge--131e31dfa6c183d9a6252200.md) | 138 | `result-track:131e31dfa6c183d9a62522005228e749c3bff2973d01de55649562d7a8dfbedb` |
| 14 | `lemma` | [spineToSimplex_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-map--621c839e6b10676fd0181921.md) | 149 | `result-track:621c839e6b10676fd0181921d927f53addd974267b8c88e432d9b64548f13d4f` |
| 15 | `lemma` | [spine_δ_vertex_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-vertex-lt--55b4b151cc202a35e46fb626.md) | 167 | `result-track:55b4b151cc202a35e46fb62622e375ce4902f0029ccd82b59789e3253686cb93` |
| 16 | `lemma` | [spine_δ_vertex_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-vertex-ge--6f755db5b90d0f8c376883f8.md) | 179 | `result-track:6f755db5b90d0f8c376883f85461b48b6d51f672001191c231cfc983a55664f3` |
| 17 | `lemma` | [spine_δ_arrow_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-lt--f7ef141934f5e22fa3e953be.md) | 193 | `result-track:f7ef141934f5e22fa3e953be91c10b92e62a5e990c9ef1f6e9a61484b32c338d` |
| 18 | `lemma` | [spine_δ_arrow_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-gt--a285d44f324f11d0a28f2223.md) | 202 | `result-track:a285d44f324f11d0a28f2223b36c558ac1e8c472c44bdcd4353ad00519487037` |
| 19 | `lemma` | [spine_δ_arrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-eq--95e379411ba8a0d373a7d090.md) | 213 | `result-track:95e379411ba8a0d373a7d090c54015c8bba313c5adc08a3b250259174ab0f784` |
| 20 | `structure` | [StrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/strictsegal--3a87d8a26f6218056a1905e3.md) | 227 | `declaration-track:3a87d8a26f6218056a1905e38157c5f2508c06b1095cbe1888d068a8ea835c27` |
| 21 | `class` | [IsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/isstrictsegal--93d8b5d9789de76c73dd8574.md) | 237 | `declaration-track:93d8b5d9789de76c73dd857458ac07d58fda406064f29aa4aba2e093216fd81f` |
| 22 | `def` | [ofIsStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/ofisstrictsegal--562750e4ce5755fff2f30cd0.md) | 244 | `declaration-track:562750e4ce5755fff2f30cd01d878d3cf2115029fafbf1d0dbedf73cdfdae9bc` |
| 23 | `def` | [truncation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/truncation--f99fb48cbb50c857c62de62d.md) | 256 | `declaration-track:f99fb48cbb50c857c62de62dddc504b9ba67e6a342fc59e4c4d433be5997db28` |
| 24 | `lemma` | [spine_spineToSimplex_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-spinetosimplex-apply--16ba64515891d9901df4ae85.md) | 262 | `result-track:16ba64515891d9901df4ae85dbd787955955776c85bd82988a8d5be7a773e6ac` |
| 25 | `lemma` | [spineToSimplex_spine_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-spine-apply--a47ada6249915c57e9d9f82a.md) | 267 | `result-track:a47ada6249915c57e9d9f82a75b651d3d13a9e22bc639d23958232756a83c490` |
| 26 | `def` | [spineEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spineequiv--b3c3dd8ad21f44df263cd846.md) | 273 | `declaration-track:b3c3dd8ad21f44df263cd846f4cb38ed144ca13cf32ba85be726f37ee8fec6c0` |
| 27 | `theorem` | [spineInjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spineinjective--28a0bca1334cea9b7c5c4646.md) | 281 | `result-track:28a0bca1334cea9b7c5c46460324cb70e8835f79e79ec21474cdcaf4969cfc6c` |
| 28 | `lemma` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/isstrictsegal--200c1f57809d26d2125f450f.md) | 286 | `result-track:200c1f57809d26d2125f450f43ed796808e7e998cfc86436419e878e72ff072c` |
| 29 | `theorem` | [spineToSimplex_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-vertex--f423d8c98ea5d8f2b9ef1d7a.md) | 290 | `result-track:f423d8c98ea5d8f2b9ef1d7a84920a9f6a299764991abe920b8599731f26fe99` |
| 30 | `theorem` | [spineToSimplex_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-arrow--0faad52cb6ca192d9dea010d.md) | 296 | `result-track:0faad52cb6ca192d9dea010d284e64b535bd5e9c7479be8df0844b55a6559666` |
| 31 | `def` | [spineToDiagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetodiagonal--1feef0ac5f233272d6aa0012.md) | 302 | `declaration-track:1feef0ac5f233272d6aa00128ba6a04a43211c2f6a42d6727abfba2ada53d5fc` |
| 32 | `theorem` | [spineToSimplex_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-interval--5a8baceca41b744488cfccfa.md) | 310 | `result-track:5a8baceca41b744488cfccfaf684d1933c612a36f812cb9a926ab4b0aea5b37d` |
| 33 | `theorem` | [spineToSimplex_edge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-edge--ecf65f8ced06be1e1c246c5c.md) | 318 | `result-track:ecf65f8ced06be1e1c246c5c27f64cbf7d8d2420b474b5186253abc350476602` |
| 34 | `lemma` | [spineToSimplex_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spinetosimplex-map--ad5841597d774a3e4f86f670.md) | 329 | `result-track:ad5841597d774a3e4f86f6703213159b7d279c766dd9bad257f9a0ed646573b7` |
| 35 | `lemma` | [spine_δ_vertex_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-vertex-lt--6ddfa8e1914cd12d6c36afc5.md) | 344 | `result-track:6ddfa8e1914cd12d6c36afc5c7ae13528997c606db2895931e862f859191e71a` |
| 36 | `lemma` | [spine_δ_vertex_ge](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-vertex-ge--909b8bad8d9e363cd3c38e6d.md) | 357 | `result-track:909b8bad8d9e363cd3c38e6d057370884c1dc591607b8cb1c9322760b2f2990d` |
| 37 | `lemma` | [spine_δ_arrow_lt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-lt--efc1506c1a660eb6bda12816.md) | 371 | `result-track:efc1506c1a660eb6bda128160688ab651ff5222c45b1a19049d418d026e1f9a2` |
| 38 | `lemma` | [spine_δ_arrow_gt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-gt--0102172204d7f3941a4e061c.md) | 380 | `result-track:0102172204d7f3941a4e061c717412629aac7aa89f26e0c88b67c179415464da` |
| 39 | `lemma` | [spine_δ_arrow_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/spine-arrow-eq--8342f0b1629726ed2504d7b8.md) | 389 | `result-track:8342f0b1629726ed2504d7b8011c63456471cf8f72d41f05ddfc932b40665b69` |
| 40 | `def` | [strictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/strictsegal--cf0f68230a01b9c56c1ce46c.md) | 407 | `declaration-track:cf0f68230a01b9c56c1ce46cdf2f06dae7e4200b23499fe2d460fa819ee18586` |
| 41 | `instance` | [isStrictSegal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variant567556362773d16b766cff8c57682c8403ee809071bf26b0cb103f80213b8404.lean/declarations/isstrictsegal--881b5d6032a6c8eb0022d4f0.md) | 429 | `declaration-track:881b5d6032a6c8eb0022d4f02a2ea5284a293522a9e26d79e5d9cda287361764` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

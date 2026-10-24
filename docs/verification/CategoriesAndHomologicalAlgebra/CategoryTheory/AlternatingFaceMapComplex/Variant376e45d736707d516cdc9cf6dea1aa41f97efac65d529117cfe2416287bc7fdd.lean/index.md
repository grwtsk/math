# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AlternatingFaceMapComplex.Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8928078f8f13b7fd7608094d474f306eb793b81d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8928078f8f13b7fd7608094d474f306eb793b81d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.MooreComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.FunctorCategories` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/objd--1a31cdbdfcd795604d314483.md) | 68 | `declaration-track:1a31cdbdfcd795604d31448322d5c84ef09ea4ff986ce78dd862e08333253aa5` |
| 2 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/d-squared--9b8c7fed7ea30607efd31675.md) | 74 | `result-track:9b8c7fed7ea30607efd316753face1b6a4c749881e316f2d5f892c068ce2c5cc` |
| 3 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/obj--ea92d16ce8122224de0f6b5b.md) | 125 | `declaration-track:ea92d16ce8122224de0f6b5b1dadc196afd8a140635f48f3ee23fece26fbbed2` |
| 4 | `theorem` | [obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/obj-x--3d1c68fb2192412e124363eb.md) | 130 | `result-track:3d1c68fb2192412e124363ebd1a201fe29664f88e96bddfca1c774b40b69c2ef` |
| 5 | `theorem` | [obj_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/obj-d-eq--75b531d8589a8f11830e2a07.md) | 136 | `result-track:75b531d8589a8f11830e2a07216cd577c249ee5e194675ac58baa80649ff8d23` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/map--0bff5094f2cf69339f62c65d.md) | 144 | `declaration-track:0bff5094f2cf69339f62c65d7a1761d0076d27f4cd149b2c4aaf50baaef2f4b9` |
| 7 | `theorem` | [map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/map-f--bbc882dc0b84ccf78f77bfab.md) | 156 | `result-track:bbc882dc0b84ccf78f77bfabf13c386a60ab1ede3d472dd9cb5727736a65baff` |
| 8 | `def` | [alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/alternatingfacemapcomplex--9f44e856a9398afde7c5d138.md) | 165 | `declaration-track:9f44e856a9398afde7c5d13896d37e46eb1f1541072cf8696064f92065d44234` |
| 9 | `theorem` | [alternatingFaceMapComplex_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/alternatingfacemapcomplex-obj-x--fa9aade430f14982862dab2e.md) | 173 | `result-track:fa9aade430f14982862dab2eeedcc47dd05eee433cb5501da10a16b3e6ef25c7` |
| 10 | `theorem` | [alternatingFaceMapComplex_obj_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/alternatingfacemapcomplex-obj-d--ca19f6b75438e7b575407f85.md) | 180 | `result-track:ca19f6b75438e7b575407f8539f80dc8c44ea09715f02e1d449ee10fe29ef12a` |
| 11 | `theorem` | [alternatingFaceMapComplex_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/alternatingfacemapcomplex-map-f--f82b3e9a1880a73d45c63917.md) | 187 | `result-track:f82b3e9a1880a73d45c63917600117d43a9d4709772c2e6e451a82d5a1f8237c` |
| 12 | `theorem` | [map_alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/map-alternatingfacemapcomplex--df778ed9a42618ebd53815b2.md) | 192 | `result-track:df778ed9a42618ebd53815b284a8e48060f09ac21f685492c6a65eaf58e49d08` |
| 13 | `theorem` | [karoubi_alternatingFaceMapComplex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/karoubi-alternatingfacemapcomplex-d--0c0df50c4154ee6892801b72.md) | 214 | `result-track:0c0df50c4154ee6892801b72ebaa528589530fcc3aa2cb098f30723454257d94` |
| 14 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/anonymous--7f2e6fc51473c2c01257ab81.md) | 228 | `declaration-track:7f2e6fc51473c2c01257ab81d05154f992f556bf4f9a131f9d24bb060c7f464a` |
| 15 | `def` | [inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/inclusionofmoorecomplexmap--620e489343a30e70732d751b.md) | 251 | `declaration-track:620e489343a30e70732d751b6c94121c76e8117b120afcfb463ad1e9560eb6e6` |
| 16 | `theorem` | [inclusionOfMooreComplexMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/inclusionofmoorecomplexmap-f--0499cdd9cf3ac2417b7b0d3d.md) | 276 | `result-track:0499cdd9cf3ac2417b7b0d3dcae512503472ec97e9fb6f1d3a21cb58cb1a5237` |
| 17 | `def` | [inclusionOfMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/inclusionofmoorecomplex--bafa2aaf1ee9e7e5cfb95cf6.md) | 288 | `declaration-track:bafa2aaf1ee9e7e5cfb95cf6b1f6a8e43ed4c5d5d8316ed365e9f3a0af19ab7a` |
| 18 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/objd--689962756baa74fc4d7e57e3.md) | 300 | `declaration-track:689962756baa74fc4d7e57e39b5b7f16cf3212ffa3a45a5a8961ad3deb0d8187` |
| 19 | `theorem` | [d_eq_unop_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/d-eq-unop-d--d8d5a707c313eaf8e7243109.md) | 304 | `result-track:d8d5a707c313eaf8e7243109fbcad8d79bb84035b29a3ecd45e3fdc95d2ac20f` |
| 20 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/d-squared--baa7b2067d261401ab534f28.md) | 312 | `result-track:baa7b2067d261401ab534f28f631cb79288b32099e96dc3df5fb948e6ca521bd` |
| 21 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/obj--981cbfb89750b70683f68989.md) | 317 | `declaration-track:981cbfb89750b70683f68989ce94c237c7fb40f7f70539208b39631e02a22d70` |
| 22 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/map--3349d983b12ff4ba38d58aae.md) | 325 | `declaration-track:3349d983b12ff4ba38d58aae0615ffe4f6e4cd95a10b4ce891ae1cf301478df4` |
| 23 | `def` | [alternatingCofaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant376e45d736707d516cdc9cf6dea1aa41f97efac65d529117cfe2416287bc7fdd.lean/declarations/alternatingcofacemapcomplex--6036169aa780bf201affbf21.md) | 342 | `declaration-track:6036169aa780bf201affbf211a83488a8abdcb99780240a4095434623a699edf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

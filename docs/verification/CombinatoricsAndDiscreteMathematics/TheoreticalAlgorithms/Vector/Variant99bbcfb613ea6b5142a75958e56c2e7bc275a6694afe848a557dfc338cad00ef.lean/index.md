# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6605a6f14812014fd858d12e25bf9cdc647471",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6605a6f14812014fd858d12e25bf9cdc647471`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Mathport.Rename` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.List.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Data.List.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.List.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Vector](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/vector--06d0e47270cc4e05227b539d.md) | 30 | `declaration-track:06d0e47270cc4e05227b539d2fe449c5c5b40ebd8c7e6b293fe54e14a37867b5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/instance--5102c00c299b2fd7f036680f.md) | 40 | `declaration-track:5102c00c299b2fd7f036680f9a07704fcc2f2cae0b9ba8211358bd327350b639` |
| 3 | `def` | [nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/nil--a05ccbb379bf323c26c5887e.md) | 45 | `declaration-track:a05ccbb379bf323c26c5887ee52f5f8478de6adf94ba17d552895893c2829c2e` |
| 4 | `def` | [cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/cons--cf6a498b91b7498f840338a2.md) | 52 | `declaration-track:cf6a498b91b7498f840338a2e54f382b9ab3ffc69efb72fe0edb6e45827ec97b` |
| 5 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/length--e426c564b1034ae45b39f159.md) | 59 | `declaration-track:e426c564b1034ae45b39f159b96c1b9cabcfc3a02ec1f615590315bd69d20e41` |
| 6 | `def` | [head](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/head--f22ea6002ca0f02a37a2f1fe.md) | 66 | `declaration-track:f22ea6002ca0f02a37a2f1fecc8634fcc4de7472f79fbc1dcd781cf5db4a3892` |
| 7 | `theorem` | [head_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/head-cons--1b7c177db9c46ea18a551e1f.md) | 72 | `result-track:1b7c177db9c46ea18a551e1fd1fc5821f76ea463f415fb88183df157caabd012` |
| 8 | `def` | [tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tail--69207ba0e5772fea791ad7b1.md) | 77 | `declaration-track:69207ba0e5772fea791ad7b1b69cff5cf70b00aeb41aec4d40405c59327e470b` |
| 9 | `theorem` | [tail_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tail-cons--f91219e80f6b381c49d70c0d.md) | 83 | `result-track:f91219e80f6b381c49d70c0dd0efde19632faf4319e693f4ecfab01f14d866b4` |
| 10 | `theorem` | [cons_head_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/cons-head-tail--9c6ffa38112932aa56a1fd79.md) | 89 | `result-track:9c6ffa38112932aa56a1fd79a38ef98bce4980ef159baaeb1322bdd532902a17` |
| 11 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist--58be7ed910ad7a3a8fcae4ab.md) | 95 | `declaration-track:58be7ed910ad7a3a8fcae4abc4df7ee937be1efeef37fe6aef68269d7ad22b4d` |
| 12 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/get--73a824351622deab8636c550.md) | 101 | `declaration-track:73a824351622deab8636c55095724cec6b3d3b1721089fd2af7551d053c126ec` |
| 13 | `def` | [append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/append--2c9ad254c61499d2c26362c6.md) | 106 | `declaration-track:2c9ad254c61499d2c26362c631d3a2d857f306a82f743332fe9f11e32ec6ed67` |
| 14 | `def` | [elim](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/elim--185096800290c79633bca088.md) | 128 | `declaration-track:185096800290c79633bca088de20ece1494a6b683925e4cf991668a7053201c8` |
| 15 | `def` | [map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/map--d0dffcbab540eea27a778895.md) | 136 | `declaration-track:d0dffcbab540eea27a778895f08ac2f6aaddaa1e96f4b6b1831fabe4f258d2d3` |
| 16 | `theorem` | [map_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/map-nil--4bb665009dd4770ff70130b1.md) | 142 | `result-track:4bb665009dd4770ff70130b10df2ce6ad11e2c9ba6bac9c39499051a0e0011df` |
| 17 | `theorem` | [map_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/map-cons--4c494451f712416609456dad.md) | 148 | `result-track:4c494451f712416609456dad1dcad4ebf36bed9d97f3dcc26edffc70bee35f16` |
| 18 | `def` | [map₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/map--719beb4dcb3bfc07de84354d.md) | 153 | `declaration-track:719beb4dcb3bfc07de84354d886da6a0eb9ad43e7ea2c2d608a8ac8743943856` |
| 19 | `def` | [replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/replicate--6020e8982c5acb87ed1d897c.md) | 158 | `declaration-track:6020e8982c5acb87ed1d897c1e979bbe793a82f926d8e9ba310323c1ac948025` |
| 20 | `def` | [drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/drop--cccd20ad9c39a597f1c5e52d.md) | 163 | `declaration-track:cccd20ad9c39a597f1c5e52de3d0867a791367475278473af25d3ba211aa82f5` |
| 21 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/take--23028aafe691bd3e346cba41.md) | 168 | `declaration-track:23028aafe691bd3e346cba41304dd7f8e484454d0789a98cba1f8e9a1dcafd53` |
| 22 | `def` | [removeNth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/removenth--7a3cfa14429f40142c1a95ae.md) | 173 | `declaration-track:7a3cfa14429f40142c1a95ae57a4bee310518ba4474f9fca50ea57093ca51e52` |
| 23 | `def` | [ofFn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/offn--0e0fcd8a6ff6bb8ec4ff7ca8.md) | 178 | `declaration-track:0e0fcd8a6ff6bb8ec4ff7ca88578e626378a59d607bd7e3c46b6474491a03c6e` |
| 24 | `def` | [congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/congr--aa93b8298637e5b48a5be670.md) | 183 | `declaration-track:aa93b8298637e5b48a5be670ad42f419668e2f3908fb2a7f27b8386a6a0814b3` |
| 25 | `def` | [mapAccumr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/mapaccumr--63d3883de50151204afc9af0.md) | 197 | `declaration-track:63d3883de50151204afc9af06034b1ad4e4cd673fa27f2bdeb9effcb9de689c5` |
| 26 | `def` | [mapAccumr₂](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/mapaccumr--50fa7ca20e75284a2405e9a0.md) | 206 | `declaration-track:50fa7ca20e75284a2405e9a04502d0e3d22bb6d4f7ff2f109cb94b6e89592eb1` |
| 27 | `def` | [shiftLeftFill](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/shiftleftfill--d3c93d1c80ec1c70b8ff575c.md) | 220 | `declaration-track:d3c93d1c80ec1c70b8ff575c23d9fa70190a1edaa38d401b77616f9ff6dff574` |
| 28 | `def` | [shiftRightFill](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/shiftrightfill--0c87144d90956a46008d3f47.md) | 226 | `declaration-track:0c87144d90956a46008d3f471b076d332392ea9b2df83662e2580f9d6d74e859` |
| 29 | `theorem` | [eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/eq--67c390849c4413fad6318952.md) | 241 | `result-track:67c390849c4413fad631895236eaa2e092f185ceb0290783bf5e91602152e459` |
| 30 | `theorem` | [eq_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/eq-nil--0a66c5a9009bc03365c12f1f.md) | 246 | `result-track:0a66c5a9009bc03365c12f1ff107a6fd506cb97edc7e74a244bf0cd68c9caaa1` |
| 31 | `theorem` | [toList_mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-mk--78b81f3b3e906b54b4ab187f.md) | 253 | `result-track:78b81f3b3e906b54b4ab187f948fcb93138af6006a6004ff6ab41e55fc5df350` |
| 32 | `theorem` | [toList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-nil--22c9c81cd0651b3a464a3a5b.md) | 259 | `result-track:22c9c81cd0651b3a464a3a5b040a338e00507d16ff2717e3930b4eda5614e6f7` |
| 33 | `theorem` | [toList_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-length--852b15dc64e72de30ee4f77c.md) | 265 | `result-track:852b15dc64e72de30ee4f77c9a5caa90cd1feba6df2325ee800329069f8de0f9` |
| 34 | `theorem` | [toList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-cons--ed7b7d7ed5de83f5fc7a7137.md) | 272 | `result-track:ed7b7d7ed5de83f5fc7a71370eb5645154553bb08d75d019a1fbd7bdcf5d9263` |
| 35 | `theorem` | [toList_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-append--21f11ff59c3ff7a3ef0fcd39.md) | 278 | `result-track:21f11ff59c3ff7a3ef0fcd39658aa91e178b8836394c25909fede55b68022152` |
| 36 | `theorem` | [toList_drop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-drop--542929e8c6d9da267cbea697.md) | 287 | `result-track:542929e8c6d9da267cbea69762fa7885d2ff2012ea49d41d4685f5cd6fb8e9cd` |
| 37 | `theorem` | [toList_take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/tolist-take--5c5ff18aa88b214d4c4694a2.md) | 294 | `result-track:5c5ff18aa88b214d4c4694a234f714a4dcae21c6c089bd816bc4f938179562b3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Vector/Variant99bbcfb613ea6b5142a75958e56c2e7bc275a6694afe848a557dfc338cad00ef.lean/declarations/instance--d9c9287f189c4be684af7041.md) | 299 | `declaration-track:d9c9287f189c4be684af7041547bd466f61e4c5b9fe33d4bef9959ea8433bd98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

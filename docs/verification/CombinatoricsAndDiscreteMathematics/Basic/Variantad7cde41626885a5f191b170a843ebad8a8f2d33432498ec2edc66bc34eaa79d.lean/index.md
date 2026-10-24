# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a544490b5ae44a9044e412a4a1d2d899dc82ef3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a544490b5ae44a9044e412a4a1d2d899dc82ef3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sym` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeDisjointTriangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles--d863a5551a36843c80ef930a.md) | 51 | `declaration-track:d863a5551a36843c80ef930a7e9836f040578ff965e1748ca131dde99482e842` |
| 2 | `def` | [LocallyLinear](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear--7fc92ad2a02cba0f80687f57.md) | 55 | `declaration-track:7fc92ad2a02cba0f80687f578c5c54a8acfd0ea1f15f27b992d64f32494372bd` |
| 3 | `lemma` | [LocallyLinear.edgeDisjointTriangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-edgedisjointtriangles--7591309a14ae11e2948e121d.md) | 58 | `result-track:7591309a14ae11e2948e121dcb52b69669c4112174c4ecc1a8dad8316c92ce0f` |
| 4 | `lemma` | [EdgeDisjointTriangles.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-mono--663561b45f7c5b0581acd565.md) | 61 | `result-track:663561b45f7c5b0581acd565c8b11ccafa867fd7b2183810d5a87b9922cc2f01` |
| 5 | `lemma` | [edgeDisjointTriangles_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-bot--0d1eea3088841db8cd3fc720.md) | 64 | `result-track:0d1eea3088841db8cd3fc72084dff80d4fba190e5b07640656f1f1dec797d521` |
| 6 | `lemma` | [locallyLinear_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-bot--3bd38d7dd9cf56dcc4041a33.md) | 67 | `result-track:3bd38d7dd9cf56dcc4041a33bb0272e80741b78a793ac164783dbb2a34a54cec` |
| 7 | `lemma` | [EdgeDisjointTriangles.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-map--c3cbeeb4894d70c890bcccb3.md) | 69 | `result-track:c3cbeeb4894d70c890bcccb3585768d341b9a37db6ec3825bf510d43b3655253` |
| 8 | `lemma` | [LocallyLinear.map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-map--1f91a4b1436c9ca26614874c.md) | 79 | `result-track:1f91a4b1436c9ca26614874cca36ec9d6608f9b8629c68ffd930693b95bc5f6c` |
| 9 | `lemma` | [locallyLinear_comap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-comap--f4f21cf80be4f9308edd287c.md) | 85 | `result-track:f4f21cf80be4f9308edd287cb1b8b79a6093fabdff8a83a34fb91340e4d7c370` |
| 10 | `lemma` | [edgeDisjointTriangles_iff_mem_sym2_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-iff-mem-sym2-subsingleton--0830067b4630276081d3e035.md) | 93 | `result-track:0830067b4630276081d3e0352433c915e74d7130614556cfaade102af86faa63` |
| 11 | `instance` | [EdgeDisjointTriangles.instDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-instdecidable--363f84f6a1cc603cd750a573.md) | 142 | `declaration-track:363f84f6a1cc603cd750a573820f8cd47711448f21ce6db6e9d16e5171ea965c` |
| 12 | `instance` | [LocallyLinear.instDecidable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-instdecidable--026fb7615383f9b3fd0c073b.md) | 146 | `declaration-track:026fb7615383f9b3fd0c073b7141027a186ced93a8f686c883cb1aa6f64260a0` |
| 13 | `lemma` | [EdgeDisjointTriangles.card_edgeFinset_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-card-edgefinset-le--ab6c2a224ea4c9936d65dcc0.md) | 149 | `result-track:ab6c2a224ea4c9936d65dcc07cf441184ccfee508a361d3b7fd2de6b20dfceb4` |
| 14 | `lemma` | [LocallyLinear.card_edgeFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/locallylinear-card-edgefinset--b6fe3c4f68361e9e9eb501de.md) | 164 | `result-track:b6fe3c4f68361e9e9eb501deebc6676637042cb894914fbee7f4f58ad21ded92` |
| 15 | `def` | [FarFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree--44172a69883a0c40f311eeea.md) | 190 | `declaration-track:44172a69883a0c40f311eeea592f3262195e11b4ac65ba37a6124d6d65904d7f` |
| 16 | `theorem` | [farFromTriangleFree_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-iff--5e7ab46a5e473d8776785787.md) | 195 | `result-track:5e7ab46a5e473d8776785787ea5f5f68c7a5995c74e51583c17d89128a8457f0` |
| 17 | `theorem` | [FarFromTriangleFree.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-mono--e92000d2f9a335e12574918c.md) | 201 | `result-track:e92000d2f9a335e12574918ce8116479d6a63452c74828a6c3138b4375bbd0ba` |
| 18 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--84b777dec68b67b5d675800e.md) | 209 | `result-track:84b777dec68b67b5d675800e55194a6ae5d7fbab71078e22769fd7bb566ff7aa` |
| 19 | `lemma` | [farFromTriangleFree_of_disjoint_triangles_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-of-disjoint-triangles-aux--32fed3db20edf6b1c929634c.md) | 215 | `result-track:32fed3db20edf6b1c929634c867670dc54e6937fe5d26feeed87f3bb1077f4b7` |
| 20 | `lemma` | [farFromTriangleFree_of_disjoint_triangles](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-of-disjoint-triangles--96ad11e2d674d329701341d4.md) | 243 | `result-track:96ad11e2d674d329701341d419cf8edde8365b2d4653f743cac1be00cc5505f3` |
| 21 | `lemma` | [EdgeDisjointTriangles.farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/edgedisjointtriangles-farfromtrianglefree--fdaf6abe120fc34a5876556d.md) | 254 | `result-track:fdaf6abe120fc34a5876556d9cff9243ceee1291ea2d7f57fa512d9d9f61da55` |
| 22 | `lemma` | [FarFromTriangleFree.lt_half](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-lt-half--c5d86bfa488f545bbf32dc48.md) | 263 | `result-track:c5d86bfa488f545bbf32dc4889173fec1f7c013a1c440731f30d0bce982c3dac` |
| 23 | `lemma` | [FarFromTriangleFree.lt_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-lt-one--9e82a94b2bbf7c4617c1afc7.md) | 287 | `result-track:9e82a94b2bbf7c4617c1afc73f11e531e2e34354038df44b51d01dbc76016463` |
| 24 | `theorem` | [FarFromTriangleFree.nonpos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-nonpos--59747141555d73a9c279da38.md) | 290 | `result-track:59747141555d73a9c279da38ece17048ee8bf3c090a797a0379e9c02f95bd9d7` |
| 25 | `theorem` | [CliqueFree.not_farFromTriangleFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/cliquefree-not-farfromtrianglefree--7d4e7f11514a6e6cd1c6c6a0.md) | 296 | `result-track:7d4e7f11514a6e6cd1c6c6a014573de67d91c21d3eab8f738bdb3246f61f1eb0` |
| 26 | `theorem` | [FarFromTriangleFree.not_cliqueFree](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-not-cliquefree--554b0e89c7a8480eebb39b0e.md) | 299 | `result-track:554b0e89c7a8480eebb39b0ed862f4e5e0d0332acacb1512b6b1b84ce44e979f` |
| 27 | `theorem` | [FarFromTriangleFree.cliqueFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/declarations/farfromtrianglefree-cliquefinset-nonempty--0596ca9270032bdec0f69fa9.md) | 302 | `result-track:0596ca9270032bdec0f69fa9564833fed486b3a6c4d90a3211a440ee95b47ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

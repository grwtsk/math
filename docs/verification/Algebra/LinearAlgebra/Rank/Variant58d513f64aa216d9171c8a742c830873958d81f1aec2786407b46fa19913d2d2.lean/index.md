# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c6a606660ac2905fd24a5c4103df7b4675afc89",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c6a606660ac2905fd24a5c4103df7b4675afc89`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.DotProduct` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Diagonal` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank--b5dcc9c582e23810fc7f5d18.md) | 56 | `declaration-track:b5dcc9c582e23810fc7f5d1801208b94a4347262e3f0d76021619d757261291a` |
| 2 | `theorem` | [rank_one](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-one--845d828be19624c3b40b3e70.md) | 61 | `result-track:845d828be19624c3b40b3e70aef07656dada7f3fd0a6d10b7b8df714d97e9ab8` |
| 3 | `theorem` | [rank_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-zero--9f816604216d94b0f36f19ad.md) | 67 | `result-track:9f816604216d94b0f36f19adba3ffa2257bd8b182175ddd9fbe9e97903eab70c` |
| 4 | `theorem` | [rank_le_card_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-le-card-width--0bd5a469c709a5db9a26dabe.md) | 71 | `result-track:0bd5a469c709a5db9a26dabec49598e9ab3dd212b5e0ca50f8c763f2bb7ad7a6` |
| 5 | `theorem` | [rank_le_width](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-le-width--a988ff5ca231d1f18acc606f.md) | 78 | `result-track:a988ff5ca231d1f18acc606fe69d3ed2ee96f228f73b19196f7dc79cdc55d785` |
| 6 | `theorem` | [rank_mul_le_left](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-mul-le-left--365b41525f3bb57d6cd722bd.md) | 83 | `result-track:365b41525f3bb57d6cd722bdc0e3c20615f75fdd2ba002011da9a14cf5727685` |
| 7 | `theorem` | [rank_mul_le_right](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-mul-le-right--2bf8444bbcb6b6a207ead079.md) | 89 | `result-track:2bf8444bbcb6b6a207ead079f836aee020080c131d7d29ccd69d329ea064ce85` |
| 8 | `theorem` | [rank_mul_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-mul-le--ef9729104873e6873e2ebec1.md) | 96 | `result-track:ef9729104873e6873e2ebec15b65a0ce39a62f7e72d6fb45b4183086f447ddd8` |
| 9 | `theorem` | [rank_unit](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-unit--dd0483c5210dc4a1ccc2f104.md) | 101 | `result-track:dd0483c5210dc4a1ccc2f104159c7734c387fd29e1ef5fe2f660d12726b6a536` |
| 10 | `theorem` | [rank_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-of-isunit--bc6c09fb9d53a6845f20cbf0.md) | 108 | `result-track:bc6c09fb9d53a6845f20cbf0843993fd0fa8856c10f3faf95d6a2541dd929b36` |
| 11 | `lemma` | [rank_mul_eq_left_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-mul-eq-left-of-isunit-det--ebcdf0460e2bba7f14a23454.md) | 115 | `result-track:ebcdf0460e2bba7f14a2345497857fe399ffe1053196e36de5b477ef5febab0e` |
| 12 | `lemma` | [rank_mul_eq_right_of_isUnit_det](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-mul-eq-right-of-isunit-det--6ce3d0291287a00b95a7fb26.md) | 125 | `result-track:6ce3d0291287a00b95a7fb262bae3f3792fbfec6bd6919604d599d675b73a915` |
| 13 | `theorem` | [rank_submatrix_le](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-submatrix-le--9034459eb295e480271e71dc.md) | 135 | `result-track:9034459eb295e480271e71dced21d0074d8ab67cf16ce13905fa842a46a509cc` |
| 14 | `theorem` | [rank_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-reindex--1d0809ece236509912b25a5e.md) | 143 | `result-track:1d0809ece236509912b25a5ec8e4f2dd506f6526f9022b6be30acf1f1f107afc` |
| 15 | `theorem` | [rank_submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-submatrix--c4178adbab954b1b9d4f7f47.md) | 150 | `result-track:c4178adbab954b1b9d4f7f4755bfb3d0a6b490dc0d610b2722f34f14650ae77b` |
| 16 | `theorem` | [rank_eq_finrank_range_toLin](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-eq-finrank-range-tolin--28d9e686e485056aef30a47e.md) | 155 | `result-track:28d9e686e485056aef30a47e0823dca64073c3915468b0fa5c4662bb22e22b6a` |
| 17 | `theorem` | [rank_le_card_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-le-card-height--9db92ba1ee621b24bf1722d0.md) | 177 | `result-track:9db92ba1ee621b24bf1722d01d9c5ca2d674e11b29997391b2ece40036bdf2af` |
| 18 | `theorem` | [rank_le_height](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-le-height--80074a20619f661826f72142.md) | 184 | `result-track:80074a20619f661826f7214234ecd904b14ec0f882253e4258847ef69bf5576d` |
| 19 | `theorem` | [rank_eq_finrank_span_cols](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-eq-finrank-span-cols--342986fb49dc74c3de232c2b.md) | 190 | `result-track:342986fb49dc74c3de232c2b2c0dd554a5d4fbbfe9b84bddf76fe6dfc6d97b40` |
| 20 | `theorem` | [rank_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-diagonal--ef62ee3f0aae482f2e45f6fd.md) | 201 | `result-track:ef62ee3f0aae482f2e45f6fd0e36a589e0cf66e2d13a2fd7b49ffed55a890d8a` |
| 21 | `theorem` | [ker_mulVecLin_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/ker-mulveclin-conjtranspose-mul-self--b7610926fdee1f690bf03985.md) | 226 | `result-track:b7610926fdee1f690bf039855ecd1689384ceeb7f63994806091626f6101c59c` |
| 22 | `theorem` | [rank_conjTranspose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-conjtranspose-mul-self--a705edb80356378980da9fcb.md) | 232 | `result-track:a705edb80356378980da9fcb6469a322458f2f4576ca136693d684b83fc0842f` |
| 23 | `theorem` | [rank_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-conjtranspose--bd1f3ddbaeb28446ced6a3da.md) | 245 | `result-track:bd1f3ddbaeb28446ced6a3dadb5dc6c09c4948a6e77d2a5328668950316a305c` |
| 24 | `theorem` | [rank_self_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-self-mul-conjtranspose--03d35531768d81f0ff54fe81.md) | 253 | `result-track:03d35531768d81f0ff54fe81dbf8befaae6af06554584af63df0cc04c4b5fd0b` |
| 25 | `theorem` | [ker_mulVecLin_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/ker-mulveclin-transpose-mul-self--b84645b8e19cffedd5298418.md) | 264 | `result-track:b84645b8e19cffedd5298418c657d36142287ef595dbbd5059fc75fe7556178b` |
| 26 | `theorem` | [rank_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-transpose-mul-self--2cd0ee23d5e6f92a9ec604f0.md) | 276 | `result-track:2cd0ee23d5e6f92a9ec604f07a92f8b08418b034eee8dd82c7e7a0462a5d10ab` |
| 27 | `theorem` | [rank_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-transpose--6262c3df85162779eb5a3272.md) | 288 | `result-track:6262c3df85162779eb5a3272ff873ad3511eb9c71cf62972ccad0b131e4db090` |
| 28 | `theorem` | [rank_self_mul_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-self-mul-transpose--c11e4cdd79c3692835235a4b.md) | 294 | `result-track:c11e4cdd79c3692835235a4b1d15fb718a022d2de569c506c79d17cfb45de6fc` |
| 29 | `theorem` | [rank_eq_finrank_span_row](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant58d513f64aa216d9171c8a742c830873958d81f1aec2786407b46fa19913d2d2.lean/declarations/rank-eq-finrank-span-row--dcafd4b75d084d4cda542263.md) | 303 | `result-track:dcafd4b75d084d4cda542263600ae13c6a11fc477cd166076568b24058412db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

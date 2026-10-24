# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bounds.Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7212b4313d618f60b279fc04e3abfa86adff1f48",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7212b4313d618f60b279fc04e3abfa86adff1f48`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.SpecificFunctions.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.ArctanDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sin_lt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-lt--bcba1067ea14575ec57d71fe.md) | 46 | `result-track:bcba1067ea14575ec57d71fe9414f961ed52a4394d0f23e68eeadf6077b06dc5` |
| 2 | `lemma` | [sin_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-le--efe997f2fdd16c174d74ce4e.md) | 58 | `result-track:efe997f2fdd16c174d74ce4e0915b690336fa58ca02e6ffe321f1a0c3041bc12` |
| 3 | `lemma` | [lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/lt-sin--418238e0c9922a554df3e5e0.md) | 63 | `result-track:418238e0c9922a554df3e5e034b4095a880b2d11e481f32c2a3cdfc14c26d5ed` |
| 4 | `lemma` | [le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/le-sin--6372e7d7abfcbb1930446c7e.md) | 64 | `result-track:6372e7d7abfcbb1930446c7e94c0ef63bc382cb0ddce41526e4e6e14d8e6db25` |
| 5 | `theorem` | [lt_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/lt-sin-mul--0517a8d7d82966d2aa179ec9.md) | 66 | `result-track:0517a8d7d82966d2aa179ec9f0d5700ba3d8d0ed3db486a8a99384ab818aba9e` |
| 6 | `theorem` | [le_sin_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/le-sin-mul--0f69cad1c5d9300220832a12.md) | 71 | `result-track:0f69cad1c5d9300220832a12face639026c62845145877f52021e6a7645210d9` |
| 7 | `theorem` | [mul_lt_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/mul-lt-sin--b7fa01acb08672ac29683758.md) | 76 | `result-track:b7fa01acb08672ac296837584e52e927f5af118774cacc48572888d34c994700` |
| 8 | `theorem` | [mul_le_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/mul-le-sin--2db70fbaa802e0f6cce8d2d3.md) | 86 | `result-track:2db70fbaa802e0f6cce8d2d313a67e3a4b656afe1a616d567033c338c89bc51a` |
| 9 | `lemma` | [sin_le_mul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-le-mul--b74ae663ca7d340334442a5a.md) | 93 | `result-track:b74ae663ca7d340334442a5afd2c8f212fcdfa3799aca8da1c3a59c674578bed` |
| 10 | `lemma` | [mul_abs_le_abs_sin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/mul-abs-le-abs-sin--01bf4c3e0f7be1f8d84b186f.md) | 97 | `result-track:01bf4c3e0f7be1f8d84b186f615f736f2f2c45a3a6aeb4276fe73c01993e2c7b` |
| 11 | `lemma` | [sin_sq_lt_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-sq-lt-sq--26a88b5e1c23f051b3d4c442.md) | 103 | `result-track:26a88b5e1c23f051b3d4c44223ece01432cfdc7f8bc95baa1a1e7e861dcd46d5` |
| 12 | `lemma` | [sin_sq_le_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-sq-le-sq--3605a91c68d5c83f7b7af564.md) | 114 | `result-track:3605a91c68d5c83f7b7af5643c91f3f005f03e8ee83e3777bbe07431f61845bb` |
| 13 | `lemma` | [abs_sin_lt_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/abs-sin-lt-abs--fd8f319725f32332c71893ab.md) | 119 | `result-track:fd8f319725f32332c71893ab5b6192f2ac56d556feddaa15c5584ed04e81afde` |
| 14 | `lemma` | [abs_sin_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/abs-sin-le-abs--eb123d4668387c39c1d79d7b.md) | 120 | `result-track:eb123d4668387c39c1d79d7ba296c2bd571bf511cd47542f2c02fd13e943e7e4` |
| 15 | `lemma` | [one_sub_sq_div_two_lt_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/one-sub-sq-div-two-lt-cos--211047cd8706fc1b143a479b.md) | 122 | `result-track:211047cd8706fc1b143a479bf21dfa98f73ab21ccbc48c8c910424621e11db4f` |
| 16 | `lemma` | [one_sub_sq_div_two_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/one-sub-sq-div-two-le-cos--519a54a092e3ddc4587de55d.md) | 127 | `result-track:519a54a092e3ddc4587de55d94ae62ca9253e830abb6b8c0f21d06e8554a1912` |
| 17 | `lemma` | [one_sub_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/one-sub-mul-le-cos--8571407023a89bc6da3d0490.md) | 133 | `result-track:8571407023a89bc6da3d04901e161e9b3733b3b2c027291a87a0cccf964c2cd0` |
| 18 | `lemma` | [one_add_mul_le_cos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/one-add-mul-le-cos--272fc28b5c17ab3e7e7d2d8d.md) | 138 | `result-track:272fc28b5c17ab3e7e7d2d8d10266f055a33230414bb158dd6470bcb62f4d9ed` |
| 19 | `lemma` | [cos_le_one_sub_mul_cos_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/cos-le-one-sub-mul-cos-sq--79c0ddc3e31ac83698f05174.md) | 141 | `result-track:79c0ddc3e31ac83698f051748357f1ce366a2ef3af40986a677483c0ea1d1db1` |
| 20 | `theorem` | [sin_gt_sub_cube](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/sin-gt-sub-cube--efff0de04b0afca0196e8e9a.md) | 155 | `result-track:efff0de04b0afca0196e8e9a2dda0f73d37d689c3e190500796592ba411efbe3` |
| 21 | `theorem` | [deriv_tan_sub_id](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/deriv-tan-sub-id--92ecf35d8578e2b6183d086c.md) | 167 | `result-track:92ecf35d8578e2b6183d086c19d40eaf74087cbf8299079bdf9ba46150c973e1` |
| 22 | `theorem` | [lt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/lt-tan--ae3e4195afdadf7e8052af87.md) | 175 | `result-track:ae3e4195afdadf7e8052af870b350cef010f75db44b6858a0ee8f1f2467b64ee` |
| 23 | `theorem` | [le_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/le-tan--cf6f31072c12fef448acc266.md) | 206 | `result-track:cf6f31072c12fef448acc2667322513e93813b64a9554e2fdeb94dee6918f6a5` |
| 24 | `theorem` | [cos_lt_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/cos-lt-one-div-sqrt-sq-add-one--525b307832b7f4615b802f81.md) | 211 | `result-track:525b307832b7f4615b802f811ed0b552a258abdc4efe660f5b611613b3f9ff47` |
| 25 | `theorem` | [cos_le_one_div_sqrt_sq_add_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bounds/Variante6ac8514ddb4cb3f6ab3dce80c9396d7177770a2376da7d0357743d44a0e1118.lean/declarations/cos-le-one-div-sqrt-sq-add-one--41d2661ffc8284feda19b6af.md) | 234 | `result-track:41d2661ffc8284feda19b6af3b3e11a6a005aba24f304338f2eb7afb1b7871e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

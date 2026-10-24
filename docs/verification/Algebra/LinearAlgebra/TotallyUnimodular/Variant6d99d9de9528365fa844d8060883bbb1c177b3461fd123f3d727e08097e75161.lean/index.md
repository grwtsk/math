# Verification target: GRWTSK.Algebra.LinearAlgebra.TotallyUnimodular.Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8f088119bff9c37cfbb5a5e977d73c9dd390e27",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8f088119bff9c37cfbb5a5e977d73c9dd390e27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.ColumnRowPartitioned` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sign` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular--e4ccc038a02079f431e68920.md) | 34 | `declaration-track:e4ccc038a02079f431e689201a503f9b908c1cdcab864ae2411f3f1c1f5170a1` |
| 2 | `lemma` | [isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-iff--a366b9695ebf9316559c9380.md) | 38 | `result-track:a366b9695ebf9316559c93804a856233eab706f3e09a042c48b17077405967db` |
| 3 | `lemma` | [isTotallyUnimodular_iff_fintype.](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-iff-fintype--8448d416d565e0bf11c25330.md) | 57 | `result-track:8448d416d565e0bf11c253303148942883c1c893de057fca199833469949de8c` |
| 4 | `lemma` | [IsTotallyUnimodular.apply](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-apply--8420d9fdbf00e354bf1a3cb5.md) | 69 | `result-track:8420d9fdbf00e354bf1a3cb556f10ec013200300edd9080dfe8a33bffb095fad` |
| 5 | `lemma` | [IsTotallyUnimodular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-submatrix--af0fbd9fcf0c2c25a56b9d60.md) | 74 | `result-track:af0fbd9fcf0c2c25a56b9d60140a9932d133da7fb4b4d988c6ad36796813441f` |
| 6 | `lemma` | [IsTotallyUnimodular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-transpose--401e3d392d0ef96e70901b03.md) | 81 | `result-track:401e3d392d0ef96e70901b03415298ac91fa9d83281e6a80f4960b4d65a0872b` |
| 7 | `lemma` | [transpose_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/transpose-istotallyunimodular-iff--98cc1f22f0af95e5eddcc948.md) | 87 | `result-track:98cc1f22f0af95e5eddcc948926440849fa458309327afd0eec575fb66d824dc` |
| 8 | `lemma` | [IsTotallyUnimodular.reindex](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-reindex--0aea4eac6f0f23fdb3c3ed81.md) | 91 | `result-track:0aea4eac6f0f23fdb3c3ed81b30f9c3bbddf81f014c9c3e8753be01218e8fbb8` |
| 9 | `lemma` | [reindex_isTotallyUnimodular](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/reindex-istotallyunimodular--b467f8e9f4b06ccd9a1ed489.md) | 96 | `result-track:b467f8e9f4b06ccd9a1ed489e8745de941700e894c57cb561c8ccc07cd40d93a` |
| 10 | `lemma` | [IsTotallyUnimodular.fromRows_unitlike](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/istotallyunimodular-fromrows-unitlike--b3557ec951dd723c4684fa73.md) | 103 | `result-track:b3557ec951dd723c4684fa7385bad96880d145e8e711b96a9da3b18e08807e15` |
| 11 | `lemma` | [fromRows_isTotallyUnimodular_iff_rows](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/fromrows-istotallyunimodular-iff-rows--14ede2cf86ec990a2c21c18c.md) | 143 | `result-track:14ede2cf86ec990a2c21c18c3825b263fdca2827cec1540f7bf0da248b390127` |
| 12 | `lemma` | [fromRows_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/fromrows-one-istotallyunimodular-iff--dd4142ccc9894d38e52977b5.md) | 148 | `result-track:dd4142ccc9894d38e52977b5f7539f1dc9fdf8306c90946cb7d4cd3cd6846604` |
| 13 | `lemma` | [one_fromRows_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/one-fromrows-istotallyunimodular-iff--a634989f3fee44a886b42356.md) | 153 | `result-track:a634989f3fee44a886b4235631d078f00a76c4d80eacc680829931e5598ff6fe` |
| 14 | `lemma` | [fromCols_one_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/fromcols-one-istotallyunimodular-iff--8f9fca617c5f22667ef6f659.md) | 161 | `result-track:8f9fca617c5f22667ef6f6597cc76d4ad1060d7efa549ac3d56640da43030e92` |
| 15 | `lemma` | [one_fromCols_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/one-fromcols-istotallyunimodular-iff--396256178763d5e6cea3b597.md) | 169 | `result-track:396256178763d5e6cea3b597702bd67b4a683c191f548f2129560a9b75801f32` |
| 16 | `lemma` | [fromRows_replicateRow0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/fromrows-replicaterow0-istotallyunimodular-iff--ac6f89c2aa4752f95aa40a0b.md) | 182 | `result-track:ac6f89c2aa4752f95aa40a0b7f5403ebba5e161c89b41d66a0a3b3cacd69ac18` |
| 17 | `lemma` | [fromCols_replicateCol0_isTotallyUnimodular_iff](../../../../../mathematics/Algebra/LinearAlgebra/TotallyUnimodular/Variant6d99d9de9528365fa844d8060883bbb1c177b3461fd123f3d727e08097e75161.lean/declarations/fromcols-replicatecol0-istotallyunimodular-iff--4ef56d316f820a00f48e7102.md) | 194 | `result-track:4ef56d316f820a00f48e7102d4b33372b514e9b423f5ea351523d5eb7e5a8803` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

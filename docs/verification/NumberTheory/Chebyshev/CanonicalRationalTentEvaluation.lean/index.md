# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b653ff059eb5a3cb90707f04c5cf69c37e83bb64",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b653ff059eb5a3cb90707f04c5cf69c37e83bb64`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalTentAccumulation`](../../../../mathematics/Analysis/ComplexAnalysis/RationalTentAccumulation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeadBinding](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/headbinding--6c832bda8fa5f5a58db1a56f.md) | 30 | `declaration-track:6c832bda8fa5f5a58db1a56fd1019fcf663739b90305cf63417ea746269101ff` |
| 2 | `def` | [squareCenterQ](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/squarecenterq--2e98eaadaa5927e9834aea6b.md) | 36 | `declaration-track:2e98eaadaa5927e9834aea6b03c6dfdfd55bf14f5648c24391a2f3fab7f3dbe4` |
| 3 | `def` | [squareRadiusQ](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/squareradiusq--e2c0af4aaa911b488fb71dfb.md) | 37 | `declaration-track:e2c0af4aaa911b488fb71dfbab266d30e6fce425c0085ab10a3d3321c2c17b1e` |
| 4 | `theorem` | [cast_squareCenterQ](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/cast-squarecenterq--db54d611eb07fdc381017f5b.md) | 39 | `result-track:db54d611eb07fdc381017f5b519c953fed31fcd4c18b110785020fb2962d2541` |
| 5 | `theorem` | [cast_squareRadiusQ](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/cast-squareradiusq--a1826198b7bb47ce836f2913.md) | 42 | `result-track:a1826198b7bb47ce836f29139cae205779551a84e31098186f41c62d2c91f554` |
| 6 | `theorem` | [head_eq_bound_sum](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/head-eq-bound-sum--06e1ee24ce6f666186a7c983.md) | 46 | `result-track:06e1ee24ce6f666186a7c98345b44caaa7d78bee88bbeff5d3f7cf2976d53171` |
| 7 | `theorem` | [verified_head_sound](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/verified-head-sound--ad967a2e8a6111d1d3a65088.md) | 62 | `result-track:ad967a2e8a6111d1d3a65088f5922079161da7b75b19a249d6b3c0d8f3b7a4b1` |
| 8 | `theorem` | [prime_in_square_of_verified_rational_head](../../../../mathematics/NumberTheory/Chebyshev/CanonicalRationalTentEvaluation.lean/declarations/prime-in-square-of-verified-rational-head--78a1bc994f118489d9df0abd.md) | 77 | `result-track:78a1bc994f118489d9df0abd6be8e1870ca8bab7103294c0f638ce2f44582662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.UniversalAlgebra.Translations.Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ded5fcd01cb1f423a612cdb8b44d3eabbf15feb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.Translations` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stream_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/stream-zero--4e1e96aa8ba165e2914e110c.md) | 68 | `result-track:4e1e96aa8ba165e2914e110c3a63f5730568d01423f28a8ae1283adf33b9bc39` |
| 2 | `theorem` | [stream_eq_none_of_fr_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/stream-eq-none-of-fr-eq-zero--ebf3751e198ff94e2cc57e92.md) | 74 | `result-track:ebf3751e198ff94e2cc57e9250a55fb53909da64ecec6a5f88cba738245b93ea` |
| 3 | `theorem` | [succ_nth_stream_eq_none_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/succ-nth-stream-eq-none-iff--e913eda21b0350dd05905c96.md) | 85 | `result-track:e913eda21b0350dd05905c962f376abd0b9b7f7d87b9b4d35916e1eb86dca4ce` |
| 4 | `theorem` | [succ_nth_stream_eq_some_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/succ-nth-stream-eq-some-iff--da2ff9cae015a8fad2fd2ba6.md) | 95 | `result-track:da2ff9cae015a8fad2fd2ba68ba88e9b02f2c58f2bd51b7acdcc48c86b4bcb1c` |
| 5 | `theorem` | [stream_succ_of_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/stream-succ-of-some--8ea332dcdd056bc8eda6d66e.md) | 106 | `result-track:8ea332dcdd056bc8eda6d66ea64b3b93c4d5b7a6d386b7d4f0d016d9b68355bb` |
| 6 | `theorem` | [stream_succ_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/stream-succ-of-int--7059dc1849dcc2d763ede34c.md) | 113 | `result-track:7059dc1849dcc2d763ede34c6970113f893021a9b4a6bf51b872540a9dad2b39` |
| 7 | `theorem` | [exists_succ_nth_stream_of_fr_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/exists-succ-nth-stream-of-fr-zero--eb40b202618c42e5177a445b.md) | 120 | `result-track:eb40b202618c42e5177a445bd6f9dc447d7318b07e53bfb7cccf6b7a45764a5a` |
| 8 | `theorem` | [stream_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/stream-succ--9d0135b1ca84a51ddcb382bc.md) | 136 | `result-track:9d0135b1ca84a51ddcb382bcf9b2d8232a808b6a28210393bdaa9ff10efb0839` |
| 9 | `theorem` | [IntFractPair.seq1_fst_eq_of](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/intfractpair-seq1-fst-eq-of--1d018f38d3a458aa9ae50479.md) | 167 | `result-track:1d018f38d3a458aa9ae5047921c3da878c914c1ca0b189a618537c38cfaef5c6` |
| 10 | `theorem` | [of_h_eq_intFractPair_seq1_fst_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-h-eq-intfractpair-seq1-fst-b--ab8450112d9fab26039006af.md) | 171 | `result-track:ab8450112d9fab26039006af64ee9d304eb75037753dab47d1f4b821a2c8d977` |
| 11 | `theorem` | [of_h_eq_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-h-eq-floor--1760bcbb582c586199080d59.md) | 178 | `result-track:1760bcbb582c586199080d597d9f2f5706b40d1b63eb32200c83f59d1b5affa4` |
| 12 | `theorem` | [IntFractPair.get?_seq1_eq_succ_get?_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/intfractpair-get-seq1-eq-succ-get-stream--d4d7315a9dc3a84733ebc78c.md) | 198 | `result-track:d4d7315a9dc3a84733ebc78ce9e5bebdac4ca3b0cd95ef9c29d930393698dd8c` |
| 13 | `theorem` | [of_terminatedAt_iff_intFractPair_seq1_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-terminatedat-iff-intfractpair-seq1-terminatedat--3812f602405f3f4485104668.md) | 212 | `result-track:3812f602405f3f4485104668673e67c087a3d899de15569f9e2c4cef56db157f` |
| 14 | `theorem` | [of_terminatedAt_n_iff_succ_nth_intFractPair_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-terminatedat-n-iff-succ-nth-intfractpair-stream-eq-none--126c029e4a3c5a7b1fc4720c.md) | 217 | `result-track:126c029e4a3c5a7b1fc4720c52dad4d74a25cc25dd12fe5d95de3e768b070ce4` |
| 15 | `theorem` | [IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/intfractpair-exists-succ-get-stream-of-gcf-of-get-eq-some--76e401ee26103475e320a928.md) | 234 | `result-track:76e401ee26103475e320a9289870a8fbd5c103f70aa0ae52763a50d864f14c2e` |
| 16 | `theorem` | [get?_of_eq_some_of_succ_get?_intFractPair_stream](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/get-of-eq-some-of-succ-get-intfractpair-stream--0b86fb17f3a506626e87e2e5.md) | 248 | `result-track:0b86fb17f3a506626e87e2e5dd25092fccebd02f20db0d607d97b534ec066602` |
| 17 | `theorem` | [get?_of_eq_some_of_get?_intFractPair_stream_fr_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/get-of-eq-some-of-get-intfractpair-stream-fr-ne-zero--cec54ce881cdeb7ccdfe7e22.md) | 258 | `result-track:cec54ce881cdeb7ccdfe7e222a0970044afb530b17cd4bf48a51539f9f848c05` |
| 18 | `theorem` | [of_s_head_aux](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-s-head-aux--09fb770d16d47f49754bca6f.md) | 270 | `result-track:09fb770d16d47f49754bca6f5d1f97b758ef95f072c84d4ddb0ab86ed3422f0c` |
| 19 | `theorem` | [of_s_head](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-s-head--eac9c86253162bb4ca2a27c6.md) | 282 | `result-track:eac9c86253162bb4ca2a27c63e3d7d589d20196cef8c04a3b6241a586abed638` |
| 20 | `theorem` | [of_s_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-s-of-int--45658302315806b3fdf503df.md) | 292 | `result-track:45658302315806b3fdf503df0c26888fc37339f7273f6857ba854f2ecc244ad4` |
| 21 | `theorem` | [of_s_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-s-succ--4eef3db9ecc2cac67ef5b264.md) | 306 | `result-track:4eef3db9ecc2cac67ef5b264ad75f2d9d81079d57e87ebfec3ae1bb6273a7a18` |
| 22 | `theorem` | [of_s_tail](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/of-s-tail--198322cd2e731170b506268a.md) | 326 | `result-track:198322cd2e731170b506268a0ed8f5d62c0df91a4e9e223016e54da9b7ced483` |
| 23 | `theorem` | [convergents'_of_int](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/convergents-of-int--ce33eddd89a36c54eacaa687.md) | 335 | `result-track:ce33eddd89a36c54eacaa687cae75be6c4724dc9fb685b01953809db51989a30` |
| 24 | `theorem` | [convergents'_succ](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant95c676c422cfc1869798224ca4337529c4a8cd156d34409ae7e2b777b42f04c1.lean/declarations/convergents-succ--46feb7fe4bc69d8e15e32144.md) | 347 | `result-track:46feb7fe4bc69d8e15e3214466a904908910f0f9dd9842cb6fd7281f1813fb5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

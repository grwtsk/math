# Verification target: GRWTSK.Algebra.LinearAlgebra.QuotientConvention.Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c8ec5a7d360d69b5baf3cd3b4c5a0ef27f95dc1",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c8ec5a7d360d69b5baf3cd3b4c5a0ef27f95dc1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Grassmannian` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotientPlane](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientplane--dcf1631a3711173f8febfd62.md) | 30 | `declaration-track:dcf1631a3711173f8febfd6212ca8534bbdeaaa5ddd4d9005d8ce5e0dfadd64f` |
| 2 | `theorem` | [intrinsicPlane_quotient_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsicplane-quotient-finrank--daf9a3b8062ed7b8acc69e01.md) | 33 | `result-track:daf9a3b8062ed7b8acc69e016a1aa1f64889904d8b1d8874c0a3e9224df9f9e1` |
| 3 | `theorem` | [quotientPlane_finrank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientplane-finrank--f175fbf60076a26b32e43b96.md) | 41 | `result-track:f175fbf60076a26b32e43b964fa698df02ac59af3a619e51ccfc8bf591ef4e22` |
| 4 | `theorem` | [quotientPlane_dimension_sum](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientplane-dimension-sum--b0c6d2573ca8b57cc5fa92a3.md) | 47 | `result-track:b0c6d2573ca8b57cc5fa92a3ff21f4b141fe5b7f844d0dcb3f3420156378285d` |
| 5 | `theorem` | [quotientPlane_rank_le](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientplane-rank-le--820c7a7b2b13935ad50292d3.md) | 54 | `result-track:820c7a7b2b13935ad50292d32c17814bf9148e5a62c1c2a51c6ad2d275a1781f` |
| 6 | `def` | [intrinsicToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsictoquotientconvention--e54d4fca4da992af8c5b0683.md) | 59 | `declaration-track:e54d4fca4da992af8c5b06832b71144fd1cbae8c6483c91f30383254bbd26b20` |
| 7 | `theorem` | [intrinsicToQuotientConvention_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsictoquotientconvention-submodule--e18baba3585cf5aebea1863a.md) | 68 | `result-track:e18baba3585cf5aebea1863a960935bb3a7e1a71370a729887f1e00f9934e8c9` |
| 8 | `def` | [quotientConventionToIntrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconventiontointrinsic--8f820fbbfe2fdf1779655116.md) | 72 | `declaration-track:8f820fbbfe2fdf17796551164071952184ee3516ee33801f186313d40886afd3` |
| 9 | `theorem` | [quotientConventionToIntrinsic_submodule](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconventiontointrinsic-submodule--591e88855dcc3feddc39090b.md) | 79 | `result-track:591e88855dcc3feddc39090bb9448afbf0fd11c204ae0ab672d9fc9f32d443aa` |
| 10 | `def` | [intrinsicEquivQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsicequivquotientconvention--51d46b011f8a027c4f8c6d16.md) | 84 | `declaration-track:51d46b011f8a027c4f8c6d16363c2ddf247e093ab6d3a52d34344fed8b485e3d` |
| 11 | `theorem` | [quotientConvention_roundTrip_intrinsic](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconvention-roundtrip-intrinsic--b367aec60a7da205d8a7d698.md) | 92 | `result-track:b367aec60a7da205d8a7d69889258270c204a534ac380d9bb18a1968a2db1bfe` |
| 12 | `theorem` | [quotientConvention_roundTrip_mathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconvention-roundtrip-mathlib--d45b4547cb22f2ce3a783268.md) | 98 | `result-track:d45b4547cb22f2ce3a78326807d000a7e0dea0511d9e91f05c16f71a4d2fc2bc` |
| 13 | `def` | [frameQuotientEquivMathlib](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/framequotientequivmathlib--53d33b282633abd4d804a259.md) | 104 | `declaration-track:53d33b282633abd4d804a25957f9ea842683074b0b0a15a93ae2e0541af23b70` |
| 14 | `def` | [frameToQuotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/frametoquotientconvention--f3981767aeca81cb20c64dac.md) | 109 | `declaration-track:f3981767aeca81cb20c64dac204e4052c954997cf1b59903b8e1812c235249d5` |
| 15 | `theorem` | [frameToQuotientConvention_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/frametoquotientconvention-eq-iff--8fc8a599f650db0def82e80f.md) | 113 | `result-track:8fc8a599f650db0def82e80fc24d7ae1602f35d3920547d29b5b6e1d8a43ca18` |
| 16 | `theorem` | [frameToQuotientConvention_eq_iff_minors](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/frametoquotientconvention-eq-iff-minors--5871ba7f924414a1034fd7b3.md) | 123 | `result-track:5871ba7f924414a1034fd7b33c9a3ca4298fd89c289ae7a7df06b16b31fa987f` |
| 17 | `def` | [QuotientConventionNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconventionnonnegative--3a82f2b3e2d8ee92cb5de430.md) | 131 | `declaration-track:3a82f2b3e2d8ee92cb5de43014cdc4cf00bde4cd6d86088fb6854066ca117d09` |
| 18 | `def` | [QuotientConventionPositive](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconventionpositive--f487f6d973fa1ad56f98c683.md) | 136 | `declaration-track:f487f6d973fa1ad56f98c6837bca69c7255796c0f1ee2c8016a344006daadd5b` |
| 19 | `theorem` | [intrinsicNonnegative_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsicnonnegative-iff-quotientconvention--d6a1f9a84f70a5cd795d1139.md) | 141 | `result-track:d6a1f9a84f70a5cd795d113903eb8e5177bad6ef5e2c6cd47b3ac35c9d148511` |
| 20 | `theorem` | [intrinsicPositive_iff_quotientConvention](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/intrinsicpositive-iff-quotientconvention--e38c63972c52e852cbc64831.md) | 152 | `result-track:e38c63972c52e852cbc6483114959ef43a3011d276721365be4c6cfa14f427f9` |
| 21 | `def` | [wholeSpaceQuotientPoint](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/wholespacequotientpoint--b7582a8a8413f2d09f19b3fc.md) | 163 | `declaration-track:b7582a8a8413f2d09f19b3fc152cb127ab7e60537cc121bba0d94fbd00c03612` |
| 22 | `theorem` | [quotientConvention_dimension_guard](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/quotientconvention-dimension-guard--26e2c576f46e6686f04fa6b4.md) | 170 | `result-track:26e2c576f46e6686f04fa6b4eaa1c63b03028d915e1035531806752d4150ae3a` |
| 23 | `theorem` | [line_in_three_quotient_rank](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/line-in-three-quotient-rank--6807f08f4fade5b9b1f0b318.md) | 179 | `result-track:6807f08f4fade5b9b1f0b3188e82d1c2da2e242c797d99c29716e394c98478b4` |
| 24 | `theorem` | [line_in_three_not_quotient_rank_one](../../../../../mathematics/Algebra/LinearAlgebra/QuotientConvention/Variantd9dded21f4b03f124e9870ebad1eb198c7f1a84e496f1ed40acec08fc64bbb8c.lean/declarations/line-in-three-not-quotient-rank-one--e86718cd2a38f12af58a7b89.md) | 184 | `result-track:e86718cd2a38f12af58a7b89e0495e8b34eecd78476f87c1fb6fc8189c377197` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.Rank.Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2f904d842aa847afd163d0099af3d67bacc9d21",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2f904d842aa847afd163d0099af3d67bacc9d21`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank--e3e16daeec1913e84597d1df.md) | 64 | `declaration-track:e3e16daeec1913e84597d1dfca7a60ae60a57c61c1423ba80b6e9a9cf711a474` |
| 2 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/polycharpoly-coeff-rank-ne-zero--c2d673624077659a4d0c9bec.md) | 66 | `result-track:c2d673624077659a4d0c9becce0998ef09b285eebb68baf42bb344a2202eb4a2` |
| 3 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-eq-nattrailingdegree--68201c1fae0348d6346b2951.md) | 70 | `result-track:68201c1fae0348d6346b2951395180bb5cea34b9d35d3ae4e53dfbda11c2c263` |
| 4 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-card--419196b327337105cbf0a243.md) | 77 | `result-track:419196b327337105cbf0a243936ca85130b77796021d1d209cb2f4a237e3b2a7` |
| 5 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-finrank--ffc40b9cc8df40839e8c2a00.md) | 81 | `result-track:ffc40b9cc8df40839e8c2a005cd315aead1294e8bf78a6bcf626d93b907d2402` |
| 6 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--ab1497bfe561382de5332be3.md) | 86 | `result-track:ab1497bfe561382de5332be309b2ad21ed156f1644be16a684c6096835b324b4` |
| 7 | `def` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular--a25780958f9575720c3fa355.md) | 93 | `declaration-track:a25780958f9575720c3fa355cb95f298fefd3844331f29a8363f3299aac7a933` |
| 8 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-def--12f5854c376f1c04f6652326.md) | 95 | `result-track:12f5854c376f1c04f66523262d20ea8f947e44b2b57d89288341d4a50c13a206` |
| 9 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--2a7e6e81aba7934b744c4219.md) | 98 | `result-track:2a7e6e81aba7934b744c421929ec7bdc3ec1fda6e80ee84b7ef6be424fadd73c` |
| 10 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--61216ccc1c91a1bb12a35545.md) | 104 | `result-track:61216ccc1c91a1bb12a35545cdfec7d7d91d132bd0722933a2e86f963949587d` |
| 11 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/exists-isregular-of-finrank-le-card--80b4872c2ae4b36fc245533d.md) | 113 | `result-track:80b4872c2ae4b36fc245533dd96ae5b5f405d8ef38b66002506a1cb516fed62e` |
| 12 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/exists-isregular--a887fed39aed43b6e90227cf.md) | 117 | `result-track:a887fed39aed43b6e90227cf3c6a034e354d7a39f0645c41fd95bc3b35254ea6` |
| 13 | `abbrev` | [rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank--89c7a1479c4fc672e5d1bf72.md) | 138 | `declaration-track:89c7a1479c4fc672e5d1bf7281ce0245726ed4174fc478e7814eb6180fda2841` |
| 14 | `lemma` | [polyCharpoly_coeff_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/polycharpoly-coeff-rank-ne-zero--ec8ea75401d90f09113d881b.md) | 140 | `result-track:ec8ea75401d90f09113d881bb0f46d7588c2d46c021890513b959b013ac1c993` |
| 15 | `lemma` | [rank_eq_natTrailingDegree](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-eq-nattrailingdegree--e9de19f175612d11c0000261.md) | 144 | `result-track:e9de19f175612d11c00002619240c0269094f71c1dfdf84ec30d3f7835530aeb` |
| 16 | `lemma` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-card--9dca39c9f4108cfefd07424c.md) | 151 | `result-track:9dca39c9f4108cfefd07424c2a1bef27cc5b31f9f0f44908cf35011afc90856d` |
| 17 | `lemma` | [rank_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-finrank--6ef210af105739b06ce3cdd0.md) | 154 | `result-track:6ef210af105739b06ce3cdd0ba30a81457ff908d91ee4d54a63256741d565f41` |
| 18 | `lemma` | [rank_le_natTrailingDegree_charpoly_ad](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-nattrailingdegree-charpoly-ad--bfae8310cbcfc87a43df23c9.md) | 159 | `result-track:bfae8310cbcfc87a43df23c91eb158b9c085605a5f61e6a7715d8034f630e666` |
| 19 | `abbrev` | [IsRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular--f1fa6e5d348e38243a9f959e.md) | 166 | `declaration-track:f1fa6e5d348e38243a9f959e89a0bae648781ef983c5ae2f8191ff0c5f31b8a4` |
| 20 | `lemma` | [isRegular_def](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-def--c1945b62a1c9465c255fc76b.md) | 168 | `result-track:c1945b62a1c9465c255fc76b1f0a0635c72818bb5d921700fa6a7a60caa45377` |
| 21 | `lemma` | [isRegular_iff_coeff_polyCharpoly_rank_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-iff-coeff-polycharpoly-rank-ne-zero--355e4f5c3efb0cfe6428eafc.md) | 171 | `result-track:355e4f5c3efb0cfe6428eafcf4c04dcd7d06cb22c3a7383b579a89a8b141e0b1` |
| 22 | `lemma` | [isRegular_iff_natTrailingDegree_charpoly_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-iff-nattrailingdegree-charpoly-eq-rank--e5b5a8d42b3d354d8be6000f.md) | 177 | `result-track:e5b5a8d42b3d354d8be6000f1ac3a431d8e427925064b7186030e6f8fd1321da` |
| 23 | `lemma` | [exists_isRegular_of_finrank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/exists-isregular-of-finrank-le-card--39d54a6d31db142211ceff00.md) | 186 | `result-track:39d54a6d31db142211ceff006e61f93334214e7446bd0a662559555ca09a5751` |
| 24 | `lemma` | [exists_isRegular](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/exists-isregular--3c7e0942b93cd7c1a41a5c57.md) | 190 | `result-track:3c7e0942b93cd7c1a41a5c57cdce550b012782f9e6e479f01c5b0e2a127987c3` |
| 25 | `lemma` | [finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/finrank-engel--dbb469d4546ca1445ab288b0.md) | 203 | `result-track:dbb469d4546ca1445ab288b0c90ce6489543023cb774d6c71a01057dc5e35cb0` |
| 26 | `lemma` | [rank_le_finrank_engel](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/rank-le-finrank-engel--3e10daf0f857d36b9d82849b.md) | 207 | `result-track:3e10daf0f857d36b9d82849b6e8b1e9bb8a111965ddfcd087130fc7e961bd878` |
| 27 | `lemma` | [isRegular_iff_finrank_engel_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/Rank/Variant54f89290bbb2946e6b1a873ef17a7abe125fe2e5e31ee3c0aff2636be53722a0.lean/declarations/isregular-iff-finrank-engel-eq-rank--3b32fcf8f567e6fd24d8fc6f.md) | 212 | `result-track:3b32fcf8f567e6fd24d8fc6fa01c263fe21365cb042f2910bf4175a6cd8dd2d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

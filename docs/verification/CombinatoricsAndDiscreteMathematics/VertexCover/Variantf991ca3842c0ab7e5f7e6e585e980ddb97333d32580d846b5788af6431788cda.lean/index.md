# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.VertexCover.Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5b51edc202cd735d0adaa545740bea28cd75dba",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5b51edc202cd735d0adaa545740bea28cd75dba`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ENatToNat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsVertexCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover--8daee772331f55f1c3477014.md) | 36 | `declaration-track:8daee772331f55f1c34770143c1f4e2af517ee60e613208768386dce43ddf853` |
| 2 | `theorem` | [isVertexCover_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-empty--bbc838d41a527eee5160acd2.md) | 40 | `result-track:bbc838d41a527eee5160acd29b7d5ddc04c43c2c5d408d0c497edc3c7b38a84e` |
| 3 | `theorem` | [isVertexCover_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-univ--81e083f8d2eb996a8e62674f.md) | 44 | `result-track:81e083f8d2eb996a8e62674f01449fd62d5d0796604612f3fe3226d3a41f1606` |
| 4 | `theorem` | [isVertexCover_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-bot--f8f3315ffd7617da882490a9.md) | 48 | `result-track:f8f3315ffd7617da882490a9a186b303cd71094b5f545a8530623175b7a41f36` |
| 5 | `theorem` | [IsVertexCover.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-subset--76a9f43938d8b9d1f468aa08.md) | 51 | `result-track:76a9f43938d8b9d1f468aa081ef0010f22a8795daafa96895aa2b0db23365b69` |
| 6 | `theorem` | [IsVertexCover.mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-mono--89e7f2d4865b3f002be196b1.md) | 55 | `result-track:89e7f2d4865b3f002be196b104639c975047e4947f7ac91032926f06e7ead6d5` |
| 7 | `theorem` | [isIndepSet_compl_iff_isVertexCover](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isindepset-compl-iff-isvertexcover--b3fe23035eac8394c76f04b5.md) | 61 | `result-track:b3fe23035eac8394c76f04b506ef16a0cebcae3c775f4e995142ef4d2c32c452` |
| 8 | `theorem` | [isVertexCover_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-compl--9656b6a8c1075c990166997e.md) | 67 | `result-track:9656b6a8c1075c990166997e752967dea3fd3da39e6882fd46340962227c9512` |
| 9 | `theorem` | [IsVertexCover.preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-preimage--3ae57dcec6debf7ec119246d.md) | 70 | `result-track:3ae57dcec6debf7ec119246dc0d66ae9c9fdd75dce8ab698986f27ab6c68da34` |
| 10 | `theorem` | [isVertexCover_preimage_iso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-preimage-iso--f0778a797c98565c3acdd2ec.md) | 76 | `result-track:f0778a797c98565c3acdd2ec6cec23f5d8b776593e58f6b6f2c1cdaa585ff41d` |
| 11 | `theorem` | [isVertexCover_image_iso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-image-iso--ec734f3b76823f4bc0a14875.md) | 84 | `result-track:ec734f3b76823f4bc0a1487520d525809c87a835285ae15d2a821312d348e625` |
| 12 | `def` | [vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum--8dfbc669c67087a507e81aa3.md) | 93 | `declaration-track:8dfbc669c67087a507e81aa3ddbb5961a80567a4b633aa7e4c44dcfef4a2293a` |
| 13 | `theorem` | [vertexCoverNum_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-le-iff--482b5e235b2ab6f8be0730f4.md) | 96 | `result-track:482b5e235b2ab6f8be0730f4a10ee3b879e9e74471fafb58d3c7a80c7b4d2a50` |
| 14 | `theorem` | [IsVertexCover.vertexCoverNum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/isvertexcover-vertexcovernum-le--1100c421db3e885c0ac229a6.md) | 100 | `result-track:1100c421db3e885c0ac229a685a73388c833800c5888595727ad2f1e480feab1` |
| 15 | `theorem` | [vertexCoverNum_exists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-exists--422c0f0e29c7949a7b1a07e6.md) | 104 | `result-track:422c0f0e29c7949a7b1a07e6c62db21291033896f8a385188d86c91cd47a5756` |
| 16 | `theorem` | [exists_of_le_vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/exists-of-le-vertexcovernum--1ba5ecb4cb3b64303f04109f.md) | 110 | `result-track:1ba5ecb4cb3b64303f04109facedbb609f81075ad6798d3665b896f8de5c6430` |
| 17 | `theorem` | [vertexCoverNum_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-bot--044c0e7f3dd0529ac8f35bdf.md) | 118 | `result-track:044c0e7f3dd0529ac8f35bdf43931e9bc162fe0f6851d8c97b520ed47eb98bde` |
| 18 | `theorem` | [vertexCoverNum_of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-of-subsingleton--e25a64e5f8a6d69d0e11e6b3.md) | 122 | `result-track:e25a64e5f8a6d69d0e11e6b32391d16c105f55dd1e75d3d4bb22f4cdc55f4c30` |
| 19 | `theorem` | [vertexCoverNum_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-eq-zero--9c9282db787116f8508f1884.md) | 126 | `result-track:9c9282db787116f8508f1884573935e0a6b3ebe831a447b1f912b0d065773683` |
| 20 | `theorem` | [vertexCoverNum_le_card_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-le-card-sub-one--57370b95b3f400ed09db8f64.md) | 130 | `result-track:57370b95b3f400ed09db8f64f36997ae450598fb10aece71c8415f145a66e593` |
| 21 | `theorem` | [vertexCoverNum_ne_top_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-ne-top-of-finite--4a6e308abef6b7039659f3ee.md) | 139 | `result-track:4a6e308abef6b7039659f3ee7a57ffc81a08418561dfb3c1bb99f645abb598e0` |
| 22 | `theorem` | [vertexCoverNum_lt_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-lt-card--d004aff078249dbb614f2e47.md) | 142 | `result-track:d004aff078249dbb614f2e47e174d3e2c6bec2ff375765bc86e840fb546a8d9c` |
| 23 | `theorem` | [vertexCoverNum_le_encard_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-le-encard-edgeset--a64e08f6518744229639ea9b.md) | 148 | `result-track:a64e08f6518744229639ea9b9212de7998ab23d6a5a249dc4e1c8d564af97ffa` |
| 24 | `theorem` | [vertexCoverNum_ne_top_of_finite_edgeSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-ne-top-of-finite-edgeset--72eab8ab54264b4ff478fa79.md) | 158 | `result-track:72eab8ab54264b4ff478fa79fbcc43824d212724a3cd4e94995ccccefd0d7eab` |
| 25 | `theorem` | [vertexCoverNum_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-top--1b7f4c12074aac6165bc417e.md) | 162 | `result-track:1b7f4c12074aac6165bc417eb4864ceed9a0a16c8a9b147a5c3a31c87e31f15c` |
| 26 | `theorem` | [IsContained.vertexCoverNum_le_vertexCoverNum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/iscontained-vertexcovernum-le-vertexcovernum--d479a06215279be08fb36639.md) | 182 | `result-track:d479a06215279be08fb366392281136e94c123d147c075da31e6096ae4a348b6` |
| 27 | `theorem` | [vertexCoverNum_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-mono--96ff121541805e5a6dcc53ca.md) | 194 | `result-track:96ff121541805e5a6dcc53caff07029ffda209e80058d363feaa99d76d802794` |
| 28 | `theorem` | [vertexCoverNum_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean/declarations/vertexcovernum-congr--45e501a16b889b7f84d4bd3b.md) | 197 | `result-track:45e501a16b889b7f84d4bd3bfe6c2a4dcea8bafa5bd45567cee450ad3eb5a365` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

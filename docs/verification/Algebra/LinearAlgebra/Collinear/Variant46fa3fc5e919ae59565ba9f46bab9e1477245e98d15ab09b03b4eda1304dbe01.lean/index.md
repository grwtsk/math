# Verification target: GRWTSK.Algebra.LinearAlgebra.Collinear.Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fff2a93fdf864fe852b63ad04e2daa37d68e02ca",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fff2a93fdf864fe852b63ad04e2daa37d68e02ca`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean.json)

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
| 1 | `def` | [IsCollinear](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear--0db6ab0ba96bf2a581297ba8.md) | 41 | `declaration-track:0db6ab0ba96bf2a581297ba8a9a3b1e967bc1f66048f291f6be2c7550322e709` |
| 2 | `lemma` | [IsCollinear_iff](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-iff--49893e909002f740e35d04bb.md) | 44 | `result-track:49893e909002f740e35d04bbd544b4e8d9c5ec9dd256216bb5b111b2fe696138` |
| 3 | `lemma` | [IsCollinear_iff_rank](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-iff-rank--70fb34459ea0e1629b351761.md) | 47 | `result-track:70fb34459ea0e1629b351761508562b70821ca0809cc55d46b3c841481fa55f1` |
| 4 | `lemma` | [isCollinear_empty](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-empty--5405ad1e39fb05447a50ef83.md) | 57 | `result-track:5405ad1e39fb05447a50ef8346ee2bc91857ee2a94a82127801f105a77953acb` |
| 5 | `lemma` | [isCollinear_subset](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-subset--1932ce8bb430d16472642e8e.md) | 65 | `result-track:1932ce8bb430d16472642e8e556c6e67c9e45caba94a659c205a70de44b681c4` |
| 6 | `lemma` | [isCollinear_singleton'](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-singleton--d138d29b39ad22afdef13af7.md) | 70 | `result-track:d138d29b39ad22afdef13af7cc62d5d97638b0949dbda2354d086451e93ac5c3` |
| 7 | `lemma` | [isCollinear_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-subsingleton--351551ed8a1991100df96afc.md) | 79 | `result-track:351551ed8a1991100df96afcd25ff8a6ccf1137d44d4f02aed2e30565c714dc8` |
| 8 | `lemma` | [isCollinear_pair](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-pair--0a830439f306586fabb08f7a.md) | 83 | `result-track:0a830439f306586fabb08f7a7679ef83f9b6b238d9f1fb6ac490b499164a507f` |
| 9 | `lemma` | [isCollinear_of_card_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/iscollinear-of-card-eq-two--cc98838eceee6b8e3196f573.md) | 95 | `result-track:cc98838eceee6b8e3196f573163ea54b7ecfe94882af324504b5f01bd23b65f5` |
| 10 | `lemma` | [line_unique'](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/line-unique--5907a94b2d8b2521e366d9b7.md) | 99 | `result-track:5907a94b2d8b2521e366d9b742915ed1337f03f1401874c39526dfa5e5990489` |
| 11 | `lemma` | [line_unique](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/declarations/line-unique--312eb9710c1e3090967e5bf8.md) | 112 | `result-track:312eb9710c1e3090967e5bf8824f7f047e540b9668eca56977f1fb2c9fde8626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

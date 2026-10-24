# Verification target: GRWTSK.Algebra.LinearAlgebra.Collinear.Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27cec2c95500e58a284153b02caeba555f9e7406",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27cec2c95500e58a284153b02caeba555f9e7406`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean.json)

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
| 1 | `def` | [IsCollinear](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear--891e1b548f329b9aac441131.md) | 49 | `declaration-track:891e1b548f329b9aac441131e4400a5fc7f105222cf5a32fe7eab317551aa1fa` |
| 2 | `lemma` | [IsCollinear_iff](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-iff--6366e7c5857b2d45db6c978b.md) | 52 | `result-track:6366e7c5857b2d45db6c978be360743cf4fa966e25e9a5ec63289b4e0edd5a1d` |
| 3 | `lemma` | [IsCollinear_iff_rank](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-iff-rank--99226d7af0d4a8538958a61b.md) | 55 | `result-track:99226d7af0d4a8538958a61b384fccd2607ecb1d400f2ca30ebf20b2413691b5` |
| 4 | `lemma` | [isCollinear_empty](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-empty--a5c011845a54a1e8c940ad1b.md) | 65 | `result-track:a5c011845a54a1e8c940ad1b8bd89c80b179091775dbd27c33f7bc0ba03a090e` |
| 5 | `lemma` | [isCollinear_subset](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-subset--1605a7bac15c10d48c572482.md) | 73 | `result-track:1605a7bac15c10d48c572482e86c6e9b5e58fc243eaa43942861f17acbff2220` |
| 6 | `lemma` | [isCollinear_singleton'](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-singleton--31b45e12dc35dbcea8a6a5fb.md) | 78 | `result-track:31b45e12dc35dbcea8a6a5fbc05250e9e2daba882c281ca39b4316eaee405440` |
| 7 | `lemma` | [isCollinear_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-subsingleton--393559b6110b8ad5a7502692.md) | 87 | `result-track:393559b6110b8ad5a7502692215c4a457f1eee9320a2d2329328e4fbfe128354` |
| 8 | `lemma` | [isCollinear_pair](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-pair--01a9d7dcad1b4be905ee11e1.md) | 91 | `result-track:01a9d7dcad1b4be905ee11e1b2ef314d6406a0bc958dc70ca7d7299de3b0993f` |
| 9 | `lemma` | [isCollinear_of_card_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/iscollinear-of-card-eq-two--4a309497c40aa52e305c5fba.md) | 103 | `result-track:4a309497c40aa52e305c5fba166cc3bbc1c0e2895300db6e0029e0352ebb800e` |
| 10 | `lemma` | [line_unique'](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/line-unique--a8640407cd8699f0bf2adfed.md) | 107 | `result-track:a8640407cd8699f0bf2adfedca05d946a328bca7d44f5d5d7c8c7b035ab2741f` |
| 11 | `lemma` | [line_unique](../../../../../mathematics/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/declarations/line-unique--9a8b5825301f5bd5cabf6c91.md) | 120 | `result-track:9a8b5825301f5bd5cabf6c91f58dc7549438ff1fad0172a88f7ce2c98e3185b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

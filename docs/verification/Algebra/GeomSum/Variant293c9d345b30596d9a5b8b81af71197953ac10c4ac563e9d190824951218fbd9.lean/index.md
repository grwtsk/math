# Verification target: GRWTSK.Algebra.GeomSum.Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f64047eb49d430ced65e732d5bc9bc6052509f78",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f64047eb49d430ced65e732d5bc9bc6052509f78`.

Source path: `GRWTSK/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-pos--f17d5c5805f22e5146ed53ac.md) | 39 | `result-track:f17d5c5805f22e5146ed53ac2bb1ce8da03de71f41533126de3098858af896f4` |
| 2 | `lemma` | [geom_sum_alternating_of_le_neg_one](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-alternating-of-le-neg-one--69c595095feceb07efd1ee0f.md) | 53 | `result-track:69c595095feceb07efd1ee0f2dda6c1abde47f62271c148074750c560365c1d0` |
| 3 | `lemma` | [geom_sum_pos_and_lt_one](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-pos-and-lt-one--bd6885329c566faa7b0f4206.md) | 72 | `result-track:bd6885329c566faa7b0f4206ada51a502ae2de3b3aa6a300475819821519d87b` |
| 4 | `lemma` | [geom_sum_alternating_of_lt_neg_one](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-alternating-of-lt-neg-one--9a854545c6f43c554df32b34.md) | 84 | `result-track:9a854545c6f43c554df32b34b301f18e53c21e334618a9ad7d67821f6b9d8563` |
| 5 | `lemma` | [geom_sum_pos'](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-pos--945d23728458494025248485.md) | 105 | `result-track:945d23728458494025248485447249d292a89f6b268662554dda0df0fe674e3e` |
| 6 | `lemma` | [Odd.geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/odd-geom-sum-pos--b3b4df054e938a35c6417b02.md) | 113 | `result-track:b3b4df054e938a35c6417b02952eaf062c1c79c9766d138fb4a1580823f40a2e` |
| 7 | `lemma` | [geom_sum_pos_iff](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-pos-iff--e449ba0553f9e743e2315b5b.md) | 125 | `result-track:e449ba0553f9e743e2315b5b09d6d521a41fbf02947d7ee8fb72a3e333334ebe` |
| 8 | `lemma` | [geom_sum_ne_zero](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-ne-zero--5fcc30e556bd6f17025d42b9.md) | 134 | `result-track:5fcc30e556bd6f17025d42b9d2eec4ca4c42a8fa94d9f58ab6be9a40a26cd130` |
| 9 | `lemma` | [geom_sum_eq_zero_iff_neg_one](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-eq-zero-iff-neg-one--ca374e6b1a4f808b76bf8247.md) | 146 | `result-track:ca374e6b1a4f808b76bf82471e23b3c55b61aedbba74408eaeb7572a13cbb6c7` |
| 10 | `lemma` | [geom_sum_neg_iff](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/geom-sum-neg-iff--a713bfad8e3a1469e4183701.md) | 155 | `result-track:a713bfad8e3a1469e41837011398aae505d1d696d0d5923a8c6c949dbaf96e2b` |
| 11 | `lemma` | [Nat.pred_mul_geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/nat-pred-mul-geom-sum-le--69c96d1660a5028a0340d122.md) | 166 | `result-track:69c96d1660a5028a0340d1228e8936b6194ed6e1da49cff5631560c418bc2d3f` |
| 12 | `lemma` | [Nat.geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/nat-geom-sum-le--0669c2b5cecacc955141c340.md) | 179 | `result-track:0669c2b5cecacc955141c340fb729936a6d107f660c1dd9ed2b191f746d3fdf3` |
| 13 | `lemma` | [Nat.geom_sum_Ico_le](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/nat-geom-sum-ico-le--cb5a82e0eeba92664af3c1cf.md) | 188 | `result-track:cb5a82e0eeba92664af3c1cf2f1a67c4e37124b1a027999df65eca7e9d9ffd15` |
| 14 | `lemma` | [Nat.geomSum_lt](../../../../mathematics/Algebra/GeomSum/Variant293c9d345b30596d9a5b8b81af71197953ac10c4ac563e9d190824951218fbd9.lean/declarations/nat-geomsum-lt--6bd3aa0f2d2d2a3d5ab3c76d.md) | 208 | `result-track:6bd3aa0f2d2d2a3d5ab3c76d5e40e37f95e59a884ab40a595187d6fdef85402f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

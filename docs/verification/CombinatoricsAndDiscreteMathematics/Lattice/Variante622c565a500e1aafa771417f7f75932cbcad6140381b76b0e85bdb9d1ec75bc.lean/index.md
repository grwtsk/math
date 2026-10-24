# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lattice.Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a97878108d96ca1fc58d3170e3968bf0ba1b08d6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a97878108d96ca1fc58d3170e3968bf0ba1b08d6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/instance--ec5734bcce541ae81ea8f56d.md) | 42 | `declaration-track:ec5734bcce541ae81ea8f56d3c09b5f2a1462d88a8adac82342d44b12a22b5b0` |
| 2 | `lemma` | [vertexSet_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/vertexset-inf--6fdb9fda3adc9e25f0f745a8.md) | 65 | `result-track:6fdb9fda3adc9e25f0f745a81f195c890ed176cce9693ff144e8ae9185e92983` |
| 3 | `lemma` | [edgeSet_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/edgeset-inf--0178a864e95680682619d77e.md) | 67 | `result-track:0178a864e95680682619d77e3e5e8cebea16fecd23f720d2b1a18ecc39fa145a` |
| 4 | `lemma` | [inf_isLink](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/inf-islink--736867e9ff31f31a37b5bcfa.md) | 70 | `result-track:736867e9ff31f31a37b5bcfa9df81b4b70f43b57409be11e2711996f425b709a` |
| 5 | `lemma` | [inf_inc_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/inf-inc-iff--244b0bccec74fc64ce47e602.md) | 73 | `result-track:244b0bccec74fc64ce47e60205f1c5e8ef8db9e5d69d3263db571bfa79194996` |
| 6 | `lemma` | [inf_isLoopAt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/inf-isloopat-iff--05a15fc4228e12cb17d853de.md) | 77 | `result-track:05a15fc4228e12cb17d853de94a31ea1f4240ae44c883899b303d61ae8fd602a` |
| 7 | `lemma` | [inf_isNonloopAt_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/inf-isnonloopat-iff--6cf04e7155675ebfa85b4445.md) | 81 | `result-track:6cf04e7155675ebfa85b4445b6cce133fa5d01eb2334d4147de8f1d0935c0349` |
| 8 | `lemma` | [disjoint_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/disjoint-iff--a71a9bbd252818914247f76f.md) | 85 | `result-track:a71a9bbd252818914247f76fcc6e2f593df6ee639c884e5f1cfa3dbf552d38fa` |
| 9 | `lemma` | [Compatible.edgeSet_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lattice/Variante622c565a500e1aafa771417f7f75932cbcad6140381b76b0e85bdb9d1ec75bc.lean/declarations/compatible-edgeset-inf--9447e86fa3df5c67c37e6413.md) | 88 | `result-track:9447e86fa3df5c67c37e64135cfefddf64a7832076e64a891845dbdc6026278d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

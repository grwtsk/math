# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Increment.Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "525c3a50184ceeffc42bab373576e46f04874edd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `525c3a50184ceeffc42bab373576e46f04874edd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Chunk` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Energy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/increment--fbbe02b3ab3e7876b3466295.md) | 54 | `declaration-track:fbbe02b3ab3e7876b3466295cb54f39ba4b5bb6d4fc5b94a9e611f5734dbfa37` |
| 2 | `theorem` | [card_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/card-increment--85a752db9be51b76c923a891.md) | 62 | `result-track:85a752db9be51b76c923a89108b302a0fc54d8d7142c7edb6090f036dea5d610` |
| 3 | `theorem` | [increment_isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/increment-isequipartition--c78d874d5695b71f5e09f33b.md) | 78 | `result-track:c78d874d5695b71f5e09f33bdfca6aec84cd3e9cde159573d53c22f8eb8d5ed5` |
| 4 | `def` | [distinctPairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/distinctpairs--1e560872151581454690f632.md) | 86 | `declaration-track:1e560872151581454690f632214f85ebd33b38cf7b65c5cc14b8cacffff68c8a` |
| 5 | `theorem` | [distinctPairs_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/distinctpairs-increment--18f5e280c7b77a4526ca9a8b.md) | 92 | `result-track:18f5e280c7b77a4526ca9a8bd161de333e829c154bba853dfd4f1203bc5b04f3` |
| 6 | `lemma` | [pairwiseDisjoint_distinctPairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/pairwisedisjoint-distinctpairs--65768e22e64817bf82929873.md) | 104 | `result-track:65768e22e64817bf8292987352977e5ec35f589067b6f2c29fe2864b1733bae6` |
| 7 | `lemma` | [le_sum_distinctPairs_edgeDensity_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/le-sum-distinctpairs-edgedensity-sq--adf1ca05d21a7f8a462329af.md) | 121 | `result-track:adf1ca05d21a7f8a462329afc32e0c3bfd6447a293544a55e098645067467a60` |
| 8 | `theorem` | [energy_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Varianteb968fea3b38c0d842a25bf4c95fff17936eb81448025b2ffd838f298ba97304.lean/declarations/energy-increment--ecc65d0496a22c28b3cf6d95.md) | 133 | `result-track:ecc65d0496a22c28b3cf6d95fa9579cb32737ab233c8e5ed5ba8d92df3566c74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

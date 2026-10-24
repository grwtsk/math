# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e587bb818abf3ad5d2ee58a4c71bb969873414b7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e587bb818abf3ad5d2ee58a4c71bb969873414b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ListIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/listiterator--b16bc8b8d4410729fbbf25e0.md) | 37 | `declaration-track:b16bc8b8d4410729fbbf25e0505a7828f72c4060d546346c6006f474232abc24` |
| 2 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListIterator.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.List.iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-li--202ff4215e8f07ed81c9eb70.md) | 58 | `declaration-track:202ff4215e8f07ed81c9eb7047215cfd363fdf390ca49bc42098178eda9a04d2` |
| 3 | `instance` | [ListIterator.instIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/listiterator-institerator--c2607fead0d341254bb16ef0.md) | 65 | `declaration-track:c2607fead0d341254bb16ef0057dfe7ddb403c1b5ba3e4ec7c2c19f9a902ccb8` |
| 4 | `def` | [ListIterator.instFinitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/listiterator-instfinitenessrelation--9f1153a4d451bba18529ba3b.md) | 74 | `declaration-track:9f1153a4d451bba18529ba3be769762177f28581ea7a0709cd03f389dacbc8c1` |
| 5 | `instance` | [ListIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/listiterator-instfinite--ef6d24e97f3736e7afa813b5.md) | 83 | `declaration-track:ef6d24e97f3736e7afa813b506d4b01968def08017f6bfddd3a82b4a94a4780d` |
| 6 | `instance` | [ListIterator.instIteratorLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant44335001ea73f2af2c8a87d95fb91100f008f28308b57e366b8da87777f68010.lean/declarations/listiterator-institeratorloop--53d454390c66616b26f56963.md) | 87 | `declaration-track:53d454390c66616b26f569639245de74bd203b607cf6b09d0551741d26f54b53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

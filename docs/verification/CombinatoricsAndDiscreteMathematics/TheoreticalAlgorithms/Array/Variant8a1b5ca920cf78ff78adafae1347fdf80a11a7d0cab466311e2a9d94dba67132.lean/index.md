# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbd6387362a48945c6625ae5e3cdf1927c7ef9d2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbd6387362a48945c6625ae5e3cdf1927c7ef9d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArrayIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator--ccf8046475dde077848c908e.md) | 37 | `declaration-track:ccf8046475dde077848c908e4b5cb0adcb379d7c377f484d343e69b109a1e170` |
| 2 | `theorem` | [ArrayIterator.exists_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator-exists-iff--1495d9d85ba5dec99b03ab2f.md) | 43 | `result-track:1495d9d85ba5dec99b03ab2f77e934e09a4d8410ca0e03a99b3f0a35d004e5c0` |
| 3 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.Array.iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ar--9165ca7dab4c430c57c966e2.md) | 63 | `declaration-track:9165ca7dab4c430c57c966e206b108e8ddd97bda845d87cc57efcae2993c3104` |
| 4 | `def` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterator.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.Array.iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ar--4f401aa8b082e92c888b7d5f.md) | 81 | `declaration-track:4f401aa8b082e92c888b7d5fb0086475fe046c97bbeedbe520f16d3cb472902f` |
| 5 | `instance` | [ArrayIterator.instIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator-institerator--d7cd5d460c5a5cf255db3088.md) | 86 | `declaration-track:d7cd5d460c5a5cf255db3088892437ba975ff036af43b286cd76678c09e2309a` |
| 6 | `def` | [ArrayIterator.instFinitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator-instfinitenessrelation--c0c8aaf45c3cad2041dd867b.md) | 102 | `declaration-track:c0c8aaf45c3cad2041dd867b068917c120892d2f923b9690d665c82d65e67519` |
| 7 | `instance` | [ArrayIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator-instfinite--0e19b2872aac76baa64f1482.md) | 119 | `declaration-track:0e19b2872aac76baa64f14821d070ba9c11ba39d29bb7e5292bf453bfa74f881` |
| 8 | `instance` | [ArrayIterator.instIteratorLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant8a1b5ca920cf78ff78adafae1347fdf80a11a7d0cab466311e2a9d94dba67132.lean/declarations/arrayiterator-institeratorloop--0f78bea7e0e373946b4fa72d.md) | 123 | `declaration-track:0f78bea7e0e373946b4fa72d136ed218651be985e63b91da117f031bf5b1f715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

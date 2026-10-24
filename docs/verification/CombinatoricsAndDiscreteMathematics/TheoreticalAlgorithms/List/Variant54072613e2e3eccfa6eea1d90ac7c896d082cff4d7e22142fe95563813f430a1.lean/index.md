# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0e9f343048f8ac63a73743d1da1d871016d35ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0e9f343048f8ac63a73743d1da1d871016d35ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ListIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/listiterator--f082c928622b441c37823dd6.md) | 29 | `declaration-track:f082c928622b441c37823dd6347e882393c2e2effda61bdad4f75cea0946c7c4` |
| 2 | `def` | [_root_.List.iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/root-list-iterm--048a8b2c54d29caa68aeadf9.md) | 50 | `declaration-track:048a8b2c54d29caa68aeadf90962e3496da6d4da4e9136537456c2cfb769a069` |
| 3 | `instance` | [ListIterator.instIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/listiterator-institerator--231a3e08358e19e52c3663e6.md) | 57 | `declaration-track:231a3e08358e19e52c3663e6765df2ae07fb839a9e35f3a3dc2bd9cb260e0fcf` |
| 4 | `def` | [ListIterator.instFinitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/listiterator-instfinitenessrelation--c7584fce018acf4492f6569b.md) | 66 | `declaration-track:c7584fce018acf4492f6569b83a8564fe64ed057f61dccbfa8e24965dc550626` |
| 5 | `instance` | [ListIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/listiterator-instfinite--6851e538da58ad0c76289a46.md) | 75 | `declaration-track:6851e538da58ad0c76289a462a4c09c0bf65822e1512d8569af0ee6fc6eea89f` |
| 6 | `instance` | [ListIterator.instIteratorLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variant54072613e2e3eccfa6eea1d90ac7c896d082cff4d7e22142fe95563813f430a1.lean/declarations/listiterator-institeratorloop--3b1a4d5bd758dd4b78ae5199.md) | 79 | `declaration-track:3b1a4d5bd758dd4b78ae519932ed1748dd2c2f4aaab27d0ebd0c75cb47e54cf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

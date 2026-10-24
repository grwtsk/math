# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compare.Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f11ab00e221029d4645c205165b4d116e82e7a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f11ab00e221029d4645c205165b4d116e82e7a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Comparator.Axioms` — import line 11; external provider; requires a separately pinned dependency.
- `Export.Parse` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/context--dae6021c950a6b3d8f520f59.md) | 21 | `declaration-track:dae6021c950a6b3d8f520f592a8f2f7c1ade15f4dd364653e9afa228fbdac105` |
| 2 | `structure` | [State](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/state--43bf4f8758653924142c03a7.md) | 27 | `declaration-track:43bf4f8758653924142c03a7bce1819042f6727cfed1b56576af8c3566c4f3d0` |
| 3 | `abbrev` | [CompareM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/comparem--b3fa7dcc72dab6f899684401.md) | 31 | `declaration-track:b3fa7dcc72dab6f899684401cab53da1ede3268b8acedd4bcb5e24a481e1c36a` |
| 4 | `def` | [addWorklist](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/addworklist--3fe51da45cd3965d5cac5f4a.md) | 38 | `declaration-track:3fe51da45cd3965d5cac5f4ac9b144dc89ba41249b25bdd4f4afb8cb0c5f2aa7` |
| 5 | `def` | [addRelevantConsts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/addrelevantconsts--1564a3c32e5e28b11b71c4ac.md) | 42 | `declaration-track:1564a3c32e5e28b11b71c4ac32378c79592895795e37e542070c1748da2b1382` |
| 6 | `def` | [loop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/loop--3397549380c829e0ae7dd6b9.md) | 45 | `declaration-track:3397549380c829e0ae7dd6b98b62b41ed7656247dd43c6da16aaec82efcb5f45` |
| 7 | `def` | [definitionHoleMatches](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/definitionholematches--5ffe6a6a23c38216abcf0ba6.md) | 71 | `declaration-track:5ffe6a6a23c38216abcf0ba6657c046e974a29f3bbbcd3fc07997703a349006a` |
| 8 | `def` | [compareAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compare/Variant1a22b22569c08fe366f2a46390b091d01ecb25b2fd8e6ce77e75a378e7ef82cd.lean/declarations/compareat--249afe3745ea80a2f41dac5d.md) | 75 | `declaration-track:249afe3745ea80a2f41dac5d683be56772cf7c8fd6ec961f568aeb1628010fa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

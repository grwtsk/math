# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Linear.Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84ee8f47b8c11e9a2c211e361a2ad55ee2f252f2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84ee8f47b8c11e9a2c211e361a2ad55ee2f252f2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Zorn` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extend_partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/declarations/extend-partialorder--76535f75fc47b006396f9537.md) | 29 | `result-track:76535f75fc47b006396f9537e09c385d252a8e0c334f49fce8e73c948c116448` |
| 2 | `def` | [LinearExtension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/declarations/linearextension--978b596f727f8eb401ecf8af.md) | 80 | `declaration-track:978b596f727f8eb401ecf8af7954c42149f4b9661aa9627952d43ff36b3497ba` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/declarations/instance--556be43cfc050c7a6bac8cb8.md) | 83 | `declaration-track:556be43cfc050c7a6bac8cb86eb102452a4ddaf867cc78fa99876bc218312020` |
| 4 | `def` | [toLinearExtension](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/declarations/tolinearextension--28b6caa7c1b542ff53bf9486.md) | 92 | `declaration-track:28b6caa7c1b542ff53bf948657ce091b0cde8af610e8aad606994ebb5b2c396b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variant0ee62d4144a19f618c8b476546d53e43dd573b2221cf83b2e890bf42a2f1c3ea.lean/declarations/instance--ad4c2c0891c4a127da5fcabe.md) | 96 | `declaration-track:ad4c2c0891c4a127da5fcabe1812ebfd592590f3425c1695ca4a71358995a847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

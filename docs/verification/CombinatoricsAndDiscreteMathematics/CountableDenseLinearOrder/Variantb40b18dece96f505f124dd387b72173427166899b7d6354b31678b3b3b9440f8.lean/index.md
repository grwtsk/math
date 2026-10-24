# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountableDenseLinearOrder.Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f6cc856e79f5b8e6d2997c4baa3570376c56b82",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f6cc856e79f5b8e6d2997c4baa3570376c56b82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_between_finsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/exists-between-finsets--2df35da17f3256c20f500937.md) | 52 | `result-track:2df35da17f3256c20f5009372fbf35291cce535534ccb74f79a8e977e8c39e6a` |
| 2 | `def` | [PartialIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/partialiso--82886fcf385d26a3e8b4bd72.md) | 83 | `declaration-track:82886fcf385d26a3e8b4bd72c3dd9771f47ceeb7b8cb845dc7beed5ae678366b` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/instance--18fd59e624ed03b027561965.md) | 91 | `declaration-track:18fd59e624ed03b0275619650897fe017ef3756a608b1c8007af86e9bb8b2762` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/instance--b1ed75a43d677eb4958b476c.md) | 93 | `declaration-track:b1ed75a43d677eb4958b476c3d2e18eec94e7db1ba1cea165c477a4b273065b2` |
| 5 | `theorem` | [exists_across](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/exists-across--2c0b53c0ce08c5dce6d5e448.md) | 102 | `result-track:2c0b53c0ce08c5dce6d5e448e9744ac2b40ef71621e52929a1de1b7bdbe8bfd5` |
| 6 | `def` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/comm--b391e3c297e559317f3348ab.md) | 134 | `declaration-track:b391e3c297e559317f3348abe4ff86ef735918af1c921546f13f616eaf0e5e95` |
| 7 | `def` | [definedAtLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/definedatleft--de1d8973b341f78dea303585.md) | 151 | `declaration-track:de1d8973b341f78dea303585afdbef95a5b5271272c789dd897d3167976b29dc` |
| 8 | `def` | [definedAtRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/definedatright--062448b195a7be44252f2fd2.md) | 172 | `declaration-track:062448b195a7be44252f2fd22bb16a30ecd8a0316fa46ea2beea11b00ad830de` |
| 9 | `def` | [funOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/funofideal--ce4cf62c843625de27192c69.md) | 189 | `declaration-track:ce4cf62c843625de27192c6948b92dc9f697e8b99e37df910618acf7b7e45256` |
| 10 | `def` | [invOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/invofideal--e2e187e1db1bb3f732bbfa38.md) | 197 | `declaration-track:e2e187e1db1bb3f732bbfa38d2f1b41c9450c393a2f8a3cbb8dc98e485d0b2d3` |
| 11 | `theorem` | [embedding_from_countable_to_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/embedding-from-countable-to-dense--455977f70e6e80ec428c06bf.md) | 210 | `result-track:455977f70e6e80ec428c06bf09ee2fc69af03125ffcc63db75301ad0040e870b` |
| 12 | `theorem` | [iso_of_countable_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variantb40b18dece96f505f124dd387b72173427166899b7d6354b31678b3b3b9440f8.lean/declarations/iso-of-countable-dense--69f7842bbfa778ffe6a8f3dc.md) | 228 | `result-track:69f7842bbfa778ffe6a8f3dcb0fe72eec1c759e5d6fc76e693621e6830778d52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

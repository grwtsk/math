# Verification target: GRWTSK.Topology.GeneralTopology.CountableSeparating.Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b54ebeb8b2bbb8ea7a7e37486f25a1b1824050",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b54ebeb8b2bbb8ea7a7e37486f25a1b1824050`.

Source path: `GRWTSK/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableSeparatingOn` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [range_Iio](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/range-iio--c1261ab05c1d8c9da62ccb67.md) | 27 | `declaration-track:c1261ab05c1d8c9da62ccb67c07bd4ed6956bb8d45d4810bffd28943cb66a94c` |
| 2 | `instance` | [range_Ioi](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/range-ioi--afd9773a0b99e2574e53d17c.md) | 47 | `declaration-track:afd9773a0b99e2574e53d17cd94ad585227c0593be94d12fd13463259466ed18` |
| 3 | `instance` | [range_Iic](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/range-iic--f0805beade5d51dc7bf00ebd.md) | 50 | `declaration-track:f0805beade5d51dc7bf00ebdcc3e1d7797176c72d70943d9f69051d961dc6681` |
| 4 | `instance` | [range_Ici](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/range-ici--4c647f4a0244d6fa2c6d7716.md) | 55 | `declaration-track:4c647f4a0244d6fa2c6d771632b002d08b600c223ae62952d77752a0c0a3732e` |
| 5 | `lemma` | [of_forall_eventually_lt_iff](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/of-forall-eventually-lt-iff--de019fa158c753bb397fd135.md) | 64 | `result-track:de019fa158c753bb397fd135431886aee1f81662a219a5155eb1ecbfe23f718d` |
| 6 | `lemma` | [of_forall_eventually_le_iff](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/of-forall-eventually-le-iff--5b4b7043d67a576ed9f82df6.md) | 67 | `result-track:5b4b7043d67a576ed9f82df642335f8f0b8d0b5db6a264e6c170233bbcc7645c` |
| 7 | `lemma` | [of_forall_eventually_gt_iff](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/of-forall-eventually-gt-iff--44896a0106ad4e1f546a22a6.md) | 70 | `result-track:44896a0106ad4e1f546a22a668a5b57721a6c079c4a67b8073fc6c27d2eab288` |
| 8 | `lemma` | [of_forall_eventually_ge_iff](../../../../../mathematics/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/declarations/of-forall-eventually-ge-iff--b1162ceb65d9fb2083303a37.md) | 73 | `result-track:b1162ceb65d9fb2083303a3730ebcde8f2c962e9fef38fbe61e8d7694dabc831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

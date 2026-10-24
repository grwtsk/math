# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MinNatAbs.Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b72ea8d08853875f01151131c728992778a04fc9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b72ea8d08853875f01151131c728992778a04fc9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonzeroMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum--977a67bfd70636f73f03d9c6.md) | 41 | `declaration-track:977a67bfd70636f73f03d9c6a49425959daa0000558e124d4117597bdc762e7d` |
| 2 | `theorem` | [nonzeroMinimum_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-eq-zero-iff--8472e932072192beb0884611.md) | 44 | `result-track:8472e932072192beb088461154c01b990e3190151349d05b956e947316fd1c80` |
| 3 | `theorem` | [nonzeroMinimum_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-mem--baac4c0592fc4d6b91a396da.md) | 49 | `result-track:baac4c0592fc4d6b91a396dac107cbfb7bb148182b296c0f994ebca5d5ba2cbb` |
| 4 | `theorem` | [nonzeroMinimum_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-pos--d31d03892551ea7f7646ff0b.md) | 56 | `result-track:d31d03892551ea7f7646ff0b0697404953c14d3a67a63a5b6f175735bbcb2f85` |
| 5 | `theorem` | [nonzeroMinimum_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-le--b6734174f04119822d11acba.md) | 59 | `result-track:b6734174f04119822d11acbaf54c20d1b6be4721c1920f1b849897ff40465ad4` |
| 6 | `theorem` | [nonzeroMinimum_eq_nonzero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-eq-nonzero-iff--539f37f9f6725d25c8e864e1.md) | 71 | `result-track:539f37f9f6725d25c8e864e1dc189221d767981cb03ac59b706a189eb5f315c0` |
| 7 | `theorem` | [nonzeroMinimum_eq_of_nonzero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-eq-of-nonzero--fa8923c5e3c7e2b0f461df07.md) | 92 | `result-track:fa8923c5e3c7e2b0f461df0766821bd664da6857fad85d9bbd9cc9a342e7c3fb` |
| 8 | `theorem` | [nonzeroMinimum_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-le-iff--7315e060f619d79829dd4118.md) | 96 | `result-track:7315e060f619d79829dd411802f2caedc758c37550fe1fad139ed8890d028eb2` |
| 9 | `theorem` | [nonzeroMinimum_map_le_nonzeroMinimum](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/nonzerominimum-map-le-nonzerominimum--d4bc361d2db97f2feaf07238.md) | 111 | `result-track:d4bc361d2db97f2feaf07238113117c1dca159a251bcc133155711dfeeed5dc7` |
| 10 | `def` | [minNatAbs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/minnatabs--f40df70c1450d17b1c2533b2.md) | 134 | `declaration-track:f40df70c1450d17b1c2533b29b1dc5551f3e233020505a959234ae5fa341b91f` |
| 11 | `theorem` | [minNatAbs_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/minnatabs-eq-zero-iff--57aa20c751e7fde09af64f18.md) | 136 | `result-track:57aa20c751e7fde09af64f181e504354f49b5b3714ba5dfb586b6f37b1860e83` |
| 12 | `theorem` | [minNatAbs_eq_nonzero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/minnatabs-eq-nonzero-iff--bf2d19ec99b5b5810841793c.md) | 139 | `result-track:bf2d19ec99b5b5810841793caa38874d538d873ed4db81b8e339629c1f22cbde` |
| 13 | `theorem` | [minNatAbs_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/minnatabs-nil--1da5f4c5d2e64a5216a1d3e4.md) | 143 | `result-track:1da5f4c5d2e64a5216a1d3e4a51e5f9ea82e55046dcde2b043c7b0803b0af08c` |
| 14 | `def` | [maxNatAbs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MinNatAbs/Variantf9bda778f0eb40c5f74a220933a7e37eb8b7878d7292f82420f35b7d404caf20.lean/declarations/maxnatabs--45c661eb861bb279d7996123.md) | 146 | `declaration-track:45c661eb861bb279d7996123c5049e145511bb2c8807e4a7be937926661c6fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

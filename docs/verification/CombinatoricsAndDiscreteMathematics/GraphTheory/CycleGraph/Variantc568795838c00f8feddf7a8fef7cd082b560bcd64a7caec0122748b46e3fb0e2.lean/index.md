# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CycleGraph.Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6682f24503a9cf51472a668d1c96f89f39c35978",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6682f24503a9cf51472a668d1c96f89f39c35978`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph--143187efc8100f2e0c533d04.md) | 37 | `declaration-track:143187efc8100f2e0c533d04d8e1222d9f08ac9c234748244f65be8ad70f5b94` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/instance--782db1c1bfdd814335ba070e.md) | 43 | `declaration-track:782db1c1bfdd814335ba070e92a1b48293e9bc03a2648aebeca1ccd7727df619` |
| 3 | `theorem` | [cycleGraph_zero_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-zero-adj--698bb733fac0568b8fc0f67a.md) | 47 | `result-track:698bb733fac0568b8fc0f67ac6010dd71feb4f998a5ead5ab0872ccefffc583a` |
| 4 | `theorem` | [cycleGraph_zero_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-zero-eq-bot--7f77fd9f36bf3ee40d90784d.md) | 49 | `result-track:7f77fd9f36bf3ee40d90784d27dc9aff4233c1e09db7721c5e93dc2a47bfe197` |
| 5 | `theorem` | [cycleGraph_one_eq_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-one-eq-bot--95673ddf9aa9704269bfbd7b.md) | 50 | `result-track:95673ddf9aa9704269bfbd7b3fb0f58f16eb6a4a9bdff08f3756c000635b3eb4` |
| 6 | `theorem` | [cycleGraph_zero_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-zero-eq-top--72be43b7342598666c4c4bb6.md) | 51 | `result-track:72be43b7342598666c4c4bb6affdb6070228934c093b1d7026a7a031650cb9cf` |
| 7 | `theorem` | [cycleGraph_one_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-one-eq-top--31bd886675f916bb200c7b89.md) | 52 | `result-track:31bd886675f916bb200c7b89206cbfb26bb260c049249e2b988c07630c94e8cb` |
| 8 | `theorem` | [cycleGraph_two_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-two-eq-top--5d22fda015385130d230e0bf.md) | 54 | `result-track:5d22fda015385130d230e0bf007855f9bec4533a78cf4866e07530a6364cf7f1` |
| 9 | `theorem` | [cycleGraph_three_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-three-eq-top--98789595667da89651279a69.md) | 58 | `result-track:98789595667da89651279a6925eed3b99719ff927525b5f1b08455c1647fcc8f` |
| 10 | `theorem` | [cycleGraph_one_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-one-adj--e8836be7b6722ac539234890.md) | 62 | `result-track:e8836be7b6722ac5392348901a403c33c986136f20f7f337f8293985a7190bdb` |
| 11 | `theorem` | [cycleGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-adj--0f798be56a7db7014c695e51.md) | 65 | `result-track:0f798be56a7db7014c695e51bc3a7cf0c01769012aef475d1845ced77fab566d` |
| 12 | `theorem` | [cycleGraph_adj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-adj--69845164b3573e89a9a4bc0a.md) | 68 | `result-track:69845164b3573e89a9a4bc0a5bd2f9239717b4e42bcc260872151e84e5b860bf` |
| 13 | `theorem` | [cycleGraph_neighborSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-neighborset--7894189d575db88c0440607b.md) | 75 | `result-track:7894189d575db88c0440607b4a0cd24a787c2c7864a185e88633a7f6c9202ee8` |
| 14 | `theorem` | [cycleGraph_neighborFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-neighborfinset--8bfa32565c51ea372ed54a20.md) | 81 | `result-track:8bfa32565c51ea372ed54a20cb77a1a4d471bb212fcddf264cd1a73d691f8b34` |
| 15 | `theorem` | [cycleGraph_degree_two_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-degree-two-le--1aa5b7649db3ae0e3a13b810.md) | 85 | `result-track:1aa5b7649db3ae0e3a13b81096edc5fb600852980f1f99128ed8e8bb8624c6de` |
| 16 | `theorem` | [cycleGraph_degree_three_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-degree-three-le--5a4912d08be8bd7d191e6cc5.md) | 89 | `result-track:5a4912d08be8bd7d191e6cc5be9110da179e67ac8480a5160e5d98f5ca83d379` |
| 17 | `theorem` | [pathGraph_le_cycleGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/pathgraph-le-cyclegraph--b4f16c411e0a0c707abb1b56.md) | 95 | `result-track:b4f16c411e0a0c707abb1b56bd2e3365645444cd42e910e9c984128fc1a46ba4` |
| 18 | `theorem` | [cycleGraph_preconnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-preconnected--95d5c2adb278dc31378a9c29.md) | 106 | `result-track:95d5c2adb278dc31378a9c296a3fc19813299f6a830704957c4504f3fc6b9cfb` |
| 19 | `theorem` | [cycleGraph_connected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-connected--81416ddab81ca0992853c3a0.md) | 109 | `result-track:81416ddab81ca0992853c3a0cdf783ff663a63518147101fc08d78bf803502d4` |
| 20 | `def` | [cycleGraph.cycleCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-cyclecons--1d2cc21172a0b09427341feb.md) | 115 | `declaration-track:1d2cc21172a0b09427341feb6c4c10dbfa9b8a52f9540e5f8a826a862e1bc6d3` |
| 21 | `def` | [cycleGraph.cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-cycle--f0ba9b5e142d694398e9635e.md) | 125 | `declaration-track:f0ba9b5e142d694398e9635ee2448a8f6fb3ee899551c02c1dae58832d45428b` |
| 22 | `theorem` | [cycleGraph.length_cycle_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-length-cycle-cons--5606dfcb898ac63e627c52fd.md) | 130 | `result-track:5606dfcb898ac63e627c52fdcf2b1a67aa9b166951c609721b0645e952b9082e` |
| 23 | `theorem` | [cycleGraph.length_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-length-cycle--94199500ee5e39c8203b5e7c.md) | 143 | `result-track:94199500ee5e39c8203b5e7c064f77e3b345a26370f5d4d3c7402300ca5e18bb` |
| 24 | `theorem` | [cycleGraph.getVert_cycleCons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-getvert-cyclecons--ce8ac1f33c9a7cf22d77d29a.md) | 147 | `result-track:ce8ac1f33c9a7cf22d77d29a57cb5b9ce77e1e353422d300475cef2335be8476` |
| 25 | `theorem` | [cycleGraph.getVert_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-getvert-cycle--73425e0e46fbd08724fdadbb.md) | 154 | `result-track:73425e0e46fbd08724fdadbbfcb4c13c85f27329400b6c6605fe41e96f9ed0ad` |
| 26 | `theorem` | [cycleGraph.isPath_tail_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-ispath-tail-cycle--4c04932d1ba3b0980a13a079.md) | 160 | `result-track:4c04932d1ba3b0980a13a079077384ce586a7c0457b1384ea712436612007658` |
| 27 | `theorem` | [cycleGraph.isCycle_cycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-iscycle-cycle--644de9b710ed481415af9622.md) | 166 | `result-track:644de9b710ed481415af962267fbd3505a811fa1cba1a5eec94e6eff372be3e5` |
| 28 | `lemma` | [cycleGraph_isContained_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/CycleGraph/Variantc568795838c00f8feddf7a8fef7cd082b560bcd64a7caec0122748b46e3fb0e2.lean/declarations/cyclegraph-iscontained-iff--879b80aff735e8ac5e442dca.md) | 175 | `result-track:879b80aff735e8ac5e442dcaff37dc5ac040aabbd857a98df467140291495c28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

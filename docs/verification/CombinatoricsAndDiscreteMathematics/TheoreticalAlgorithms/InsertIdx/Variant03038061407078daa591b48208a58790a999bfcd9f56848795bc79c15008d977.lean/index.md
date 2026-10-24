# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InsertIdx.Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ff69a4935d0ffeeeb4d88b3695ec492b996de21",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ff69a4935d0ffeeeb4d88b3695ec492b996de21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.InsertIdx` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [insertIdx_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-zero--77d12194407fc44037b2ae9f.md) | 38 | `result-track:77d12194407fc44037b2ae9f665c2d9a1c6f9bedc4e537239e960f0601aa165d` |
| 2 | `theorem` | [eraseIdx_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/eraseidx-insertidx-self--3109737a4b7f866b3c973c4a.md) | 42 | `result-track:3109737a4b7f866b3c973c4af7f3c047d6fd1e10ad8379444d89e8342a37fcba` |
| 3 | `theorem` | [insertIdx_eraseIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-eraseidx-of-ge--faf3b13ff1882c6ee83b0b7b.md) | 47 | `result-track:faf3b13ff1882c6ee83b0b7bb38db1b7fe5826d4cf479c1ea5942ec1ef44fe54` |
| 4 | `theorem` | [insertIdx_eraseIdx_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-eraseidx-of-le--88e4296a71ec32687f87481e.md) | 54 | `result-track:88e4296a71ec32687f87481e12a88e1d3d1ff09e405c3bcd6f53842f6f2f82c8` |
| 5 | `theorem` | [insertIdx_eraseIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-eraseidx--9f3d04253f3fcdd976b3e67d.md) | 62 | `result-track:9f3d04253f3fcdd976b3e67da18f7ad424d67c2a4d9be609acd9a389e5df1705` |
| 6 | `theorem` | [insertIdx_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-comm--4b71291e21ab545897768573.md) | 73 | `result-track:4b71291e21ab545897768573f0b41fc786149543beb8d1e53cf81f676a7cf354` |
| 7 | `theorem` | [mem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/mem-insertidx--52fae5b170d35bc7fc397438.md) | 79 | `result-track:52fae5b170d35bc7fc397438e08c6492b9df30343da6acb8be3e2515c1e025d6` |
| 8 | `theorem` | [insertIdx_size_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/insertidx-size-self--7dc348a504fdaf5eea0372b8.md) | 85 | `result-track:7dc348a504fdaf5eea0372b8add1630074f45127165dd36857bc3cdc060d8e62` |
| 9 | `theorem` | [getElem_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx--f17f1d6fb60e4249cb2e79ad.md) | 90 | `result-track:f17f1d6fb60e4249cb2e79ad5809591b4c4ac1e9b39cd52d5ce97fd543a93364` |
| 10 | `theorem` | [getElem_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-of-lt--000c3d4e916602407d32d1ea.md) | 102 | `result-track:000c3d4e916602407d32d1ea5bac3d9b51e9eb583190ed16bbb8ddb4c6a27131` |
| 11 | `theorem` | [getElem_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-self--7dd6cabfb188aed7752249ee.md) | 107 | `result-track:7dd6cabfb188aed7752249ee0b33351efa5e2b7e55766613505d00a488eaac0c` |
| 12 | `theorem` | [getElem_insertIdx_of_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-of-gt--ac023bb68c2dc5204f9083a5.md) | 112 | `result-track:ac023bb68c2dc5204f9083a5e024ae7120eecd020c5a0247c9e3c26f05fca4ac` |
| 13 | `theorem` | [getElem?_insertIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx--7dc988dcdff99793eaaddaf8.md) | 119 | `result-track:7dc988dcdff99793eaaddaf8bf1e2400b8037b52a24f49f21bb3e8da96e54078` |
| 14 | `theorem` | [getElem?_insertIdx_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-of-lt--8452340d773b694e6b8b8a2d.md) | 131 | `result-track:8452340d773b694e6b8b8a2d2fd0b6aaf5cd67743ad048857afa9a68a7571c22` |
| 15 | `theorem` | [getElem?_insertIdx_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-self--1e7c0a211c2f9698a9ee7515.md) | 136 | `result-track:1e7c0a211c2f9698a9ee75153a2ff12ca6c7c89802fb05f9252725c82c9082b5` |
| 16 | `theorem` | [getElem?_insertIdx_of_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InsertIdx/Variant03038061407078daa591b48208a58790a999bfcd9f56848795bc79c15008d977.lean/declarations/getelem-insertidx-of-ge--7a3189bafb64410769de3bfe.md) | 141 | `result-track:7a3189bafb64410769de3bfe66aeb91accfb8a1db21da52c52b2881f5d93af7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

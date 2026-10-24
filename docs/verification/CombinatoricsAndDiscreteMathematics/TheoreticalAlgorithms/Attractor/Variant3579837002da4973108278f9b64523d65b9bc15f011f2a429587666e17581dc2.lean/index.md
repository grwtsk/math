# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attractor.Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1a92ca08d31f2b5274075f142abb82152c2f60c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1a92ca08d31f2b5274075f142abb82152c2f60c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork.Dynamics` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [containsState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/containsstate--fc6df2a283a6c545c45ee4d9.md) | 8 | `declaration-track:fc6df2a283a6c545c45ee4d90709fb91d13a2fb4f2fef4f8609804fb9d5a7969` |
| 2 | `def` | [suffixFromState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/suffixfromstate--4b88818122be8f5df38ff82f.md) | 17 | `declaration-track:4b88818122be8f5df38ff82f2055ef38aa4128208349f185fed39315b63e1fa5` |
| 3 | `def` | [cycleFromAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclefromaux--191b4b7934a86abe1f71ce90.md) | 33 | `declaration-track:191b4b7934a86abe1f71ce90b3e077b9f6044e71d4d41eb9838d8c4227f76732` |
| 4 | `def` | [cyclicAttractorFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractorfrom--a179264a5a1bcb7406c73885.md) | 45 | `declaration-track:a179264a5a1bcb7406c73885dbd38c3e7fa7a6cba3a34eb6ca83484a3188bc4b` |
| 5 | `def` | [InCycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/incycle--e0ff1c17457139eed557e486.md) | 53 | `declaration-track:e0ff1c17457139eed557e486d1fe81300e6726fb5887c3be1828f864ae0e0206` |
| 6 | `def` | [stateSetSubset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/statesetsubset--4f849940f9917650fef1d67b.md) | 60 | `declaration-track:4f849940f9917650fef1d67b59a820216ad33c73c177e6f0cf6d3d226fe77bd6` |
| 7 | `def` | [sameStateSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/samestateset--51039409487099249120a10a.md) | 68 | `declaration-track:51039409487099249120a10a7cb829f330ce89a87eca9fa8eda7584a627dd3ea` |
| 8 | `def` | [containsCycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/containscycle--ce5941f1ca18aa40e4f70c1f.md) | 75 | `declaration-track:ce5941f1ca18aa40e4f70c1f811caad367232248aff085cabfe57764cddfe95a` |
| 9 | `def` | [cycleIsEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cycleisempty--e331f2bbefe7f8f26ff75a26.md) | 84 | `declaration-track:e331f2bbefe7f8f26ff75a266014deb3ca38aba22078335dfad46dc74e480276` |
| 10 | `def` | [insertCycle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/insertcycle--b6b2cf3abd1458a55a12468e.md) | 92 | `declaration-track:b6b2cf3abd1458a55a12468e23cc16a9b65b0c51d269de4a3b2830a7b09cc8e5` |
| 11 | `def` | [cyclicAttractorsWithRepetitions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractorswithrepetitions--ae61bb9d609c07ae5c92e7ad.md) | 104 | `declaration-track:ae61bb9d609c07ae5c92e7ad8267dbca30889e52aa415e390eded6b88a24329f` |
| 12 | `def` | [cyclicAttractors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractors--65fb961c85941059f702d884.md) | 116 | `declaration-track:65fb961c85941059f702d8849fd8e48f9008af1eabb0cfb7f65a748aaed577ad` |
| 13 | `def` | [InAttractorBasin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/inattractorbasin--8237bb9c16ef8c31168f880b.md) | 127 | `declaration-track:8237bb9c16ef8c31168f880bb28da0d0534bbeb90e314f70c13a91c662c64c4d` |
| 14 | `def` | [basinSize](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/basinsize--434f2ad0dae91f41def7be64.md) | 137 | `declaration-track:434f2ad0dae91f41def7be641a6b7514c9070328b23b9bc17338d26d2523d5a4` |
| 15 | `structure` | [CyclicAttractor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractor--13ea5ba0e11dd3bd8bfb189c.md) | 149 | `declaration-track:13ea5ba0e11dd3bd8bfb189cf262fe4eab8bac1c02bc152bcccf4e60f2b4e192` |
| 16 | `def` | [cyclicAttractorTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractortable--1bbd6ae8fe115b151e9d4ec6.md) | 154 | `declaration-track:1bbd6ae8fe115b151e9d4ec666980a52c215c1452cf049a9e81fa02055c8ce48` |
| 17 | `theorem` | [containsState_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/containsstate-nil--b90b16b1765ce2450fbce672.md) | 162 | `result-track:b90b16b1765ce2450fbce6721fff1499b4afbf66159f600d9e92556a2c6a183d` |
| 18 | `theorem` | [suffixFromState_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/suffixfromstate-nil--ec902aa8d0be74971c0630b8.md) | 166 | `result-track:ec902aa8d0be74971c0630b8b40067853974d3cad28f0631cf344374bf8f9b73` |
| 19 | `theorem` | [cycleIsEmpty_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cycleisempty-nil--83850f0c29fae1b3d748da3a.md) | 170 | `result-track:83850f0c29fae1b3d748da3ac3653163a0abf97deb2217129cb4797b6ea01775` |
| 20 | `theorem` | [cycleIsEmpty_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cycleisempty-cons--a49afe5f6d5191e7bfbc16a6.md) | 173 | `result-track:a49afe5f6d5191e7bfbc16a6c6b2ce51eb9579ead2d8024c1a384a420381bf03` |
| 21 | `theorem` | [cyclicAttractorsWithRepetitions_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractorswithrepetitions-eq-map--91b434ba477345993935b707.md) | 178 | `result-track:91b434ba477345993935b707d7bbc5b513c9e7abc7dd1ae20224ed1b6e54b24c` |
| 22 | `theorem` | [cyclicAttractorTable_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/cyclicattractortable-eq-map--f263325bf86180c77c975c7a.md) | 184 | `result-track:f263325bf86180c77c975c7a8e232a60e44249e74d3c011fd87ee4d247680247` |
| 23 | `theorem` | [basinSize_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Attractor/Variant3579837002da4973108278f9b64523d65b9bc15f011f2a429587666e17581dc2.lean/declarations/basinsize-eq-count--96bc662a0c41034564886a62.md) | 192 | `result-track:96bc662a0c41034564886a6276b47ac0bf914a2365b29de55fa3730b81f4d8c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

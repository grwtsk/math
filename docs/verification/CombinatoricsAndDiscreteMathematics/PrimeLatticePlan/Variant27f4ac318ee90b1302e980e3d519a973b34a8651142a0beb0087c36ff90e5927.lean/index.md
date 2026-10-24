# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeLatticePlan.Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2452d390b6c7ba0071fb49e30840b9025ef282",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2452d390b6c7ba0071fb49e30840b9025ef282`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeLatticeGraph](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/primelatticegraph--e25ce6bc709036042af15863.md) | 39 | `declaration-track:e25ce6bc709036042af158638530f4ae69108bf7488d5bc85c9d5a5249d31145` |
| 2 | `def` | [DependencyClosed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/dependencyclosed--5f430d4670316fb8c0cb7d5a.md) | 54 | `declaration-track:5f430d4670316fb8c0cb7d5a09f04b3c91f6fd64291d2d9a8f50cad19f9f62d8` |
| 3 | `theorem` | [dependency_irreflexive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/dependency-irreflexive--0f07d5d7d650b74439186916.md) | 60 | `result-track:0f07d5d7d650b74439186916788f47b1c93240e7872e031246cb7a7b425a6a74` |
| 4 | `def` | [PrimeLattice](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/primelattice--2705a5a5353f86db17b5d9a3.md) | 69 | `declaration-track:2705a5a5353f86db17b5d9a37e5acd47960626ebe69c3511778e2e678d14654a` |
| 5 | `def` | [meet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/meet--e17b2043f21190ecb1927ae3.md) | 78 | `declaration-track:e17b2043f21190ecb1927ae3ae764676f3dc6a3f591b6a5ac4ff6d6dea303475` |
| 6 | `def` | [join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/join--ea0e92462835f50b5573381a.md) | 89 | `declaration-track:ea0e92462835f50b5573381a1b8bea41f536f3fde34bae7a5ce3237164b7eb08` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/instance--5f832142fad187ca6c8198d5.md) | 101 | `declaration-track:5f832142fad187ca6c8198d5af2c4cd3e380f22dfb89545cbc2429f8506d2cbd` |
| 8 | `def` | [bottom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/bottom--b41a89d32b9965865dda47d4.md) | 139 | `declaration-track:b41a89d32b9965865dda47d419a679c20979e5a3a90cf2c710f3e57822f1f1d9` |
| 9 | `def` | [top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/top--b6ea6501f033dabd328cf073.md) | 144 | `declaration-track:b6ea6501f033dabd328cf073027796eb4fc8a2dc896bd4f49a595d1843a44963` |
| 10 | `theorem` | [mem_meet_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/mem-meet-iff--f98f9e25f256b4c25bca599e.md) | 152 | `result-track:f98f9e25f256b4c25bca599e80028cb05ac159ead2ac101da7bc39b8d7881701` |
| 11 | `theorem` | [mem_join_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/mem-join-iff--464c1c3363883844ee56ff92.md) | 158 | `result-track:464c1c3363883844ee56ff9285e4b15b17dccac81b7d0d56561042f385d39748` |
| 12 | `theorem` | [meet_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/meet-comm--caf831dcdbf484dff72f1b7d.md) | 164 | `result-track:caf831dcdbf484dff72f1b7d54f37bb2e90f8fb4d783434d13daee61cb075207` |
| 13 | `theorem` | [join_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/join-comm--35d5d6830fb7957bf6afe93e.md) | 171 | `result-track:35d5d6830fb7957bf6afe93e968fdfc9a673037ecad81125a7ca8a63725f7896` |
| 14 | `theorem` | [meet_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/meet-assoc--c6564ae4967b8c56259df8f1.md) | 178 | `result-track:c6564ae4967b8c56259df8f1819895ce1b01664fe46940dac644c396f4b31a32` |
| 15 | `theorem` | [join_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/join-assoc--7c01a1e8c5463a64a71b2b8b.md) | 185 | `result-track:7c01a1e8c5463a64a71b2b8ba2d4e3ef7ea15f904efce93746c130cb2f0674a3` |
| 16 | `theorem` | [meet_join_absorb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/meet-join-absorb--de9a60e2353315461d3b3115.md) | 192 | `result-track:de9a60e2353315461d3b3115642f82d805d04cf60b97791027d49ff41560a94d` |
| 17 | `theorem` | [join_meet_absorb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/join-meet-absorb--1166922030e180f553ef1f72.md) | 199 | `result-track:1166922030e180f553ef1f72b86b22dea438e371b76f8e57d8dd110f309808d6` |
| 18 | `theorem` | [proposal_over_cone_not_kernel_authority](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeLatticePlan/Variant27f4ac318ee90b1302e980e3d519a973b34a8651142a0beb0087c36ff90e5927.lean/declarations/proposal-over-cone-not-kernel-authority--c3c4d93985e692faa1025e86.md) | 208 | `result-track:c3c4d93985e692faa1025e8672f7e5df2acc63c05bfdc41182a45206922ecee0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIfs.Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c8b839bbfd7cfb7da0e54a10e752ca91f35a017",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c8b839bbfd7cfb7da0e54a10e752ca91f35a017`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Location` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.SplitIf` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitPosition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/splitposition--269cbb81edde91a72db5f371.md) | 29 | `declaration-track:269cbb81edde91a72db5f371e2e10955fb7b2576ef6db2c73e3b8b8ab54dea03` |
| 2 | `def` | [getSplitCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/getsplitcandidates--23a458d4b88fb7eb0ffa976f.md) | 35 | `declaration-track:23a458d4b88fb7eb0ffa976f4dd9ca27077204e7f7020831d5613345f4a40105` |
| 3 | `def` | [findIfToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/findiftosplit--3282bf258d28235bdd09052b.md) | 53 | `declaration-track:3282bf258d28235bdd09052b0f6747301bea4e531b5283cba9ed5294f5e328d5` |
| 4 | `def` | [findIfCondAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/findifcondat--e518a4f53a6d4125ebee070a.md) | 64 | `declaration-track:e518a4f53a6d4125ebee070a2e332ca2a783b5513d7cde1d531330f633bc1d51` |
| 5 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/discharge--67a11c44327afea5cbbc9292.md) | 74 | `declaration-track:67a11c44327afea5cbbc92928f52a3f691ca449c9dd6a09e6337db786b9f57b4` |
| 6 | `def` | [reduceIfsAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/reduceifsat--1d5659dfdb76771298f67fca.md) | 84 | `declaration-track:1d5659dfdb76771298f67fcae451f8f09a899651e415834cc522e494e68fdae7` |
| 7 | `def` | [splitIf1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/splitif1--b98f850a6831eb4bbaf3dd54.md) | 95 | `declaration-track:b98f850a6831eb4bbaf3dd54645c0809f7580a6023a05ad8dc8c2e59a65e1f22` |
| 8 | `def` | [getNextName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/getnextname--7f900b1f9aff315e82eb3028.md) | 103 | `declaration-track:7f900b1f9aff315e82eb30288c3ab50b25de826db16704dd0a72b41caf5a3d90` |
| 9 | `def` | [valueKnown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/valueknown--de8267b496f2e5d2765f719a.md) | 113 | `declaration-track:de8267b496f2e5d2765f719a1dbe28a2eebe42eed756093640ffac2c92cd2771` |
| 10 | `def` | [splitIfsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/splitifscore--5b706e624f4ea33880f8a0bb.md) | 124 | `declaration-track:5b706e624f4ea33880f8a0bb22e0090e2528de52641021fcf5f26a3edbcc3473` |
| 11 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/syntax--f756b91b651aa11ad4ed96fa.md) | 152 | `declaration-track:f756b91b651aa11ad4ed96faee560d9f66af326fb623d4a65c51638b40812aea` |
| 12 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIfs/Variant6f57f7be750dbeef4c33a5daf9171bca8b0e2a112d1d3b31a06750dfff0c36e5.lean/declarations/elab-rules--108c7a5cc2b99f231da40a1d.md) | 154 | `declaration-track:108c7a5cc2b99f231da40a1d98f1bd4d256e9f46adcb8135d789f3ee4bb96b39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

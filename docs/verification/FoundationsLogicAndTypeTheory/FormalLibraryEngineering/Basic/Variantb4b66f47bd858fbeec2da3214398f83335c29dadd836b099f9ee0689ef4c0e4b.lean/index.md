# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IntermediateValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/rootstatus--d742c91a20076df4859f898a.md) | 34 | `declaration-track:d742c91a20076df4859f898a85b0c9915ed752f20402c4ea35339f532f8f5f3e` |
| 2 | `def` | [excludesZero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/excludeszero--8da7e4e83d45d6a152e2d612.md) | 48 | `declaration-track:8da7e4e83d45d6a152e2d612f6e967fc311180af4820b6de422eafc250ad20a3` |
| 3 | `def` | [signChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/signchange--d8ad58c001491c2013939ee4.md) | 52 | `declaration-track:d8ad58c001491c2013939ee4e6437eab84a207a9549d9be2b2f8b5844521f298` |
| 4 | `def` | [checkRootStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/checkrootstatus--df95a6a10d0752b0a2849941.md) | 58 | `declaration-track:df95a6a10d0752b0a2849941888242de31cde7d4dc95ecc91d5449ab311e3e36` |
| 5 | `theorem` | [excludesZero_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/excludeszero-correct--93cb78feb829974ad63d1339.md) | 71 | `result-track:93cb78feb829974ad63d1339f758cb21541f94d393398fbf71f1956c26ad3efd` |
| 6 | `theorem` | [signChange_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/signchange-correct--749daabe794e3a04e22552ea.md) | 99 | `result-track:749daabe794e3a04e22552ea325f2f24e56f585e9a60d8fe9b6be2df3441b907` |
| 7 | `def` | [excludesZero_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/excludeszero-idx--fd39c389d70de800ccafe701.md) | 174 | `declaration-track:fd39c389d70de800ccafe70175643007bc3158d133522269eac76c5b9b3c2e91` |
| 8 | `def` | [signChange_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/signchange-idx--7ece87fd0910c9496f4fe2ff.md) | 179 | `declaration-track:7ece87fd0910c9496f4fe2ff3bb0208aac39b93cb5f7d0878c6757ff16c6752b` |
| 9 | `def` | [checkRootStatus_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/checkrootstatus-idx--a547a45454d2d22449f6e9fc.md) | 189 | `declaration-track:a547a45454d2d22449f6e9fcc52902e5102fe1d72c3154b186fea010c65a8585` |
| 10 | `theorem` | [excludesZero_correct_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/excludeszero-correct-idx--5e2539b4f7392d764af4679a.md) | 202 | `result-track:5e2539b4f7392d764af4679ad64eed5d9ad28fb137ff7458ab8badb14b8571a4` |
| 11 | `theorem` | [signChange_correct_idx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/signchange-correct-idx--0b7753384f6237726658183d.md) | 226 | `result-track:0b7753384f6237726658183d1284013e44fde118d45b05ad5ce6ae43dd72b2e4` |
| 12 | `inductive` | [BisectResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectresult--0b423707198025e702434c0d.md) | 313 | `declaration-track:0b423707198025e702434c0d3c7500f552632918ab008f73a9de9622210e8fe6` |
| 13 | `def` | [updateIntervalEnv'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/updateintervalenv--6278c1d18ad2f4464ba16c91.md) | 323 | `declaration-track:6278c1d18ad2f4464ba16c91f753c9f63a870a81a52c594f47a3d2fdc25b83b9` |
| 14 | `theorem` | [mem_bisect_cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/mem-bisect-cases--e4c2a8ee9faf75c9dd088e88.md) | 327 | `result-track:e4c2a8ee9faf75c9dd088e88335f91146e6bdc544d241a0d51b5999ef1f552f9` |
| 15 | `def` | [bisectRootIdx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectrootidx--de737a5883122ef945b8beb8.md) | 343 | `declaration-track:de737a5883122ef945b8beb86e70bc24e328b60875b674cdbd80d3b1954688d4` |
| 16 | `theorem` | [bisectRootIdx_go_found_signChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectrootidx-go-found-signchange--b151f9f96b4d1de9a574d7e5.md) | 387 | `result-track:b151f9f96b4d1de9a574d7e558b0e0e694d2f2e3c760b9c469b9045162e52a1e` |
| 17 | `theorem` | [bisectRootIdx_found_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectrootidx-found-correct--9defec0f73cd836f3453ee3f.md) | 455 | `result-track:9defec0f73cd836f3453ee3f6367a10491749ddc23199b3b404517baff0545cf` |
| 18 | `theorem` | [bisectRootIdx_go_noRoot_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectrootidx-go-noroot-correct--0f5d0d49865988ed0dd1c327.md) | 485 | `result-track:0f5d0d49865988ed0dd1c3276907aa7a4dcb031aeabab8ece756a3c0d979b797` |
| 19 | `theorem` | [bisectRootIdx_noRoot_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/declarations/bisectrootidx-noroot-correct--1dcd6b67f21d8418b07ce728.md) | 585 | `result-track:1dcd6b67f21d8418b07ce72831d3084890f4c5e79c3b006351d61cf33327a4f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

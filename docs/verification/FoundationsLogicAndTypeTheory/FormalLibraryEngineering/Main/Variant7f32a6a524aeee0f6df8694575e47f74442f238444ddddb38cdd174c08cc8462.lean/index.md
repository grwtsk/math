# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98f97661eca9705b3ffa06ae5ecee54aac129a1e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98f97661eca9705b3ffa06ae5ecee54aac129a1e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Frontend.Extension` — import line 14; external provider; requires a separately pinned dependency.
- `Aesop.Search.Queue` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Free` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Tree.Stats` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nextActiveGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/nextactivegoal--8b602af79c608faf37eabfe7.md) | 30 | `declaration-track:8b602af79c608faf37eabfe7db5f556d32d11847abd2d504975d62b1e8fc79b7` |
| 2 | `def` | [expandNextGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/expandnextgoal--ca3c6d0d77697b6137c16d3d.md) | 38 | `declaration-track:ca3c6d0d77697b6137c16d3d7b53d887e6516343cdeef8354fc45c67247bd4b7` |
| 3 | `def` | [checkGoalLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/checkgoallimit--70e72f443b7f4dae11f18859.md) | 88 | `declaration-track:70e72f443b7f4dae11f18859880c5b8624272c8a5d3d198eb32da9cd6e65ede1` |
| 4 | `def` | [checkRappLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/checkrapplimit--31fa3fc1a67d823a4f9bc173.md) | 95 | `declaration-track:31fa3fc1a67d823a4f9bc173b16a5645565f4cce1ab36be4cc25311e3c323e4f` |
| 5 | `def` | [checkRootUnprovable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/checkrootunprovable--8fa00154311c399cedf252e5.md) | 102 | `declaration-track:8fa00154311c399cedf252e58ade6d7a96135969be2c7eeb0637c9eefd67728f` |
| 6 | `def` | [getProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/getproof--d067ebccb56f24f8c6c48cc0.md) | 113 | `declaration-track:d067ebccb56f24f8c6c48cc0d695905d453b31646e973df0d76e7fc4790165f6` |
| 7 | `def` | [finalizeProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/finalizeproof--1376b753c9f10a2621f2ff37.md) | 116 | `declaration-track:1376b753c9f10a2621f2ff37b083864a749c425414da7ec4466cd126269ac585` |
| 8 | `def` | [traceScript](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/tracescript--eeaa1e9b8d86b5f73123ef4c.md) | 128 | `declaration-track:eeaa1e9b8d86b5f73123ef4c88fbfe5d6e329b257eedca219ef50da3d41de834` |
| 9 | `def` | [traceTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/tracetree--428dff7b378d743c178b8ec8.md) | 143 | `declaration-track:428dff7b378d743c178b8ec81d1004817a88dec932e76e4c26ca1a64676a15c6` |
| 10 | `def` | [finishIfProven](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/finishifproven--79734cee5cfd1709254ead6a.md) | 146 | `declaration-track:79734cee5cfd1709254ead6a337c810ad36e3c84e2ced14460852bfb05807881` |
| 11 | `def` | [treeHasProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/treehasprogress--23ebf0979aed160f6af8c197.md) | 167 | `declaration-track:23ebf0979aed160f6af8c197c390d66b3bc886a43ed04358f6e58a009eaa0c6c` |
| 12 | `def` | [throwAesopEx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/throwaesopex--007fe54e53ca96592c034c73.md) | 190 | `declaration-track:007fe54e53ca96592c034c73fe4aaf8b65f8fd5dfad97b40eedb28ce213dcd3e` |
| 13 | `def` | [handleNonfatalError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/handlenonfatalerror--c7d45d72375bf83853c8976e.md) | 228 | `declaration-track:c7d45d72375bf83853c8976e4058278c01c871bb86f3969a073895648a9206b6` |
| 14 | `def` | [searchLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/searchloop--2239d951cd14142952cb4fd8.md) | 250 | `declaration-track:2239d951cd14142952cb4fd8b074b7dc8a58ba326a1350a46f58f4bdc405e6f0` |
| 15 | `def` | [search](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant7f32a6a524aeee0f6df8694575e47f74442f238444ddddb38cdd174c08cc8462.lean/declarations/search--b35dc6a77d590cbcf4507651.md) | 267 | `declaration-track:b35dc6a77d590cbcf4507651926e69b9eb9b47172a5092b27d96be535c19309f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

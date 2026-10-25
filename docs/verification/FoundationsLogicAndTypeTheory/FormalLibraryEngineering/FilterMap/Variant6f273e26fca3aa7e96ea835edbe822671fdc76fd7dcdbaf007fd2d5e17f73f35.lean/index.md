# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FilterMap.Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aac50835fee9199d25bf9772470f748d0879e50",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aac50835fee9199d25bf9772470f748d0879e50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap--69a3e7e596f5ee6866d86549.md) | 43 | `declaration-track:69a3e7e596f5ee6866d86549b2324427589030d71ef8815b363c16611a647f78` |
| 2 | `def` | [Map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map--184f9b37026b2e4dc4ab2412.md) | 53 | `declaration-track:184f9b37026b2e4dc4ab241257e43adbbd615eebb68cfed350e2d250e597a1d2` |
| 3 | `def` | [IterM.InternalCombinators.filterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-internalcombinators-filtermap--cec4d742c8bb6785f1ef94ab.md) | 63 | `declaration-track:cec4d742c8bb6785f1ef94ab43ca513fd1029c54bb2d1560044fa3d5f20f2e91` |
| 4 | `def` | [IterM.InternalCombinators.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-internalcombinators-map--9722f46494776006e41a6dca.md) | 70 | `declaration-track:9722f46494776006e41a6dca5561f3008fe5c7733ffc86aa3f989de31b3d1534` |
| 5 | `def` | [IterM.filterMapWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filtermapwithpostcondition--4c4be6b66d8c17eb1efe01bb.md) | 123 | `declaration-track:4c4be6b66d8c17eb1efe01bbd982ae5a99181db7d20bca8a21bb15f58512a122` |
| 6 | `inductive` | [FilterMap.PlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap-plausiblestep--9898484d440d2a14f97e661f.md) | 135 | `declaration-track:9898484d440d2a14f97e661f47f947d07347031038e7d2b2faad7987a92faa0b` |
| 7 | `instance` | [FilterMap.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap-institerator--3fc345ed6b296722ea7670af.md) | 150 | `declaration-track:3fc345ed6b296722ea7670af69a95430b2b6894a5d51aaa1183b30e9f07128b1` |
| 8 | `instance` | [Map.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-institerator--bc9aeb54dbc1f20ab3b7df8e.md) | 166 | `declaration-track:bc9aeb54dbc1f20ab3b7df8efa0a66069c6fc8524cafae3670f31a93e27c699e` |
| 9 | `theorem` | [Map.instIterator_eq_filterMapInstIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-institerator-eq-filtermapinstiterator--7afa7e6542ec3ef0bd22bea0.md) | 171 | `result-track:7afa7e6542ec3ef0bd22bea000b8b4ec902d1d76becf7a1a228ef24f4189dbf8` |
| 10 | `def` | [FilterMap.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap-instfinitenessrelation--3f9541a20844512c0f5d5caa.md) | 178 | `declaration-track:3f9541a20844512c0f5d5caa90e6ecbc6845e656fdd8cee7de284dc747303c79` |
| 11 | `instance` | [FilterMap.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap-instfinite--184b90ebd14d3bd3d61e8edf.md) | 199 | `declaration-track:184b90ebd14d3bd3d61e8edfa31e2461ff41bef8edbf1be25752e946cc26a35b` |
| 12 | `instance` | [Map.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-instfinite--d93a3f093cd025476bf457ff.md) | 204 | `declaration-track:d93a3f093cd025476bf457ffefc169ea2bf73cfec8fc9263c88dfb2f2072d306` |
| 13 | `def` | [Map.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-instproductivenessrelation--ffa15828be2787a99da2a71b.md) | 209 | `declaration-track:ffa15828be2787a99da2a71b34d2f095a19bcda431b350d4706f629b82c9ba14` |
| 14 | `instance` | [Map.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-instproductive--6dd760e6c3e1800dc83241b5.md) | 222 | `declaration-track:6dd760e6c3e1800dc83241b546be0c5db1166197a72cbb404dcf040cf32754f5` |
| 15 | `instance` | [FilterMap.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/filtermap-institeratorloop--63530827c10c975aa5efddec.md) | 228 | `declaration-track:63530827c10c975aa5efddec1bc99c940cbbf58dac9c90083632d2a8c4d21799` |
| 16 | `instance` | [Map.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/map-institeratorloop--892439f2d4ad3a6edede9c6f.md) | 235 | `declaration-track:892439f2d4ad3a6edede9c6f111c3ae1c88c59753f37796a9be925d9f9f99b0d` |
| 17 | `def` | [IterM.mapWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-mapwithpostcondition--5d46f25b89be8199b4677762.md) | 285 | `declaration-track:5d46f25b89be8199b467776291637eb0aaa101aaafb3090b40b4816dca2ae143` |
| 18 | `def` | [IterM.filterWithPostcondition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filterwithpostcondition--7624257bdd3143821f36d27d.md) | 332 | `declaration-track:7624257bdd3143821f36d27d55acc7332d78323151adb2590d53483a8da57a9a` |
| 19 | `def` | [IterM.filterMapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filtermapm--a4231e9d84146ca72b68b737.md) | 374 | `declaration-track:a4231e9d84146ca72b68b7370108cc5f4603e20892524397fb1bec70cccf6dd9` |
| 20 | `def` | [IterM.mapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-mapm--edf76adc7dc04a77b715f83e.md) | 412 | `declaration-track:edf76adc7dc04a77b715f83ee5128559f0e465b77a779323933fdeaeec1404a6` |
| 21 | `def` | [IterM.filterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filterm--75ca03e81d7276ec8ff8b94b.md) | 449 | `declaration-track:75ca03e81d7276ec8ff8b94bc544443005c837d26287f3cecf2020783b5f24d0` |
| 22 | `def` | [IterM.filterMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filtermap--d0240df2a09cacf66a5762be.md) | 486 | `declaration-track:d0240df2a09cacf66a5762bebb79d4bff940177f4b30567ef03300e8900306a2` |
| 23 | `def` | [IterM.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-map--7ae362c681ff764ef5251d12.md) | 515 | `declaration-track:7ae362c681ff764ef5251d12f97db5a64c9b08f083060b7e0839e6e95ac0bf26` |
| 24 | `def` | [IterM.filter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/declarations/iterm-filter--ca9623205a040c2c742decdc.md) | 550 | `declaration-track:ca9623205a040c2c742decdcd6811369fbc77b6c39031556ad461bb8175bac72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

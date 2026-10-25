# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MethodSpecs.Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5a044e7073f881a2d20758520c8f8cd6268d57f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5a044e7073f881a2d20758520c8f8cd6268d57f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Structure` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MethodSpecTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/methodspectheorem--9c07fdcfb40682a7ee262240.md) | 15 | `declaration-track:9c07fdcfb40682a7ee2622401846b870ee59692eadd59138d0876de32471cc83` |
| 2 | `structure` | [MethodSpecsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/methodspecsinfo--46f8a939e33df4445947c28a.md) | 22 | `declaration-track:46f8a939e33df4445947c28a922307822037929a0ded458cf4d55e300a603fdb` |
| 3 | `def` | [getMethodSpecsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/getmethodspecsinfo--f27263bae50ea28d32470017.md) | 36 | `declaration-track:f27263bae50ea28d32470017bedaf881f36fcba284ce10e6faad45709b487a49` |
| 4 | `structure` | [MethodSpecsAttrData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/methodspecsattrdata--80019159078b18dcc8625241.md) | 89 | `declaration-track:80019159078b18dcc8625241b9a1b3eb3f5e07efc5197d27044db4ee1cfc1f5f` |
| 5 | `def` | [getParam](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/getparam--29a6c087e0928c8b02ce5e0f.md) | 95 | `declaration-track:29a6c087e0928c8b02ce5e0fa835e17f4c32d81d9e60495a72a9001d0c4d53c1` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/builtin-initialize--e31276317f83a7987a329a13.md) | 115 | `declaration-track:e31276317f83a7987a329a13d3dbe12bc9f4ec47da2666430d72121839692837` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/builtin-initialize--2d63a69d08d493e06179822f.md) | 122 | `declaration-track:2d63a69d08d493e06179822f496416cf2db02fa8618bc0aba16283942a50a2ea` |
| 8 | `def` | [mkSpecTheoremName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/mkspectheoremname--341a53755388efbcdebebd6f.md) | 126 | `declaration-track:341a53755388efbcdebebd6fb687fdb3950c830bb8959c91d6aeae094125f558` |
| 9 | `def` | [startsWithFollowedByNumber](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/startswithfollowedbynumber--accb91bc4a5c8f6b618ae915.md) | 130 | `declaration-track:accb91bc4a5c8f6b618ae915754452598d0e165263e5351e021a027039854342` |
| 10 | `def` | [isSpecThmLikeSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/isspecthmlikesuffix--9b467ec5ea2687802180934d.md) | 133 | `declaration-track:9b467ec5ea2687802180934d995732c019560ac80c90bf2f02e625cc213339eb` |
| 11 | `def` | [isSpecThmNameFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/isspecthmnamefor--8f1699902fa1d0050843946d.md) | 141 | `declaration-track:8f1699902fa1d0050843946d663eefd35b229325cb55267513dc08a9c8776c49` |
| 12 | `def` | [rewriteThm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/rewritethm--988aaa8b7e736b08e58652c3.md) | 151 | `declaration-track:988aaa8b7e736b08e58652c3aa139da84f3fadfcb774b5c421b362b7313fffb3` |
| 13 | `def` | [genSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/genspecs--d8658723bfefc83ae0ad9bb7.md) | 165 | `declaration-track:d8658723bfefc83ae0ad9bb7ef6d4800ab046ab08b805e6bf32b44df99e1aaf4` |
| 14 | `def` | [getMethodSpecTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/getmethodspectheorem--7827d08817f98a3f00520729.md) | 196 | `declaration-track:7827d08817f98a3f0052072993ef1dd96ceb1e22f07dd2a1c32fc85701f52e08` |
| 15 | `def` | [getMethodSpecTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/getmethodspectheorems--c32de11f1bd7e0238e735df0.md) | 202 | `declaration-track:c32de11f1bd7e0238e735df094c68cb119f8820a9635dfa0191f679e929675b7` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/builtin-initialize--4e1453cd389244a29cca2bc5.md) | 220 | `declaration-track:4e1453cd389244a29cca2bc582185ce968831017e9a5063e70b365a273e3c070` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MethodSpecs/Variant3d9bb268f733ecbd2cab1905489f1494ef54001be568fc7390336e9d7dc26a32.lean/declarations/builtin-initialize--93094e599298be7dc6541d20.md) | 230 | `declaration-track:93094e599298be7dc6541d206907e48780a8e91c0c1abaeefaad421895690a93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

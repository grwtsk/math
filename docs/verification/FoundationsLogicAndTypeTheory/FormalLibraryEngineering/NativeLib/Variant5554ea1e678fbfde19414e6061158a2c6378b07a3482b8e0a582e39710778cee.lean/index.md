# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NativeLib.Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ed2cdaafed37f8b28524b09a55835f1f4ce69d6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ed2cdaafed37f8b28524b09a55835f1f4ce69d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString.Macro` — import line 10; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sharedLibExt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/declarations/sharedlibext--e23573fae3a6428757bc2474.md) | 17 | `declaration-track:e23573fae3a6428757bc2474c8989082527056eccd7e2e5ebd22715070785a5a` |
| 2 | `def` | [nameToStaticLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/declarations/nametostaticlib--6f7f14c0cccd75a4abbe3479.md) | 23 | `declaration-track:6f7f14c0cccd75a4abbe3479073f4f6e218c1c5f8cd3a11cca41293fbd4d19db` |
| 3 | `def` | [nameToSharedLib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/declarations/nametosharedlib--1ebd4ab1ad198939c1b21c4d.md) | 27 | `declaration-track:1ebd4ab1ad198939c1b21c4dfe9ad829a1919b77f21af336dfcdfad15a2292b6` |
| 4 | `def` | [sharedLibPathEnvVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/declarations/sharedlibpathenvvar--a2a09276b196e89e380b0c20.md) | 35 | `declaration-track:a2a09276b196e89e380b0c205a063c595489526369a443a3c30bd58374f87d56` |
| 5 | `def` | [getSearchPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NativeLib/Variant5554ea1e678fbfde19414e6061158a2c6378b07a3482b8e0a582e39710778cee.lean/declarations/getsearchpath--739b7dfb1ac1c473b5321191.md) | 44 | `declaration-track:739b7dfb1ac1c473b53211918b39f7c91106a4e6448cbd379ad50f4ad45e9858` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

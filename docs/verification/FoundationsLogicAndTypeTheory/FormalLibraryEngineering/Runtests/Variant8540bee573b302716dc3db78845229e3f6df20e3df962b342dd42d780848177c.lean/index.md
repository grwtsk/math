# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Runtests.Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d722fc8813cbc5db1f07f841def34b7a6027b6b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d722fc8813cbc5db1f07f841def34b7a6027b6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TestConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/testconfig--4232b941020007b6cbd0a368.md) | 26 | `declaration-track:4232b941020007b6cbd0a368bd3d9e08ef4a05107fb54fc7e1192e44533655c1` |
| 2 | `inductive` | [TestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/testresult--0a3ee627db002b3766fabd5c.md) | 30 | `declaration-track:0a3ee627db002b3766fabd5cd34fe56dcfcf6f9e3d6f5f713f1aad1c6c3b6581` |
| 3 | `def` | [copyFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/copyfile--1ead379c74352f6a6aaf52a2.md) | 35 | `declaration-track:1ead379c74352f6a6aaf52a24374d88d0c028d94a7a5fa2ba87c172c7243e622` |
| 4 | `def` | [copyDirContents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/copydircontents--1fff974a6dce1a104245f629.md) | 39 | `declaration-track:1fff974a6dce1a104245f6293acdecad1631e00fa464db3ea8ba451ed6b8eeb0` |
| 5 | `def` | [createAdditionalFiles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/createadditionalfiles--46e9159783d3d4bae2615684.md) | 52 | `declaration-track:46e9159783d3d4bae2615684641263c0fb203f577bf1fd76952ecf44ecfbff8b` |
| 6 | `def` | [runCommandInDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/runcommandindir--e8c86c68df8de5433505c779.md) | 68 | `declaration-track:e8c86c68df8de5433505c7790205b7eebd039b3f0491224f0cff81fd757baa5b` |
| 7 | `def` | [readTestConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/readtestconfig--9167edbe70f42ea68ed7599d.md) | 77 | `declaration-track:9167edbe70f42ea68ed7599d4e0e256a1821d8ee393f9a0b997524d88acf4aa5` |
| 8 | `def` | [getTempDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/gettempdir--0945be46ea27fdd9c879d8d3.md) | 86 | `declaration-track:0945be46ea27fdd9c879d8d3ce1afc31c49601db72d7dd459cf4b72d72aad01a` |
| 9 | `def` | [runTestProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/runtestproject--769ca9af5b8e3015928d572a.md) | 89 | `declaration-track:769ca9af5b8e3015928d572ab72241625a253c9f50f2e7aa275a612de00778f5` |
| 10 | `def` | [findProjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/findprojects--ba09ec642365fc25901ea621.md) | 122 | `declaration-track:ba09ec642365fc25901ea62136800884c404a1ac70ef48f0ea18042ba4e318ea` |
| 11 | `def` | [printTestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/printtestresult--551c848c85c31db26fed43a5.md) | 134 | `declaration-track:551c848c85c31db26fed43a52a3f96a85f0e1ba9d8765f2a99cb2406319bcbd5` |
| 12 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variant8540bee573b302716dc3db78845229e3f6df20e3df962b342dd42d780848177c.lean/declarations/main--107047373bbe4fca2be3e973.md) | 145 | `declaration-track:107047373bbe4fca2be3e97314650d10a0c420f100238a6736badb2942c55439` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

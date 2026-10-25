# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "102f398c4acf79edd613d0e34c2be52f84cd8970",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `102f398c4acf79edd613d0e34c2be52f84cd8970`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ImportGraph.CurrentModule` — import line 6; external provider; requires a separately pinned dependency.
- `ImportGraph.Imports` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Util.FormatTable` — import line 9; external provider; requires a separately pinned dependency.
- `Cli` — import line 10; external provider; requires a separately pinned dependency.
- `LongestPole.SpeedCenterJson` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/runcmd--d4038f87248119bcff69c585.md) | 24 | `declaration-track:d4038f87248119bcff69c5852ca54fba7a521cb51d3e99b02dc1ec8c613d24f9` |
| 2 | `def` | [runCurl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/runcurl--aaf7ad744820118a93f27b26.md) | 29 | `declaration-track:aaf7ad744820118a93f27b26fccc7a21546380322ab77f42efd5fbc27ed515c3` |
| 3 | `def` | [mathlib4RepoId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/mathlib4repoid--ef1259aed3efe26da4bbed17.md) | 32 | `declaration-track:ef1259aed3efe26da4bbed1710da682fc219e496063b2181d04b927f92344b71` |
| 4 | `def` | [runJson](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/runjson--f0ae4855d194f389273a5e8b.md) | 36 | `declaration-track:f0ae4855d194f389273a5e8b0495bf0560c44abddfa8c0aa8c0a74fff8e9e9e6` |
| 5 | `def` | [getRunResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/getrunresponse--38e67129054324ecc71d325d.md) | 39 | `declaration-track:38e67129054324ecc71d325d8890d3f0e64dcf585290bcf36f9373766e32e89c` |
| 6 | `def` | [RunResponse.instructions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/runresponse-instructions--2e6167006368d193c3dff207.md) | 52 | `declaration-track:2e6167006368d193c3dff207fb127e6cb2d5b13d6b45acffd52a655f36ee019c` |
| 7 | `def` | [instructions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/instructions--721649e0d2c291835b1176fe.md) | 61 | `declaration-track:721649e0d2c291835b1176fe113a92bef396576acac18937807b599ba7eb3944` |
| 8 | `def` | [headSha](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/headsha--e4967244ad9cf113ee82fa36.md) | 66 | `declaration-track:e4967244ad9cf113ee82fa3675d138a73d482eedcca95f03c2b3e729b62ed275` |
| 9 | `def` | [cumulativeInstructions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/cumulativeinstructions--cb1da4010fbbcfa5e0dc3e53.md) | 71 | `declaration-track:cb1da4010fbbcfa5e0dc3e53548222219932748267ed73f830eba9c972fc476c` |
| 10 | `def` | [slowestParents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/slowestparents--c4d69323c6631c830cd80900.md) | 90 | `declaration-track:c4d69323c6631c830cd80900d1e200c37249147be9f97ccbfee3ae564e4d5248` |
| 11 | `def` | [totalInstructions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/totalinstructions--37b8f358f03b2c86f369fb83.md) | 107 | `declaration-track:37b8f358f03b2c86f369fb837a3a1342e6d75121cc38e59b681aa9ac70e2a98e` |
| 12 | `def` | [Float.toStringDecimals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/float-tostringdecimals--de0273ee3b51713f86529f89.md) | 115 | `declaration-track:de0273ee3b51713f86529f893a62fa19a8db51333bbd1f56dba9f6a779283800` |
| 13 | `def` | [countLOC](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/countloc--e759922c6fcc680d3687a178.md) | 123 | `declaration-track:e759922c6fcc680d3687a1784e7f2834f8a725261b9db50f802b848369dd4786` |
| 14 | `def` | [longestPoleCLI](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/longestpolecli--a38859123eed6c33890c9249.md) | 133 | `declaration-track:a38859123eed6c33890c9249f6cceaeaac0cff1a76bd972e816f3cef9ccebceb` |
| 15 | `def` | [pole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/pole--11bedabf6d7e736927eece3e.md) | 169 | `declaration-track:11bedabf6d7e736927eece3e33b8498a5b8cb24f1cdfe5011003dff300f97f8f` |
| 16 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0f66b0c9b291b79e18e2014932421f0b10e9b836eab96001797785bd4721b64e.lean/declarations/main--859a3442f9a9d04f2afe6f20.md) | 183 | `declaration-track:859a3442f9a9d04f2afe6f208d9ea0c5d95a5fc425d3a9796019aae0e231a115` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

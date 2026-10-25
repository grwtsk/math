# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintSimpNFRespectTransparency.Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a24360a7510d1d50c0e6ff81117679a8fe49269c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a24360a7510d1d50c0e6ff81117679a8fe49269c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MyClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/declarations/myclass--3376663d2c031f799c093558.md) | 19 | `declaration-track:3376663d2c031f799c0935581428be8d4d310e6041fe44ed947862780de12872` |
| 2 | `structure` | [Bundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/declarations/bundle--b211d1bf2439f30181e61051.md) | 22 | `declaration-track:b211d1bf2439f30181e610514a13741c9e41a6c0c5b510eff754c8b21c4fea3e` |
| 3 | `def` | [Bundle.of](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/declarations/bundle-of--d9b9fc89be4a155f8459cc69.md) | 28 | `declaration-track:d9b9fc89be4a155f8459cc696fc0f786e4e9312975d56f5b8b06a1a1c39f06a3` |
| 4 | `theorem` | [Bundle.of_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/declarations/bundle-of-carrier--e1a337586d66ec103f184422.md) | 32 | `result-track:e1a337586d66ec103f184422d5174addfbeac252e7f781436b307cfebf6392ba` |
| 5 | `theorem` | [Bundle.of_op](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintSimpNFRespectTransparency/Variantee4e7bc3d4c8113d0f7b2da3ee022029f1aa9e5b1282b515c1ac39ca96850d72.lean/declarations/bundle-of-op--ccfe810b852b09d057492aa9.md) | 35 | `result-track:ccfe810b852b09d057492aa9d268e14a5c06b89cadc9a568ceedb08c6646fe49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

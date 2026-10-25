# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6632dcda14d3038e5ba16cca9b9c8de50b7889f8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6632dcda14d3038e5ba16cca9b9c8de50b7889f8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.PropLemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray--f2d1ebc7ee75646585a42a43.md) | 41 | `declaration-track:f2d1ebc7ee75646585a42a43c693d9bfe4108146a94259e44ececb44b14efd1c` |
| 2 | `abbrev` | [RArray.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray-get--db7341d4b4e00d3469b13ca3.md) | 48 | `declaration-track:db7341d4b4e00d3469b13ca3d06cb59b8a08e982ec5f94d6b639f5530fe82f45` |
| 3 | `theorem` | [RArray.get_eq_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray-get-eq-def--66fb0df3072703147d6e20d6.md) | 51 | `result-track:66fb0df3072703147d6e20d67e5afb57a376239e4db6b67eb8bb4db3fcba35de` |
| 4 | `def` | [RArray.getImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray-getimpl--305cf39bb52c8ede56a54739.md) | 59 | `declaration-track:305cf39bb52c8ede56a5473925d13f27eab0f5c542a3014225ca129aea7e38e9` |
| 5 | `theorem` | [RArray.get_eq_getImpl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray-get-eq-getimpl--c4afd65ec0c2d4aff1837cee.md) | 65 | `result-track:c4afd65ec0c2d4aff1837cee9410ac991a3373953ccb51923907f8bb0424e3ba` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/instance--09ff2e22d030f7b25dd9587d.md) | 74 | `declaration-track:09ff2e22d030f7b25dd9587d0ea71cffb75b7ca5401bd57b22a33c23aea3896a` |
| 7 | `def` | [RArray.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Varianta3535a321db7cc92d6852be47ea9f9077361a76e47d4a654fe61623286cdf526.lean/declarations/rarray-size--1f9e77c701fc04d3da487253.md) | 77 | `declaration-track:1f9e77c701fc04d3da48725339d8006b769f9c22d639351a88cf1b2562c18119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

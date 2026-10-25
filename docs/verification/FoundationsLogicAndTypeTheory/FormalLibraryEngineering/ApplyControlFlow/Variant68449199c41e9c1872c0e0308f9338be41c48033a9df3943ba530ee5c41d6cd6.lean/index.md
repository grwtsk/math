# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyControlFlow.Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85832ac460ae1baa58c816b019903544b29a22c2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85832ac460ae1baa58c816b019903544b29a22c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [applyIteSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/declarations/applyitesimproc--548fa737cd2cc68209b14761.md) | 29 | `declaration-track:548fa737cd2cc68209b1476188c57e3d992aab13e84e4496bbd8ecec47b05d5f` |
| 2 | `def` | [applyCondSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/declarations/applycondsimproc--1d896cbdfb96566795fdb4a4.md) | 42 | `declaration-track:1d896cbdfb96566795fdb4a4db78e5f9c4e7f41a232e84b01f35b2e5b6f6ad43` |
| 3 | `def` | [mkApplyProjControlDiscrPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/declarations/mkapplyprojcontroldiscrpath--bf9497cdabf8dea0ab0bd521.md) | 59 | `declaration-track:bf9497cdabf8dea0ab0bd521a8262b0483cd56c10e7619db2a8ec9f19978c75d` |
| 4 | `def` | [mkApplyUnaryControlDiscrPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyControlFlow/Variant68449199c41e9c1872c0e0308f9338be41c48033a9df3943ba530ee5c41d6cd6.lean/declarations/mkapplyunarycontroldiscrpath--1c4f3e2e4bde67545cb1edbc.md) | 73 | `declaration-track:1c4f3e2e4bde67545cb1edbc927328c9c947efebb3c0a2c64c30689f491d9c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

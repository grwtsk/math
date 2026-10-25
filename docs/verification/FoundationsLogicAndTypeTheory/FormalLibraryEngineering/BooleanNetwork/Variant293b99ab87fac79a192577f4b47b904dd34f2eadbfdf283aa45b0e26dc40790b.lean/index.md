# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BooleanNetwork.Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d43c8f41aa291d160f974ffb57873c93056c245",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d43c8f41aa291d160f974ffb57873c93056c245`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Boolean.Cube.Hypercube` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.Network](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/declarations/booleannetwork-network--7a4e1d8ca5c51c8554c1e10c.md) | 6 | `declaration-track:7a4e1d8ca5c51c8554c1e10c983ec21804dfb6e46acd7d1d290ce17fabeb793c` |
| 2 | `def` | [BooleanNetwork.iterate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/declarations/booleannetwork-iterate--c1b4e3f9c162ce32be378179.md) | 10 | `declaration-track:c1b4e3f9c162ce32be378179cc26aab57af1c53c0f31d9989a14bc480094d233` |
| 3 | `def` | [BooleanNetwork.transitionMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/declarations/booleannetwork-transitionmatrix--f22c2e7c8eda969866835dbb.md) | 21 | `declaration-track:f22c2e7c8eda969866835dbb3a4a7ad7562026c5ce7c568f3aafeeb2c6febc59` |
| 4 | `def` | [BooleanNetwork.dependsOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/declarations/booleannetwork-dependson--900885cd4b23911e4ffe3810.md) | 34 | `declaration-track:900885cd4b23911e4ffe381028daf53c05446f2762819b4140385709c61298eb` |
| 5 | `def` | [BooleanNetwork.dependencyMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BooleanNetwork/Variant293b99ab87fac79a192577f4b47b904dd34f2eadbfdf283aa45b0e26dc40790b.lean/declarations/booleannetwork-dependencymatrix--02779de52cf5601f8734ce74.md) | 51 | `declaration-track:02779de52cf5601f8734ce741282ee61a6ff18dce645b33d1f77cf0bbcfc30d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

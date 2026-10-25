# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunningStats.Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d802b9793cac9bad077744ed92ab0635219e7211",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d802b9793cac9bad077744ed92ab0635219e7211`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RunningStats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/runningstats--6f689cab85d5858071d2f66a.md) | 47 | `declaration-track:6f689cab85d5858071d2f66a10b459a072811a4b40ce81a270a8aeec3604cf3b` |
| 2 | `def` | [push](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/push--f2e0e66ec15ad1178fb2c43f.md) | 61 | `declaration-track:f2e0e66ec15ad1178fb2c43f21e80445f6c023c3622d66f7fca2db9b61bc6df9` |
| 3 | `def` | [variance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/variance--bbceb0a376fcbac4cb1669ef.md) | 69 | `declaration-track:bbceb0a376fcbac4cb1669ef47f4de5d3017bcc3f043aa872a5394449abe95b3` |
| 4 | `def` | [sampleVariance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/samplevariance--40bc4cfda420c6634005a46b.md) | 74 | `declaration-track:40bc4cfda420c6634005a46b0cc6adc3c1dae1d8e281dbf3e1df79ecb2a5409f` |
| 5 | `def` | [standardDeviation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/standarddeviation--b2b24c6ee34ebd9bb872e008.md) | 79 | `declaration-track:b2b24c6ee34ebd9bb872e0082ee4f34cf9652752897dafde35695122214f80c2` |
| 6 | `def` | [sampleStandardDeviation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variantcd88cef02e5dbc89c350ba3a1f3d89462a64c7da5bca16abbecbae4a2668995c.lean/declarations/samplestandarddeviation--00f3af9833c5639bb961208a.md) | 84 | `declaration-track:00f3af9833c5639bb961208a7880691afb58eccacc8f53c6ad68abcf77fa3894` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

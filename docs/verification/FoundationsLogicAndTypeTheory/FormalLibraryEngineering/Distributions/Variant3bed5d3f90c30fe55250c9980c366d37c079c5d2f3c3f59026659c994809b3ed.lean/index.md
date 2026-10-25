# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Distributions.Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17644f61957bee1fd7b074e764546d2151cae7be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17644f61957bee1fd7b074e764546d2151cae7be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TestFunctions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHSpectralDistribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/declarations/rhspectraldistribution--13d2fcd3f6ec147a794caa69.md) | 29 | `declaration-track:13d2fcd3f6ec147a794caa69dee0b91184108a302721353de4ab766b64686245` |
| 2 | `structure` | [RHIndexDistribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/declarations/rhindexdistribution--3ac183f7c1a8c25d7d039f9c.md) | 37 | `declaration-track:3ac183f7c1a8c25d7d039f9cbcf9303ff489942e62f92f0c433f62bfeab827b2` |
| 3 | `structure` | [TracePairing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/declarations/tracepairing--386c346d04ca2fbbb047b9cf.md) | 45 | `declaration-track:386c346d04ca2fbbb047b9cf8fffcc65207fedead2e556fa55121cc6ec472142` |
| 4 | `theorem` | [trace_pairing_has_spectral_distribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/declarations/trace-pairing-has-spectral-distribution--f9ab0bead0de53c1f989bf85.md) | 50 | `result-track:f9ab0bead0de53c1f989bf8571aad1716bc50df82164410fd6ed77ff68214971` |
| 5 | `theorem` | [trace_pairing_has_index_distribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant3bed5d3f90c30fe55250c9980c366d37c079c5d2f3c3f59026659c994809b3ed.lean/declarations/trace-pairing-has-index-distribution--3e110025be41e6af2362da94.md) | 55 | `result-track:3e110025be41e6af2362da94aa6152414ab65201fd07120c496730e0b4f238b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Distributions.Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92c94f83576005471ef1a3ef03a947faa3f2d052",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92c94f83576005471ef1a3ef03a947faa3f2d052`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.RH.TestFunctions` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RHSpectralDistribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/declarations/rhspectraldistribution--7bf04d1aa90382cd502a83fd.md) | 21 | `declaration-track:7bf04d1aa90382cd502a83fd4d6502e439bdbbfa7847f59e70505bb5a83aa3bf` |
| 2 | `structure` | [RHIndexDistribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/declarations/rhindexdistribution--b5a9953cbfaf8755653629f5.md) | 29 | `declaration-track:b5a9953cbfaf8755653629f57e3c524563114ce2e86c5ddc9d301381c0aff569` |
| 3 | `structure` | [TracePairing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/declarations/tracepairing--c48b9b910b101581742e713a.md) | 37 | `declaration-track:c48b9b910b101581742e713a754fae0be6e6343f42e183caa465e30621b0491f` |
| 4 | `theorem` | [trace_pairing_has_spectral_distribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/declarations/trace-pairing-has-spectral-distribution--b66af478cbef722ce7d67107.md) | 42 | `result-track:b66af478cbef722ce7d67107a5e41e262ed98954a48b4ed5ecfc726355958525` |
| 5 | `theorem` | [trace_pairing_has_index_distribution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Distributions/Variant0cd0ebb6a9c128a79b764baabf753f701878ee339eba4d41af62e79acf345a01.lean/declarations/trace-pairing-has-index-distribution--13c4e539b4bdc123343828cf.md) | 47 | `result-track:13c4e539b4bdc123343828cf4df550e375d7f5e01d6f3df6d5881bac12784483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

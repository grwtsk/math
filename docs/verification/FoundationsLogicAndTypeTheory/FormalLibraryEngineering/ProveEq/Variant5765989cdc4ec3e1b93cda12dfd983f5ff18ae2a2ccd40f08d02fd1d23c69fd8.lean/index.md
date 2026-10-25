# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProveEq.Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ensureInternalized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/ensureinternalized--3d322b14c84571f483802c44.md) | 19 | `declaration-track:3d322b14c84571f483802c4416640e1455c8aefe02b995eac6bd0c0237c4e57b` |
| 2 | `structure` | [AbstractM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/abstractm-context--76aa8663ae31247958abe561.md) | 64 | `declaration-track:76aa8663ae31247958abe56163172d41ccf6b467bcf71cf753dc26515033bf9f` |
| 3 | `structure` | [AbstractM.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/abstractm-state--a1f687431d1be2fcedaa414c.md) | 69 | `declaration-track:a1f687431d1be2fcedaa414cb1a1a7a3d74919cbac9232d73da2188497964fce` |
| 4 | `abbrev` | [AbstractM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/abstractm--0f4bdd94d1d5f727b7d075ea.md) | 79 | `declaration-track:0f4bdd94d1d5f727b7d075eae367fa288762fce1d56d4de7abb64d649bd33855` |
| 5 | `def` | [inBinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/inbinder--1bfe229a4aebf6db0108e919.md) | 82 | `declaration-track:1bfe229a4aebf6db0108e91933e461da951f6f77324e3d85ecc03b2a2e7d0faa` |
| 6 | `abbrev` | [withIncOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/withincoffset--7dcb0ec4185b86a331f8919f.md) | 86 | `declaration-track:7dcb0ec4185b86a331f8919f50856b609c2090b92d3c1e2b9709358d3f10f278` |
| 7 | `def` | [mkLambdaWithBodyAndVarType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/mklambdawithbodyandvartype--b9ef167b097adc50249c82b7.md) | 93 | `declaration-track:b9ef167b097adc50249c82b7eaee5e1cf14020b0d58b0baaba3ae25bb4d6cf98` |
| 8 | `def` | [abstractGroundMismatches?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/abstractgroundmismatches--aa42486aad22cb2f03c07303.md) | 108 | `declaration-track:aa42486aad22cb2f03c073039e6cac3900138b1d1bd22146cfe75a13e3372040` |
| 9 | `def` | [proveEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/proveeq--91c9e846b1afc9f1724c677a.md) | 182 | `declaration-track:91c9e846b1afc9f1724c677a0505bdf4b49c06cbff32dcb9fbbc6b4bfa14a858` |
| 10 | `def` | [proveHEq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/declarations/proveheq--9c2fd52b49b8afc48d96e232.md) | 222 | `declaration-track:9c2fd52b49b8afc48d96e23270f0d42e8867a4c6fe6a15213c3981982e84c918` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

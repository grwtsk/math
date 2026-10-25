# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cache.Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e12b42490213aa7a866dab137569b8593d5af83",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e12b42490213aa7a866dab137569b8593d5af83`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Meta.DiscrTree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/cache--c32e0c6bd5fe9189e9eb86cd.md) | 39 | `declaration-track:c32e0c6bd5fe9189e9eb86cdb60e86465efaaccef366d958c4a3ae1cef0ce19d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/instance--102e04861514ad8562e7c5fa.md) | 44 | `declaration-track:102e04861514ad8562e7c5fa04f78153ac4ae8c6d0202fec8107feb354b7fc93` |
| 3 | `def` | [Cache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/cache-mk--fab5ebfc7a33595b823b282f.md) | 47 | `declaration-track:fab5ebfc7a33595b823b282f84c97e5112410b151c837660e0007f8f057eda16` |
| 4 | `def` | [Cache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/cache-get--cf4575e5733b926bd5d1cfa7.md) | 53 | `declaration-track:cf4575e5733b926bd5d1cfa777c4766ae7f50e76ea746e5edd77bf50ab3b937e` |
| 5 | `structure` | [DeclCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/declcache--fc97994cf05e6a285b1fc044.md) | 79 | `declaration-track:fc97994cf05e6a285b1fc0440327e692477e0de53558626ade875441368473a6` |
| 6 | `def` | [DeclCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/declcache-mk--4d2f3ffa2b0cd2fad816eb2f.md) | 96 | `declaration-track:4d2f3ffa2b0cd2fad816eb2fee84a54bb3888984644492abbfaf248923f2fca5` |
| 7 | `def` | [DeclCache.get](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/declcache-get--3436bd1d55dca3dd9af3c80b.md) | 110 | `declaration-track:3436bd1d55dca3dd9af3c80b4e814be34bd44b939b80da02b908ce0ffc1288a9` |
| 8 | `def` | [DiscrTreeCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/discrtreecache--825d35b996563b1ab153af3d.md) | 119 | `declaration-track:825d35b996563b1ab153af3d0052d7868c5e00ab37555795d5c0a83aca747f34` |
| 9 | `def` | [DiscrTreeCache.config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/discrtreecache-config--ad90af40983014af3b0cdd8e.md) | 122 | `declaration-track:ad90af40983014af3b0cdd8eb94aa535720d460c8a24265a58b22f9beed7483e` |
| 10 | `def` | [DiscrTreeCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/discrtreecache-mk--63d3421ca5af416c12177ea6.md) | 128 | `declaration-track:63d3421ca5af416c12177ea6fd5a1f62a9b3e1976b26024ad70f3db803c3caa7` |
| 11 | `def` | [DiscrTreeCache.getMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variantef724345ec6a5b34f3fd44ff49cb427c9ea2ee9ea1b85611872f791b81efb835.lean/declarations/discrtreecache-getmatch--103f2c05b4ffb1a9df1e0837.md) | 156 | `declaration-track:103f2c05b4ffb1a9df1e0837fe74e8a590494ae0bcfb0aeb5f9a6db4440caec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

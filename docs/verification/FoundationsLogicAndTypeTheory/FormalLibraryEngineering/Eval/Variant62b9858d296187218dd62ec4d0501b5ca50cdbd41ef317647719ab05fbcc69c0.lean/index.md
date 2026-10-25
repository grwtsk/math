# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eval.Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f00aa62ecc536531aade48e010031ba2d7a6900",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f00aa62ecc536531aade48e010031ba2d7a6900`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.DocString` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.DSL.AttributesCore` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unsafeEvalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/unsafeevalconstcheck--01ed2efaf5869eb5195d3e2e.md) | 25 | `declaration-track:01ed2efaf5869eb5195d3e2ee24c305f8fb7851954948f00f8b851d37afa05b4` |
| 2 | `opaque` | [evalConstCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/evalconstcheck--4b094ce8d9bcce01a2f4abea.md) | 47 | `declaration-track:4b094ce8d9bcce01a2f4abea302b9cbe576d0ec25f033a7a9687e804195d4e63` |
| 3 | `def` | [mkDTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/mkdtagmap--e090cfb9053ac344530f2e71.md) | 52 | `declaration-track:e090cfb9053ac344530f2e712c6a0e2649b37214645c5281c0238e354666b99a` |
| 4 | `def` | [mkTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/mktagmap--2cfe8faee40788d7b21b6d89.md) | 61 | `declaration-track:2cfe8faee40788d7b21b6d8972f7e1ad6cd5ba4c6f966e8196a859ac6466a53a` |
| 5 | `def` | [mkOrdTagMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/mkordtagmap--7c54320296a9f59bb0a88b57.md) | 70 | `declaration-track:7c54320296a9f59bb0a88b577d8ec7323b1edc39d9683393012d0291c2018892` |
| 6 | `def` | [PackageDecl.loadFromEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/packagedecl-loadfromenv--821ac6e609b077499d433611.md) | 79 | `declaration-track:821ac6e609b077499d43361172db712eb4cebf16684f9213536eeea4a80cc6a5` |
| 7 | `def` | [LakefileConfig.loadFromEnv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eval/Variant62b9858d296187218dd62ec4d0501b5ca50cdbd41ef317647719ab05fbcc69c0.lean/declarations/lakefileconfig-loadfromenv--5374c4af04dd5f6914eba181.md) | 90 | `declaration-track:5374c4af04dd5f6914eba181b0840eaa53cfdda9bbe5cad8cbe14569ebe7de5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

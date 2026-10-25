# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserCompiler.Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "468bd8aa0f202d4227220ab93afaac0cd7abe3d1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `468bd8aa0f202d4227220ab93afaac0cd7abe3d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/context--a444d193ef57486483a9d787.md) | 33 | `declaration-track:a444d193ef57486483a9d787e23364ee5a3edc5c7b4be71c6ca256b88beb008c` |
| 2 | `def` | [Context.tyName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/context-tyname--a6a1f20bb2675eea2aae0872.md) | 38 | `declaration-track:a6a1f20bb2675eea2aae08728ebfd495bab7e467aa1912d0829296defc22f4fb` |
| 3 | `def` | [replaceParserTy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/replaceparserty--58dacbe4e89cdccd512d58ba.md) | 41 | `declaration-track:58dacbe4e89cdccd512d58baf6a302fb59acc8aeafa45ecc26bdf81948bcf228` |
| 4 | `def` | [parserNodeKind?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/parsernodekind--1727087e962975fef68ec80d.md) | 49 | `declaration-track:1727087e962975fef68ec80d8d9f33effbdfb3ab4556322d3e1fa7728fe7da1f` |
| 5 | `def` | [compileParserExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/compileparserexpr--4a04e80a3be74ce4cef4ef71.md) | 74 | `declaration-track:4a04e80a3be74ce4cef4ef71a350dce5d2c1f7df86549f65cae1b899f19777da` |
| 6 | `def` | [compileEmbeddedParsers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/compileembeddedparsers--a44ddf15519d47fddd6a8a21.md) | 143 | `declaration-track:a44ddf15519d47fddd6a8a2147c3019dd3eddb9f435b7d208c3269c6ad49dfd5` |
| 7 | `def` | [registerParserCompiler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variante8823855c6f90144a303c56b1d027258eaaac6337e43af131c1cca6cd7a4b43f.lean/declarations/registerparsercompiler--d5c0288cbd9ff328818a5ff2.md) | 159 | `declaration-track:d5c0288cbd9ff328818a5ff2311bd120e8e8644b165ee9395f2028bed19cb225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TypeAnalysis.Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isSupportedMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/declarations/issupportedmatch--810ab795d52cf3ff9695e575.md) | 26 | `declaration-track:810ab795d52cf3ff9695e575aeab48f9d401e37e76d4b7e2a86e2982616c45f8` |
| 2 | `def` | [builtinTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/declarations/builtintypes--f6a3998ea95297b73073a99b.md) | 114 | `declaration-track:f6a3998ea95297b73073a99b51f97e79171c57fff5c160e4975fae74b8d179b2` |
| 3 | `def` | [isBuiltIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/declarations/isbuiltin--f9ccba2b2e22d13a96ff40d5.md) | 120 | `declaration-track:f9ccba2b2e22d13a96ff40d509cffc6874e9df4883f7df9f326144dc2e80dd20` |
| 4 | `def` | [addDefaultTypeAnalysisLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/declarations/adddefaulttypeanalysislemmas--84611b6ca8e5ffca8d1e4cb6.md) | 122 | `declaration-track:84611b6ca8e5ffca8d1e4cb62fd9c4faeb180c77e9c378aaf89c3f8c576e6d6f` |
| 5 | `def` | [typeAnalysisPass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/declarations/typeanalysispass--26dd490a767612f8e4f8b9aa.md) | 135 | `declaration-track:26dd490a767612f8e4f8b9aadb87e8c39d471f43b6ca12e9321b13269432a5ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

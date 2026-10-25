# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ErwQuestion.Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57e47d862869fc601ac3d5fcc7abca08df27cb26",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57e47d862869fc601ac3d5fcc7abca08df27cb26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [tactic.erw?.verbose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/tactic-erw-verbose--dd7f20b4aa867402f1947855.md) | 25 | `declaration-track:dd7f20b4aa867402f1947855401539e0322b0c81b1e5e1f30ef9bbeeb8adfcbb` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/syntax--242f135859cc03a38ccfa6b9.md) | 36 | `declaration-track:242f135859cc03a38ccfa6b90c68c1dd4ce3cd9cc2552874c9c8d946895fdc34` |
| 3 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/macro-rules--e490f8fa4e50940af7b8e141.md) | 38 | `declaration-track:e490f8fa4e50940af7b8e141b69e05bf60873e4bf631486b3a5dfeeee3447d56` |
| 4 | `def` | [logDiffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/logdiffs--5b98c77f20a5b8d337cb584f.md) | 48 | `declaration-track:5b98c77f20a5b8d337cb584fb7b13752df7788919d7bfbe2faab5aad0b1f3f3e` |
| 5 | `def` | [extractRewriteEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/extractrewriteeq--3393ace6381f0d66fba2a402.md) | 88 | `declaration-track:3393ace6381f0d66fba2a4026f2af834827d0cc0dc8b1680d75130086f2a0d02` |
| 6 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/declarations/elab-rules--56155e2fac98aa7625da615d.md) | 99 | `declaration-track:56155e2fac98aa7625da615d89ad5564b6ea257a57b7933e1dd47c30cf00a181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ParserCompiler.Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c80c6a996b2e9fc2395475ca8ae8755d34efe8f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c80c6a996b2e9fc2395475ca8ae8755d34efe8f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/context--3c508c1b8030c80d6e975ce5.md) | 25 | `declaration-track:3c508c1b8030c80d6e975ce59bf07e76ab7a96a576e6a319ce09b9c8c8b0036e` |
| 2 | `def` | [Context.tyName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/context-tyname--3125863c37549cd101a4a4ca.md) | 30 | `declaration-track:3125863c37549cd101a4a4ca24adc469c43c71e141e9a83d2c3c5c7e4ea7ab0f` |
| 3 | `def` | [replaceParserTy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/replaceparserty--a4e35f17156ef3062e1e7827.md) | 33 | `declaration-track:a4e35f17156ef3062e1e782786b92dae736675d340396e1787c6add6e197e2f2` |
| 4 | `def` | [parserNodeKind?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/parsernodekind--ab65b3ea789f41dc6e1b0317.md) | 41 | `declaration-track:ab65b3ea789f41dc6e1b0317ed2e7d5ab274d6aee165c4d8e5166cd91676978d` |
| 5 | `def` | [compileParserExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/compileparserexpr--78ec7d3d169748b6ac0bc2b4.md) | 66 | `declaration-track:78ec7d3d169748b6ac0bc2b46773d98c4dc62c3de72e429be0b0612060f6c415` |
| 6 | `def` | [compileEmbeddedParsers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/compileembeddedparsers--263472c1e699a3d5ca3d3bc3.md) | 135 | `declaration-track:263472c1e699a3d5ca3d3bc37ebc49a137cad6a4257d1ea28b04ce15660d6630` |
| 7 | `def` | [registerParserCompiler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParserCompiler/Variant9a55a36641e4f6f68d10217633de217e03ffb0a666cea01581a880ef8cc5fc45.lean/declarations/registerparsercompiler--fae972a030e2b96b94ea7ad1.md) | 151 | `declaration-track:fae972a030e2b96b94ea7ad14505df2eedb2bfd5a1b0b56d268c40998668821c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextBased.Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75dc9ed61b984e5bf8f676826f52a00131c2b42f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [BroadImports](declarations/broadimports--cd71c43cd2bcd075aa3ae701.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [StyleError](declarations/styleerror--72b6eae26f9772da23a670c9.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [ErrorFormat](declarations/errorformat--0a1de3509e2e7be9914fcc84.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [StyleError.errorMessage](declarations/styleerror-errormessage--22a13e18b5b5ec1f957d428f.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [StyleError.errorCode](declarations/styleerror-errorcode--348990e2594f671ce8ebf67e.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ErrorContext](declarations/errorcontext--1dea77bf6240674212af65b5.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [ComparisonResult](declarations/comparisonresult--63bb50780608c10db9f6ca07.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [compare](declarations/compare--2c5d76a882fea0d82243899f.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ErrorContext.find?_comparable](declarations/errorcontext-find-comparable--46dd35f0b280f12c1fb853f7.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [outputMessage](declarations/outputmessage--b26683d08c1a0e13d3344f9e.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parse?_errorContext](declarations/parse-errorcontext--99754c3ac2573af5883a35e1.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [parseStyleExceptions](declarations/parsestyleexceptions--257599a82f259e84a2708903.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [formatErrors](declarations/formaterrors--2ff37ee9c61a121194cc38ed.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [TextbasedLinter](declarations/textbasedlinter--6dc23da86ffd08ed77f83499.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `register_option` | [linter.adaptationNote](declarations/linter-adaptationnote--d062943757cd03181fb9a593.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [adaptationNoteLinter](declarations/adaptationnotelinter--0e5619859a03c6d94a1f45fe.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `register_option` | [linter.trailingWhitespace](declarations/linter-trailingwhitespace--7a5cd0d598eabe1700663bba.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [trailingWhitespaceLinter](declarations/trailingwhitespacelinter--ea882ef2085030c2529d67eb.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `register_option` | [linter.whitespaceBeforeSemicolon](declarations/linter-whitespacebeforesemicolon--5e347190a0df7516af228004.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [semicolonLinter](declarations/semicolonlinter--2a3e2d21f5c01ea46ea6e1ec.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isImportsOnlyFile](declarations/isimportsonlyfile--d03a092a7779d048548d491e.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [allLinters](declarations/alllinters--aa093bc94df3fb5d83356d16.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [lintFile](declarations/lintfile--7d0e3fcb36832e1163764bda.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `register_option` | [linter.pythonStyle](declarations/linter-pythonstyle--537b0cf554e7e8b6a85f1ad5.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [lintModules](declarations/lintmodules--f151b0830d55e7fe3b9c516d.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `register_option` | [linter.modulesUpperCamelCase](declarations/linter-modulesuppercamelcase--97dfbd1f258fa1f732712388.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [modulesNotUpperCamelCase](declarations/modulesnotuppercamelcase--87ad5978df7540d7a6cf4f33.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |

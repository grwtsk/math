# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextBased.Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9103f2cb475d9f15dcf1e29cd38e9900baf7ced",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9103f2cb475d9f15dcf1e29cd38e9900baf7ced`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.String.Matcher` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Lake.Util.Casing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BroadImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/broadimports--7c96eab5e8a4ca109409b787.md) | 40 | `declaration-track:7c96eab5e8a4ca109409b787ea3cdd2c5979c4eb4baa27f9e6857351b59abcfb` |
| 2 | `inductive` | [StyleError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/styleerror--9a52ae4b235d41720dfca7c9.md) | 50 | `declaration-track:9a52ae4b235d41720dfca7c9d0b6e6d89eb2ee8680dcb33e250fec5b5260bcd7` |
| 3 | `inductive` | [ErrorFormat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/errorformat--3edccff9cf43c29c3cd75b87.md) | 63 | `declaration-track:3edccff9cf43c29c3cd75b87e6252b4bf163412ddd2c3155ec088120c8c03782` |
| 4 | `def` | [StyleError.errorMessage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/styleerror-errormessage--797550ce8620064bb6ee8f5f.md) | 75 | `declaration-track:797550ce8620064bb6ee8f5f2458090b667a622c7f2ca31f8a3119b9ad63edbf` |
| 5 | `def` | [StyleError.errorCode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/styleerror-errorcode--e42734b3ea8edc9e45dd5c01.md) | 86 | `declaration-track:e42734b3ea8edc9e45dd5c01233b91f97ebcecd648abc0dc1a8edce296d60acf` |
| 6 | `structure` | [ErrorContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/errorcontext--de6391b04ed6d72a6ffc23a9.md) | 94 | `declaration-track:de6391b04ed6d72a6ffc23a9d708a1ba63799f76eade29f1c767229e95b22b15` |
| 7 | `inductive` | [ComparisonResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/comparisonresult--7d0a6068d0c4c03a122fe2d4.md) | 105 | `declaration-track:7d0a6068d0c4c03a122fe2d42617d3ea1c15903010615009adb65a9b67e7ddc6` |
| 8 | `def` | [compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/compare--d9f1221867fed4b77e9b8850.md) | 116 | `declaration-track:d9f1221867fed4b77e9b8850a83bdb0a920fd9de820d44fdceca373937cdfb93` |
| 9 | `def` | [ErrorContext.find?_comparable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/errorcontext-find-comparable--18d2c39afe0bde92d02f202f.md) | 129 | `declaration-track:18d2c39afe0bde92d02f202f2590251255e43e506dfad12cdb92dff3558d38bb` |
| 10 | `def` | [outputMessage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/outputmessage--1056060ca7f4703490e9522c.md) | 136 | `declaration-track:1056060ca7f4703490e9522caff9977010829698257ffb07335ec7dcb32b6b85` |
| 11 | `def` | [parse?_errorContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/parse-errorcontext--690391f90f184b1f18a5696b.md) | 154 | `declaration-track:690391f90f184b1f18a5696bad48f002d86c04cfb548bd526d1e2a8124936197` |
| 12 | `def` | [parseStyleExceptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/parsestyleexceptions--11620ad9e5887c64e2d51e04.md) | 182 | `declaration-track:11620ad9e5887c64e2d51e041e63a1b6eaaaa7ec81e84996feaaa99bc2d6a280` |
| 13 | `def` | [formatErrors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/formaterrors--761ec921022b6e5637b4736e.md) | 189 | `declaration-track:761ec921022b6e5637b4736e41024deee3979060ff8f70fc435599ba2c63c87a` |
| 14 | `abbrev` | [TextbasedLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/textbasedlinter--7d506c1e2ce1b4c7f9b27a4e.md) | 198 | `declaration-track:7d506c1e2ce1b4c7f9b27a4e2b48688ee469e1b53bc1b85c189c1033340b79b0` |
| 15 | `register_option` | [linter.adaptationNote](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/linter-adaptationnote--e5406e0c683580e594ec635f.md) | 205 | `declaration-track:e5406e0c683580e594ec635f30cfa331bd77c223f180df93fac5f7954b8d55ee` |
| 16 | `def` | [adaptationNoteLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/adaptationnotelinter--7180ae894ce8c8c79d6fd049.md) | 208 | `declaration-track:7180ae894ce8c8c79d6fd04942a25c238c253586466ec548ba728a467495e1ac` |
| 17 | `register_option` | [linter.trailingWhitespace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/linter-trailingwhitespace--53280ec372b0eaa101c192fb.md) | 219 | `declaration-track:53280ec372b0eaa101c192fb0085cb93f86a38e25062d6df3d43d8481b68c9cc` |
| 18 | `def` | [trailingWhitespaceLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/trailingwhitespacelinter--0007ca6020357704dbe356b4.md) | 222 | `declaration-track:0007ca6020357704dbe356b4e5b07f7aaccedfd21f7d84f3910cf5fb09bef6eb` |
| 19 | `register_option` | [linter.whitespaceBeforeSemicolon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/linter-whitespacebeforesemicolon--79edb0a1bc71fd04b93dc442.md) | 235 | `declaration-track:79edb0a1bc71fd04b93dc442072766fea9dcfcafca913ae8eb60f7b247d74130` |
| 20 | `def` | [semicolonLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/semicolonlinter--57ef25f1a59f04badafc5b17.md) | 238 | `declaration-track:57ef25f1a59f04badafc5b1743e1654e8db2ed59b8dae4ff3fcd7bf2b0ef329c` |
| 21 | `def` | [isImportsOnlyFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/isimportsonlyfile--fefa661b1fb6ff8b18023ea1.md) | 256 | `declaration-track:fefa661b1fb6ff8b18023ea1882ce7fe3eba3f435eb1748c73c88e60e2de4e35` |
| 22 | `def` | [allLinters](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/alllinters--b0d991faf99f99ef17112ead.md) | 264 | `declaration-track:b0d991faf99f99ef17112ead658c5c925142a5eb550d138eae80bb910a61928c` |
| 23 | `def` | [lintFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/lintfile--82f957b921b78a6809d90391.md) | 273 | `declaration-track:82f957b921b78a6809d9039166abfbc8a02f042c2b0cf5d946204c9f4f5d3a78` |
| 24 | `register_option` | [linter.pythonStyle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/linter-pythonstyle--ed14e95ea3dea556f4e728ef.md) | 309 | `declaration-track:ed14e95ea3dea556f4e728ef85a05431c108c784a617e7a6ff320a58ea58b1ce` |
| 25 | `def` | [lintModules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/lintmodules--985d5323e82236693043ffa5.md) | 320 | `declaration-track:985d5323e82236693043ffa5cc847bc32791ff19ea89167192d63079b91e341d` |
| 26 | `register_option` | [linter.modulesUpperCamelCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/linter-modulesuppercamelcase--57b1ec39de0b870f6f71f230.md) | 359 | `declaration-track:57b1ec39de0b870f6f71f2308a0d10c33be3f3c31c5ffda9eea08866bf916741` |
| 27 | `def` | [modulesNotUpperCamelCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant4d25539e1a51e54c4374674a46b8102f1db441284ed1b1ff4258b1d98c74a2b2.lean/declarations/modulesnotuppercamelcase--5862295745480b0c09dcaef5.md) | 364 | `declaration-track:5862295745480b0c09dcaef5871c2aae5aeda0ebdeb55be47304b59cf36c13b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

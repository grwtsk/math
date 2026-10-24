# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TextBased.Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75dc9ed61b984e5bf8f676826f52a00131c2b42f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75dc9ed61b984e5bf8f676826f52a00131c2b42f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.String.Matcher` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Util.Casing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BroadImports](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/broadimports--cd71c43cd2bcd075aa3ae701.md) | 48 | `declaration-track:cd71c43cd2bcd075aa3ae7011e5d3cf9e0600bf6adf5df879f987cbe04cfb052` |
| 2 | `inductive` | [StyleError](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/styleerror--72b6eae26f9772da23a670c9.md) | 58 | `declaration-track:72b6eae26f9772da23a670c959f08acefc87b74214d8537e375fdbb10d65fda4` |
| 3 | `inductive` | [ErrorFormat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/errorformat--0a1de3509e2e7be9914fcc84.md) | 71 | `declaration-track:0a1de3509e2e7be9914fcc84f8ac239038579f154bcbdf417f465278d9a0828e` |
| 4 | `def` | [StyleError.errorMessage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/styleerror-errormessage--22a13e18b5b5ec1f957d428f.md) | 83 | `declaration-track:22a13e18b5b5ec1f957d428f3c0c54f76cddb53b3d70d9a97569a486f8bd361f` |
| 5 | `def` | [StyleError.errorCode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/styleerror-errorcode--348990e2594f671ce8ebf67e.md) | 94 | `declaration-track:348990e2594f671ce8ebf67ed74d32cfbfcf72be1359ab840046a8a94d187b0c` |
| 6 | `structure` | [ErrorContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/errorcontext--1dea77bf6240674212af65b5.md) | 102 | `declaration-track:1dea77bf6240674212af65b5b077c3756b4b9da84871682df8edfc5c2599da30` |
| 7 | `inductive` | [ComparisonResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/comparisonresult--63bb50780608c10db9f6ca07.md) | 113 | `declaration-track:63bb50780608c10db9f6ca07610a6179309b5a60c34377bd7fa98e25ef275332` |
| 8 | `def` | [compare](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/compare--2c5d76a882fea0d82243899f.md) | 124 | `declaration-track:2c5d76a882fea0d82243899f198a16f0ac91316a606f3965bdaa0c5481b4f740` |
| 9 | `def` | [ErrorContext.find?_comparable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/errorcontext-find-comparable--46dd35f0b280f12c1fb853f7.md) | 137 | `declaration-track:46dd35f0b280f12c1fb853f73b8f7691629c0ec0a8ecc864d927cfe9bf535cc2` |
| 10 | `def` | [outputMessage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/outputmessage--b26683d08c1a0e13d3344f9e.md) | 144 | `declaration-track:b26683d08c1a0e13d3344f9e5f14e9d5a1e1ff00bcb28217c625802dc6fabb9a` |
| 11 | `def` | [parse?_errorContext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/parse-errorcontext--99754c3ac2573af5883a35e1.md) | 162 | `declaration-track:99754c3ac2573af5883a35e14769804a3f3fb4170772a6d4c168e2fa7967625d` |
| 12 | `def` | [parseStyleExceptions](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/parsestyleexceptions--257599a82f259e84a2708903.md) | 190 | `declaration-track:257599a82f259e84a2708903c10885d88701c4a52dbb17da8e208d09125764b1` |
| 13 | `def` | [formatErrors](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/formaterrors--2ff37ee9c61a121194cc38ed.md) | 197 | `declaration-track:2ff37ee9c61a121194cc38edce7ea33b7e698277e64ca8c824428fe381661feb` |
| 14 | `abbrev` | [TextbasedLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/textbasedlinter--6dc23da86ffd08ed77f83499.md) | 206 | `declaration-track:6dc23da86ffd08ed77f83499b0499638b5c18c4ac64e64ff599f47b2a5c64169` |
| 15 | `register_option` | [linter.adaptationNote](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/linter-adaptationnote--d062943757cd03181fb9a593.md) | 213 | `declaration-track:d062943757cd03181fb9a59303e88e16ed9e4c5af8007a212a7461ee46ef79c2` |
| 16 | `def` | [adaptationNoteLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/adaptationnotelinter--0e5619859a03c6d94a1f45fe.md) | 216 | `declaration-track:0e5619859a03c6d94a1f45fe5a3ba76d3fd65071d15903cb86d0ab5e4373f0fa` |
| 17 | `register_option` | [linter.trailingWhitespace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/linter-trailingwhitespace--7a5cd0d598eabe1700663bba.md) | 227 | `declaration-track:7a5cd0d598eabe1700663bbac474033e5bbcb1bc14bd3ff4c23191188b88f100` |
| 18 | `def` | [trailingWhitespaceLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/trailingwhitespacelinter--ea882ef2085030c2529d67eb.md) | 230 | `declaration-track:ea882ef2085030c2529d67ebdf1439851b0ed7bdb00ac1bdc7eb5aaf1db454bb` |
| 19 | `register_option` | [linter.whitespaceBeforeSemicolon](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/linter-whitespacebeforesemicolon--5e347190a0df7516af228004.md) | 243 | `declaration-track:5e347190a0df7516af22800499b4f2202996abf6fffe36253821204c2c0d2940` |
| 20 | `def` | [semicolonLinter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/semicolonlinter--2a3e2d21f5c01ea46ea6e1ec.md) | 246 | `declaration-track:2a3e2d21f5c01ea46ea6e1ec69b76a0f8205db664142284bbeddeece28ea100f` |
| 21 | `def` | [isImportsOnlyFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/isimportsonlyfile--d03a092a7779d048548d491e.md) | 264 | `declaration-track:d03a092a7779d048548d491e13a2cf4fa834bd4799938e4333bcfd4772776fb1` |
| 22 | `def` | [allLinters](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/alllinters--aa093bc94df3fb5d83356d16.md) | 272 | `declaration-track:aa093bc94df3fb5d83356d164c118398569633750a1f701f6cd7484be905cb3b` |
| 23 | `def` | [lintFile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/lintfile--7d0e3fcb36832e1163764bda.md) | 281 | `declaration-track:7d0e3fcb36832e1163764bdad891fd18bf0da3333705a33f218bb3825d87558d` |
| 24 | `register_option` | [linter.pythonStyle](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/linter-pythonstyle--537b0cf554e7e8b6a85f1ad5.md) | 317 | `declaration-track:537b0cf554e7e8b6a85f1ad5e411f5bdefcfbb12688f826076628bf40332fc44` |
| 25 | `def` | [lintModules](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/lintmodules--f151b0830d55e7fe3b9c516d.md) | 328 | `declaration-track:f151b0830d55e7fe3b9c516df458d794a55ddb8d09943ba3c3af1fc5d3e5885c` |
| 26 | `register_option` | [linter.modulesUpperCamelCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/linter-modulesuppercamelcase--97dfbd1f258fa1f732712388.md) | 367 | `declaration-track:97dfbd1f258fa1f732712388433e606e42af3b3d713130dd7c913b563fcd440b` |
| 27 | `def` | [modulesNotUpperCamelCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variantab7f49c916a67fc81a736d06d03f3b2db5b9f48059823fb0c4bda79395e1c2d0.lean/declarations/modulesnotuppercamelcase--87ad5978df7540d7a6cf4f33.md) | 372 | `declaration-track:87ad5978df7540d7a6cf4f33e6f339dfcbad4f2caf032635784a146591455901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

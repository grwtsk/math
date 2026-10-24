# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convolution.Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dac43d76f30e96776ed63d194a79bc6444fcc7d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dac43d76f30e96776ed63d194a79bc6444fcc7d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toArithmeticFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/toarithmeticfunction--fc16104d31e6b280b5f94caf.md) | 40 | `declaration-track:fc16104d31e6b280b5f94caf12fff0f4bddc81cbc93a338e6710bb520de01ad7` |
| 2 | `lemma` | [toArithmeticFunction_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/toarithmeticfunction-congr--ac82c64f56faa665896f5bcf.md) | 44 | `result-track:ac82c64f56faa665896f5bcff62789bc3a941ae386b21e4fa4c1390abf6096d6` |
| 3 | `lemma` | [ArithmeticFunction.toArithmeticFunction_eq_self](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/arithmeticfunction-toarithmeticfunction-eq-self--b12fac444b2cc41dc8b5d77f.md) | 53 | `result-track:b12fac444b2cc41dc8b5d77f8c450897ccb1dbb238aec19247c7582dd21e318e` |
| 4 | `def` | [LSeries.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-convolution--1f9f1348f7d61f20ee49d74f.md) | 62 | `declaration-track:1f9f1348f7d61f20ee49d74f37df64b5009a8f8a4cf5e7419e88df2147a0955a` |
| 5 | `lemma` | [LSeries.convolution_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-convolution-congr--c457ed6dded51ed12241925d.md) | 68 | `result-track:c457ed6dded51ed12241925dbf84e0aca793c01d7713ec19cdb571bd2c00ab4d` |
| 6 | `lemma` | [ArithmeticFunction.coe_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/arithmeticfunction-coe-mul--445269609842940758ed1bd2.md) | 75 | `result-track:445269609842940758ed1bd2a2768563a62d0f036c534eed7399548ccc2f5958` |
| 7 | `lemma` | [convolution_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/convolution-def--c6a79c0e7262b98856b4359f.md) | 82 | `result-track:c6a79c0e7262b98856b4359f090a43eded6a61c6c6b9fb53c1a35c3ab30fa7e1` |
| 8 | `lemma` | [convolution_map_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/convolution-map-zero--d019cf81a37b6502d90ca206.md) | 89 | `result-track:d019cf81a37b6502d90ca2065bd276020b24ed2e89e888b1a65c6d11d7752d9a` |
| 9 | `lemma` | [term_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/term-convolution--583c54c02df73c582c533e21.md) | 99 | `result-track:583c54c02df73c582c533e21f6b36ae0e6c9ed71482e80792e8289c0b60ada7b` |
| 10 | `lemma` | [term_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/term-convolution--0981595dbc2c78ce9faba974.md) | 115 | `result-track:0981595dbc2c78ce9faba974cdf9652142e9cd8b8ffaafee5c158360f8ad52a9` |
| 11 | `lemma` | [LSeriesHasSum.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lserieshassum-convolution--6e2e5cd6e033bf07d4658c1d.md) | 140 | `result-track:6e2e5cd6e033bf07d4658c1dc50356397ffb26b3653cfce51edf5a8b52bf296a` |
| 12 | `lemma` | [LSeries_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-convolution--6b46ac2ced5552d7f0e1201c.md) | 149 | `result-track:6b46ac2ced5552d7f0e1201c8674bdc4c6d4206a94d239788fe67b01136aa4c2` |
| 13 | `lemma` | [LSeries_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-convolution--ad69ca7f2565ff20140eba95.md) | 156 | `result-track:ad69ca7f2565ff20140eba95cdc3bbfe585d7d1f3f2a5c28e0dc7a95f25c17db` |
| 14 | `lemma` | [LSeriesSummable.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseriessummable-convolution--87687e17f09080b41def6c89.md) | 164 | `result-track:87687e17f09080b41def6c8980e947fd1798ad2fd1cc8c104999043cd697e62f` |
| 15 | `lemma` | [LSeries.abscissaOfAbsConv_convolution_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-abscissaofabsconv-convolution-le--5bc7019d621b17c4b68e7ceb.md) | 171 | `result-track:5bc7019d621b17c4b68e7ceb16fcdf1fb46dfcf9819082ffbf400673f437a17a` |
| 16 | `lemma` | [LSeriesHasSum_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lserieshassum-mul--aade1673fb95693612cd0e49.md) | 183 | `result-track:aade1673fb95693612cd0e493ec6d69301074b693776b05c18aeb3ef04c16256` |
| 17 | `lemma` | [LSeries_mul'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-mul--b1549de329d59dd0783ccc3d.md) | 190 | `result-track:b1549de329d59dd0783ccc3dd5aa7e060bbf886c546f01b8bbd006ee150505d6` |
| 18 | `lemma` | [LSeries_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseries-mul--57b73c039e608bb08616d192.md) | 197 | `result-track:57b73c039e608bb08616d192fb2eeb0c057f7dcb38098e31a9b9ac243328b92a` |
| 19 | `lemma` | [LSeriesSummable_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variantd38b25c0914d937f6886360ef354dac16f440173e8c24ad1b8e81728bc2b3557.lean/declarations/lseriessummable-mul--34400e4bd4980795bf8c7736.md) | 204 | `result-track:34400e4bd4980795bf8c773658c4c4a47942da928d391dbb2c31eff966f4e8c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

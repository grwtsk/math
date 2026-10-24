# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Convolution.Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a454cc14bde9c1628b7e2da3477e381effc491ed",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a454cc14bde9c1628b7e2da3477e381effc491ed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toArithmeticFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/toarithmeticfunction--5cfd1c52669bee357705991c.md) | 36 | `declaration-track:5cfd1c52669bee357705991c87f82db37be61a00a590e99cb8a217a3749cff23` |
| 2 | `lemma` | [toArithmeticFunction_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/toarithmeticfunction-congr--ae27e877e2e5e90364ef87f0.md) | 40 | `result-track:ae27e877e2e5e90364ef87f06f646593c0c49e318b7ccc2e22acf0652e37ca45` |
| 3 | `lemma` | [ArithmeticFunction.toArithmeticFunction_eq_self](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/arithmeticfunction-toarithmeticfunction-eq-self--9520d190df82b6bfc7a7ad66.md) | 49 | `result-track:9520d190df82b6bfc7a7ad66e9e940d67b4c7424be079bedcc6e4ee3da69ae08` |
| 4 | `def` | [LSeries.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-convolution--0c4a7bd00231193d7b247361.md) | 58 | `declaration-track:0c4a7bd00231193d7b247361c06b22aa9055d659ea825d39b3a5a978e694784c` |
| 5 | `lemma` | [LSeries.convolution_congr](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-convolution-congr--f1666f1ea5142c9362d15ad5.md) | 64 | `result-track:f1666f1ea5142c9362d15ad55badc44d553ec90666c2c8b1fff5d0e4aef8e8cf` |
| 6 | `lemma` | [ArithmeticFunction.coe_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/arithmeticfunction-coe-mul--321873ba7a7b05f658a87c01.md) | 71 | `result-track:321873ba7a7b05f658a87c013a023e1bbdeb40f81b3064b4e17cb3c0a5a3dd14` |
| 7 | `lemma` | [convolution_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/convolution-def--49d398aad7f880a7b9c9d47c.md) | 77 | `result-track:49d398aad7f880a7b9c9d47c4e00283a2d73c906c290ecace3b10e2bf86baf50` |
| 8 | `lemma` | [convolution_map_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/convolution-map-zero--96aaa24ac05576a9e8ccb535.md) | 84 | `result-track:96aaa24ac05576a9e8ccb535b0393d3a5845e2f8120917d80de269b614745342` |
| 9 | `lemma` | [term_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/term-convolution--31edb8f8f1dc78d4bb4a7cca.md) | 94 | `result-track:31edb8f8f1dc78d4bb4a7ccab72a21e84e45a370d3ad41e4125ca38d713418ce` |
| 10 | `lemma` | [term_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/term-convolution--aeed0064e16b915d062e3ed5.md) | 110 | `result-track:aeed0064e16b915d062e3ed56a129ae4f8b463b0a36fd7398a47e85ab77fc557` |
| 11 | `lemma` | [LSeriesHasSum.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lserieshassum-convolution--5c88c77678905e8856406a54.md) | 135 | `result-track:5c88c77678905e8856406a542f2e904e0c11b0802b823252cd21b8f964c66e74` |
| 12 | `lemma` | [LSeries_convolution'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-convolution--15bde46a275b1f5e7dcb21ed.md) | 144 | `result-track:15bde46a275b1f5e7dcb21ed67d2dab050acb803c7b69d094c777d700685d65e` |
| 13 | `lemma` | [LSeries_convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-convolution--50223ba682ef10bed13398cf.md) | 151 | `result-track:50223ba682ef10bed13398cfa7910066ce456a58389ef691e4244cf0bcf5e7ea` |
| 14 | `lemma` | [LSeriesSummable.convolution](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseriessummable-convolution--95b71f9d1f581d8e68eb9fcb.md) | 159 | `result-track:95b71f9d1f581d8e68eb9fcb11a12898d54bfd4b768372db877d75deca8534fd` |
| 15 | `lemma` | [LSeries.abscissaOfAbsConv_convolution_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-abscissaofabsconv-convolution-le--4e7101efdac96fe0924e6f1d.md) | 166 | `result-track:4e7101efdac96fe0924e6f1dbdaa68c34c2f9bce746bceb5919c9b63ecb2e3a4` |
| 16 | `lemma` | [LSeriesHasSum_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lserieshassum-mul--f140637060487022bfe973d5.md) | 178 | `result-track:f140637060487022bfe973d57e426a578a38144a6a5c85bffce0cb0b3f7852aa` |
| 17 | `lemma` | [LSeries_mul'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-mul--bde6d431e0d9967ffee8b34d.md) | 185 | `result-track:bde6d431e0d9967ffee8b34da3fc7b632afdb25f665ed81aa54ac18db629d716` |
| 18 | `lemma` | [LSeries_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseries-mul--4ff1d77a170fc48a2cc0244d.md) | 192 | `result-track:4ff1d77a170fc48a2cc0244d6a248b3eef3240c3cd51c6c9cc78947f30f3fdf7` |
| 19 | `lemma` | [LSeriesSummable_mul](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Convolution/Variant6be955cce8fa7dd3b495de76370803315b7f2395b76f40f777a8f1597f73436d.lean/declarations/lseriessummable-mul--c6089cd045c482d2535e223e.md) | 199 | `result-track:c6089cd045c482d2535e223ef40fab3fa39206b1604e510a5fa8d02a8ad608b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

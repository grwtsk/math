# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt8.Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3a5a015e85b6e477f0b7ee5bb344cd6310eee41",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3a5a015e85b6e477f0b7ee5bb344cd6310eee41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/divideddifference--a4950b42f0ed1b2357154af5.md) | 21 | `declaration-track:a4950b42f0ed1b2357154af583e6f174f63f01aa06f173536c8687051f6be418` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/divideddifference-bound--a6eab8b16974807389c2fb0f.md) | 24 | `result-track:a6eab8b16974807389c2fb0f79e4b9d68b9385a7da22719b98af2d898d89ea43` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/divideddifference-integrable--f72a1180c110bff893461e8e.md) | 44 | `result-track:f72a1180c110bff893461e8ee560677250db396b04e244e9b97f4dc534c4720d` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/divideddifference-integral--740147a170df706fae3cceb3.md) | 55 | `result-track:740147a170df706fae3cceb397775d164cd9b065a9b0dea405921820b7324bc0` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/physicalrate--654dad67e343b4816da82363.md) | 67 | `declaration-track:654dad67e343b4816da823635cb7f426608b469cb70e835a0924b6924fcae528` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm--c5e65d27bff561e78412a506.md) | 69 | `declaration-track:c5e65d27bff561e78412a506c33ab482772da7c56b5d76240d9a546be9ec35bd` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/physicalrate-pos--280164a47befcf0b1bb9be6f.md) | 72 | `result-track:280164a47befcf0b1bb9be6f504bcb4e95c32a746c7a52a7c121b6be6d7821f0` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/shifted-physicalrate-pos--ac4b25433ff03f971b6779d3.md) | 74 | `result-track:ac4b25433ff03f971b6779d384fa04c50b2838b7eed477d54da0098703ddf5b4` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-nonneg--3816fec44a856ce2f271546e.md) | 79 | `result-track:3816fec44a856ce2f271546e8d084641000229d526a926b4d555780bfe1cc454` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-split--b1fcfe93c2033f7ea46d0c78.md) | 85 | `result-track:b1fcfe93c2033f7ea46d0c78dca7f435ba80a24f66da1d79fe6871547a12f7d9` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-integrable--fd28aafa3d698a100aff771b.md) | 97 | `result-track:fd28aafa3d698a100aff771b8339c3c5a0d88d5678fcb05e0be0f4534668c864` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-integral--235e84766279838bc4a9dec4.md) | 106 | `result-track:235e84766279838bc4a9dec489036a1a11a83b6474f6e0c4f980d1dd1dbe9fb1` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedintegrand--dc3bbadf2a7cb186b083fef8.md) | 133 | `declaration-track:dc3bbadf2a7cb186b083fef8f0a183fbd3e62d31ad669f30b5e7294803372af8` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/exponential-kernel-hassum--9d338b65079fd03d38c860e9.md) | 136 | `result-track:9d338b65079fd03d38c860e985dde628a1a505591074afd32fcc37fe79be56f7` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-hassum--e989f2b935078cc2a56fca7c.md) | 159 | `result-track:e989f2b935078cc2a56fca7c55fa7c85f0a4ceb1f933f11b9dc87fc024e59e50` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedintegrand-nonneg--25025215e5026f55d994b220.md) | 169 | `result-track:25025215e5026f55d994b2203d3d911584347a602d76133137a070d1520a4e58` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedintegrand-continuouson--243c1c8583e24575800782ba.md) | 174 | `result-track:243c1c8583e24575800782ba511d1e0d3802158f6d4dd80d168d360c947d6875` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-integral-norm--5305fc9a58ff2c9dfaf09a20.md) | 183 | `result-track:5305fc9a58ff2c9dfaf09a2053cd05d299424d35ad58386feddc6091f7307d08` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-integral-norm-summable--d76a20ebeca687859c7b17c7.md) | 192 | `result-track:d76a20ebeca687859c7b17c7ede99feae35f1a3ad09bb6217ddb5d8706625f3b` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--b57cfa00f14a8ca70b0cf0dd.md) | 201 | `result-track:b57cfa00f14a8ca70b0cf0dd429993735127914d1f2cf3f895992cf9e99473a8` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedintegrand-integrable--3515ebab88f230111d1fbf7d.md) | 215 | `result-track:3515ebab88f230111d1fbf7dd60cc83c923e1cb5b0f56c75ff21b2b7faa9819d` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/actualgamma-eq-compensatedintegral--f60a13a08653aee14e33c764.md) | 229 | `result-track:f60a13a08653aee14e33c764a254e7f64f5cca26cb8d5827d532f2f200c06289` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant0e08c2815cd1e1a8350c881e77034ff4b04fb9b0b04719122b36f22ae78a7b2c.lean/declarations/compensatedintegrand-zero--b36564e0c870faf3ae0754bb.md) | 243 | `result-track:b36564e0c870faf3ae0754bb216595fbd11b188cb181e999bc46498f6d836ffd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

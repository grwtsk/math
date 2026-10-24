# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszInitialLaplaceNative04.Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bb12594f4f4b8b883da3f949224c56579be566f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bb12594f4f4b8b883da3f949224c56579be566f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realrampantiderivative--33b79cef0cae98162be43fd5.md) | 29 | `declaration-track:33b79cef0cae98162be43fd5ecc52861752324de5d0a0f1e6fd07fa0098c4c5c` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realrampantiderivative-hasderivat--06497e3ccd4a402a1d3c0c9f.md) | 32 | `result-track:06497e3ccd4a402a1d3c0c9f3c11cbb3ad47865b325095044a288950cbd77a96` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realrampantiderivative-tendsto--af0d29b4ecb1bda805c9d067.md) | 42 | `result-track:af0d29b4ecb1bda805c9d067e665e6f58427997083f24c851ee0fdc482e8ce37` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realramp-tail-integrable--c88d84d9c1bab8eca0ee5327.md) | 56 | `result-track:c88d84d9c1bab8eca0ee532760e2619f5156f6608a9ac81e52950a355ea8f289` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realramp-tail-integral--142d0ca7571e38c5b32dcd29.md) | 64 | `result-track:142d0ca7571e38c5b32dcd2979fabaf15e42a241e0f73bbbc494054df443f7cd` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/zeroon-lower-integrable--30dd41ce634262f168037ef3.md) | 71 | `result-track:30dd41ce634262f168037ef3d0f8f3cb73553f9458cde8d096c51e7906152603` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realramp-integrable--20b772af0fd5929e57b6f1a1.md) | 77 | `result-track:20b772af0fd5929e57b6f1a1fdb62ff0f7136bcc97ef4fbe5accaf335888d5ca` |
| 8 | `theorem` | [realRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/realramp-integral--cdc054c5066373c4403b5bb3.md) | 87 | `result-track:cdc054c5066373c4403b5bb327879008a301f701f937347d42928b0768143ce4` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/complexramp-norm--1fcfa56ba75f489fadd50d7f.md) | 105 | `result-track:1fcfa56ba75f489fadd50d7febd41b90be3fcc2418543e94b48f9318b328869d` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualsinglerieszramp-integrable--5f56173c16cddbe4259c56eb.md) | 114 | `result-track:5f56173c16cddbe4259c56eb5a63b0534359fa029bd34a5e2ff372b3ddf4f7e5` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualsinglerieszramp-integral-norm--b7e318bd0bd371aedd18153c.md) | 124 | `result-track:b7e318bd0bd371aedd18153c36dae827ac8ee2d15be964202ee80c916d5e6b8a` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/complexrampantiderivative--787d88fb207821960a7eb776.md) | 130 | `declaration-track:787d88fb207821960a7eb776c2fd502153cd624518da3252a1c3a608c55e40d1` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/complexrampantiderivative-hasderivat--413e87a70d35b23ecd1f4335.md) | 133 | `result-track:413e87a70d35b23ecd1f4335c81b48a695514332327efc56bab8991d1cc43a15` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/complex-exp-monomial-zero--57ca66c1197bd10adda79953.md) | 149 | `result-track:57ca66c1197bd10adda79953ebfce5148e82375946b477d27e7ffcf2dc139f4b` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/complexrampantiderivative-tendsto--b5811aa77af875fc4e7e3e21.md) | 163 | `result-track:b5811aa77af875fc4e7e3e21cfdd34b6b5102c49f5c074a3eb99deb919d1cb3a` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualsinglerieszramp-integral--4b0eaf86ed9d5dc120f121d5.md) | 177 | `result-track:4b0eaf86ed9d5dc120f121d53b546c7e6c1418ac154ae717ce5701036367933c` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualrieszlaplaceatom--5a9708c7b96e53177a1c7f48.md) | 210 | `declaration-track:5a9708c7b96e53177a1c7f4801494b1126ec9174870e740cb54f081f79609764` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualmangoldtrieszlaplace--c7e1a7f4579c647ecc96b12e.md) | 215 | `declaration-track:c7e1a7f4579c647ecc96b12e1ee268cc53ad8b93a5374c9524d28e0569855a36` |
| 19 | `theorem` | [atom_factor](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/atom-factor--066cfa2559a1d446ab1c1479.md) | 219 | `result-track:066cfa2559a1d446ab1c1479dadde4cc23a1641be65d84f95cfa750c8f715092` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualrieszlaplaceatom-integrable--f35ca3d9188800daa51b9477.md) | 228 | `result-track:f35ca3d9188800daa51b947788336ac38f7573fb7824a639188ce889eb3f6e21` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualrieszlaplaceatom-integral-norm--cf9169a54a1457bad30ba48c.md) | 246 | `result-track:cf9169a54a1457bad30ba48c00ec3b40e36da0c4c2cd98686796e884459756e3` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm--f962d8b4553c739c81ab41fd.md) | 281 | `result-track:f962d8b4553c739c81ab41fdcddafd8ec15101471c290d0b264010e2cc807348` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variante9fad6d814863aac5f1446768a35c7cd0079468cc28aaa933b715fbb217d5a36.lean/declarations/actualrieszlaplaceatoms-tsum--aca815c76f96eafa34680144.md) | 292 | `result-track:aca815c76f96eafa3468014411242343e7dc0f0c646cfc30bffc77c38a81b952` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

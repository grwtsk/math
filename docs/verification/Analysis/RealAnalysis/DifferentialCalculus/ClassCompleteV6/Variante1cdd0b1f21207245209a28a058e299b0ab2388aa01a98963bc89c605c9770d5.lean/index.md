# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ClassCompleteV6.Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "623c56bc23a158f9025fbbd0520f8dffc5b33d84",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `623c56bc23a158f9025fbbd0520f8dffc5b33d84`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/normalizationderivative--a6861bea64fee2a5afb8639e.md) | 34 | `declaration-track:a6861bea64fee2a5afb8639e14fdfd134e6121c515b8b202470b1d4c372698e8` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/sourcenormalization-hasderivat--70e939967df5b15ea5eefd88.md) | 38 | `result-track:70e939967df5b15ea5eefd884fba51e695746e9d8750c5ebebf6d96de1e20a6f` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/sourcenormalization-deriv--7f7079c7cd1a566dd5df9200.md) | 54 | `result-track:7f7079c7cd1a566dd5df92003f4e582bd3369254042822fa75ea84d7740bdca8` |
| 4 | `def` | [scaleAmplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scaleamplitude--f3ccb9eabf89be3a76605b87.md) | 59 | `declaration-track:f3ccb9eabf89be3a76605b878cb03f5590f80f147a509484138e50a144fd1fe5` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scaleamplitude-eq--8fbed06e0d5986f084cd9c3f.md) | 62 | `result-track:8fbed06e0d5986f084cd9c3fa42b3c7768fcf2a472aa1fe9ad12ccc10a7f41d6` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scaleprofile-eq-amplitude--5e88cc062152fa87016f5fb4.md) | 67 | `result-track:5e88cc062152fa87016f5fb42a4e97dbd89bd0b3dede82bfe182b404e54da2fb` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scaleamplitude-hasderivat--59a78a8bd795dae8901d95e6.md) | 75 | `result-track:59a78a8bd795dae8901d95e617eb6af3e0c648f7ec1bd41ebc148ffc99a61fe9` |
| 8 | `def` | [scaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative--1ceca7363105162cfaf83ef8.md) | 90 | `declaration-track:1ceca7363105162cfaf83ef8178bf2609ed2b04c290cfeb2b84b902e4a62bce3` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-eq-actual--351dac2c99a9bdc55a8bb9f7.md) | 99 | `result-track:351dac2c99a9bdc55a8bb9f7674d7c071e3762d7a9209b77280b26a3f69453e8` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scaleprofile-hasderivat--6e19d117a932abd2bf24b243.md) | 111 | `result-track:6e19d117a932abd2bf24b243a04a23f93a5129721abe9393ad90e99d784b36ba` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/normalizedsource-hasderivat--305fa0b2cf4feb030281de0d.md) | 135 | `result-track:305fa0b2cf4feb030281de0dd96aa17b8e676f4be7092b29268c647322ce689c` |
| 12 | `theorem` | [sourceBump_traces_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/sourcebump-traces-zero-of-le-abs--17d636d9d2e1d1356a79d622.md) | 143 | `result-track:17d636d9d2e1d1356a79d6225108dc0057adbedcb80aa508fc84d39acf247e62` |
| 13 | `theorem` | [scaleDerivative_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-zero-of-le-abs--62c35d729a53abd753e9c292.md) | 157 | `result-track:62c35d729a53abd753e9c292080e6cb0d9e09a63940700f8fa3c1275bd3ae5d1` |
| 14 | `theorem` | [scaleDerivative_continuousAt_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-continuousat-joint--9cc71ab19ae2aa745503c749.md) | 168 | `result-track:9cc71ab19ae2aa745503c7499be08fa14bb1869aad18fadcf7e26735273ec26a` |
| 15 | `theorem` | [scaleDerivative_continuousOn_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-continuouson-joint--6c0a5137602706da2a97f1a5.md) | 181 | `result-track:6c0a5137602706da2a97f1a544f2a8524712ef68a3d6728adfa30a679320f292` |
| 16 | `theorem` | [scaleDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-continuous--7883c753d8681fa086cef0c3.md) | 186 | `result-track:7883c753d8681fa086cef0c319e9afac920d110bb76f4fc71c140289900e4df3` |
| 17 | `theorem` | [scaleDerivative_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-hascompactsupport--8a7df7a0fceae8aa2c58d807.md) | 194 | `result-track:8a7df7a0fceae8aa2c58d8078e7b35cd176fa4d089044d2b80625af87e133ff5` |
| 18 | `theorem` | [scaleDerivative_memLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-memlp--d668f450cdb2186263866f7c.md) | 209 | `result-track:d668f450cdb2186263866f7c560a8f2732906568c9c945956b4c6e37600252d9` |
| 19 | `def` | [scaleDerivativeL2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativel2--83f0f9f6db16bb94f624b991.md) | 215 | `declaration-track:83f0f9f6db16bb94f624b991db987fb60e1889bef97f6eb995366569c49948c1` |
| 20 | `theorem` | [scaleDerivativeL2_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativel2-coe-ae--e345e61a33a1315f439f6fd4.md) | 219 | `result-track:e345e61a33a1315f439f6fd433158288d3890b3beb3d526879bfd33a95178c4a` |
| 21 | `theorem` | [local_source_derivative_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/local-source-derivative-zero--8db3b22aad74d375ebd3f8d6.md) | 229 | `result-track:8db3b22aad74d375ebd3f8d6a0be749d5adc7d33b1fca258d20043152ad709ce` |
| 22 | `theorem` | [local_scaleDerivative_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/local-scalederivative-bound--df3e48388f68f3799c1eb303.md) | 238 | `result-track:df3e48388f68f3799c1eb3030af641a5b9c51d2d907206b281c4c41c27f882f0` |
| 23 | `def` | [scaleDerivativeState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate--03c8d9f54fe6db1ecec59c66.md) | 262 | `declaration-track:03c8d9f54fe6db1ecec59c66c899ef7baf8baaa40fb2c94bd160b00417d1486d` |
| 24 | `theorem` | [scaleDerivativeState_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate-eq--27ec6c7ba0acf6b7a6be7737.md) | 266 | `result-track:27ec6c7ba0acf6b7a6be77374a9c1089c52d055c218207958534366da83e9bfc` |
| 25 | `theorem` | [scaleDerivativeState_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate-coe-ae--87f2b7abbbb2169b0f1b3408.md) | 271 | `result-track:87f2b7abbbb2169b0f1b3408b8297509f70cb39da9510670344dfdf7e25a833f` |
| 26 | `theorem` | [scaleDerivativeState_norm_sub_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate-norm-sub-sq--a6e16ba39029b49ffd2f3852.md) | 277 | `result-track:a6e16ba39029b49ffd2f3852af43c8a6976816b1796ccd4ee49934250c80cc13` |
| 27 | `theorem` | [scaleDerivative_differenceIntegral_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivative-differenceintegral-continuouson--69a8539fd65df8ea258e1b79.md) | 298 | `result-track:69a8539fd65df8ea258e1b790cc790601ff3ee7418846bcd78a420856ce6ff31` |
| 28 | `theorem` | [scaleDerivativeState_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate-continuousat--c86b8c00fd0140d2fb147f07.md) | 322 | `result-track:c86b8c00fd0140d2fb147f07a1b58a8023a7daab48531b7a1dd1b759a7d2b9af` |
| 29 | `theorem` | [scaleDerivativeState_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/declarations/scalederivativestate-continuouson--626406dd37da77807d252562.md) | 342 | `result-track:626406dd37da77807d252562a8dbac5067c5a9de6a7e3a5bcbe5c091e8206616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

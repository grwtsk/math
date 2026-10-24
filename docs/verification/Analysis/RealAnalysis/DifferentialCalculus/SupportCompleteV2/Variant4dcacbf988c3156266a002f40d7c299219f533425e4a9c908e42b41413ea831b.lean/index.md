# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SupportCompleteV2.Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c301eea6a3bd661ee5b33b62829718fcb59b1e3c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c301eea6a3bd661ee5b33b62829718fcb59b1e3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/normalizationderivative--2daf29a11d21d581d88bf5ba.md) | 26 | `declaration-track:2daf29a11d21d581d88bf5bafb491406dc4a38d207d8a38c44a362b4dfcc9301` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/sourcenormalization-hasderivat--02b5542b588c10207fb04824.md) | 30 | `result-track:02b5542b588c10207fb0482496c6cb23a7f74f8f8128590228387dca29f4f95f` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/sourcenormalization-deriv--6ed9508fa594c8a6a556ca18.md) | 46 | `result-track:6ed9508fa594c8a6a556ca184d1ff5c99f509c38f1182172e4ca54b108dc65cd` |
| 4 | `def` | [scaleAmplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scaleamplitude--466f582512505d90bd0065ba.md) | 51 | `declaration-track:466f582512505d90bd0065bad69cf48d571b49e69404f36648d569011bf61fb8` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scaleamplitude-eq--4aa547e5c74adcda8a932852.md) | 54 | `result-track:4aa547e5c74adcda8a9328522e7d64edabbf91100080d8f910df6c4385b52b1c` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scaleprofile-eq-amplitude--33b584a2859f9364d24e2411.md) | 59 | `result-track:33b584a2859f9364d24e2411120a60c811085d81b75a67fbb95718169b5fa425` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scaleamplitude-hasderivat--5ea472936f93bbb85b41277e.md) | 67 | `result-track:5ea472936f93bbb85b41277e913715971a9121e02a974062a4b5fe83d3f345a1` |
| 8 | `def` | [scaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative--1674571ac13ed16afd3e9ced.md) | 82 | `declaration-track:1674571ac13ed16afd3e9ced4d8f9410261c4c1762106e63a3701dad63154453` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-eq-actual--45d5dde3797b1c1640dd420a.md) | 91 | `result-track:45d5dde3797b1c1640dd420a2c9132f6b9fb08cd2e7c81110621aba3a9ed930d` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scaleprofile-hasderivat--7d5c32f3d5acadef7cd03b71.md) | 103 | `result-track:7d5c32f3d5acadef7cd03b71301993a14d6ff71c5fcb144a945092046db7dd4b` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/normalizedsource-hasderivat--39568800d0043d89e205ba12.md) | 127 | `result-track:39568800d0043d89e205ba12b6bc83b96564dcb92341ab7651c93be53bf3bae9` |
| 12 | `theorem` | [sourceBump_traces_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/sourcebump-traces-zero-of-le-abs--a82ce9e7559f8bd4a73a63cf.md) | 135 | `result-track:a82ce9e7559f8bd4a73a63cf1ace5885a4db0bf72180906d954bc50f6ba40c47` |
| 13 | `theorem` | [scaleDerivative_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-zero-of-le-abs--bd0620993574692761839233.md) | 149 | `result-track:bd06209935746927618392338bdde416f98518e7d7d2caa7da997cdef027b727` |
| 14 | `theorem` | [scaleDerivative_continuousAt_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-continuousat-joint--0d5796e6cff752e299d487cc.md) | 160 | `result-track:0d5796e6cff752e299d487cc1239801cee5e4640f8b0d601fbda13740d5d3a41` |
| 15 | `theorem` | [scaleDerivative_continuousOn_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-continuouson-joint--18c948fa97a8923a7d46de66.md) | 173 | `result-track:18c948fa97a8923a7d46de668362e8fba4357b63988ac1fe0d47ac1f595c1de5` |
| 16 | `theorem` | [scaleDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-continuous--6605f51fd3d6ff3af550050d.md) | 178 | `result-track:6605f51fd3d6ff3af550050dac7d0ebf98b20554e7476a3ee65b5fa4667fb68e` |
| 17 | `theorem` | [scaleDerivative_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-hascompactsupport--ef940c7f197167e4b4aaecde.md) | 186 | `result-track:ef940c7f197167e4b4aaecde4742ef240ecf9f24d1bdd63b50a819d508bb2028` |
| 18 | `theorem` | [scaleDerivative_memLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivative-memlp--4cbc72471ad1f504d2561d82.md) | 201 | `result-track:4cbc72471ad1f504d2561d82c7f60dad2d733069be6019b8aefe8327abe29201` |
| 19 | `def` | [scaleDerivativeL2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivativel2--6240e39003c89ee84bea48da.md) | 207 | `declaration-track:6240e39003c89ee84bea48dadc1c85f31926b416650699926f64df0459c7db10` |
| 20 | `theorem` | [scaleDerivativeL2_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SupportCompleteV2/Variant4dcacbf988c3156266a002f40d7c299219f533425e4a9c908e42b41413ea831b.lean/declarations/scalederivativel2-coe-ae--3f0585bd1cbdfcde2c9de787.md) | 211 | `result-track:3f0585bd1cbdfcde2c9de787bd94a4741fa196fee83f70e80b0356cae7908591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

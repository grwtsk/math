# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt05.Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72c3836d1e38ba0f9c8ae4b44cee2ff5c44e8b18",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72c3836d1e38ba0f9c8ae4b44cee2ff5c44e8b18`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logl2--d1fe9e889b37231ece0c59d2.md) | 15 | `declaration-track:d1fe9e889b37231ece0c59d23e53d7a93d1af9d6f556a0eb5ff97082f3920c76` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/integral-exp-jacobian--517e5e48f583d87853f6bf55.md) | 17 | `result-track:517e5e48f583d87853f6bf552d81e48b87e56ea5de977ca1ea2da196d5f63ce4` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/integrable-exp-jacobian--129a69fcafa5145669aa0fde.md) | 26 | `result-track:129a69fcafa5145669aa0fde24ce2669e77933f0d698edeb557690df23a2c59f` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/exp-quasi--37a52e4fe60040d32509539a.md) | 35 | `result-track:37a52e4fe60040d32509539a5bb7a2d52876021a964b4c40785ed4f5c5a578e2` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/log-quasi--129b02acaae1632093e4e0c4.md) | 57 | `result-track:129b02acaae1632093e4e0c4c0805173cc5d164994ec41de5a965a6eee7b876e` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logfunc--2bc9b4b59eb7ee536db03d61.md) | 76 | `declaration-track:2bc9b4b59eb7ee536db03d61e8410d99e5a774eb126413689648cfa781942208` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/positivefunc--1dfb04074eb63cfdd9bbf678.md) | 77 | `declaration-track:1dfb04074eb63cfdd9bbf678eb717b544c9ca07437da15d4fe5f5a93f5607ed1` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logfunc-norm-sq--b89cc031b3a998236a256cb8.md) | 80 | `result-track:b89cc031b3a998236a256cb86f5f9fcadf8785202fab9abe0c81ac71aaca40f3` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logfunc-memlp--7351c419c16b63e4241532ee.md) | 88 | `result-track:7351c419c16b63e4241532ee7a190c7045a88b23abfee00b103ba0f3194589ff` |
| 10 | `theorem` | [positiveFunc_norm_sq_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/positivefunc-norm-sq-exp--dc635f3f297b33b391b77c95.md) | 98 | `result-track:dc635f3f297b33b391b77c95e6b028991999b84e1a2dc778a5888f68bbfbb529` |
| 11 | `theorem` | [positiveFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/positivefunc-memlp--c31d2704e026f6ea5b5d413b.md) | 108 | `result-track:c31d2704e026f6ea5b5d413bd3bb3e4dd8e07fead6551b4f5c1edf169399cd54` |
| 12 | `def` | [logMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap--0043eccfb2d872042dae4fdd.md) | 119 | `declaration-track:0043eccfb2d872042dae4fdda29c6e11b0d72754834f8a3f08f2ba586977db53` |
| 13 | `def` | [positiveMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/positivemap--a41249fd2bf791d6954e8539.md) | 121 | `declaration-track:a41249fd2bf791d6954e853966d0d28196ae82c1473f057dc9a4096df94db88d` |
| 14 | `theorem` | [logMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-ae--39a7e6baa831717ec3621a5a.md) | 124 | `result-track:39a7e6baa831717ec3621a5a247717e832bf90b27555ff93e2c99ad350932aa7` |
| 15 | `theorem` | [positiveMap_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/positivemap-ae--172cb6dd099e2f0a9a5a8628.md) | 126 | `result-track:172cb6dd099e2f0a9a5a86285f14dd712edad38a36fcab2015aa45ec7b915012` |
| 16 | `theorem` | [logMap_leftInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-leftinverse--6d25ee98c2f31ec9f7f35228.md) | 129 | `result-track:6d25ee98c2f31ec9f7f3522854da9080a665f9a4514be7e19236fad2c56156d7` |
| 17 | `theorem` | [logMap_rightInverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-rightinverse--c5a5c29b9debc0e09fe3398b.md) | 139 | `result-track:c5a5c29b9debc0e09fe3398bc0ccaa06b03ac9ec0d802a5508eb63374e7c3b1e` |
| 18 | `theorem` | [logL2_norm_sq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logl2-norm-sq-integral--850cf8bf2562ea8239a60db8.md) | 149 | `result-track:850cf8bf2562ea8239a60db8995a61cefae95668ff07d58645ac5806853c70bf` |
| 19 | `theorem` | [logMap_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-norm--b7c6898786b7f8a4b17c983c.md) | 164 | `result-track:b7c6898786b7f8a4b17c983cb9365e4623be549408a27b3bfae65269e1861d33` |
| 20 | `theorem` | [logMap_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-add--98e3809e4e5ae6d6ce7b82f7.md) | 175 | `result-track:98e3809e4e5ae6d6ce7b82f7900dce6524418c20102b1824de9c9132b4a41a0f` |
| 21 | `theorem` | [logMap_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-smul--47b3f48ad2cff19cdb7223f1.md) | 184 | `result-track:47b3f48ad2cff19cdb7223f1e0810d960cc9c29495f83486e59dbc1125c4cb66` |
| 22 | `def` | [logIsometry](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logisometry--42ba9a44fc5d11a64fa36a64.md) | 193 | `declaration-track:42ba9a44fc5d11a64fa36a64947d9ff57418e30dd5b7acc841c5c3c99c10e2a3` |
| 23 | `def` | [logEquiv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logequiv--9d75238d69a967ba5eceee33.md) | 199 | `declaration-track:9d75238d69a967ba5eceee33f294e0cb21836abc6f0314baf2090f9351514313` |
| 24 | `def` | [translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/translate--37cba41d9449966219af0151.md) | 206 | `declaration-track:37cba41d9449966219af0151523960b3596b9ef8e759b707a6ea943c224a2e0a` |
| 25 | `theorem` | [translate_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/translate-ae--39f1cea53ce63f1072ba28ae.md) | 209 | `result-track:39f1cea53ce63f1072ba28aed8563352df626fc21e4a72df6f42380203d49673` |
| 26 | `theorem` | [logMap_dilate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt05/Variantf286c0baf16988bb6caad3f88de0720160047a7cccc6f3fd0af53234a7de7d2d.lean/declarations/logmap-dilate--e2b5ff9daee2e587ae8d25ec.md) | 213 | `result-track:e2b5ff9daee2e587ae8d25ecbce3139cb2f564246432fa24af6e76bbf84d4e57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

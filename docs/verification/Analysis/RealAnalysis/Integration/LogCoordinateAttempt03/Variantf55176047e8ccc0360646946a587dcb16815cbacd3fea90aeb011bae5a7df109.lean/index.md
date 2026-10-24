# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt03.Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "270fadabf06ac57e415cbecf594be1be15e89972",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `270fadabf06ac57e415cbecf594be1be15e89972`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean.json)

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
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/logl2--49167e5f93564d26fa840f02.md) | 15 | `declaration-track:49167e5f93564d26fa840f02ce417db0c16df0c266f6ebfb06bb583a2f802aeb` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/integral-exp-jacobian--df1a426721755e08921588b4.md) | 17 | `result-track:df1a426721755e08921588b4d05d34b329a14065abdc568451907bc011537530` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/integrable-exp-jacobian--d5dccd76d95f141650698e28.md) | 26 | `result-track:d5dccd76d95f141650698e2822f07081979c2ba50b4fe52b06f06aef486b256b` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/exp-quasi--86c0b8c70f2aaefc2f233b91.md) | 35 | `result-track:86c0b8c70f2aaefc2f233b91cbf8086ce0170b7863666e6f3c1a6d460cbd5cb9` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/log-quasi--46af4d6edff4a5a86dc46497.md) | 57 | `result-track:46af4d6edff4a5a86dc46497db26a71996d6e9afde0a24caa7962b6f181307bf` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/logfunc--4604ad1cb527a019b3fd7508.md) | 76 | `declaration-track:4604ad1cb527a019b3fd750837615968dc5bc17d316c40f31fd679794464c27b` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/positivefunc--4ca8d445fe1f633b39494cb0.md) | 77 | `declaration-track:4ca8d445fe1f633b39494cb0ff0ef992e581809e31f91bc658200cee88f9bd0f` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/logfunc-norm-sq--631b0255c4fae6a99f6ae349.md) | 80 | `result-track:631b0255c4fae6a99f6ae349d55bbb1c295cb5ebc35b9290377de4f4f3bd2313` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt03/Variantf55176047e8ccc0360646946a587dcb16815cbacd3fea90aeb011bae5a7df109.lean/declarations/logfunc-memlp--705de5c713432e145fe82b25.md) | 88 | `result-track:705de5c713432e145fe82b2546bc0e0af6dab230d8ef739c5f49d5975c49229e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

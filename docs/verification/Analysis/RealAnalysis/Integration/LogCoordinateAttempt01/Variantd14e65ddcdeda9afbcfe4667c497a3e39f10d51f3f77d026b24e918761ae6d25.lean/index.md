# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogCoordinateAttempt01.Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e71df31d7602643ec600c312422f9db5958aeebc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e71df31d7602643ec600c312422f9db5958aeebc`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.WithDensity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LogL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/logl2--fdfcce7aed5fddc04935bb22.md) | 22 | `declaration-track:fdfcce7aed5fddc04935bb22cd70bb6bd16fc9774df749fc30ff56b1d6ceb9c5` |
| 2 | `theorem` | [integral_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/integral-exp-jacobian--6dab8d8daa55e6ca82b4f7cf.md) | 24 | `result-track:6dab8d8daa55e6ca82b4f7cffd775da8b1b1ee7368f6cc18d66bdbba2edd93c3` |
| 3 | `theorem` | [integrable_exp_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/integrable-exp-jacobian--88cec4e0ff3cc33fbb8d1714.md) | 33 | `result-track:88cec4e0ff3cc33fbb8d17143288778797ffcf713cbeb790221db8b81eb23d8a` |
| 4 | `theorem` | [exp_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/exp-quasi--bc10230d511f8fd753f036e6.md) | 42 | `result-track:bc10230d511f8fd753f036e66c7e9d6b7e49c923994c82b4213df22efdb04638` |
| 5 | `theorem` | [log_quasi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/log-quasi--da8a612e262b917a8f2a96d1.md) | 62 | `result-track:da8a612e262b917a8f2a96d1f68f6399711aa8225c7be487c6b4d8792216bf83` |
| 6 | `def` | [logFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/logfunc--b0d05442be547750c6be0d8c.md) | 81 | `declaration-track:b0d05442be547750c6be0d8c3aba864c79bc1f3d11bba617d14647602d7f5fe4` |
| 7 | `def` | [positiveFunc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/positivefunc--03ff8fc25d66256c6629b888.md) | 82 | `declaration-track:03ff8fc25d66256c6629b8885b5c249f4c5bb8fdd477c87170065a62ba6f6c97` |
| 8 | `theorem` | [logFunc_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/logfunc-norm-sq--fc23cfd14071af26e2d4fcfb.md) | 85 | `result-track:fc23cfd14071af26e2d4fcfbd16b6e74417349a4f4c4156c2494892e7da46385` |
| 9 | `theorem` | [logFunc_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogCoordinateAttempt01/Variantd14e65ddcdeda9afbcfe4667c497a3e39f10d51f3f77d026b24e918761ae6d25.lean/declarations/logfunc-memlp--ad83264df85c455bbd87c536.md) | 93 | `result-track:ad83264df85c455bbd87c5362c0fef86d54f7731e218b037700ef76d38dd396d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

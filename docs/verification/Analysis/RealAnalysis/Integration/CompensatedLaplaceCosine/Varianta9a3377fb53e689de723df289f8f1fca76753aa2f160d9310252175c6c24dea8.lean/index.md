# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompensatedLaplaceCosine.Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c63da6c036d77103c7bda0672771339b1576024",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c63da6c036d77103c7bda0672771339b1576024`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [damped_cosine_eq_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/damped-cosine-eq-real--5858347d5403e491f058cd6e.md) | 18 | `result-track:5858347d5403e491f058cd6eb3d1c92280987c21ad30324b39177fcab73945bd` |
| 2 | `theorem` | [damped_cosine_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/damped-cosine-integrable--38825595dbb0dd542277b80a.md) | 24 | `result-track:38825595dbb0dd542277b80ad494b6e6bf7301f3e1d67cd15bc039cf366b7f3d` |
| 3 | `theorem` | [damped_cosine_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/damped-cosine-integral--6621408d9782a4237d03f343.md) | 30 | `result-track:6621408d9782a4237d03f34374e794a0c93ff55fae91e658c5877c6f66f9d698` |
| 4 | `theorem` | [compensated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/compensated-integrable--0054c03f8a335b1857a44fd2.md) | 39 | `result-track:0054c03f8a335b1857a44fd23ca73eb85f701269f0f313615cb0000611012cb1` |
| 5 | `theorem` | [compensated_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/compensated-nonneg--4fc94351beea965fa28cab5d.md) | 48 | `result-track:4fc94351beea965fa28cab5dd779c3ec08bc027027f0e57406a4be762969f2a8` |
| 6 | `theorem` | [compensated_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/compensated-integral--581788f4764c1ada4a84f2a0.md) | 52 | `result-track:581788f4764c1ada4a84f2a0c0e0fd64b65051afd0eec3f8e064cfaeb858634f` |
| 7 | `theorem` | [quarter_kernel_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/quarter-kernel-integral--d3bceb7f25f1973f89510ca1.md) | 67 | `result-track:d3bceb7f25f1973f89510ca1db8fd571cec3341404568434bb9dfb913dedc29a` |
| 8 | `theorem` | [quarter_compensated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/quarter-compensated-integrable--153c499c44c308720ac99763.md) | 78 | `result-track:153c499c44c308720ac99763e29fcea946b6e45bd0d293bbbccf6d211137990e` |
| 9 | `theorem` | [actual_multiplier_hasSum_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedLaplaceCosine/Varianta9a3377fb53e689de723df289f8f1fca76753aa2f160d9310252175c6c24dea8.lean/declarations/actual-multiplier-hassum-integrals--d9c1a53ce35a18b5ee7b0210.md) | 85 | `result-track:d9c1a53ce35a18b5ee7b0210e15e468d61a5b5925658c559ee10ccb320c1e5b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

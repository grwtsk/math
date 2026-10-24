# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.BranchGreenStokes.Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ad00229494990e5bba8ef222ea218f7cb03f88e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ad00229494990e5bba8ef222ea218f7cb03f88e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concentricCircleSingleHoleExcision](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/concentriccirclesingleholeexcision--bc1d5a68c66757c53e4ebb9a.md) | 46 | `result-track:bc1d5a68c66757c53e4ebb9a9dca6fae9497410b4cc6ff3bbf9d1a9ab147956e` |
| 2 | `theorem` | [rectangleBoundaryIntegral_swap_corners](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/rectangleboundaryintegral-swap-corners--7d537bcf89c362a0ca112178.md) | 62 | `result-track:7d537bcf89c362a0ca1121780e771bf7db3539d31359f641ec4c81301761663c` |
| 3 | `theorem` | [rectangleBoundaryIntegral_swap_real_orientation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/rectangleboundaryintegral-swap-real-orientation--47438fa01af0952a9724e542.md) | 84 | `result-track:47438fa01af0952a9724e54299f852842ab31643f47e0d45abe41f2e75582427` |
| 4 | `theorem` | [circleIntegral_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/circleintegral-orientation-test--a33e07e04f3ccee35c00436a.md) | 108 | `result-track:a33e07e04f3ccee35c00436aa3b9ebc663a06fe00b941596328ce04596ef3b2f` |
| 5 | `theorem` | [constant_integrand_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/constant-integrand-orientation-test--9591faedefe965e9b8f4b27f.md) | 116 | `result-track:9591faedefe965e9b8f4b27fca3e14a07a2e4560bb878355d92e9857e5c16b58` |
| 6 | `theorem` | [linear_integrand_orientation_test](../../../../../../mathematics/Analysis/RealAnalysis/Integration/BranchGreenStokes/Variant7fb009417de8c1971ee548a1d75f05661ec818ed9119ea537dfd81e907e8d1fd.lean/declarations/linear-integrand-orientation-test--db206d675d44cc1afc64f89f.md) | 134 | `result-track:db206d675d44cc1afc64f89f7e74732d8c1b353e182adc02c613f0418cde0cdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

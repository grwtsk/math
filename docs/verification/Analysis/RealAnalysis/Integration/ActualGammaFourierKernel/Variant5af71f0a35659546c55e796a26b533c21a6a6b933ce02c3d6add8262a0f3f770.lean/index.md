# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualGammaFourierKernel.Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af6c907be808297db83f52175fb075814fed38ce",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af6c907be808297db83f52175fb075814fed38ce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CenteredDigammaKernel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelFourier` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/jointintegrand--788d5f9ababcda21045ebf6f.md) | 18 | `declaration-track:788d5f9ababcda21045ebf6f1a95bb7924326b4ae9db8f62776d2e911232e380` |
| 2 | `theorem` | [sourceSquare_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/sourcesquare-measurable--a82a41dd711f37ab43afcd6d.md) | 21 | `result-track:a82a41dd711f37ab43afcd6ddf10c27e49cf83f01a48ad92760fa0fabbd0675f` |
| 3 | `theorem` | [joint_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/joint-measurable--92db26cf669fe318ca5fb6ca.md) | 26 | `result-track:92db26cf669fe318ca5fb6ca17e6020a48a79277b005aef684b203eb9ae38ff2` |
| 4 | `theorem` | [joint_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/joint-nonneg--82c5201e2b7dc97f59c22fa3.md) | 32 | `result-track:82c5201e2b7dc97f59c22fa370f9b4c37d8b5c37434977059a34c85b6a69bd07` |
| 5 | `theorem` | [centered_frequency_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/centered-frequency-integrable--7dcf61e7170e55b797653cde.md) | 39 | `result-track:7dcf61e7170e55b797653cdef243f07d4c128d8a096027d22a36459ed8cb1ab8` |
| 6 | `theorem` | [inner_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/inner-norm-integral--6f673504d76f46a8f3858648.md) | 54 | `result-track:6f673504d76f46a8f3858648955a8c83a0e35532cb45f99a10da8e8dca574cf7` |
| 7 | `theorem` | [joint_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/joint-integrable--e28c1776f9d302e954d5ee89.md) | 67 | `result-track:e28c1776f9d302e954d5ee890573cb3446437bca75f8017f1561b6e98860586b` |
| 8 | `theorem` | [inner_frequency_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/inner-frequency-integral--dc26844d92dd5c73d641587f.md) | 75 | `result-track:dc26844d92dd5c73d641587f5df562ea4c673950d63010a3f18838020c3a70bf` |
| 9 | `theorem` | [centered_source_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/centered-source-integral--f18ee717ab8ac29aa1a291b6.md) | 94 | `result-track:f18ee717ab8ac29aa1a291b6e09b1aa2e7eb4ab12ad25cdc49125e1b75f2dc18` |
| 10 | `theorem` | [actual_sourceGamma_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant5af71f0a35659546c55e796a26b533c21a6a6b933ce02c3d6add8262a0f3f770.lean/declarations/actual-sourcegamma-identity--2d948770742afa44589ed97b.md) | 118 | `result-track:2d948770742afa44589ed97b32b568baac12070dab28ba6471abe7fe13104d72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

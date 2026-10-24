# Verification target: GRWTSK.Analysis.MeasureTheory.ResolventTransform.Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e8e11f851cf4bed80676deb947d653a9f109814",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e8e11f851cf4bed80676deb947d653a9f109814`.

Source path: `GRWTSK/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Algebra.GelfandFormula` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_resolvent](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/measurable-resolvent--310754fc52bc9bef012cdf7b.md) | 64 | `result-track:310754fc52bc9bef012cdf7b472b5b2e35e45f0232e60f3beb835a0a19066647` |
| 2 | `theorem` | [norm_resolvent_le_inv_infDist_support](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/norm-resolvent-le-inv-infdist-support--bf0dea2e63d775b10ced1f56.md) | 79 | `result-track:bf0dea2e63d775b10ced1f563dbe78587b1f06aaefbeac1065acb2755e2b5532` |
| 3 | `theorem` | [integrable_resolvent](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/integrable-resolvent--4719c2463ef4c2577a50b161.md) | 91 | `result-track:4719c2463ef4c2577a50b161834cfc8459a98bba583e6bc75ff83eab1af3a6fb` |
| 4 | `def` | [resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/resolventtransform--137d317fecfd3cd95d95992f.md) | 108 | `declaration-track:137d317fecfd3cd95d95992f2cead4c0e9a297fdf5e505b5c2e0429314651e16` |
| 5 | `lemma` | [resolventTransform_def](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/resolventtransform-def--a26ed91aceaa679e20d72419.md) | 111 | `result-track:a26ed91aceaa679e20d724198befe467a61cd182c8d577d21d128e1b45e33586` |
| 6 | `lemma` | [resolventTransform_apply](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/resolventtransform-apply--d9a2d6f43d76409d03c2111c.md) | 114 | `result-track:d9a2d6f43d76409d03c2111c85ba0d2e8ed7401a7e14608ad0a76191cb6c384d` |
| 7 | `lemma` | [resolventTransform_zero_measure](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/resolventtransform-zero-measure--5f07b4bb7a04c41ec6f61c25.md) | 118 | `result-track:5f07b4bb7a04c41ec6f61c25fe0eb1e698309125fcd4972a578c223a50961a4a` |
| 8 | `lemma` | [resolventTransform_dirac](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/resolventtransform-dirac--588642fa25d456a7471562df.md) | 123 | `result-track:588642fa25d456a7471562df57b9cd270958f6627cb9b3f5f0dc7d8867d4a6b9` |
| 9 | `theorem` | [hasDerivAt_resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/hasderivat-resolventtransform--3e118fae21adbf42a182da62.md) | 134 | `result-track:3e118fae21adbf42a182da62148d739bd90a47eb502961a0a8d76a2e1229bbd0` |
| 10 | `theorem` | [analyticOn_resolventTransform](../../../../../mathematics/Analysis/MeasureTheory/ResolventTransform/Variante414ff75c1871ac84fb34bb0496f76ab280ceff240fcd6de9e3b960445d7f542.lean/declarations/analyticon-resolventtransform--94e8b518b144da9aca05b7c0.md) | 178 | `result-track:94e8b518b144da9aca05b7c00bf5525a8f5a5a3bc58f961e260ad6f5f3781cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

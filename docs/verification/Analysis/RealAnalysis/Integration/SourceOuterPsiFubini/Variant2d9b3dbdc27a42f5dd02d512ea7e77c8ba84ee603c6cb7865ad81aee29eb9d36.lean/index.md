# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceOuterPsiFubini.Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9d13f61ac6a36df6f81491ce98895897190f6a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9d13f61ac6a36df6f81491ce98895897190f6a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourcePrimitiveInnerKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/finitedensity--218f4f9692663688f7cef92a.md) | 28 | `declaration-track:218f4f9692663688f7cef92a0358e1afd7ca1ad9022d6cd4edf9fb44ad7bf73a` |
| 2 | `theorem` | [threshold_order](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/threshold-order--77c112e09036e91d0d91ab10.md) | 33 | `result-track:77c112e09036e91d0d91ab100578ee28da377fece63ff21905e63ed269d6f404` |
| 3 | `theorem` | [finiteDensity_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/finitedensity-integrable--431bacdf63d4e23ee5ffbd46.md) | 37 | `result-track:431bacdf63d4e23ee5ffbd4690e110cfa6c0313711b1256c43131a47de7e8e03` |
| 4 | `theorem` | [density_left_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/density-left-slice--f321cbb2933c4d00aa2a0b1b.md) | 92 | `result-track:f321cbb2933c4d00aa2a0b1b6c9a80323a1d70dbb279498450843499373a54bf` |
| 5 | `theorem` | [density_right_slice](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/density-right-slice--7db429b2a676b6a49949478f.md) | 114 | `result-track:7db429b2a676b6a49949478f145e93a86a767559938e83a44396ec5cfd267aea` |
| 6 | `theorem` | [actualFiniteSecondReadout_outer_fubini](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceOuterPsiFubini/Variant2d9b3dbdc27a42f5dd02d512ea7e77c8ba84ee603c6cb7865ad81aee29eb9d36.lean/declarations/actualfinitesecondreadout-outer-fubini--e609f42348f09d6c280b8fea.md) | 140 | `result-track:e609f42348f09d6c280b8feafe63ac449657c0e5bde4718b63b7221ac9bf7c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RootActualAnchoredStripRefinement.Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6127ea95f442e43e2ade0b86731f173657ef618e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6127ea95f442e43e2ade0b86731f173657ef618e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualAdjointLowerStrip` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [strip_orders](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/strip-orders--1de17b85e6fd51ba1149441f.md) | 28 | `result-track:1de17b85e6fd51ba1149441f0776efbfb917a6b8a27073eb2ad478258885ed9b` |
| 2 | `theorem` | [exp_half_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/exp-half-integral--318db412a7de54f0daaaba12.md) | 48 | `result-track:318db412a7de54f0daaaba126d2d7e6fcf594307805f4456d5cd90c48890d123` |
| 3 | `theorem` | [exp_neg_half_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/exp-neg-half-integral--27028df763bd7e186c3bff45.md) | 62 | `result-track:27028df763bd7e186c3bff45c2faa33fd1f2127592a9657ed54c1d5b89a5b0ea` |
| 4 | `theorem` | [actualAdjointTimePrimitive_anchored_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/actualadjointtimeprimitive-anchored-abs-le--06af763e0206878bf56dcd99.md) | 77 | `result-track:06af763e0206878bf56dcd99ae61d3f55ce312b5314e1399f5089160daad1265` |
| 5 | `theorem` | [actualAdjointTimePrimitive_strip_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/actualadjointtimeprimitive-strip-abs-le--2bbcc8ac76827192d72eda69.md) | 124 | `result-track:2bbcc8ac76827192d72eda699c0bb9e58a416f6e54bcf0c7d7d32ea32381bc0d` |
| 6 | `theorem` | [strip_density_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/strip-density-abs-le--b52fa3e6c784999447f2c6a8.md) | 134 | `result-track:b52fa3e6c784999447f2c6a8f36d3f827f29e63db17016243274909818309934` |
| 7 | `theorem` | [actualLowerStripInterior_anchored_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant794a9b019f186df022535fc4f5dedabd462af359c83245cd4e0948275b0e0294.lean/declarations/actuallowerstripinterior-anchored-abs-le--570db0b515b5fe629cabc9af.md) | 163 | `result-track:570db0b515b5fe629cabc9af25a79a0351eb36ec48ad914a07940637ac8ff7ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

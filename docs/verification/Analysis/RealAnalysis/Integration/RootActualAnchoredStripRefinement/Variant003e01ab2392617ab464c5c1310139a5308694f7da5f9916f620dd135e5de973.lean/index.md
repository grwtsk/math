# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.RootActualAnchoredStripRefinement.Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38b54379e553719d34c4233e76ad85ac7344cc19",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38b54379e553719d34c4233e76ad85ac7344cc19`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean.json)

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
| 1 | `theorem` | [strip_orders](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/strip-orders--a4c9ebfef629e453e91523bb.md) | 28 | `result-track:a4c9ebfef629e453e91523bb6ee108d5ee32032534d15917900aaaa9d96d5079` |
| 2 | `theorem` | [exp_half_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/exp-half-integral--1c460d5483114915a0eeb6bb.md) | 48 | `result-track:1c460d5483114915a0eeb6bbe085a02395cc57f35458b3e8f77c25fb761973db` |
| 3 | `theorem` | [exp_neg_half_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/exp-neg-half-integral--269ad523ea07c550ea2058cf.md) | 62 | `result-track:269ad523ea07c550ea2058cfffd99e798a9a45898f28608c9ae03e492d99a176` |
| 4 | `theorem` | [actualAdjointTimePrimitive_anchored_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/actualadjointtimeprimitive-anchored-abs-le--f5ae38599f8db4dff869a7c2.md) | 77 | `result-track:f5ae38599f8db4dff869a7c2d850ec5b99079307c4650efa035399ccc4422e79` |
| 5 | `theorem` | [actualAdjointTimePrimitive_strip_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/actualadjointtimeprimitive-strip-abs-le--9c4eabce789972b1ae945313.md) | 124 | `result-track:9c4eabce789972b1ae94531352fd6cc83f72744ce15f17867666462dfa1f981b` |
| 6 | `theorem` | [strip_density_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/strip-density-abs-le--540b3daa8233270cf23ed7f8.md) | 134 | `result-track:540b3daa8233270cf23ed7f8feef7a2006abe9864fcebcd9d9df1c42f1991a67` |
| 7 | `theorem` | [actualLowerStripInterior_anchored_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/RootActualAnchoredStripRefinement/Variant003e01ab2392617ab464c5c1310139a5308694f7da5f9916f620dd135e5de973.lean/declarations/actuallowerstripinterior-anchored-abs-le--957136b74495bd60c98d5418.md) | 165 | `result-track:957136b74495bd60c98d541827a0e9cc50865f37f177df393fe146c9264bca04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

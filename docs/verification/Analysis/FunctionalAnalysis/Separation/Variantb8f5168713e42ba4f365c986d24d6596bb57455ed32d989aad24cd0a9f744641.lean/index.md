# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Separation.Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0136bcf496b74e08b8c4a42365a50f4772b47934",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0136bcf496b74e08b8c4a42365a50f4772b47934`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Cone.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Gauge` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.FiniteDimension` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.LocallyConvex` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [separate_convex_open_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/separate-convex-open-set--9fe8ef5fa3e0e48159c45d80.md) | 55 | `result-track:9fe8ef5fa3e0e48159c45d80e2b2b56297042c6636c360f375ab526544e43469` |
| 2 | `theorem` | [geometric_hahn_banach_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-open--ff69ba6f9a0508bbd7d00179.md) | 92 | `result-track:ff69ba6f9a0508bbd7d00179703ea83b474a13580b0f73c519439bc96826a976` |
| 3 | `theorem` | [geometric_hahn_banach_open_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-open-point--13e42b6c251a1a7771017192.md) | 123 | `result-track:13e42b6c251a1a777101719295f77735ccf3d3c26ce32b55c5e2e0b16e2874a9` |
| 4 | `theorem` | [geometric_hahn_banach_point_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-point-open--aecf0f357de1cebe81ad0db9.md) | 130 | `result-track:aecf0f357de1cebe81ad0db939f4ee67f9088f4c8cfbff25f004da72a24603ad` |
| 5 | `theorem` | [geometric_hahn_banach_open_open](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-open-open--b33a9f35adb13507cc748458.md) | 136 | `result-track:b33a9f35adb13507cc748458313574bb7246640d3c1cbca5c6da40c31951c9fa` |
| 6 | `theorem` | [geometric_hahn_banach_compact_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-compact-closed--970ee79448f0743075852abe.md) | 161 | `result-track:970ee79448f0743075852abe67a4c2b364284dfc47297b7762d5aa866376b77d` |
| 7 | `theorem` | [geometric_hahn_banach_closed_compact](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-closed-compact--e83c52e777c033ffc7424693.md) | 180 | `result-track:e83c52e777c033ffc74246931a442e5082971971c1e7737b75542560828d6fd4` |
| 8 | `theorem` | [geometric_hahn_banach_point_closed](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-point-closed--9fcf8b44618d8549d2ea589b.md) | 187 | `result-track:9fcf8b44618d8549d2ea589b44e8d4ae8151d41dd3e84af269ab58f83a38a3a5` |
| 9 | `theorem` | [geometric_hahn_banach_closed_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-closed-point--768d66b3bd2ab7cd3a2a9128.md) | 195 | `result-track:768d66b3bd2ab7cd3a2a9128a7c38498fb8888f1a59a246d2f34917a642dfe80` |
| 10 | `theorem` | [geometric_hahn_banach_point_point](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/geometric-hahn-banach-point-point--a55fbb6f8cf85ac3a77f747d.md) | 204 | `result-track:a55fbb6f8cf85ac3a77f747dea1b11b3d5f84fa9028af5996a6c950d49ddd805` |
| 11 | `theorem` | [iInter_halfspaces_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Separation/Variantb8f5168713e42ba4f365c986d24d6596bb57455ed32d989aad24cd0a9f744641.lean/declarations/iinter-halfspaces-eq--a27815bef00523defa195e7a.md) | 213 | `result-track:a27815bef00523defa195e7a65495fbadff6b1fe14d65cd49a1d68a56571204a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

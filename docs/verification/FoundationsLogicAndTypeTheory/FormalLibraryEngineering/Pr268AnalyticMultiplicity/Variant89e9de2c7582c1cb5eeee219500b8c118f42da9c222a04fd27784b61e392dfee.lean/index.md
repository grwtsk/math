# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pr268AnalyticMultiplicity.Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc07cbd7a440d1f425049b370a17365f8e8c5a1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc07cbd7a440d1f425049b370a17365f8e8c5a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Order` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [order_mul_nonvanishing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-mul-nonvanishing--f40e670e0a440f353d91697e.md) | 23 | `result-track:f40e670e0a440f353d91697e9575ab3401a128fbfa4fc5289ac6c3f7a6507bdb` |
| 2 | `theorem` | [order_eq_of_local_normalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-eq-of-local-normalization--78abc22c0c027d2fc771adbe.md) | 31 | `result-track:78abc22c0c027d2fc771adbef8f7c53c033862f2a70483e0b6b249c52996ceec` |
| 3 | `theorem` | [order_eq_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-eq-of-local-coordinate--8f6ebd1ecfc6ef2830085476.md) | 39 | `result-track:8f6ebd1ecfc6ef283008547616587e4735bb442dff868482584d2cf1709f3a2a` |
| 4 | `theorem` | [simple_iff_of_local_coordinate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/simple-iff-of-local-coordinate--2281fb6c577c311299b25872.md) | 51 | `result-track:2281fb6c577c311299b2587271c1c5dd7738131a8f21fac59b4eb5605dbd963a` |
| 5 | `theorem` | [order_comp_square](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-comp-square--52bfc132e2e458ea452f250c.md) | 60 | `result-track:52bfc132e2e458ea452f250c8b0356f0aff633bbb0ef100fbe0121e7d3261d98` |
| 6 | `theorem` | [order_comp_square_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-comp-square-neg--97a20f4e62ca49522e334363.md) | 67 | `result-track:97a20f4e62ca49522e33436350dc24b4046bfa08c4840a0fa313b3ce73b81c4a` |
| 7 | `theorem` | [order_comp_square_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/order-comp-square-zero--84f4e77f11d783057ad42d00.md) | 74 | `result-track:84f4e77f11d783057ad42d0042d21b04bfb621106b9d61fd40c7c236e8c9ef23` |
| 8 | `theorem` | [same_zero_support_different_order](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pr268AnalyticMultiplicity/Variant89e9de2c7582c1cb5eeee219500b8c118f42da9c222a04fd27784b61e392dfee.lean/declarations/same-zero-support-different-order--3d77368cabad4e5920fc044f.md) | 84 | `result-track:3d77368cabad4e5920fc044fa923cd243dd8852ad53242a5dfa9eba239b2311a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

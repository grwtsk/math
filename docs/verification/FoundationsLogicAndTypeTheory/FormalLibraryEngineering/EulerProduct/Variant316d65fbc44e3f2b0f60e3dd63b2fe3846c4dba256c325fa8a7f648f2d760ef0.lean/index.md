# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerProduct.Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f7d50d6434c8e499ce1fee5d1a05454d44e62ed",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f7d50d6434c8e499ce1fee5d1a05454d44e62ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.DirichletSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Number.EulerProduct` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InfiniteEulerProductAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/declarations/infiniteeulerproductauthority--39bd579395fef6840bbad7d0.md) | 14 | `declaration-track:39bd579395fef6840bbad7d07122d942e5ae5ff45f5fc16652cd14ffefcda405` |
| 2 | `theorem` | [infinite_euler_product_requires_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/declarations/infinite-euler-product-requires-authority--fe0dab79b13b6ce28fd8e34b.md) | 23 | `result-track:fe0dab79b13b6ce28fd8e34b87713733098cc6aaf129513f5430eea37224858e` |
| 3 | `def` | [FiniteEulerWindowProvesInfiniteEulerProduct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/declarations/finiteeulerwindowprovesinfiniteeulerproduct--b11345a286e6c161ad1c15dd.md) | 33 | `declaration-track:b11345a286e6c161ad1c15dd11bab6729ba5a1742afaf1c4bac677fe618975cc` |
| 4 | `theorem` | [finite_euler_window_not_infinite_product](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EulerProduct/Variant316d65fbc44e3f2b0f60e3dd63b2fe3846c4dba256c325fa8a7f648f2d760ef0.lean/declarations/finite-euler-window-not-infinite-product--7f2c909072875b9e37212919.md) | 37 | `result-track:7f2c909072875b9e37212919df3ac3be7c98941301a49cde50de06dc37936ae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

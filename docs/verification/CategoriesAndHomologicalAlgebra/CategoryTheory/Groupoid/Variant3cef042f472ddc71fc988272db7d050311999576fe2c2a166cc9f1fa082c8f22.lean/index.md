# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Groupoid.Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16828b2e30c695c31b09a537b35113b702d2af22",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16828b2e30c695c31b09a537b35113b702d2af22`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [closedIhom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/closedihom--0ca78a3c49077d63ea85eb5b.md) | 28 | `declaration-track:0ca78a3c49077d63ea85eb5b9efb75b35570954c4e261640fddcced59c59129e` |
| 2 | `def` | [closedUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/closedunit--f44114806cd7b8ba9315caa3.md) | 34 | `declaration-track:f44114806cd7b8ba9315caa3a1977c61c2bbfaf3dac9c513356ad7deb2b5066c` |
| 3 | `def` | [closedCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/closedcounit--cf716db45d8b977a8d7cf7d9.md) | 48 | `declaration-track:cf716db45d8b977a8d7cf7d954822f0d7a7927f26f0efd49da0c0cecebe4e5f3` |
| 4 | `instance` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/closed--0fa187481bb7ff18208ae62f.md) | 60 | `declaration-track:0fa187481bb7ff18208ae62fe84dcc3451db6d427442e7d94a4d5458677f2e04` |
| 5 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/monoidalclosed--30d6a7b306e095d86b5118fe.md) | 69 | `declaration-track:30d6a7b306e095d86b5118fe3fca8b79e93d8fbcf5e54a972529815fa4730b35` |
| 6 | `theorem` | [ihom_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/ihom-map--1aac3bfc51069c6be2f612c4.md) | 71 | `result-track:1aac3bfc51069c6be2f612c4831948c0a2e81931494aef45fce8f0f5cbff27bb` |
| 7 | `theorem` | [ihom_ev_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/ihom-ev-app--a42d6fda87fe3955147e8751.md) | 74 | `result-track:a42d6fda87fe3955147e8751568d8b98ef2ecf63f79646cf13625a9d53eb6807` |
| 8 | `theorem` | [ihom_coev_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Groupoid/Variant3cef042f472ddc71fc988272db7d050311999576fe2c2a166cc9f1fa082c8f22.lean/declarations/ihom-coev-app--74444ec6ada89a929f5e7295.md) | 77 | `result-track:74444ec6ada89a929f5e7295ddeb5e2767a741a943fd08187b449ed8e63ec54f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

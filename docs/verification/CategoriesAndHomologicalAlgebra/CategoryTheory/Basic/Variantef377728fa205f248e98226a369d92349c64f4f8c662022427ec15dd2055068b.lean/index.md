# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1abccb0430bea733261c12d6f3e43608467e467",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1abccb0430bea733261c12d6f3e43608467e467`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Closed.Enrichment` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.FunctorCategory` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/homequiv--b25f748556f3c1fe1714a57d.md) | 50 | `declaration-track:b25f748556f3c1fe1714a57d9cc1401a1fa9900a3f0ddd3ba38475bc765bbcbb` |
| 2 | `lemma` | [homEquiv_naturality_two_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/homequiv-naturality-two-symm--fb9e5e0f867a0da8d3037e56.md) | 95 | `result-track:fb9e5e0f867a0da8d3037e56f5b6d392fab553ee3052fa5004bcdebd9e15fcc9` |
| 3 | `lemma` | [homEquiv_naturality_three](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/homequiv-naturality-three--87ff3505a3b3ae7990597564.md) | 101 | `result-track:87ff3505a3b3ae799059756442cd0fb410d17ece655c5d9b7e7ea6c57e6178c1` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/adj--1a2548182ccc6065c2e418e5.md) | 129 | `declaration-track:1a2548182ccc6065c2e418e559a76a8cf1c5c2e8078f49602055ad0f87178e2e` |
| 5 | `def` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/closed--0a9672ffde52113c92dad364.md) | 138 | `declaration-track:0a9672ffde52113c92dad36415cb8b22f00a826eb171e313952f6fe400c4c529` |
| 6 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantef377728fa205f248e98226a369d92349c64f4f8c662022427ec15dd2055068b.lean/declarations/monoidalclosed--c4394fa37381b5a252d8cede.md) | 144 | `declaration-track:c4394fa37381b5a252d8cede8cb8e2b928b6d8732cb0df8d2ef112b1ee9bc942` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

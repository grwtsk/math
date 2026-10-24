# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.KanExtension.Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a18bf0404f653dfc44a9aaba2954778f810574c7",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a18bf0404f653dfc44a9aaba2954778f810574c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LeftKanExtensionDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/declarations/leftkanextensiondatum--bd852ffeaf4aacc7b14a4776.md) | 30 | `declaration-track:bd852ffeaf4aacc7b14a477655d82e5af79d0f3cb2978a5a18560fd53459cc11` |
| 2 | `structure` | [DerivedLeftKanExtensionDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/declarations/derivedleftkanextensiondatum--f1cb238ca7a888f96d7c34e2.md) | 52 | `declaration-track:f1cb238ca7a888f96d7c34e24f68b74c0f5d926f29cc325dd464c0f173e00f80` |
| 3 | `structure` | [SimplicialResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/declarations/simplicialresolution--6b37631b9107acd518b5d8ca.md) | 59 | `declaration-track:6b37631b9107acd518b5d8ca55d79fc8c30a37a4297470b950e5f3aad159b813` |
| 4 | `structure` | [ResolutionFormula](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variantc04fc5b16adba68bb083488cc4a0425e8e95a11ef9a6cc085c02e9e17c6ad23d.lean/declarations/resolutionformula--8aa1e1dc84f0ab46221d64b0.md) | 71 | `declaration-track:8aa1e1dc84f0ab46221d64b0548ca08d967c02f86e2bc31c94a78ba3f598fcbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

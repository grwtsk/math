# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Modality.Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca94dad2710685782949a32e04bbd5f5589fbbc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca94dad2710685782949a32e04bbd5f5589fbbc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.AffineTopos.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AffineModality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/declarations/affinemodality--427d93f1a287cc412f744606.md) | 15 | `declaration-track:427d93f1a287cc412f7446068205c5e6e38a1bab6726b3b47c0e829660e632c8` |
| 2 | `def` | [AffineModality.irreversible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/declarations/affinemodality-irreversible--3f2220969f54899fa470cce3.md) | 28 | `declaration-track:3f2220969f54899fa470cce3be58562d9c1076e6849f881e668ab50053c81967` |
| 3 | `structure` | [ModalityBoundary](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/declarations/modalityboundary--f077ad253146d79e7b8d912e.md) | 32 | `declaration-track:f077ad253146d79e7b8d912ed8108a047ee0cfcf5bebf8e860e3ca81840892e6` |
| 4 | `theorem` | [irreversible_modality_visible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/declarations/irreversible-modality-visible--89ee7d5a3115dc4051e46366.md) | 37 | `result-track:89ee7d5a3115dc4051e46366e08cddc4fb1033241d302100f99facc1cf561bfa` |
| 5 | `theorem` | [reversibleFlow_modality_not_irreversible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Modality/Variant9c933a37f9322886f35907939612c8b236ac501438b64a9ea683ecbd1add66f4.lean/declarations/reversibleflow-modality-not-irreversible--9a814443a126e25700e2a896.md) | 42 | `result-track:9a814443a126e25700e2a8964e279a6b55cf4f1a0c6b3e79a0168d2f001b5c21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

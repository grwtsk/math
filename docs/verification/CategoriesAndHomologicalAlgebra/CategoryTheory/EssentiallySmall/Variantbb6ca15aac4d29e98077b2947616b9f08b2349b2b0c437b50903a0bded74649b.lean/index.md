# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EssentiallySmall.Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25b33da226c85a596bd285d747a35a7a0436f876",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25b33da226c85a596bd285d747a35a7a0436f876`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentiallySmall` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasLimitsOfShape_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/declarations/haslimitsofshape-of-essentiallysmall--4606f690da57ad6d8bc3ecc9.md) | 29 | `result-track:4606f690da57ad6d8bc3ecc917bfa54c1dc3de3d24ef361a04bd4f37c8798b6f` |
| 2 | `theorem` | [hasColimitsOfShape_of_essentiallySmall](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/declarations/hascolimitsofshape-of-essentiallysmall--f46d887d75b8e8e4091c7951.md) | 33 | `result-track:f46d887d75b8e8e4091c79517f7471d7f2b20fa5f3f1dc7600186ea359b1cc11` |
| 3 | `theorem` | [hasProductsOfShape_of_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/declarations/hasproductsofshape-of-small--ca85d7b2f592778ebb5a1077.md) | 37 | `result-track:ca85d7b2f592778ebb5a1077bf8024139027585ee3d9871a8947287f015b1627` |
| 4 | `theorem` | [hasCoproductsOfShape_of_small](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variantbb6ca15aac4d29e98077b2947616b9f08b2349b2b0c437b50903a0bded74649b.lean/declarations/hascoproductsofshape-of-small--a28cbdbdf6112837257d1170.md) | 41 | `result-track:a28cbdbdf6112837257d1170e5acd645726d76e62f9cf1e194fe299211ae1544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

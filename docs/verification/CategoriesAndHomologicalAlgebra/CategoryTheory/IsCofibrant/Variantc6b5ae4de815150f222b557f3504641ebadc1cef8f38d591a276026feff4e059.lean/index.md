# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsCofibrant.Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b040f6f2149cf8f4dda7dd9574e295165559be4c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b040f6f2149cf8f4dda7dd9574e295165559be4c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.ModelCategory.CategoryWithCofibrations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsCofibrant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/iscofibrant--5b006ad98c0af8f2c4157173.md) | 30 | `declaration-track:5b006ad98c0af8f2c4157173d244310dcad00b32faa4f836b1ee23d619496fd6` |
| 2 | `lemma` | [isCofibrant_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/iscofibrant-iff--de89e5941712f1a03d72e8f8.md) | 32 | `result-track:de89e5941712f1a03d72e8f817da5ce1b205a6ce7a1565781cffe84a8aac79c7` |
| 3 | `lemma` | [isCofibrant_iff_of_isInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/iscofibrant-iff-of-isinitial--8ec4ab3175f4715fe8afcab9.md) | 35 | `result-track:8ec4ab3175f4715fe8afcab94536f5fab80c6813eff0d6eb5ad381c02ce83126` |
| 4 | `abbrev` | [IsFibrant](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/isfibrant--89129f47e70e6227f29a4198.md) | 49 | `declaration-track:89129f47e70e6227f29a4198e939c75af46ff9a53197090932f000ff13f4ae67` |
| 5 | `lemma` | [isFibrant_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/isfibrant-iff--544acf2cb6a910a91ebc1205.md) | 51 | `result-track:544acf2cb6a910a91ebc120555d1abb5b6c2b4231eb647b97a772fefd35d75cf` |
| 6 | `lemma` | [isFibrant_iff_of_isTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IsCofibrant/Variantc6b5ae4de815150f222b557f3504641ebadc1cef8f38d591a276026feff4e059.lean/declarations/isfibrant-iff-of-isterminal--814817a1fd587e258f2f7cab.md) | 54 | `result-track:814817a1fd587e258f2f7cabe10802553af221511a75417a8938398348580bcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

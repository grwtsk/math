# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FilteredFrobenius.Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067b07836ffb0d682cf1215111855e62818cdcfa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067b07836ffb0d682cf1215111855e62818cdcfa`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Interface` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrobeniusDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/frobeniusdatum--f0641323c1375c162869ddbb.md) | 27 | `declaration-track:f0641323c1375c162869ddbb23f904000b618c64ccffc66f12d1506e6b1252ce` |
| 2 | `structure` | [NygaardDatum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/nygaarddatum--5192a086a1a6ea115076b3fa.md) | 32 | `declaration-track:5192a086a1a6ea115076b3fa3bc43258bbb85cf0316368b3d8a16e0341890978` |
| 3 | `theorem` | [transition_refl_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/transition-refl-apply--00d62f290e03f7483468a0b1.md) | 55 | `result-track:00d62f290e03f7483468a0b196a72a1604a6cf142945b28c5c2f87340249a70b` |
| 4 | `structure` | [FilteredFrobeniusComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/filteredfrobeniuscomparison--100691471eaf60f5a07ad89e.md) | 71 | `declaration-track:100691471eaf60f5a07ad89eaa7cebcac46225cb150da72c13e8327a22711e24` |
| 5 | `def` | [valueMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/valuemap--08b0233619dd4fbebb3360c1.md) | 114 | `declaration-track:08b0233619dd4fbebb3360c1eb1da5e0466dbc66f44e60c1a538c1a300d04ae0` |
| 6 | `def` | [IsFiltrationPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant34bf5e1db93427c1b71f3f014c8b9f17de98478e0fd328581649e93865d09fbc.lean/declarations/isfiltrationpreserving--915079720e2939a56139d14f.md) | 120 | `declaration-track:915079720e2939a56139d14fcb11466d5c1c70b02b7f6354155a251e07e78bee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

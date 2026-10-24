# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Colim.Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef06ea469b077cb29b2783324dcd675164e9f08",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef06ea469b077cb29b2783324dcd675164e9f08`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Final` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Connected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [colim.map_mono'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/colim-map-mono--ae922e4f0f91be005c71f40f.md) | 37 | `result-track:ae922e4f0f91be005c71f40fed66b147c74c385e2b79b98d47665500ff2ace3d` |
| 2 | `lemma` | [colim.map_epi'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/colim-map-epi--4b175f2c88c85668f4478119.md) | 57 | `result-track:4b175f2c88c85668f4478119fafaac84421719bc2e96f5c9ef6ad2477ecd6ced` |
| 3 | `lemma` | [IsColimit.mono_ι_app_of_isFiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/iscolimit-mono-app-of-isfiltered--f9625ee727e059ad0d1aa2b0.md) | 70 | `result-track:f9625ee727e059ad0d1aa2b04ceec2dfe4b57d02e87070d5538048fe4d5a6868` |
| 4 | `def` | [colim.mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/colim-mapshortcomplex--4519e4f4486ab01bb95a9428.md) | 99 | `declaration-track:4519e4f4486ab01bb95a94288e5a6f794b478f11368de30577371be5bee20854` |
| 5 | `lemma` | [colim.exact_mapShortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/colim-exact-mapshortcomplex--a9be55b946ae7640f2809071.md) | 113 | `result-track:a9be55b946ae7640f2809071181fd8b980908f56fc6c9c204d7ff8d43f732ec5` |
| 6 | `instance` | [isStableUnderColimitsOfShape_monomorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/isstableundercolimitsofshape-monomorphisms--0868645ba609990213ec2390.md) | 141 | `declaration-track:0868645ba609990213ec23905c3df043621f4579702e48dccd4466090268a7fb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Colim/Variantea51c48481127bae0ac69b71e7a6e3e293896604323ffba69bd4824c4b4de9db.lean/declarations/instance--8ce0fdc0d327b0b5414bd2c0.md) | 149 | `declaration-track:8ce0fdc0d327b0b5414bd2c003cf7df5735f93e62a9c4ddae8b2b45fc2979eb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

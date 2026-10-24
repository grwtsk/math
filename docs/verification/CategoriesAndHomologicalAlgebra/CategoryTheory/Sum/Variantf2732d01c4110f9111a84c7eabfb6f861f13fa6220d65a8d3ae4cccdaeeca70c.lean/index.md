# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sum.Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9e5f3ba320b5ab2e261120f08c39acde022a9f2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9e5f3ba320b5ab2e261120f08c39acde022a9f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Join.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sums.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/fromsum--58487e84df822f1a4e081e81.md) | 25 | `declaration-track:58487e84df822f1a4e081e81163a82583b952a7a004621c16611672f75cab469` |
| 2 | `lemma` | [fromSum_map_inl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/fromsum-map-inl--d61bc83f628b8f1a9d0d26f2.md) | 29 | `result-track:d61bc83f628b8f1a9d0d26f2e970c8749ec8b1c417fbc5e2ea85651cca7770d6` |
| 3 | `lemma` | [fromSum_map_inr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/fromsum-map-inr--06432ec62d1297a1358ae033.md) | 35 | `result-track:06432ec62d1297a1358ae033d865ed7a9718861335e7948690b771bb638979d6` |
| 4 | `def` | [inlCompFromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/inlcompfromsum--cabe090c81c5d979c2b9a460.md) | 41 | `declaration-track:cabe090c81c5d979c2b9a460ca1e121206ab68c7adfe00c8ac5cd6b4ea104f30` |
| 5 | `def` | [inrCompFromSum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/inrcompfromsum--b998b8edab98bc18a8c53ebb.md) | 45 | `declaration-track:b998b8edab98bc18a8c53ebb9e0006579f1adf076efc42299fe3b91a280418cf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/instance--5c228b13ef5a07990015bbdb.md) | 47 | `declaration-track:5c228b13ef5a07990015bbdb7380f218f8bf59a565e233939496bf4d6c78a770` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sum/Variantf2732d01c4110f9111a84c7eabfb6f861f13fa6220d65a8d3ae4cccdaeeca70c.lean/declarations/instance--e5277da4e53bb815b3d8b2f5.md) | 52 | `declaration-track:e5277da4e53bb815b3d8b2f508cf0179d23d0d6c322217a1e89a4c64e33b6d63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

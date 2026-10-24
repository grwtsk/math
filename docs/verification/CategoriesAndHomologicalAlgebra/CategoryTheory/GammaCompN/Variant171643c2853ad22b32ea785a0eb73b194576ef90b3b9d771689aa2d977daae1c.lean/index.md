# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GammaCompN.Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c959b7843c08176af0732139bf5087db3c5dc270",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c959b7843c08176af0732139bf5087db3c5dc270`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.DoldKan.FunctorGamma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.DoldKan.SplitSimplicialObject` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.HomologicalComplex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Γ₀NondegComplexIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/nondegcomplexiso--aac44dc9785fb849e61d09cc.md) | 36 | `declaration-track:aac44dc9785fb849e61d09cc9ac6dc3f28f280e419dfef5144997f82bc89d919` |
| 2 | `def` | [Γ₀'CompNondegComplexFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/compnondegcomplexfunctor--c8740e1d98e8c67182ae92bf.md) | 61 | `declaration-track:c8740e1d98e8c67182ae92bf3817154110d6215956b215902633f75697d6ed61` |
| 3 | `def` | [N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n--eef7830c4a76d10f491bb900.md) | 65 | `declaration-track:eef7830c4a76d10f491bb9009b951bf94c84d194946c1eb5e6bf88fa8eb0c00b` |
| 4 | `theorem` | [N₁Γ₀_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-app--46a5e4c306ec6be286e3cae1.md) | 74 | `result-track:46a5e4c306ec6be286e3cae1162814443f41ed804aa39d3f78e3a6d079e79e13` |
| 5 | `theorem` | [N₁Γ₀_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-hom-app--483ba91ec649f6471523b492.md) | 82 | `result-track:483ba91ec649f6471523b492530f49db52e0065aee5175498f307634d8bf182b` |
| 6 | `theorem` | [N₁Γ₀_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-inv-app--f2994e3f6882995febc8b6dd.md) | 89 | `result-track:f2994e3f6882995febc8b6dd7824f2abc213140eb9d90d79f260b3e60a46c43f` |
| 7 | `theorem` | [N₁Γ₀_hom_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-hom-app-f-f--dcc6cd5d93adb63695165879.md) | 97 | `result-track:dcc6cd5d93adb6369516587975f0148afcee28c58db89e9c39a57332a5b52b38` |
| 8 | `theorem` | [N₁Γ₀_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-inv-app-f-f--0f47bbdf81d003e79b5c8d0a.md) | 103 | `result-track:0f47bbdf81d003e79b5c8d0a00c8adb4c1a696dceff792b1d379cd9df56eb778` |
| 9 | `def` | [N₂Γ₂ToKaroubiIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-tokaroubiiso--461dfd23edc3a5aa53a0a515.md) | 110 | `declaration-track:461dfd23edc3a5aa53a0a515deb22ef0d7f69b5f1c2fd4dcd076b5c49f44efe9` |
| 10 | `lemma` | [N₂Γ₂ToKaroubiIso_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-tokaroubiiso-hom-app--34185738defd4803b95e4666.md) | 121 | `result-track:34185738defd4803b95e46663919fbd566d9e48857177cd62694ed12e0eb750f` |
| 11 | `lemma` | [N₂Γ₂ToKaroubiIso_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-tokaroubiiso-inv-app--3733220fc5e0306c5f965033.md) | 135 | `result-track:3733220fc5e0306c5f9650338dde635821bfa0e273190e7d467fa769a9b75174` |
| 12 | `def` | [N₂Γ₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n--d56837569ecb59a796cbd43c.md) | 147 | `declaration-track:d56837569ecb59a796cbd43c8e2283c094c4f3b98fa7943aa36806fbfa3c536d` |
| 13 | `theorem` | [N₂Γ₂_inv_app_f_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-inv-app-f-f--096d09e3b8e37264c2425d8c.md) | 152 | `result-track:096d09e3b8e37264c2425d8c4ea28d680ea78b7d4cc396bb8cbac8a469b32722` |
| 14 | `lemma` | [whiskerLeft_toKaroubi_N₂Γ₂_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/whiskerleft-tokaroubi-n-hom--d963e6d357c8cb67b11f49ad.md) | 165 | `result-track:d963e6d357c8cb67b11f49ad2120f4b428bbb105bcbc984f808f1cdd5c47626b` |
| 15 | `theorem` | [N₂Γ₂_compatible_with_N₁Γ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant171643c2853ad22b32ea785a0eb73b194576ef90b3b9d771689aa2d977daae1c.lean/declarations/n-compatible-with-n--ebc4b94a94c3b47d96004c08.md) | 173 | `result-track:ebc4b94a94c3b47d96004c089afcaa165517e16cb44b731982ba14bf17373444` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

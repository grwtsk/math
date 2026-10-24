# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76ecbd4379e0bacf9d2317be6e17e444beb7e081",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76ecbd4379e0bacf9d2317be6e17e444beb7e081`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/linearyoneda--feb59ce3f8b22cc61abac652.md) | 43 | `declaration-track:feb59ce3f8b22cc61abac652a2d3880a0bd65a108bad0a66ac78ed036ca543b2` |
| 2 | `def` | [linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/linearcoyoneda--eed9357ffe60ac10ef6b5d38.md) | 55 | `declaration-track:eed9357ffe60ac10ef6b5d382bf87c02777c7ada272a4ed54d21aa2d81a9ca93` |
| 3 | `instance` | [linearYoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/linearyoneda-obj-additive--b9beec404502e32dec1a3108.md) | 63 | `declaration-track:b9beec404502e32dec1a3108e8b9903741ac21dd2d938bee34cff99b38d63d69` |
| 4 | `instance` | [linearCoyoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/linearcoyoneda-obj-additive--c320a28926f3cba70cf8cb54.md) | 65 | `declaration-track:c320a28926f3cba70cf8cb5483aa2a96b069ee8346977ee6ee9df8ffc15a798e` |
| 5 | `theorem` | [whiskering_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/whiskering-linearyoneda--87c30087de29053cd200c044.md) | 68 | `result-track:87c30087de29053cd200c044d0c994b057acc1a0e88fbc73c0d18517bd5d2e21` |
| 6 | `theorem` | [whiskering_linearYoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/whiskering-linearyoneda--8a40f8d4485730e4e745cfde.md) | 73 | `result-track:8a40f8d4485730e4e745cfdef714fa457dfbe6e7c35c5c47ca36b4ecd74b4a4b` |
| 7 | `theorem` | [whiskering_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/whiskering-linearcoyoneda--43980db120670ff37e9d259b.md) | 79 | `result-track:43980db120670ff37e9d259bd6ad7f9f3ef3884e11c825812828c22a727d844d` |
| 8 | `theorem` | [whiskering_linearCoyoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/whiskering-linearcoyoneda--fb74e4617c55d1a81588b164.md) | 84 | `result-track:fb74e4617c55d1a81588b1645b0e755dc774648ef54d50e6eacc6201149d8957` |
| 9 | `instance` | [full_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/full-linearyoneda--ca38a15b024ea109107cc343.md) | 90 | `declaration-track:ca38a15b024ea109107cc343323843397768d6cad741046e2357c60618786d34` |
| 10 | `instance` | [full_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/full-linearcoyoneda--a837d5231b1c5ffb81c6c175.md) | 96 | `declaration-track:a837d5231b1c5ffb81c6c1755d52a161f533f29e20f8d5ac2aa871680cfd68d6` |
| 11 | `instance` | [faithful_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/faithful-linearyoneda--a0b02838569e39e80a52c371.md) | 102 | `declaration-track:a0b02838569e39e80a52c37181216f25378cc060dcb119b8b85ef71fe536d2c2` |
| 12 | `instance` | [faithful_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592.lean/declarations/faithful-linearcoyoneda--378e81c5a69e8fa2876dc393.md) | 105 | `declaration-track:378e81c5a69e8fa2876dc393e261959d9e0669588117c4888652cd6f2d4503ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

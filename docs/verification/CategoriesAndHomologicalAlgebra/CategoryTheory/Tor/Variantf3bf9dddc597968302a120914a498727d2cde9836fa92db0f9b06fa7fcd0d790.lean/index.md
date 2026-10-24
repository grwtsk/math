# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Tor.Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b63010a86526c2d33bcd8c904fc6263ef9844b5a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b63010a86526c2d33bcd8c904fc6263ef9844b5a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.LeftDerived` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/declarations/tor--2d0904c00ab55b700ae4913c.md) | 40 | `declaration-track:2d0904c00ab55b700ae4913cc137e1494cee9e828da8fa525245cad94b3bb54b` |
| 2 | `def` | [Tor'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/declarations/tor--703649114fbb58e76698c417.md) | 46 | `declaration-track:703649114fbb58e76698c417c5973a6f12ae64bfc1ae3d8a04bad2a84d7f51f7` |
| 3 | `lemma` | [Tor'_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/declarations/tor-obj-map--fa7eafdf46a3b59ff6348f2d.md) | 54 | `result-track:fa7eafdf46a3b59ff6348f2dc6f2c27b2e8eb29472fecb8d7b7a64862d9ade20` |
| 4 | `lemma` | [isZero_Tor_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/declarations/iszero-tor-succ-of-projective--b561fd31296ce4c64e1357ec.md) | 58 | `result-track:b561fd31296ce4c64e1357eca88487844393a2131ddb14c26a4af00edb7c4b1e` |
| 5 | `lemma` | [isZero_Tor'_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Tor/Variantf3bf9dddc597968302a120914a498727d2cde9836fa92db0f9b06fa7fcd0d790.lean/declarations/iszero-tor-succ-of-projective--5295da729f7ce5e70603817e.md) | 63 | `result-track:5295da729f7ce5e70603817e8ff58b49928ac302b25c286a584eebfef444c1e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sieves.Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c84f551edcd181e9bc7ad636e0310e25871ae08",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c84f551edcd181e9bc7ad636e0310e25871ae08`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean/declarations/sieveofsection--45b0bfe1b95911729bedf90b.md) | 29 | `declaration-track:45b0bfe1b95911729bedf90b940f83c7a2557fb1c1a9bdef0da21fbd9c359fd8` |
| 2 | `def` | [familyOfElementsOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean/declarations/familyofelementsofsection--c5076fe244a17067f47ff2fc.md) | 37 | `declaration-track:c5076fe244a17067f47ff2fc8072c7ec1966ce5490d027a0ed78233f02ac3359` |
| 3 | `theorem` | [family_of_elements_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variantc5a0c81fc951afb31b172a9ac3de90192449d4b2a3e0122f4b32e6c57382decd.lean/declarations/family-of-elements-compatible--6f7464504034a3668b082fbd.md) | 40 | `result-track:6f7464504034a3668b082fbd27f5908f1a1cdd5a928b131996da3948ae8a99b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

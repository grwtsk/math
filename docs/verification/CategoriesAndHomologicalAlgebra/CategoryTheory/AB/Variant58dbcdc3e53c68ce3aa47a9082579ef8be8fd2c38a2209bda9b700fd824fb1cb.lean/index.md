# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AB.Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d707cdb282da775b2bfb2a575437eff80a9dd07",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d707cdb282da775b2bfb2a575437eff80a9dd07`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.AB` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveColimits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Equivalence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Limits` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/hasexactcolimitsofshape--285decb1ae7c46f218a05134.md) | 33 | `result-track:285decb1ae7c46f218a0513456b2665dbda0dd2b7874d359f1a5f3d7f10ea22d` |
| 2 | `lemma` | [hasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/hasexactlimitsofshape--424820980bcc10f9fa8ac152.md) | 42 | `result-track:424820980bcc10f9fa8ac152f7dbaa0092cc3560ffa41ec7f9f13ca212665be2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/instance--d32a8a308c1de72dd278ef14.md) | 54 | `declaration-track:d32a8a308c1de72dd278ef14ddbff89bac0895fc58cd5607ebf0528391b4d1dd` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/instance--ddee85f446c21f3626236aa7.md) | 59 | `declaration-track:ddee85f446c21f3626236aa7b76481629e5214b5abc0c0993f3f2b64ec8e22a7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/instance--127b98166e8f4f28d3c5b3c9.md) | 64 | `declaration-track:127b98166e8f4f28d3c5b3c9188670a7af1b67fba173434aeb643d87fb7bb667` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant58dbcdc3e53c68ce3aa47a9082579ef8be8fd2c38a2209bda9b700fd824fb1cb.lean/declarations/instance--3ea4bbac164fa8f8eae36013.md) | 66 | `declaration-track:3ea4bbac164fa8f8eae360134849d6c1650e8b87cb41523f97c0afd13b396104` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

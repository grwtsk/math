# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Refinements.Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a07cc3ceec66d5495aeaf0ed0b8c9adb0385ebb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a07cc3ceec66d5495aeaf0ed0b8c9adb0385ebb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_iff_surjective_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/declarations/epi-iff-surjective-up-to-refinements--4ebb46da1c71415b2ceae43e.md) | 86 | `result-track:4ebb46da1c71415b2ceae43e0a16a0528e3f802b9c5ed4e69a4d3e1af57ef7bd` |
| 2 | `lemma` | [surjective_up_to_refinements_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/declarations/surjective-up-to-refinements-of-epi--98c74a83becd91f672f4d22b.md) | 97 | `result-track:98c74a83becd91f672f4d22b69a5fdaefe88b3e12492efff50c14ad0e918635e` |
| 3 | `lemma` | [ShortComplex.exact_iff_exact_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/declarations/shortcomplex-exact-iff-exact-up-to-refinements--4be12c828f1c7a5844c84cf5.md) | 101 | `result-track:4be12c828f1c7a5844c84cf5634a7e0418fa3668daf729a3be931a8710274c5a` |
| 4 | `lemma` | [ShortComplex.Exact.exact_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/declarations/shortcomplex-exact-exact-up-to-refinements--cbac9601a94b1d5cd5253a1c.md) | 115 | `result-track:cbac9601a94b1d5cd5253a1c5b7af9ce2541e12c02fea0dc39682df75dbacd9c` |
| 5 | `lemma` | [ShortComplex.eq_liftCycles_homologyπ_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant918e562abddafa2395441c0492f5b6b30c9e49f5ae513cfad1b40713969d494b.lean/declarations/shortcomplex-eq-liftcycles-homology-up-to-refinements--0d90929f23c7f7e430c3b335.md) | 121 | `result-track:0d90929f23c7f7e430c3b335b52b0d1038c83b642f19e69990d1ab1bfa191657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

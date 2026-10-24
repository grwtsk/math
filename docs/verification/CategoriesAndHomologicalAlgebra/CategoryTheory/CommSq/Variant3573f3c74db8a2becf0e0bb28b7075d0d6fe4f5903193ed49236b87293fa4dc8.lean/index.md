# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CommSq.Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5faa2abcf5b612ebef79ccded38329f634fdbb88",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5faa2abcf5b612ebef79ccded38329f634fdbb88`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Refinements` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.CommSq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exact_shortComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/declarations/exact-shortcomplex--0783864f0c5e4862f8f73bbc.md) | 37 | `result-track:0783864f0c5e4862f8f73bbc0ed3c35a7617d001d6f705d392f818d9cbc0edea` |
| 2 | `lemma` | [hom_eq_add_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/declarations/hom-eq-add-up-to-refinements--d7c413fe44c7b7ec955bb0ed.md) | 52 | `result-track:d7c413fe44c7b7ec955bb0ed92e6e39bfdcff886ccedc8c3bacf75fdef06a3b8` |
| 3 | `lemma` | [mono_of_isPullback_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/declarations/mono-of-ispullback-of-mono--647a56bf6d5b791515f44b54.md) | 78 | `result-track:647a56bf6d5b791515f44b544c8c093e3345842e4943a638d0247a5c99a3dbda` |
| 4 | `lemma` | [exact_shortComplex'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant3573f3c74db8a2becf0e0bb28b7075d0d6fe4f5903193ed49236b87293fa4dc8.lean/declarations/exact-shortcomplex--47e15c92551647a7a8024d6b.md) | 99 | `result-track:47e15c92551647a7a8024d6b997d2a58670e8c49b643c28deedf5e872bc9ba94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoryTheory.Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acadd1e5e52dc3ad62330e584ce8d58aa20a5a20",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acadd1e5e52dc3ad62330e584ce8d58aa20a5a20`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Flat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [lTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/declarations/ltensor-shortcomplex-exact--cb5a79030a979c6d856cd28b.md) | 47 | `result-track:cb5a79030a979c6d856cd28b2358296e7a3323a400c33309e13968f7595a66da` |
| 2 | `lemma` | [rTensor_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/declarations/rtensor-shortcomplex-exact--f49793734a6707f6542b7be3.md) | 52 | `result-track:f49793734a6707f6542b7be37c8f137f7a71936d758094ff55c220bff4ba1b4a` |
| 3 | `lemma` | [iff_lTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/declarations/iff-ltensor-preserves-shortcomplex-exact--d925a18c82f0d5a4af3e8aed.md) | 57 | `result-track:d925a18c82f0d5a4af3e8aed1deec45a2108272d6b55b3cd354f67fa64bee69e` |
| 4 | `lemma` | [iff_rTensor_preserves_shortComplex_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoryTheory/Variant3c5ad310a9f32bf8f32171f0e91796735d6e5079916611c5ddab116bc4faa0d5.lean/declarations/iff-rtensor-preserves-shortcomplex-exact--2de266635968bf2b97febb04.md) | 67 | `result-track:2de266635968bf2b97febb04ca484779e12d7c38163a416bed0d55c43b539ed1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

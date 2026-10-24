# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SmallDegreeVieta.Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "753aa275b9295448e7f98a104b10a574e3b9d3ee",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `753aa275b9295448e7f98a104b10a574e3b9d3ee`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_neg_mul_add_of_roots_quadratic_eq_pair](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/eq-neg-mul-add-of-roots-quadratic-eq-pair--19adf6819482e34a17e3bbb8.md) | 19 | `result-track:19adf6819482e34a17e3bbb8891efbc67d0725e990d6f629b05103107a8bbce9` |
| 2 | `lemma` | [eq_mul_mul_of_roots_quadratic_eq_pair](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/eq-mul-mul-of-roots-quadratic-eq-pair--1872dd4c24b99074d2bb013d.md) | 31 | `result-track:1872dd4c24b99074d2bb013d8dc8b0aa690423fa7d61c73eb302de76018b8e3f` |
| 3 | `lemma` | [eq_neg_mul_add_of_aroots_quadratic_eq_pair](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/eq-neg-mul-add-of-aroots-quadratic-eq-pair--e7f3f0665da8fb3204c655b2.md) | 43 | `result-track:e7f3f0665da8fb3204c655b2ea0c0eba5244e13dd1aa454b38400099cbab51de` |
| 4 | `lemma` | [eq_mul_mul_of_aroots_quadratic_eq_pair](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/eq-mul-mul-of-aroots-quadratic-eq-pair--c41383ec7dfeed33490c99e6.md) | 52 | `result-track:c41383ec7dfeed33490c99e62851f20976c851949c5037d882c084f2159169a3` |
| 5 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero--712078f6b19ada86a90d56e8.md) | 60 | `result-track:712078f6b19ada86a90d56e8b07797e9c0370fe09563611284496450355f741e` |
| 6 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero--f603460cfca8a3ef2410387b.md) | 75 | `result-track:f603460cfca8a3ef2410387bc023b754262194f545eab5a0dd7200a3b325cf2c` |
| 7 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero--43b970fd950c7afc2fd1251a.md) | 85 | `result-track:43b970fd950c7afc2fd1251a89e24b779b1efefd90cde0c1134ab99efd7e0482` |
| 8 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantf6c3dd49b2457d46ff604994a988a545562d4e8b81c67df3b68c1fa4afcf8e4a.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero--caf99e7d4428fadd0d7f56ed.md) | 94 | `result-track:caf99e7d4428fadd0d7f56edf5b9053ff453799be360bed9f80c0d6a91f5f419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

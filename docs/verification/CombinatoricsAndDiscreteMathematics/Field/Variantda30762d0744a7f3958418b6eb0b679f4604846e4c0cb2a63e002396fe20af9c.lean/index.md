# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Field.Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50ec1383de7bfc2d3d23b37a11ce249b2c86939b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50ec1383de7bfc2d3d23b37a11ce249b2c86939b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Multiset.sum_map_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/multiset-sum-map-div--208b0729a26c568964fa660a.md) | 18 | `result-track:208b0729a26c568964fa660ab94e0392b727284d8b4bfbea3e0730722f02864c` |
| 2 | `lemma` | [Finset.sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/finset-sum-div--986d6432b9afd26f7b5515d9.md) | 22 | `result-track:986d6432b9afd26f7b5515d9fe29e63b2a70392db8044d65e2ec419d601e4365` |
| 3 | `lemma` | [dens_disjiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/dens-disjiunion--1348754cbf1cc17a5e77f153.md) | 31 | `result-track:1348754cbf1cc17a5e77f153774e9c8dde8b74d9b51e11c5b9e17fd746975782` |
| 4 | `lemma` | [dens_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/dens-biunion--a616cf27b6d1acae1ad9100c.md) | 36 | `result-track:a616cf27b6d1acae1ad9100cda92e8c97b943f3de33e20c70465ad936b4e925e` |
| 5 | `lemma` | [dens_biUnion_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/dens-biunion-le--5c7ddc20d650ff803c2c9ab4.md) | 40 | `result-track:5c7ddc20d650ff803c2c9ab49e4ca4b501cf6eecf1a0de34731e977cd171b925` |
| 6 | `lemma` | [dens_eq_sum_dens_fiberwise](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/dens-eq-sum-dens-fiberwise--2cfe3ca5f775bb4a01f18406.md) | 46 | `result-track:2cfe3ca5f775bb4a01f18406edab423a03fcd90101de11e4b7bc30d9e0fa25b9` |
| 7 | `lemma` | [dens_eq_sum_dens_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Field/Variantda30762d0744a7f3958418b6eb0b679f4604846e4c0cb2a63e002396fe20af9c.lean/declarations/dens-eq-sum-dens-image--7ac0d5b9f521d5cf2856f6e1.md) | 50 | `result-track:7ac0d5b9f521d5cf2856f6e17a1cd9ecc9a6760ab1eb8507f924ec2189bd23b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "453306049652f8e6de9ab732ced4099c39487033",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `453306049652f8e6de9ab732ced4099c39487033`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Canonical` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.OrderIso` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sup_mul_le_mul_sup_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/sup-mul-le-mul-sup-of-nonneg--95138a5a1007a3b7f3700a27.md) | 20 | `result-track:95138a5a1007a3b7f3700a27b1ed3c5da05b6e27da8452ac5e5de37a59577ae2` |
| 2 | `lemma` | [mul_inf_le_inf_mul_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/mul-inf-le-inf-mul-of-nonneg--fa95f1a48b3082cd8d1ff684.md) | 25 | `result-track:fa95f1a48b3082cd8d1ff68493b57550e2c563095dbcb7e71adcc90d4d088d7e` |
| 3 | `lemma` | [sup'_mul_le_mul_sup'_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/sup-mul-le-mul-sup-of-nonneg--aae22caef721611d514f0e49.md) | 29 | `result-track:aae22caef721611d514f0e499cf0f6b4a6e51974c05e3c818798bfbabfdde19e` |
| 4 | `lemma` | [inf'_mul_le_mul_inf'_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/inf-mul-le-mul-inf-of-nonneg--bd709b7ff95ad4a1f621e0df.md) | 35 | `result-track:bd709b7ff95ad4a1f621e0dfbafea2a5f96fcd4ecab2331172a4a50a4c73544f` |
| 5 | `lemma` | [sup'_mul₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/sup-mul--a0c51404276b57dbadc92b8b.md) | 45 | `result-track:a0c51404276b57dbadc92b8bf66634389b1caab9f94bf4f2881b7c9f4d6a8221` |
| 6 | `lemma` | [mul₀_sup'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/mul-sup--2d38663d633a4aa60354fc1a.md) | 49 | `result-track:2d38663d633a4aa60354fc1afe0f24086238af573fe065f77397f09adadb7c36` |
| 7 | `lemma` | [sup'_div₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/sup-div--b93f57e529826d73c114c2c6.md) | 52 | `result-track:b93f57e529826d73c114c2c6287dacffaea99cc46b78b67d0c7f06102c317b00` |
| 8 | `lemma` | [sup_div₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variantf2a7fdbc2880f273fb6a20cb1c721f7936a8f3b2a67d8a257fa3f3035a3bca3b.lean/declarations/sup-div--97842b157e59b4e494dfd095.md) | 58 | `result-track:97842b157e59b4e494dfd095972bdd49c223b6861239f7443da51f889e5ab6f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

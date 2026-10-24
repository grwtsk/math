# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LocallyFinite.Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e75e429862d035e1fcbbb6547c39de33a138885d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e75e429862d035e1fcbbb6547c39de33a138885d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mul_prod_Ico_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-ico-eq-prod-icc--ecf3c8a28aa021bcc374686a.md) | 29 | `result-track:ecf3c8a28aa021bcc374686a8c1f51db92a7c455d6a8605a9566efd633a9f964` |
| 2 | `lemma` | [prod_Ico_mul_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ico-mul-eq-prod-icc--07b2a4565c96e1b466782cef.md) | 36 | `result-track:07b2a4565c96e1b466782cef17a2f8440e02ec0e0ccbb7433ef35f48adaf2f0c` |
| 3 | `lemma` | [mul_prod_Ioc_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-ioc-eq-prod-icc--7873ff428786a6fc141879fe.md) | 43 | `result-track:7873ff428786a6fc141879fe811d5ac451e6eba517940b9e35c5b1eb232b4a6f` |
| 4 | `lemma` | [prod_Ioc_mul_eq_prod_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ioc-mul-eq-prod-icc--be51511b6a4198a33578985b.md) | 50 | `result-track:be51511b6a4198a33578985b91b75589cdee51a54555bb24062adc6c8f253990` |
| 5 | `lemma` | [mul_prod_Ioo_eq_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-ioo-eq-prod-ico--41194e378251c7af2da98462.md) | 57 | `result-track:41194e378251c7af2da984624866699be332c628ac32744885f53c45bf8d9164` |
| 6 | `lemma` | [prod_Ioo_mul_eq_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ioo-mul-eq-prod-ico--a4cd1ab505d6f1e7d089e11f.md) | 64 | `result-track:a4cd1ab505d6f1e7d089e11f18912949b9abe5eadc0d9ffd12b85c460c7ef3b1` |
| 7 | `lemma` | [mul_prod_Ioo_eq_prod_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-ioo-eq-prod-ioc--a88ee11f598355cacbb1ccc7.md) | 71 | `result-track:a88ee11f598355cacbb1ccc734c5de58e077d736865803717a75a7a42e3dc4b9` |
| 8 | `lemma` | [prod_Ioo_mul_eq_prod_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ioo-mul-eq-prod-ioc--3cf2acb40aa8a704bb413889.md) | 78 | `result-track:3cf2acb40aa8a704bb4138892a87060441919ddef156c0ee568e683ee22a0bb0` |
| 9 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-eq-prod-ico-succ-bot--09d9959045b2f1fdc8ce13c3.md) | 87 | `result-track:09d9959045b2f1fdc8ce13c36bba4de31fff6c340e286e01defddaf6a55e670a` |
| 10 | `lemma` | [mul_prod_Ioi_eq_prod_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-ioi-eq-prod-ici--43461d43d5e6be696ec1ef19.md) | 98 | `result-track:43461d43d5e6be696ec1ef19c63c9def7c03f3fe7f960d5a7d3ed35c87786e8d` |
| 11 | `lemma` | [prod_Ioi_mul_eq_prod_Ici](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ioi-mul-eq-prod-ici--9be7afb871c039effa85046a.md) | 105 | `result-track:9be7afb871c039effa85046a54c787786f9dc96461ddce8a45882e40abd1c685` |
| 12 | `lemma` | [mul_prod_Iio_eq_prod_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/mul-prod-iio-eq-prod-iic--6a16718b5380141b8f004e12.md) | 117 | `result-track:6a16718b5380141b8f004e12f5a348e58bba0e31462559f94d030d16372918aa` |
| 13 | `lemma` | [prod_Iio_mul_eq_prod_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-iio-mul-eq-prod-iic--591645a84eb5bf0539b2cf49.md) | 124 | `result-track:591645a84eb5bf0539b2cf494ff9e8ac21e2a061a2d188b1db448d84577a7f04` |
| 14 | `lemma` | [sum_Ico_add_eq_sum_Ico_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/sum-ico-add-eq-sum-ico-add-one--dfa0df390a0afffa3fbdbb64.md) | 142 | `result-track:dfa0df390a0afffa3fbdbb640d40ae6902568532e44ec0c393deae85bc342566` |
| 15 | `lemma` | [prod_Ico_mul_eq_prod_Ico_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-ico-mul-eq-prod-ico-add-one--eab193ef5c18984d4085df33.md) | 146 | `result-track:eab193ef5c18984d4085df3310fe6e6b07b0ccaa065cd94dfa21c207695f10b3` |
| 16 | `lemma` | [prod_prod_Ioi_mul_eq_prod_prod_off_diag](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LocallyFinite/Variantb4ad177cab9e5a2fd9f22a1f14576352ff6632b79c82ff94320b1e091d0ef137.lean/declarations/prod-prod-ioi-mul-eq-prod-prod-off-diag--f5a695fcaa311210eed56fcb.md) | 155 | `result-track:f5a695fcaa311210eed56fcbb169513d32b0a3efa12ca34026a07db397648dd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

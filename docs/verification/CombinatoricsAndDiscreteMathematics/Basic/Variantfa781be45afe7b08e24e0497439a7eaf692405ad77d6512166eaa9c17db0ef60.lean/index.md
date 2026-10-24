# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07ec8ed6f06d3bec91e658c7b9ea32ec20b1d2ac",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07ec8ed6f06d3bec91e658c7b9ea32ec20b1d2ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Canonical` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Nonneg.Floor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Pointwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/instance--460886ca28706d2c709345ce.md) | 32 | `declaration-track:460886ca28706d2c709345ce0362eab55dd1ba419ee4df7971287ee94db17535` |
| 2 | `theorem` | [coe_indicator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-indicator--94e1eebe53f192a6a67f505c.md) | 35 | `result-track:94e1eebe53f192a6a67f505c54df398dd109c2860fc2a91dd45f0686f3253d1d` |
| 3 | `theorem` | [coe_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-list-sum--5fc5a38c276fe1b5b099434b.md) | 40 | `result-track:5fc5a38c276fe1b5b099434bd2a8d696ce20ddeef5fc3add03e188ae698d875c` |
| 4 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-list-prod--b121a52a337ba7bec70b00fc.md) | 44 | `result-track:b121a52a337ba7bec70b00fc0330295b44cb89a4bddb8d9eb1b104ee66e60ffb` |
| 5 | `theorem` | [coe_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-multiset-sum--95cb27e97ec7a9de98217f38.md) | 48 | `result-track:95cb27e97ec7a9de98217f38c5fbc05cfa8b7537e87c714fec78e116eae0159e` |
| 6 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-multiset-prod--fe444bd3ac5e5b3a82514627.md) | 52 | `result-track:fe444bd3ac5e5b3a825146277aa6a2edffb3c1fa8b7b040eb0550bf87ee00e21` |
| 7 | `theorem` | [coe_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-sum--7655abf3c045f5f8c0df5f9c.md) | 58 | `result-track:7655abf3c045f5f8c0df5f9cb54cfeda07361daca8fea7c92f2ffc34e19b2f70` |
| 8 | `lemma` | [coe_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-expect--22585874145da19a3a9c733e.md) | 62 | `result-track:22585874145da19a3a9c733e4b92048038a95bf1523c4c12903983d43c88b87f` |
| 9 | `theorem` | [_root_.Real.toNNReal_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/root-real-tonnreal-sum-of-nonneg--c3e21a37058370cc39f14176.md) | 65 | `result-track:c3e21a37058370cc39f14176349b46a2d038b06fea0e5ef41d75c9f4be8dc154` |
| 10 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/coe-prod--9649bfb412c65dde35748891.md) | 71 | `result-track:9649bfb412c65dde35748891816bf8bc4f452235a12e23772cd329d5dcd02c45` |
| 11 | `theorem` | [_root_.Real.toNNReal_prod_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/root-real-tonnreal-prod-of-nonneg--9c3774ab6e193342fd94c060.md) | 74 | `result-track:9c3774ab6e193342fd94c06055b40be30f8cf7d0855c54557d8c1cd42f186165` |
| 12 | `theorem` | [le_iInf_add_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/le-iinf-add-iinf--b157315d24398d8983f2bd1b.md) | 79 | `result-track:b157315d24398d8983f2bd1bd8169e508b00b4f956c0e5da9fdd4210be85c5fc` |
| 13 | `theorem` | [mul_finset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/mul-finset-sup--122afca9a1e032ff842f49a7.md) | 84 | `result-track:122afca9a1e032ff842f49a750b9e5f00730eb0d9e6625d197e3587a8262726c` |
| 14 | `theorem` | [finset_sup_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/finset-sup-mul--976ece1400ca4404e31a7db7.md) | 88 | `result-track:976ece1400ca4404e31a7db7d3aefd5033ba8cedb70f10d486814c20ee3d910d` |
| 15 | `theorem` | [finset_sup_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/finset-sup-div--8a04c3ca55370bb019f97ba2.md) | 92 | `result-track:8a04c3ca55370bb019f97ba29cf4960fafae14972f628a9c1cfb86a3a48796fa` |
| 16 | `theorem` | [sub_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/sub-div--1fbe7ec51f9915d39eb26ef1.md) | 107 | `result-track:1fbe7ec51f9915d39eb26ef19b95ccc2a281a2aaaadc29f233be12806810478a` |
| 17 | `theorem` | [iInf_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/iinf-mul--53e3d9112d28afcdd09887aa.md) | 118 | `result-track:53e3d9112d28afcdd09887aa8166a6e74d3bba3705bb20148c419c8c4307f51e` |
| 18 | `theorem` | [mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/mul-iinf--e0ce7f921f48bc4016f6443a.md) | 122 | `result-track:e0ce7f921f48bc4016f6443a4e512a85d705b60a6b160b565e4e91d5c720754c` |
| 19 | `theorem` | [mul_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/mul-isup--d2987e54f5df4d077843d8d3.md) | 125 | `result-track:d2987e54f5df4d077843d8d32c5860d17d4b6dc56d8abe47f421fd8a1ba9df8d` |
| 20 | `theorem` | [iSup_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/isup-mul--a9027be9c5c1c416d35091cb.md) | 129 | `result-track:a9027be9c5c1c416d35091cb94248e9958b6f000e91a38af2c5a3118b875917c` |
| 21 | `theorem` | [iSup_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/isup-div--23c49b5eacb491e21507f1f4.md) | 133 | `result-track:23c49b5eacb491e21507f1f490257d478543a9728b5f4ce2aee38be83e79e0c0` |
| 22 | `theorem` | [mul_iSup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/mul-isup-le--d17a2dfa39e41d976ba49004.md) | 136 | `result-track:d17a2dfa39e41d976ba49004376b9adb1b998f702b02e5ce57449979c9469077` |
| 23 | `theorem` | [iSup_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/isup-mul-le--cfb59e8a9a8f64a91ec6bfa5.md) | 140 | `result-track:cfb59e8a9a8f64a91ec6bfa54d4941200b50d62c2b5f24112d752a1ae4429057` |
| 24 | `theorem` | [iSup_mul_iSup_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/isup-mul-isup-le--cd06e665df1c26774f75a195.md) | 144 | `result-track:cd06e665df1c26774f75a19581b590168ccb4d5d16df67db2b9a1730a726976b` |
| 25 | `theorem` | [le_mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/le-mul-iinf--7a5ffd0a61d636bae6935cea.md) | 150 | `result-track:7a5ffd0a61d636bae6935cea9ebbf1fb47ad52d6a1bb4213da3583127ae6c321` |
| 26 | `theorem` | [le_iInf_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/le-iinf-mul--2f9d69cfa8c41191b058c8ee.md) | 154 | `result-track:2f9d69cfa8c41191b058c8ee2306cff0d04354253f703159ae391ade4be4dccc` |
| 27 | `theorem` | [le_iInf_mul_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Basic/Variantfa781be45afe7b08e24e0497439a7eaf692405ad77d6512166eaa9c17db0ef60.lean/declarations/le-iinf-mul-iinf--8cbe017f7691025d90ba3e54.md) | 158 | `result-track:8cbe017f7691025d90ba3e54f76353c75105473cab2a095d8ab6d9bb9947023d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b3c1d7e9599de607531d631cd713bb0727713f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b3c1d7e9599de607531d631cd713bb0727713f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.NoncommProd` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-list-prod--7e9c7ca8641ad75a2619255d.md) | 36 | `result-track:7e9c7ca8641ad75a2619255d3c8a672343828d37afaba946c77cfd13f86df841` |
| 2 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-multiset-prod--5ba197ae3c287a517106a9b5.md) | 40 | `result-track:5ba197ae3c287a517106a9b575ba53ceebaa4c8fec4f36159eb1c5d209ddb638` |
| 3 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-finset-prod--d727d9c74516cf5fcf7a6d75.md) | 45 | `result-track:d727d9c74516cf5fcf7a6d75da130abde9f5670ccb66cf6c8617413b1b1ef67c` |
| 4 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/list-prod-mem--4d704274aecca6a4c303a13d.md) | 55 | `result-track:4d704274aecca6a4c303a13d3a3228481165d5dbbbc27b2474e791e7c8c824ed` |
| 5 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/multiset-prod-mem--5c2629553047c83f384f2a2b.md) | 64 | `result-track:5c2629553047c83f384f2a2bb229dc0637ef2f72b5037915ba647cdfbd9562a0` |
| 6 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/prod-mem--1e9099b32cc3fb343785da1c.md) | 75 | `result-track:1e9099b32cc3fb343785da1c75420600cc2be37f5e7387f52b41f9e17603b12c` |
| 7 | `theorem` | [coe_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-list-prod--c398c1e2c123dfa4631486e1.md) | 88 | `result-track:c398c1e2c123dfa4631486e10fc0b201838cd8f349a07dfe14f9512dcd83c6cd` |
| 8 | `theorem` | [coe_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-multiset-prod--b0e874a70e1fdb9b22e91786.md) | 92 | `result-track:b0e874a70e1fdb9b22e91786d2dac17ee9321a7daf17cc0d506b4580f804f9d5` |
| 9 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/coe-finset-prod--12ec0a16a5bbe07ee937f0ba.md) | 97 | `result-track:12ec0a16a5bbe07ee937f0ba2131b0b3de0949162013bcd91f5781c8676a329e` |
| 10 | `theorem` | [list_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/list-prod-mem--ee0663a56a05f4be03c1a743.md) | 103 | `result-track:ee0663a56a05f4be03c1a743c231bbb4b7c9f3262220a6f05257fedd490c587c` |
| 11 | `theorem` | [multiset_prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/multiset-prod-mem--7afc3c05c9a985d9ae848efc.md) | 112 | `result-track:7afc3c05c9a985d9ae848efc8df2fc6a2b334a4fc137f3a12b0cfb7dcc83c246` |
| 12 | `theorem` | [multiset_noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/multiset-noncommprod-mem--3f9131ae018714ff094e6dfb.md) | 119 | `result-track:3f9131ae018714ff094e6dfbd0d5484d470e272cd7d55aa61fe28bb2e7fee2e1` |
| 13 | `theorem` | [prod_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/prod-mem--7a0f5f1b41895ae232f9588d.md) | 130 | `result-track:7a0f5f1b41895ae232f9588d94a9f800fff5d92b493d81311060f8f493050f2f` |
| 14 | `theorem` | [noncommProd_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/noncommprod-mem--6680c51e497e9a8906ce3d6d.md) | 137 | `result-track:6680c51e497e9a8906ce3d6d540e970e12d917260d139f494e5da7a6ebcd2884` |
| 15 | `lemma` | [mem_closure_iff_exists_finset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/mem-closure-iff-exists-finset-subset--7d014cb67920969b437b5340.md) | 151 | `result-track:7d014cb67920969b437b5340ca8fa89b1eae43c24dadf9b0d0a625b1c44c4312` |
| 16 | `lemma` | [mem_closure_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3.lean/declarations/mem-closure-finset--f6ef150b33ece35c494dfd2f.md) | 176 | `result-track:f6ef150b33ece35c494dfd2f39c5715450a55826bb317bcd2f32bf67a5ef33b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

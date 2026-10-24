# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35eb82698c9d5492a1ca83fbf18bee93e4101da0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35eb82698c9d5492a1ca83fbf18bee93e4101da0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/image-list-prod--b5b6bff37fd3fffc82e18961.md) | 34 | `result-track:b5b6bff37fd3fffc82e18961527a45b5ff3e9dba8ed8aefdd7b7170e14286cad` |
| 2 | `theorem` | [image_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/image-multiset-prod--3f30b2047a8e46ebabbfb0b9.md) | 46 | `result-track:3f30b2047a8e46ebabbfb0b9af79f4b448f934021a223d86ff347958c08b4f38` |
| 3 | `theorem` | [image_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/image-finset-prod--e600a2a79e460415a7b8f9c0.md) | 53 | `result-track:e600a2a79e460415a7b8f9c02c2f9fef3f397972bd1adcad391999bac5fd18c4` |
| 4 | `theorem` | [mem_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/mem-finset-prod--7ae1f4e3f9a7fd90ca253ee5.md) | 59 | `result-track:7ae1f4e3f9a7fd90ca253ee553d3cfe93b2547f5e009ff13ccb3a204e36254b1` |
| 5 | `lemma` | [mem_pow_iff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/mem-pow-iff-prod--045800c28cc5bf5088e1f16a.md) | 83 | `result-track:045800c28cc5bf5088e1f16ade87cbc81a7dd03f1a5b04b2bcff750615ef1669` |
| 6 | `theorem` | [mem_fintype_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/mem-fintype-prod--91ef53cd2845bd834a6c5865.md) | 89 | `result-track:91ef53cd2845bd834a6c586502d7d9e1c6e634be4d0b7a023285d5b66bcc11cb` |
| 7 | `theorem` | [list_prod_mem_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/list-prod-mem-list-prod--5b462a258348ee356b8ad583.md) | 96 | `result-track:5b462a258348ee356b8ad5833b4d5c7d7e2ebb6e00dc097ead0b1bfe5f7e001e` |
| 8 | `theorem` | [list_prod_subset_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/list-prod-subset-list-prod--49cb200538eaf4a8823f5b51.md) | 106 | `result-track:49cb200538eaf4a8823f5b5143233662ab8e5e4f791ac75f80e78a9d68a215ca` |
| 9 | `theorem` | [list_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/list-prod-singleton--835b75096b3a15ca78eaa905.md) | 115 | `result-track:835b75096b3a15ca78eaa905cd9ee50d95c3257e0783b1f16192a83875f17014` |
| 10 | `theorem` | [multiset_prod_mem_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/multiset-prod-mem-multiset-prod--8c5aae04161e2d296e18355b.md) | 121 | `result-track:8c5aae04161e2d296e18355bb809aea0dd5a4bbc8de11912abb23e56faeb822d` |
| 11 | `theorem` | [multiset_prod_subset_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/multiset-prod-subset-multiset-prod--66d612d83975db1f98948578.md) | 129 | `result-track:66d612d83975db1f9894857868f86ae420d16014512aa3408a177a8f4cfa5f79` |
| 12 | `theorem` | [multiset_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/multiset-prod-singleton--12277849c218bfb74a91e4c6.md) | 136 | `result-track:12277849c218bfb74a91e4c6e4a943502557b599cbce6e1c5b9f84d6eeb09c48` |
| 13 | `theorem` | [finset_prod_mem_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/finset-prod-mem-finset-prod--4f55abef0fcfc89730fde1c2.md) | 142 | `result-track:4f55abef0fcfc89730fde1c25e4375daccda1cba6fe558282a76724aab03a835` |
| 14 | `theorem` | [finset_prod_subset_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/finset-prod-subset-finset-prod--b0e71b827af55bf862c3413a.md) | 148 | `result-track:b0e71b827af55bf862c3413aeae473ac93171ec719cf4608ce781198eee5acd1` |
| 15 | `theorem` | [finset_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/finset-prod-singleton--e1484c06d1af77efca2363ec.md) | 153 | `result-track:e1484c06d1af77efca2363ec66567c90e66de4426be338d6f3fba51695374f3d` |
| 16 | `theorem` | [image_finset_prod_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/image-finset-prod-pi--b08760f480bbc419455b09a1.md) | 159 | `result-track:b08760f480bbc419455b09a157c26a4cfe84d643798ae87389839a05f26c5012` |
| 17 | `theorem` | [image_fintype_prod_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantb9422e14ab681639cfe596fda9ed43ad8a6daccb4231c3567e9a1992bc8f4777.lean/declarations/image-fintype-prod-pi--f8b8e256a14b8143016db6ae.md) | 166 | `result-track:f8b8e256a14b8143016db6ae9c7845fd1278cb683d1c62501ef4382b84fb0d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

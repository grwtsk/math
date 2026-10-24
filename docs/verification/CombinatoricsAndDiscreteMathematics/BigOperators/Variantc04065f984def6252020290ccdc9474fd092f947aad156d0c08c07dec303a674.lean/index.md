# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2adf0a5462b176dcd83046fc61a5014ac03feeeb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2adf0a5462b176dcd83046fc61a5014ac03feeeb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/image-list-prod--91d2b74efa47559ae287ed45.md) | 26 | `result-track:91d2b74efa47559ae287ed455e4fff6240648ca8f67a1096fc95ba5a174fa71d` |
| 2 | `theorem` | [image_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/image-multiset-prod--8659db2395fdacd44802c6d7.md) | 38 | `result-track:8659db2395fdacd44802c6d7014932f4cc384665a23e3567399e433877acd220` |
| 3 | `theorem` | [image_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/image-finset-prod--c2bde2f53e6a881fcf38791b.md) | 45 | `result-track:c2bde2f53e6a881fcf38791bfd1c2433e94afc7f5a184341ed183f06fb9b4d09` |
| 4 | `theorem` | [mem_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/mem-finset-prod--1115f1d7d012fa9490de9301.md) | 51 | `result-track:1115f1d7d012fa9490de9301b62d5a483b7b1200737c2f23d8cfa50d22691461` |
| 5 | `lemma` | [mem_pow_iff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/mem-pow-iff-prod--d30ff5bc3fb595c3ea769e6a.md) | 75 | `result-track:d30ff5bc3fb595c3ea769e6adc7a467d09a12440b090c3b68a77abdb0ce896b9` |
| 6 | `theorem` | [mem_fintype_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/mem-fintype-prod--779f45c874aa3b50827aa2a3.md) | 81 | `result-track:779f45c874aa3b50827aa2a3e530385a1d0058292622b8c4b8cc45415efaa2d9` |
| 7 | `theorem` | [list_prod_mem_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/list-prod-mem-list-prod--a4c2355beb68ff3ea13908a2.md) | 88 | `result-track:a4c2355beb68ff3ea13908a2be2080b0d9cb29143524ede44daafbef856e13e4` |
| 8 | `theorem` | [list_prod_subset_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/list-prod-subset-list-prod--147ebe7d4de9370642e36e6c.md) | 98 | `result-track:147ebe7d4de9370642e36e6cd1286d552f47b5d738641434ff15a292542bde7a` |
| 9 | `theorem` | [list_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/list-prod-singleton--c527240a8d7af1547f1a4cec.md) | 107 | `result-track:c527240a8d7af1547f1a4cec28ed6c37063215ddb5ff932fe1e6508be0f2011f` |
| 10 | `theorem` | [multiset_prod_mem_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/multiset-prod-mem-multiset-prod--4b9b02bc705b00f55fe875b5.md) | 113 | `result-track:4b9b02bc705b00f55fe875b583bd74b48b7811436e6d8299d16a150fab4366e8` |
| 11 | `theorem` | [multiset_prod_subset_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/multiset-prod-subset-multiset-prod--8008ec85da693d1ccea727c4.md) | 121 | `result-track:8008ec85da693d1ccea727c4a049c705079ed09c20b66db17384b463ea13cde7` |
| 12 | `theorem` | [multiset_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/multiset-prod-singleton--a78c4035fde6723bcfe8494f.md) | 128 | `result-track:a78c4035fde6723bcfe8494f70036d71e62d9706dfed6e5c18f2c60fe63fb842` |
| 13 | `theorem` | [finset_prod_mem_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/finset-prod-mem-finset-prod--2d5c40fc5f4707d2ef6703b4.md) | 134 | `result-track:2d5c40fc5f4707d2ef6703b4e6a053c60fd000d03d0bd3a67db99f98ecde564d` |
| 14 | `theorem` | [finset_prod_subset_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/finset-prod-subset-finset-prod--b6f67572b7a821c4711bfdfc.md) | 140 | `result-track:b6f67572b7a821c4711bfdfc7000b5cd05517dc77b692d6bca298356f9c011ad` |
| 15 | `theorem` | [finset_prod_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/finset-prod-singleton--13e4cbdcd26cb8f29fdf1ca8.md) | 145 | `result-track:13e4cbdcd26cb8f29fdf1ca8eb5630aeea12ae2974bb55e5ab4298811b767f88` |
| 16 | `theorem` | [image_finset_prod_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/image-finset-prod-pi--81bb1b3c8c085a6eb97b8cc8.md) | 151 | `result-track:81bb1b3c8c085a6eb97b8cc8c5420dcc0447a32fac9f69161ef4b7f960ed5921` |
| 17 | `theorem` | [image_fintype_prod_pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variantc04065f984def6252020290ccdc9474fd092f947aad156d0c08c07dec303a674.lean/declarations/image-fintype-prod-pi--33910a986d3235950d43d7fd.md) | 158 | `result-track:33910a986d3235950d43d7fddeb5d3983c5cabe0be0dfe3b3723beb252ec51aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

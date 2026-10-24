# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22631d5bbba8f7c0bd7bac57c40371f45dbacce8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22631d5bbba8f7c0bd7bac57c40371f45dbacce8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.WithZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Monic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-list-sum-le--e927539a3ee026fb21ed5a36.md) | 56 | `result-track:e927539a3ee026fb21ed5a3610ec49cb6bbf53096b4145bb5777436dcb4aa845` |
| 2 | `theorem` | [natDegree_multiset_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-multiset-sum-le--b94f3b49ce213eb3887cef5b.md) | 60 | `result-track:b94f3b49ce213eb3887cef5b4cc3e9d33780641b6636c0e3c7d21d0ba1fc6c10` |
| 3 | `theorem` | [natDegree_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-sum-le--79dfd76430cc230ca96a92c7.md) | 65 | `result-track:79dfd76430cc230ca96a92c7fdfba2b1331fea78205573dfea85b0f169c6acb4` |
| 4 | `theorem` | [degree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-list-sum-le--5b4db90dbbe0de1962964871.md) | 70 | `result-track:5b4db90dbbe0de19629648712e2c3c73d6a3d392615f4d7329d35e0a86d315dd` |
| 5 | `theorem` | [natDegree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-list-prod-le--cb2feb10b878751ed6500025.md) | 84 | `result-track:cb2feb10b878751ed6500025984b0186575cd92c15d24748c72a91798753f8a0` |
| 6 | `theorem` | [degree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-list-prod-le--b1dcfd6b9411247af169874b.md) | 90 | `result-track:b1dcfd6b9411247af169874bd4280f889e50e8350f614bae30bbf7d3de616e68` |
| 7 | `theorem` | [coeff_list_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/coeff-list-prod-of-natdegree-le--a8879083962f705edefbcd08.md) | 96 | `result-track:a8879083962f705edefbcd08c9abb8a2f6ea42b03f5437011ac9d3ee0bdc6aaf` |
| 8 | `theorem` | [natDegree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-multiset-prod-le--328148e1c0ee3278e4d60885.md) | 124 | `result-track:328148e1c0ee3278e4d60885fa653e73d8f0c8603c1424d0cf3edc53069871f7` |
| 9 | `theorem` | [natDegree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-prod-le--6c292067878fdd9ce5fea291.md) | 128 | `result-track:6c292067878fdd9ce5fea2917b37c58c9f496e014559668360622a62beae7bba` |
| 10 | `theorem` | [degree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-multiset-prod-le--4e92905bcd327fcf8d99cfea.md) | 135 | `result-track:4e92905bcd327fcf8d99cfea8d84ff1a9bbaaed104f3fa56af54a8d277dbea88` |
| 11 | `theorem` | [degree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-prod-le--cf5d738b84549bb0628782e3.md) | 139 | `result-track:cf5d738b84549bb0628782e362020902c5afd279bd306e2ca9ea0c1f641dace3` |
| 12 | `theorem` | [leadingCoeff_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/leadingcoeff-multiset-prod--677b3916935bbd48261a4cc2.md) | 149 | `result-track:677b3916935bbd48261a4cc27da0f1823fa4f6a0715b2d0f24d88d938783bf35` |
| 13 | `theorem` | [leadingCoeff_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/leadingcoeff-prod--75a8877e92e5a626a0f723ca.md) | 165 | `result-track:75a8877e92e5a626a0f723cab6e1fb0a9b86795b7242302582c5ed6ea9ceb483` |
| 14 | `theorem` | [natDegree_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-multiset-prod--978f0853ea8474fbbc0fd2fd.md) | 176 | `result-track:978f0853ea8474fbbc0fd2fdf05f60b8d1c436aba34e733223ba2a0c43bae626` |
| 15 | `theorem` | [natDegree_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-prod--924b0fc20f411e390b07f3dd.md) | 193 | `result-track:924b0fc20f411e390b07f3dd30a5f9b7ee3a42c15e193204dba5354706413590` |
| 16 | `theorem` | [natDegree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-multiset-prod-of-monic--47843aeb54582cc087a6c6bc.md) | 198 | `result-track:47843aeb54582cc087a6c6bc7865c51250e5097140ffb935675fc78e5c0133f2` |
| 17 | `theorem` | [natDegree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-prod-of-monic--8a7113141c59c01aa7f40315.md) | 214 | `result-track:8a7113141c59c01aa7f403153120c27abd2bd81ad204bfbe5f0253c933d34ecd` |
| 18 | `theorem` | [coeff_multiset_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/coeff-multiset-prod-of-natdegree-le--7c4670d1dee7aa4acec199e8.md) | 219 | `result-track:7c4670d1dee7aa4acec199e8702690fddebac1d8017404ef2ea33155eb4e3d9c` |
| 19 | `theorem` | [coeff_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/coeff-prod-of-natdegree-le--5ae839c86b9a404516bce340.md) | 225 | `result-track:5ae839c86b9a404516bce340c032d1a7365d877eaaa96aaca4a09f33b146d61a` |
| 20 | `theorem` | [coeff_zero_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/coeff-zero-multiset-prod--9136baaecdb6b57a3c13528c.md) | 234 | `result-track:9136baaecdb6b57a3c13528cb7be85ed9540b728813faf1816fd0502ad1abd9e` |
| 21 | `theorem` | [coeff_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/coeff-zero-prod--4c1f7aa9ea1caeef499b343a.md) | 239 | `result-track:4c1f7aa9ea1caeef499b343ae42191f3a88b80641cbcba6a56952f744ed7be7d` |
| 22 | `theorem` | [multiset_prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/multiset-prod-x-sub-c-nextcoeff--4536a423983fead9bcffd2cb.md) | 253 | `result-track:4536a423983fead9bcffd2cb2d5d93d3383011b8930e03eb7cfe87b5375d002a` |
| 23 | `theorem` | [prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/prod-x-sub-c-nextcoeff--886802369e46930df1169812.md) | 263 | `result-track:886802369e46930df116981240cd5627399fc6e807f393baccc44746016aa0dd` |
| 24 | `theorem` | [multiset_prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/multiset-prod-x-sub-c-coeff-card-pred--7bf59a7695a44516da233650.md) | 269 | `result-track:7bf59a7695a44516da233650f9e233a34aa341d0d56c0f285239565d20986144` |
| 25 | `theorem` | [prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/prod-x-sub-c-coeff-card-pred--7b51d2f348f56e08baaf7764.md) | 286 | `result-track:7b51d2f348f56e08baaf77641baa0bc44957feeb140111a586d78dc683458685` |
| 26 | `theorem` | [degree_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-list-prod--d00d2dd6d4d8253cbe061761.md) | 304 | `result-track:d00d2dd6d4d8253cbe061761d189e2647dc9bffb7209d05e3c63e6c9ba254d0f` |
| 27 | `theorem` | [natDegree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-prod--777f83677b1c1c68cd6f236f.md) | 320 | `result-track:777f83677b1c1c68cd6f236f873dfdcf1e746f3d103c4649e430119afc4532ed` |
| 28 | `theorem` | [natDegree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/natdegree-multiset-prod--29c5bee25b23d9aac283c2b3.md) | 328 | `result-track:29c5bee25b23d9aac283c2b376363963e3481882530136c73de17870e9b775b2` |
| 29 | `theorem` | [degree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-multiset-prod--f499aeb9b595c33023378f3b.md) | 340 | `result-track:f499aeb9b595c33023378f3bc79fb36e055c0498ccd1a1ad387f77aadc7f88d7` |
| 30 | `theorem` | [degree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/degree-prod--f118691757598b7d816b8629.md) | 347 | `result-track:f118691757598b7d816b86294577bd1d92d9645a4bbf70cca439f9f075a0ce46` |
| 31 | `theorem` | [leadingCoeff_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/leadingcoeff-multiset-prod--34af97ab8d43513ecaeae632.md) | 357 | `result-track:34af97ab8d43513ecaeae632446df8f69fca0b126e45535a81d67bcf342acd8f` |
| 32 | `theorem` | [leadingCoeff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8d59bc149c4b96a1f7461eadc6cfe83ffeaa5eab7000aa10836776f25d6a58ad.lean/declarations/leadingcoeff-prod--8e71fb452be62ab9d602839a.md) | 369 | `result-track:8e71fb452be62ab9d602839a7440a0e0c27e233dd52c7ce4eeb1072b6d700606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

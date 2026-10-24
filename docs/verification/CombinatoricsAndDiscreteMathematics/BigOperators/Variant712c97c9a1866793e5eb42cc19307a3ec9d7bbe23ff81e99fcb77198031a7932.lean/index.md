# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36053a924df8f4cd78d7da2888f6d692227cebc",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36053a924df8f4cd78d7da2888f6d692227cebc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Monic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-list-sum-le--d1b5d69fc5334e90196476a5.md) | 45 | `result-track:d1b5d69fc5334e90196476a505f0a0eae7fd50c94dfccdee2389cb80a02e7274` |
| 2 | `theorem` | [natDegree_multiset_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-sum-le--55e0c772418d15bd75c6fd49.md) | 51 | `result-track:55e0c772418d15bd75c6fd4928771ea10e91010d015056d7fd7c3d1aaca59e48` |
| 3 | `theorem` | [natDegree_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-sum-le--6cbb10fe748fda46a9c407f9.md) | 55 | `result-track:6cbb10fe748fda46a9c407f921eb34f63a1a68c5016a6a11e9269c6d28c8de6c` |
| 4 | `lemma` | [natDegree_sum_le_of_forall_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-sum-le-of-forall-le--9d1e57079a81bba287326c0b.md) | 59 | `result-track:9d1e57079a81bba287326c0b7a3aad6da77795a26e2834e4268074d08815fd60` |
| 5 | `theorem` | [degree_list_sum_le_of_forall_degree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-list-sum-le-of-forall-degree-le--ec215ffc5c7f6ab887ac0f1b.md) | 63 | `result-track:ec215ffc5c7f6ab887ac0f1bb060f09a1a86da4c6558d1ee901f519743ca9b8d` |
| 6 | `theorem` | [degree_list_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-list-sum-le--55889e15b21c300fe79b4302.md) | 74 | `result-track:55889e15b21c300fe79b4302f62511e9cd71209e01de814fe34edab8934ae4e6` |
| 7 | `theorem` | [natDegree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-list-prod-le--75e04fa809f19e82d16fc13d.md) | 86 | `result-track:75e04fa809f19e82d16fc13dccd76f9856ae19bf4c4b8cf1cccc9f67e1b431fa` |
| 8 | `theorem` | [degree_list_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-list-prod-le--e06d74de3034e3621e2c0426.md) | 91 | `result-track:e06d74de3034e3621e2c0426d41b5bb146f166e46bbf560329abaad70b2ae07b` |
| 9 | `theorem` | [coeff_list_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/coeff-list-prod-of-natdegree-le--689f739bed67c8c52f9b6ba9.md) | 96 | `result-track:689f739bed67c8c52f9b6ba97b6dada62b266c49027a8a08d267f2b1ab71ebc3` |
| 10 | `theorem` | [natDegree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-prod-le--6cbb35983be68e808963ca41.md) | 116 | `result-track:6cbb35983be68e808963ca417972961480702079f887372d098d7dc6a2167262` |
| 11 | `theorem` | [natDegree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-prod-le--86ff7163316e693a49554abf.md) | 119 | `result-track:86ff7163316e693a49554abf28e7a150c61d0b59fc7126de37bb95b034901e39` |
| 12 | `theorem` | [degree_multiset_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-multiset-prod-le--a2fafc4b922fda21d79a1e15.md) | 125 | `result-track:a2fafc4b922fda21d79a1e15b55aef6ee020f36c3fb5031a8bdb911e65324182` |
| 13 | `theorem` | [degree_prod_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-prod-le--402b838fdde3c59d15335a92.md) | 128 | `result-track:402b838fdde3c59d15335a9249f836ffff7b95097f5857aaa6cfdf8f6c6d5a1b` |
| 14 | `theorem` | [leadingCoeff_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/leadingcoeff-multiset-prod--9cd85224d3a079a849b5f446.md) | 137 | `result-track:9cd85224d3a079a849b5f4461b64fcc0ae4307dbd94451701630595abf24d184` |
| 15 | `theorem` | [leadingCoeff_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/leadingcoeff-prod--d8972f94a221e34cdeb1d66c.md) | 156 | `result-track:d8972f94a221e34cdeb1d66cc0974429773f1f138eebcf8332b234c2b1543eba` |
| 16 | `theorem` | [natDegree_multiset_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-prod--1a91d26cf8e129817dff8410.md) | 166 | `result-track:1a91d26cf8e129817dff841034b8fb68344204337053a15c989a31010a1e5b31` |
| 17 | `theorem` | [natDegree_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-prod--94d8a299a9bfd23ebd49723e.md) | 182 | `result-track:94d8a299a9bfd23ebd49723eccca115c3e300b87b7ce4806aa4507237d3c18e5` |
| 18 | `theorem` | [natDegree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-prod-of-monic--fbdbd01bac7135026e0e699d.md) | 186 | `result-track:fbdbd01bac7135026e0e699d94dd64a495a209b0c4f6aca7ace09f7179682d32` |
| 19 | `theorem` | [degree_multiset_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-multiset-prod-of-monic--8b59c58b160783c4e6409a36.md) | 201 | `result-track:8b59c58b160783c4e6409a36bc7c7bf1f7c878e711dcbe0673fcda18e9bf0148` |
| 20 | `theorem` | [natDegree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-prod-of-monic--ceed2bf1bb02c5d7bf794e0c.md) | 208 | `result-track:ceed2bf1bb02c5d7bf794e0c95378b60fe5cd9dc11d5261d55cf26d6c6c2c363` |
| 21 | `theorem` | [degree_prod_of_monic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-prod-of-monic--5368ff5d50fa6b0a39b1dc56.md) | 212 | `result-track:5368ff5d50fa6b0a39b1dc563f35ce5f3e58c60a6dfbb8af18e1d3b818ad7d03` |
| 22 | `theorem` | [coeff_multiset_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/coeff-multiset-prod-of-natdegree-le--74ffdedaff2d921482127d47.md) | 216 | `result-track:74ffdedaff2d921482127d476c9a620ff037c7592c4e6acdc8a6686bc22b1f5d` |
| 23 | `theorem` | [coeff_prod_of_natDegree_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/coeff-prod-of-natdegree-le--857c2aad598898501f0fb48c.md) | 221 | `result-track:857c2aad598898501f0fb48cbdb4a7a8e230bf97f90bee4c3547fc418f0bb675` |
| 24 | `theorem` | [coeff_zero_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/coeff-zero-multiset-prod--ef44ea43d3382d1e88acc686.md) | 229 | `result-track:ef44ea43d3382d1e88acc6860c5b6d5af97be1eb859c46835f8097fdd2ee7488` |
| 25 | `theorem` | [coeff_zero_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/coeff-zero-prod--a629aedd731f8c09424c3a85.md) | 233 | `result-track:a629aedd731f8c09424c3a85456d89b09a6306577520c7b9ad43b4fc061f17fe` |
| 26 | `theorem` | [multiset_prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/multiset-prod-x-sub-c-nextcoeff--881ecb0b4123b7cac0065a4a.md) | 246 | `result-track:881ecb0b4123b7cac0065a4aca7d7decf44347bf63799253b7cb2a0111e95f42` |
| 27 | `theorem` | [prod_X_sub_C_nextCoeff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/prod-x-sub-c-nextcoeff--e97fb2316f136dec3996d504.md) | 254 | `result-track:e97fb2316f136dec3996d5043f3482d4272865b6d5ce2fd4d53686e4f6953ddd` |
| 28 | `theorem` | [multiset_prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/multiset-prod-x-sub-c-coeff-card-pred--b20a30242666edef7ba008de.md) | 258 | `result-track:b20a30242666edef7ba008de2a9ddaec07379d007995a132ffcad4d7bb116b8a` |
| 29 | `theorem` | [prod_X_sub_C_coeff_card_pred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/prod-x-sub-c-coeff-card-pred--c87ba5a963b0ef0590e48f6e.md) | 274 | `result-track:c87ba5a963b0ef0590e48f6efd81616c211712a519e5fb73a9abfbac7281199d` |
| 30 | `lemma` | [natDegree_multiset_prod_X_sub_C_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-prod-x-sub-c-eq-card--6f0cb36031a589430cf40430.md) | 281 | `result-track:6f0cb36031a589430cf404308da562ae76bbe6a05dcf27bbfdfe374482cf6f34` |
| 31 | `lemma` | [natDegree_finset_prod_X_sub_C_eq_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-finset-prod-x-sub-c-eq-card--4149a2ad41db29c18d15b871.md) | 288 | `result-track:4149a2ad41db29c18d15b871253886a285e989744f909b485485179abc37c439` |
| 32 | `theorem` | [degree_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-list-prod--8653db272a80f1c744973ba8.md) | 305 | `result-track:8653db272a80f1c744973ba827f535edb39676418f963af140fbbbbbd0324847` |
| 33 | `theorem` | [natDegree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-prod--23ad461306889286359bc6cd.md) | 320 | `result-track:23ad461306889286359bc6cdd348a8139ce31766b8a4ec97e0c645bac7ab5f67` |
| 34 | `theorem` | [natDegree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/natdegree-multiset-prod--9853352b801accb59c12b851.md) | 327 | `result-track:9853352b801accb59c12b8516a55134c89f3e21fc2cf93e93986929513f25eab` |
| 35 | `theorem` | [degree_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-multiset-prod--599586fb7ea5dd09946db5a5.md) | 338 | `result-track:599586fb7ea5dd09946db5a5a5ee6d2fcad55fa12e1f25497721f2456cdd1b84` |
| 36 | `theorem` | [degree_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/degree-prod--d226675c30b97fdf8e84c5a5.md) | 344 | `result-track:d226675c30b97fdf8e84c5a5b7a869b387a40c95af6742720691925de4330e61` |
| 37 | `theorem` | [leadingCoeff_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/leadingcoeff-multiset-prod--0bee271d06176b4b0dedef89.md) | 353 | `result-track:0bee271d06176b4b0dedef8979ae64dd6828ca9d3ceca850ca71b2c66bcffd59` |
| 38 | `theorem` | [leadingCoeff_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant712c97c9a1866793e5eb42cc19307a3ec9d7bbe23ff81e99fcb77198031a7932.lean/declarations/leadingcoeff-prod--c94d4418996935492ab656ea.md) | 364 | `result-track:c94d4418996935492ab656ea5a8082134761150a522c0f69b08bee048a566ab1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

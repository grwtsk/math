# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5d52987d7103493a9a7b5518f3c837aaa237f1f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5d52987d7103493a9a7b5518f3c837aaa237f1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddLeftMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/instaddleftmono--44aba60b7d472dec7bf94414.md) | 32 | `declaration-track:44aba60b7d472dec7bf94414e5b07972516dbca52bff87285ce49c5ae8ab3470` |
| 2 | `instance` | [instAddLeftReflectLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/instaddleftreflectle--ad88c123f98d92cb44693b68.md) | 34 | `declaration-track:ad88c123f98d92cb44693b685d3404ceee7dcc9f176aed02146e6e4674ceee92` |
| 3 | `instance` | [instAddCancelCommMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/instaddcancelcommmonoid--cf4ed08f8c327b9ccc051292.md) | 37 | `declaration-track:cf4ed08f8c327b9ccc05129268bb4b215c9e88842568f52f0dca6c2276aeb791` |
| 4 | `lemma` | [mem_of_mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/mem-of-mem-nsmul--c7d22211918c7644d66ca051.md) | 45 | `result-track:c7d22211918c7644d66ca051edd5522b959c75b214830c49add1f929f0db33a9` |
| 5 | `lemma` | [mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/mem-nsmul--29b4f20a6390b45ea50be8fc.md) | 55 | `result-track:29b4f20a6390b45ea50be8fcc5adc69ca75746539927d2f231ba7c0071b4a8b8` |
| 6 | `lemma` | [mem_nsmul_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/mem-nsmul-of-ne-zero--d8322350d52b49fd029ab07d.md) | 63 | `result-track:d8322350d52b49fd029ab07d9b721605db172c330b5cb6db761f7e6fe951f6c9` |
| 7 | `theorem` | [smul_subset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/smul-subset-self--333d9f1a5f9a0d7713bf319e.md) | 66 | `result-track:333d9f1a5f9a0d7713bf319ec6aa7cdea4b40153e040db04b2f683b8de9174cd` |
| 8 | `theorem` | [subset_smul_self_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/subset-smul-self-of-ne-zero--c9c78e78d5109db2a3bb789c.md) | 69 | `result-track:c9c78e78d5109db2a3bb789cebdae7849a3e4f75722c17d078fd2076bf7ee461` |
| 9 | `lemma` | [nsmul_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/nsmul-cons--919323c20073e851a776844b.md) | 72 | `result-track:919323c20073e851a776844b8a021b211a2956ff9d90241df8726bc6469dd538` |
| 10 | `def` | [cardHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/cardhom--7a3532eba69e658ea5106f11.md) | 80 | `declaration-track:7a3532eba69e658ea5106f116e9c61afa2179c656758c93cfdafccbcd3d970c3` |
| 11 | `lemma` | [card_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/card-nsmul--7655a4108b109e789c05db97.md) | 86 | `result-track:7655a4108b109e789c05db978293922d0a6df5061709c717cd21d94b9f899408` |
| 12 | `def` | [replicateAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/replicateaddmonoidhom--2e7e0df85dd09b971e1f7014.md) | 92 | `declaration-track:2e7e0df85dd09b971e1f701458d2f06039c7f65b259bcab9cbbdf5b8016c7ed6` |
| 13 | `lemma` | [nsmul_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/nsmul-replicate--7dce2b1e23647eed836d01ce.md) | 97 | `result-track:7dce2b1e23647eed836d01ce2aaf75265466d1aac2d4324e99014a82f946e6c3` |
| 14 | `lemma` | [nsmul_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/nsmul-singleton--cc9b2e17aab08d6dd6a82e2e.md) | 100 | `result-track:cc9b2e17aab08d6dd6a82e2eba983057dafeb7db1b4d9397ab4a5b63b6fecb6d` |
| 15 | `def` | [mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/mapaddmonoidhom--db307ee6b1e67b734d56c69c.md) | 107 | `declaration-track:db307ee6b1e67b734d56c69cc47c3f360eff36ce49b2d2e7b2681785cb5905a5` |
| 16 | `lemma` | [coe_mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/coe-mapaddmonoidhom--cdedeed22b068b2b96918567.md) | 113 | `result-track:cdedeed22b068b2b96918567e78b3e6b6784cc47f4b120422591f69a6228653f` |
| 17 | `lemma` | [map_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/map-nsmul--46305989d34b81d08c51fcd6.md) | 115 | `result-track:46305989d34b81d08c51fcd6ce5ed6a2f5857ce91fb5f74ad7385ef597a9e7c7` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/instance--b0a93763f921ec339043a5c8.md) | 123 | `declaration-track:b0a93763f921ec339043a5c83e470be0c18e2a8d9bd5601506bb867869a6fbad` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/instance--9af694dda25e2c0ed7fd1f65.md) | 125 | `declaration-track:9af694dda25e2c0ed7fd1f6577c9f203e34cc62a723216856e22045a4fab98be` |
| 20 | `lemma` | [filter_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/filter-nsmul--3eef24f3e86f90d566d75d11.md) | 136 | `result-track:3eef24f3e86f90d566d75d11a9b2a31adf47a72f5ddcb4560ab5d8a69933fe84` |
| 21 | `lemma` | [countP_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/countp-nsmul--a2b2cfb74733f2dc8b4a18ba.md) | 150 | `result-track:a2b2cfb74733f2dc8b4a18ba71c18772451e49729b4c11f8db238d8d7886043f` |
| 22 | `def` | [countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/countpaddmonoidhom--c6f64c64917b52bfc57be4d9.md) | 155 | `declaration-track:c6f64c64917b52bfc57be4d9bc65cbe66ec85a91f153a4e1f3ef503c9472a5fe` |
| 23 | `lemma` | [coe_countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/coe-countpaddmonoidhom--b35c9473c2320e1840300138.md) | 160 | `result-track:b35c9473c2320e1840300138f75163dc25d71f6c42978229cf540ff390964d99` |
| 24 | `lemma` | [dedup_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/dedup-nsmul--78b2f5b88f2270d465c018c6.md) | 164 | `result-track:78b2f5b88f2270d465c018c6e5dd63b372fe421cae51fc3884d24de9e6680494` |
| 25 | `lemma` | [Nodup.le_nsmul_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/nodup-le-nsmul-iff-le--c2615ffa61637a7b34bebe61.md) | 167 | `result-track:c2615ffa61637a7b34bebe6101305db85402088509973c63a404302b388c4be6` |
| 26 | `def` | [countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/countaddmonoidhom--c20a9ac040f52705724d7cb5.md) | 177 | `declaration-track:c20a9ac040f52705724d7cb5e710e3cd46098b91ef64dce0cdf1a2f0f44850d3` |
| 27 | `lemma` | [coe_countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/coe-countaddmonoidhom--10d715f25e1613b432c8bda9.md) | 181 | `result-track:10d715f25e1613b432c8bda904ef638881eec43b06607c990889e731901a4273` |
| 28 | `lemma` | [count_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/count-nsmul--b1879d289f9105067cb5407c.md) | 184 | `result-track:b1879d289f9105067cb5407cd8e0acd6428a28d68f712c6827a7fa2419771f21` |
| 29 | `theorem` | [le_card_smul_iff_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/le-card-smul-iff-subset--c826273314ce2cd2e130d64b.md) | 189 | `result-track:c826273314ce2cd2e130d64bf9680eada8c4d775b6dd323f83f1fa1ed4d256a3` |
| 30 | `lemma` | [addHom_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/addhom-ext--17d7de2d4ac6d46aef569d80.md) | 199 | `result-track:17d7de2d4ac6d46aef569d80cf011b32bb12d355ad21777ccf51c9c74d624b7f` |
| 31 | `theorem` | [le_smul_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variantb24c6d768c5ddb191dbc73ed204d1e9edd6ace736f2132a9c7f182ca2621648a.lean/declarations/le-smul-dedup--61eef7f5628c893d16cf58b1.md) | 205 | `result-track:61eef7f5628c893d16cf58b18b7842f6049a0ea8656c2e15d2882ee149dfc52f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

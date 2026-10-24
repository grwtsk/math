# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5afdad1071005baf43c8d539e69461d4200704b5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5afdad1071005baf43c8d539e69461d4200704b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Fold` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instAddLeftMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/instaddleftmono--76f727e9640ce33a298ea9bf.md) | 36 | `declaration-track:76f727e9640ce33a298ea9bf5b304edaa8a3a2c62c40840d8f0f8b61fcaa08d6` |
| 2 | `instance` | [instAddLeftReflectLE](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/instaddleftreflectle--003c7759f7507fb0fd5474c3.md) | 38 | `declaration-track:003c7759f7507fb0fd5474c355b4f47e4b668fafbf1244f782582c0745f1fa55` |
| 3 | `instance` | [instAddCancelCommMonoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/instaddcancelcommmonoid--91fb85dbcdb415407a6af98b.md) | 41 | `declaration-track:91fb85dbcdb415407a6af98b274a8a4be61e45525e79ef9182bec8fbbf8ef7fb` |
| 4 | `lemma` | [mem_of_mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/mem-of-mem-nsmul--a20b200f9ca57cf8ca935422.md) | 49 | `result-track:a20b200f9ca57cf8ca9354225c7210585e02ec7400f1ccc04bca11c78418ea68` |
| 5 | `lemma` | [mem_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/mem-nsmul--f5ba338b1d3537b700a5f2ce.md) | 57 | `result-track:f5ba338b1d3537b700a5f2ce8e6b88fd773f254b1794fd451e8734b65aff7faf` |
| 6 | `lemma` | [mem_nsmul_of_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/mem-nsmul-of-ne-zero--f4b740b1ed07b4fd8bdc0852.md) | 65 | `result-track:f4b740b1ed07b4fd8bdc0852f526d8b41fecc70591b77280e74674d1ae3f0056` |
| 7 | `lemma` | [nsmul_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/nsmul-cons--373a133198449a0b6828db54.md) | 68 | `result-track:373a133198449a0b6828db541746062c6563c10d1790c13d7c0c04b2b7399651` |
| 8 | `def` | [cardHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/cardhom--8937fa5db5ce8340ad68dfdb.md) | 76 | `declaration-track:8937fa5db5ce8340ad68dfdb6918757ce19ea7b924a5a1088cd438da1a773b3e` |
| 9 | `lemma` | [card_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/card-nsmul--8d06cd4b546ee822b221bfaa.md) | 82 | `result-track:8d06cd4b546ee822b221bfaa052070d703e02611eb015cfd2ba94ce758539707` |
| 10 | `def` | [replicateAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/replicateaddmonoidhom--615f9a01dc301480d0ba0b37.md) | 88 | `declaration-track:615f9a01dc301480d0ba0b370d26916d4c299611889a53b5b93738c2b2987586` |
| 11 | `lemma` | [nsmul_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/nsmul-replicate--c9c97a55d78f25d79e045456.md) | 93 | `result-track:c9c97a55d78f25d79e0454567460d79db2a50d700d6fa70d1d777066ee37231d` |
| 12 | `lemma` | [nsmul_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/nsmul-singleton--12326d556a8d36de9df1f2cf.md) | 96 | `result-track:12326d556a8d36de9df1f2cf48e06a9b60050b66eee27b5a2fa1e58c5b9f29a6` |
| 13 | `def` | [mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/mapaddmonoidhom--8d65c2001f81a9876cfd1a65.md) | 103 | `declaration-track:8d65c2001f81a9876cfd1a6508173f64f18a4588aac85e40e52ecdbba88b3994` |
| 14 | `lemma` | [coe_mapAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/coe-mapaddmonoidhom--12e38edf572eaeebc8bb8924.md) | 109 | `result-track:12e38edf572eaeebc8bb892449b4cd5d0d6d5e41749b1b2172595c5b0d62321d` |
| 15 | `lemma` | [map_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/map-nsmul--10d2ce8a7510e7acaffa9dab.md) | 111 | `result-track:10d2ce8a7510e7acaffa9dab5b30e723db505a383742c9b204f6eba2c3195ead` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/instance--fe3982de667bba1d04214394.md) | 119 | `declaration-track:fe3982de667bba1d04214394cdc00ddceae0dc8401f079c19c0e36bc5f905a50` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/instance--f55e8a281846a95750d981d3.md) | 121 | `declaration-track:f55e8a281846a95750d981d36e6f49c44b233bcc6dc0debcaaebed9ec8f1b9b8` |
| 18 | `lemma` | [filter_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/filter-nsmul--54115457bb913e92b8a81e75.md) | 132 | `result-track:54115457bb913e92b8a81e75c28b475867219937198f9376c08e8c9c581cf304` |
| 19 | `lemma` | [countP_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/countp-nsmul--880daa5ac9d5cf69d2d5150d.md) | 146 | `result-track:880daa5ac9d5cf69d2d5150d86825675b5ed578f992ae88e809638f6c73b8d42` |
| 20 | `def` | [countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/countpaddmonoidhom--4ed98004e2d37fe7d2865f9f.md) | 151 | `declaration-track:4ed98004e2d37fe7d2865f9fc7abadbd9ab968fb53d7ea0d3e33dad9e83fc64b` |
| 21 | `lemma` | [coe_countPAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/coe-countpaddmonoidhom--324c3b6198624d2edce9e20c.md) | 156 | `result-track:324c3b6198624d2edce9e20c16677661309c430cd1655d0d0de20173ce1d1ef7` |
| 22 | `lemma` | [dedup_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/dedup-nsmul--d8f07aea0d50fc50b4a1e973.md) | 160 | `result-track:d8f07aea0d50fc50b4a1e973f371387bc8521d58452da8e4ca1f4a04eb0562b5` |
| 23 | `lemma` | [Nodup.le_nsmul_iff_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/nodup-le-nsmul-iff-le--bc26dde8d246ba54a4b632a8.md) | 163 | `result-track:bc26dde8d246ba54a4b632a83e5503322162a8c7acfae9451b774542dcff29ab` |
| 24 | `def` | [countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/countaddmonoidhom--5ecd7733a15cc910a51eb919.md) | 173 | `declaration-track:5ecd7733a15cc910a51eb9193cf778746929aa0131432dbde45d8a2d6088d897` |
| 25 | `lemma` | [coe_countAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/coe-countaddmonoidhom--122aeaeef5bf8092bc06c822.md) | 177 | `result-track:122aeaeef5bf8092bc06c8220e67bd173ef201d034cb0b7f80ec425703b140be` |
| 26 | `lemma` | [count_nsmul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/count-nsmul--3a7e0fc31271671054a9a5b6.md) | 180 | `result-track:3a7e0fc31271671054a9a5b6d335bbaaa6729047fa496de66bb171bd0e11972b` |
| 27 | `lemma` | [addHom_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/addhom-ext--6634c6356f800a2bf50a8fb5.md) | 187 | `result-track:6634c6356f800a2bf50a8fb5827f2d728b9bcfc1c55e38b3cf15ba31f8ca2ea9` |
| 28 | `theorem` | [le_smul_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant8adeb98edf43dd2558d2d994d2ea576ff5c458088638a995b7870b6c9840bc7d.lean/declarations/le-smul-dedup--5c1155d5fc42122c1e0d5380.md) | 195 | `result-track:5c1155d5fc42122c1e0d538060d1eab72a81ea108ba39bd86582782fc5a1ea75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

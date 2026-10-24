# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sum.Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d852001b5a44745178ad610468272e321a95deea",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d852001b5a44745178ad610468272e321a95deea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Sum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum--cfa13e67d37ace78a3e11714.md) | 30 | `declaration-track:cfa13e67d37ace78a3e11714646a0bd8567b036aac71d41ebf9da8feff4dbf6f` |
| 2 | `theorem` | [val_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/val-disjsum--4bf999ddc647a8ef758dc3d6.md) | 35 | `result-track:4bf999ddc647a8ef758dc3d624ef32b63e83fb9e4513ce7880f5c5585b0dc442` |
| 3 | `theorem` | [empty_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/empty-disjsum--26c693e8bcb2179fa43136fb.md) | 40 | `result-track:26c693e8bcb2179fa43136fb612c04d26d60dadda2fcd321224f9d247d776dfb` |
| 4 | `theorem` | [disjSum_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-empty--f60d1c191711770188cc8a4e.md) | 45 | `result-track:f60d1c191711770188cc8a4ec6211baa65b851d5c7d6ccf6c366b70a9213d62c` |
| 5 | `theorem` | [card_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/card-disjsum--233488262bef73ad997e1e55.md) | 50 | `result-track:233488262bef73ad997e1e550120f62e8bb0af008b799665a472a81a9ec0d467` |
| 6 | `theorem` | [disjoint_map_inl_map_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjoint-map-inl-map-inr--117d3e3edcd9a34aef2b5a8f.md) | 54 | `result-track:117d3e3edcd9a34aef2b5a8f0b8c8954a4e7ff2a38c98cd17e9b558ab02c1fab` |
| 7 | `theorem` | [map_inl_disjUnion_map_inr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/map-inl-disjunion-map-inr--ab73ffb583f3c331d1cc1c45.md) | 60 | `result-track:ab73ffb583f3c331d1cc1c4569e70c885f5525505303adb3c0d1638143fe5e31` |
| 8 | `theorem` | [mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/mem-disjsum--9eed3aa58a5a7b9ce01ad071.md) | 68 | `result-track:9eed3aa58a5a7b9ce01ad07185dd2b539c7d40f3809e9b67273bf5ff124459ba` |
| 9 | `theorem` | [inl_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/inl-mem-disjsum--3ec84e0a23e38d6958617aea.md) | 73 | `result-track:3ec84e0a23e38d6958617aea012876218f33a830016a22b20785cce5eb43fa82` |
| 10 | `theorem` | [inr_mem_disjSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/inr-mem-disjsum--2405829442e6d52e0adb2190.md) | 78 | `result-track:2405829442e6d52e0adb219052ee69e8c74f8a0ab10bd9d575053385fade75e8` |
| 11 | `theorem` | [disjSum_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-mono--c71afca220976b6559c74967.md) | 82 | `result-track:c71afca220976b6559c74967a4653f18ad0d8e51fe7f96e704985de727981301` |
| 12 | `theorem` | [disjSum_mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-mono-left--dba199d1b1e2e943338745f8.md) | 86 | `result-track:dba199d1b1e2e943338745f8392fb19432044819e3f645fa70e87c72994e77e6` |
| 13 | `theorem` | [disjSum_mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-mono-right--e58a6caa1efc68ac884984ef.md) | 90 | `result-track:e58a6caa1efc68ac884984ef4104f393a1b9aa52fbc85512d209001a414a04ca` |
| 14 | `theorem` | [disjSum_ssubset_disjSum_of_ssubset_of_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-ssubset-disjsum-of-ssubset-of-subset--f1e9a88ed56e2b8ca9f36874.md) | 94 | `result-track:f1e9a88ed56e2b8ca9f368741b5e87b2d3b054031c91379f3fca124d3979e469` |
| 15 | `theorem` | [disjSum_ssubset_disjSum_of_subset_of_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-ssubset-disjsum-of-subset-of-ssubset--01fa0d8cf6408867daffc210.md) | 99 | `result-track:01fa0d8cf6408867daffc210dcec95cc652ceed5fa64d217be85449b40909dd8` |
| 16 | `theorem` | [disjSum_strictMono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disjsum-strictmono-left--a3f4127a360979563f936dbe.md) | 104 | `result-track:a3f4127a360979563f936dbe717239d75ca5b1a8cfeafe09e2142c994b5b6943` |
| 17 | `theorem` | [disj_sum_strictMono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sum/Variant74aa7eef497f2eff8beec153ad45521b98484931de8695538d9c723ce2989d21.lean/declarations/disj-sum-strictmono-right--d1349033e3d8e42d40477347.md) | 108 | `result-track:d1349033e3d8e42d40477347ace776e05349e96f674fea83cfdc36a20e4ca2a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

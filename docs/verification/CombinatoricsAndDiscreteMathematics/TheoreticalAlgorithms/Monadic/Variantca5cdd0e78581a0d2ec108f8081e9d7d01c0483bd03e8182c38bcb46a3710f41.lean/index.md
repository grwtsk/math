# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monadic.Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b8233fbd0d0c9a9943a158a19a09e3527125f6e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b8233fbd0d0c9a9943a158a19a09e3527125f6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Monadic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_toArray_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/map-toarray-inj--a630b2bd12e3b3cf4db0a1eb.md) | 28 | `result-track:a630b2bd12e3b3cf4db0a1ebf32f646bfc6a776058c5f06460ab160d8ec30ec8` |
| 2 | `theorem` | [mapM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/mapm-pure--7a7749b6af89150885288377.md) | 36 | `result-track:7a7749b6af89150885288377c145c4eb9fc2b1ad7cc727949353cb53dfc3e7ab` |
| 3 | `theorem` | [mapM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/mapm-map--527615404261d7dac820f7dc.md) | 41 | `result-track:527615404261d7dac820f7dce277c8f4b6e95103f0c81bb5c3895dc6b2de4b12` |
| 4 | `theorem` | [mapM_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/mapm-congr--68c0b6b759bc410a32cdd30c.md) | 46 | `result-track:68c0b6b759bc410a32cdd30c797bec93bff72041a3308a973c7ac7b238df9090` |
| 5 | `theorem` | [mapM_mk_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/mapm-mk-empty--591e45e592bb8fc0aff6c8ab.md) | 52 | `result-track:591e45e592bb8fc0aff6c8abd1e64c9ace468311d370a4af05d7f79bf0b9f410` |
| 6 | `theorem` | [mapM_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/mapm-append--f540b4c73976c2efa634296e.md) | 58 | `result-track:f540b4c73976c2efa634296ef215ec0cb30f4d49019a6fbfdcc40789dee28b68` |
| 7 | `theorem` | [foldlM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/foldlm-map--13e569c5e2f23bd42fb476d2.md) | 69 | `result-track:13e569c5e2f23bd42fb476d200037642a014f13c99e2db200697ebbbeb902360` |
| 8 | `theorem` | [foldrM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/foldrm-map--201e6ca4c30668184198d204.md) | 74 | `result-track:201e6ca4c30668184198d20488c6da9c438f9549dc33d2be7c7bc2b3e3aa1613` |
| 9 | `theorem` | [foldlM_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/foldlm-attachwith--c8dbbffb245b89b567ec9fa6.md) | 79 | `result-track:c8dbbffb245b89b567ec9fa630b502962a008feb3bebdb413b9ceb7a41a4cb3d` |
| 10 | `theorem` | [foldrM_attachWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/foldrm-attachwith--694270d1bd6b830224a6d099.md) | 85 | `result-track:694270d1bd6b830224a6d09998ccf9c1d0fef5e172781d3224c0806deb88e539` |
| 11 | `theorem` | [forM_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/form-congr--5cfb65abcbd9866c207389c6.md) | 93 | `result-track:5cfb65abcbd9866c207389c6462662c2d95d89ccbce2405643bf4ef16410d8e2` |
| 12 | `theorem` | [forM_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/form-append--34a89dcd91c7caccbc9e4266.md) | 99 | `result-track:34a89dcd91c7caccbc9e42667035b5f68c687118fc2816688fcfccf0f5bac73c` |
| 13 | `theorem` | [forM_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/form-map--344b8b30ef5149c56fa22155.md) | 105 | `result-track:344b8b30ef5149c56fa221551f69e73de1994f20106c7cda420889fe34c5f559` |
| 14 | `theorem` | [forIn'_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-congr--eb6108890e7a57d618ea50a7.md) | 112 | `result-track:eb6108890e7a57d618ea50a7aea5d2cba3a7d4f351f2fccc1ae96d1c3ef537b4` |
| 15 | `theorem` | [forIn'_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-eq-foldlm--b26d73e4da93e476b1317b26.md) | 126 | `result-track:b26d73e4da93e476b1317b26acc3ec7daa7fca7622ab9300a2902d28947639f2` |
| 16 | `theorem` | [forIn'_yield_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-yield-eq-foldlm--7458061afbc937dbe7397078.md) | 137 | `result-track:7458061afbc937dbe7397078bb7045731a4a7e12766d20273648d748e0ab1685` |
| 17 | `theorem` | [forIn'_pure_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-pure-yield-eq-foldl--82ad2fcf502148a29a18dd49.md) | 144 | `result-track:82ad2fcf502148a29a18dd495148d1472ea23efe965a3573958f6c88e04efbca` |
| 18 | `theorem` | [idRun_forIn'_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/idrun-forin-yield-eq-foldl--189eb79dfabd6aee598a899e.md) | 151 | `result-track:189eb79dfabd6aee598a899e937054e45f72f7d444e795cfbab4f2302e2e3a8d` |
| 19 | `theorem` | [forIn'_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-map--d11e92a2975201a47107cad5.md) | 157 | `result-track:d11e92a2975201a47107cad520b287e98bc1e7df965f99cc9909175ccefd7fd9` |
| 20 | `theorem` | [forIn_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-eq-foldlm--cf5126dbce3e2ac8994562e3.md) | 167 | `result-track:cf5126dbce3e2ac8994562e3f3632ae398f58aed9b4cab2dbcc59d1a151effd3` |
| 21 | `theorem` | [forIn_yield_eq_foldlM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-yield-eq-foldlm--7476999b0d4994e3224ed182.md) | 178 | `result-track:7476999b0d4994e3224ed182999421024784096813c92031f2013b41c55b6dd2` |
| 22 | `theorem` | [forIn_pure_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-pure-yield-eq-foldl--609b733b403722f5e2fea113.md) | 185 | `result-track:609b733b403722f5e2fea1130f9047c4d7a00d0824095273a1e2024a7da566c4` |
| 23 | `theorem` | [idRun_forIn_yield_eq_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/idrun-forin-yield-eq-foldl--4db1d15a53ff737445e4ffcf.md) | 192 | `result-track:4db1d15a53ff737445e4ffcfe41af407a99a738b6efcb191039bd263827f7a05` |
| 24 | `theorem` | [forIn_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/forin-map--a027dd913820056da66a14ff.md) | 198 | `result-track:a027dd913820056da66a14ff2d7881b2a7259664c7de2ebb556af91e4c5b04cc` |
| 25 | `theorem` | [anyM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/anym-pure--f8e9d235a9dfd78033a6dd74.md) | 207 | `result-track:f8e9d235a9dfd78033a6dd741b6dbf2e3b2eb67529cfa575a0a8beb8c5a3b9a3` |
| 26 | `theorem` | [allM_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/allm-pure--fcd5814807f4b664601c4884.md) | 212 | `result-track:fcd5814807f4b664601c4884c0edeef6c0bc3efb5004e9b7205979771ea3b889` |
| 27 | `theorem` | [findM?_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/findm-pure--c85559ad7599a14fcf28b3f2.md) | 219 | `result-track:c85559ad7599a14fcf28b3f2ba0e7ee3c6cb92de1d34804e295eac9be35461c3` |
| 28 | `theorem` | [findSomeM?_pure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variantca5cdd0e78581a0d2ec108f8081e9d7d01c0483bd03e8182c38bcb46a3710f41.lean/declarations/findsomem-pure--6342331460dbe58c6d9b0570.md) | 225 | `result-track:6342331460dbe58c6d9b05700de9b333fa961c0aaa62bcf0f96348395080ab14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

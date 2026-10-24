# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Integral.Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af6686e8f86c65db07d1f835d740d75ed8a26924",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af6686e8f86c65db07d1f835d740d75ed8a26924`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.integral_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convex-integral-mem--761cf699bb798f96fd9ea3da.md) | 57 | `result-track:761cf699bb798f96fd9ea3da652f2992ece7f9672bdc372f47f819c0da26901c` |
| 2 | `theorem` | [Convex.average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convex-average-mem--f4cb295a713dd9b28c55aea0.md) | 88 | `result-track:f4cb295a713dd9b28c55aea04fe93069fd3521d0d88ed400ef007b58ea9868e1` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convex-set-average-mem--96155df5270bef6f97aea4a6.md) | 95 | `result-track:96155df5270bef6f97aea4a6c8eabce044e3759ae98d6ec0736225adf45fbe6a` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convex-set-average-mem-closure--14767c9b193259f803b61336.md) | 104 | `result-track:14767c9b193259f803b61336280253e8bd344bf23719951a20362aee07a00d3c` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convexon-average-mem-epigraph--363f23a863280b8a078b44fb.md) | 109 | `result-track:363f23a863280b8a078b44fb1012a566d96ee9b8f431b34ebac1502d64a7addc` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/concaveon-average-mem-hypograph--994534811928dfa203d7b83e.md) | 118 | `result-track:994534811928dfa203d7b83ed12924af8c46e8eaf6e6d124b281349893be84b0` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convexon-map-average-le--228b799d7eadd19f5ad8dbd1.md) | 129 | `result-track:228b799d7eadd19f5ad8dbd1e4d912a7d7286c9e3ae8a4c1aba6916cdf63e2c7` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/concaveon-le-map-average--c41d3833bfc722cec603fef5.md) | 140 | `result-track:c41d3833bfc722cec603fef53a06c63da2fe31ed060b61e62f9af17cd2a28cf9` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convexon-set-average-mem-epigraph--d14a77b7be10fa632fa93697.md) | 151 | `result-track:d14a77b7be10fa632fa9369738597fe43b3d86fc088ddf3da3c81c84456b754d` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/concaveon-set-average-mem-hypograph--e881966c7e2eee050922aed0.md) | 164 | `result-track:e881966c7e2eee050922aed010217d138b2d61b0ca9379cbe461ecf71f9dfb5a` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convexon-map-set-average-le--0aabc94235a5705b3d6518e2.md) | 175 | `result-track:0aabc94235a5705b3d6518e21931c6fb051ff2cd3e49fdec1c9db4d7f98343a1` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/concaveon-le-map-set-average--8815b7b158c11105a2b3af4a.md) | 186 | `result-track:8815b7b158c11105a2b3af4adfeee353907e75c67efdabda4a5e0b7e8d26f7fd` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convexon-map-integral-le--ac0464793ee665a4dce30c7e.md) | 197 | `result-track:ac0464793ee665a4dce30c7e7b810582ce4f459f7c4184882f570d530209970d` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/concaveon-le-map-integral--426ec198a2237947c5013d3f.md) | 206 | `result-track:426ec198a2237947c5013d3f791344518183aab74f66f222429211080532dd1a` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/ae-eq-const-or-exists-average-ne-compl--d63b48a285085f2b06a435db.md) | 219 | `result-track:d63b48a285085f2b06a435dbe212411f74258c80c0ea7c4cc50a68fa6b91b513` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/convex-average-mem-interior-of-set--9f48f64c1c5dc3d83dda33a5.md) | 238 | `result-track:9f48f64c1c5dc3d83dda33a5b6b9a5b5a97e73943e1423b1f5331fb33a533b0d` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior--a89764cb2b5b4340aa81fca5.md) | 253 | `result-track:a89764cb2b5b4340aa81fca53645a14b6365335c7d3c2bc31e2bdb838460d79f` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt--14c033b109e83c274263e698.md) | 267 | `result-track:14c033b109e83c274263e6988b5780bc713baec4831ece30bd80fc993ae3cd69` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average--b90eea597f2148d71686e5f1.md) | 295 | `result-track:b90eea597f2148d71686e5f15f73d28ab5fa85889aab9f6697b029df3ff03a73` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const--42a6d31e8fafaab273da58af.md) | 304 | `result-track:42a6d31e8fafaab273da58afa2ffe6423af21a5886693cb55c0832f096dadec2` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const--9175404d983d9edfa930105a.md) | 323 | `result-track:9175404d983d9edfa930105ac2fafbe0cbc75d3ca7f7655d83a5d1b611834829` |
| 22 | `theorem` | [ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variante22d7f663dbc9d5148bea7dbb8f60889f7895f9f33218cdc3a6206e47a990059.lean/declarations/ae-eq-const-or-norm-setintegral-lt-of-norm-le-const--63156220d5775d5aad97b8e1.md) | 336 | `result-track:63156220d5775d5aad97b8e1a15686af2e07e8843abe46d09812e43af00d053c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

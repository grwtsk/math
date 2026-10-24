# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.IsolatedZeros.Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a75aaa36dd43edd804daeb498ebfdef1851ba55",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a75aaa36dd43edd804daeb498ebfdef1851ba55`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.DSlope` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.EventuallyConst` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_at_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/hassum-at-zero--7e08d0cdc7783178179e0c3f.md) | 50 | `result-track:7e08d0cdc7783178179e0c3f9e76d27e903417926746194e9f8144da107c7d4b` |
| 2 | `theorem` | [exists_hasSum_smul_of_apply_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/exists-hassum-smul-of-apply-eq-zero--6a86a0f53d2d556abce19faa.md) | 53 | `result-track:6a86a0f53d2d556abce19faa6fd2dc266106c7222ef53737eba30c0f85cafe67` |
| 3 | `theorem` | [has_fpower_series_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/has-fpower-series-dslope-fslope--eb2b6c114322868a5d588c20.md) | 73 | `result-track:eb2b6c114322868a5d588c2060807a981ebc9a6f11416c5bcdc4e72ad9f960a1` |
| 4 | `theorem` | [has_fpower_series_iterate_dslope_fslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/has-fpower-series-iterate-dslope-fslope--a31b2f90498bbf469ca4b1f8.md) | 86 | `result-track:a31b2f90498bbf469ca4b1f88c211cc5a37b82a0193f991a502ee3a835bfd66f` |
| 5 | `theorem` | [iterate_dslope_fslope_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/iterate-dslope-fslope-ne-zero--f953a110b9864edc6d6c202d.md) | 92 | `result-track:f953a110b9864edc6d6c202d53228bb0865ebebf030d8843ecf4986807c3ce51` |
| 6 | `theorem` | [eq_pow_order_mul_iterate_dslope](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eq-pow-order-mul-iterate-dslope--46c3ebeaf41d7368d1d670da.md) | 97 | `result-track:46c3ebeaf41d7368d1d670dad3c1bca5ae710f24ccd2d935a15a2a8c8280fd9e` |
| 7 | `theorem` | [locally_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/locally-ne-zero--4a3a5426075fe2be83e5d489.md) | 108 | `result-track:4a3a5426075fe2be83e5d4894cfe43625fb2af24a6c9e0d097dcc41d27161384` |
| 8 | `theorem` | [locally_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/locally-zero-iff--89cca37990a6636f8dcaa318.md) | 115 | `result-track:89cca37990a6636f8dcaa3187d731bbe1dfbd5730e6089c845f13429682ffcd2` |
| 9 | `theorem` | [eventually_eq_zero_or_eventually_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eventually-eq-zero-or-eventually-ne-zero--fe691d498813bca7f34cf9e8.md) | 125 | `result-track:fe691d498813bca7f34cf9e8517b21c7462b91393708fd0c2dc98386e3d97975` |
| 10 | `theorem` | [eventually_eq_or_eventually_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eventually-eq-or-eventually-ne--ae96d8048ed7977b2f6897ef.md) | 132 | `result-track:ae96d8048ed7977b2f6897ef594e3486211a2268350faa14ae4efd417159d67c` |
| 11 | `theorem` | [frequently_zero_iff_eventually_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/frequently-zero-iff-eventually-zero--49413947091a622c0fdc5a67.md) | 136 | `result-track:49413947091a622c0fdc5a67b6b914662244887811b289e7acff9bc64a4c864b` |
| 12 | `theorem` | [frequently_eq_iff_eventually_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/frequently-eq-iff-eventually-eq--538dc4ead9f47205a1aaf5b4.md) | 141 | `result-track:538dc4ead9f47205a1aaf5b4ea991ad2d8b0b0334cc561f307c1a8f03b836c80` |
| 13 | `lemma` | [unique_eventuallyEq_zpow_smul_nonzero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/unique-eventuallyeq-zpow-smul-nonzero--1a78d01a5f1506faa2cd6153.md) | 149 | `result-track:1a78d01a5f1506faa2cd6153a98c5a6231929efb1054820bbd2e537834a8f7a4` |
| 14 | `lemma` | [unique_eventuallyEq_pow_smul_nonzero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/unique-eventuallyeq-pow-smul-nonzero--a68f609e112666ea31c7e0ae.md) | 173 | `result-track:a68f609e112666ea31c7e0aedbfbe12238f9047fc4b218f565d4d600bf90e1c7` |
| 15 | `theorem` | [exists_eventuallyEq_pow_smul_nonzero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/exists-eventuallyeq-pow-smul-nonzero-iff--310f5ec23ba8dc8d2f2b2195.md) | 185 | `result-track:310f5ec23ba8dc8d2f2b2195a555e3c9405a183d5a7f2f84f286acd7bbd4e2b5` |
| 16 | `theorem` | [eqOn_zero_of_preconnected_of_frequently_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-zero-of-preconnected-of-frequently-eq-zero--06f86b76d032bf5e2d02681e.md) | 214 | `result-track:06f86b76d032bf5e2d02681ef69c313be34e09eddc9712918c6958d5d4b9fe01` |
| 17 | `theorem` | [eqOn_zero_or_eventually_ne_zero_of_preconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-zero-or-eventually-ne-zero-of-preconnected--c0fb6b7d1f4fc335fde4d67b.md) | 219 | `result-track:c0fb6b7d1f4fc335fde4d67b9619d6286af5814768359883da50307a95250fbb` |
| 18 | `theorem` | [eqOn_zero_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-zero-of-preconnected-of-mem-closure--47477e85a96c7131a33dd91d.md) | 228 | `result-track:47477e85a96c7131a33dd91d37d0bf07603ffa4c5a953641ddac968037bdba16` |
| 19 | `theorem` | [eqOn_of_preconnected_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-of-preconnected-of-frequently-eq--9919780f01611f3ad3a8c3fc.md) | 238 | `result-track:9919780f01611f3ad3a8c3fcd00eb8a3c8aad925d1a8b5be118bb2ea0c89d01b` |
| 20 | `theorem` | [eqOn_or_eventually_ne_of_preconnected](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-or-eventually-ne-of-preconnected--0611053283ee6afdeed4dce6.md) | 245 | `result-track:0611053283ee6afdeed4dce602db056651e2f8688a3ee5cb67a3f4f61c0c19e9` |
| 21 | `theorem` | [eqOn_of_preconnected_of_mem_closure](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eqon-of-preconnected-of-mem-closure--45085fe635ec6cc12e5b437a.md) | 251 | `result-track:45085fe635ec6cc12e5b437a7f0d3ca88c2045bdcfee537464c80b09931a2258` |
| 22 | `theorem` | [eq_of_frequently_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eq-of-frequently-eq--24cfc2d436b8e46e2a8f7eb2.md) | 261 | `result-track:24cfc2d436b8e46e2a8f7eb27b4f988efbcc2c0e52c66b2373a208d52f2c6c3a` |
| 23 | `lemma` | [eq_zero_or_eq_zero_of_smul_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eq-zero-or-eq-zero-of-smul-eq-zero--6822bbc848b5214e8f957589.md) | 276 | `result-track:6822bbc848b5214e8f9575891e1e7a7ae94d5c8ca041ce442637f606edfa43f0` |
| 24 | `lemma` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero--b6fdc1fedb737bcbf5bf78d0.md) | 300 | `result-track:b6fdc1fedb737bcbf5bf78d01a3efd88c932b12e0c2c6d44c24922a02196fd47` |
| 25 | `theorem` | [AnalyticAt.preimage_of_nhdsNE](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/analyticat-preimage-of-nhdsne--a4eae597af380e2277cd27f4.md) | 317 | `result-track:a4eae597af380e2277cd27f44a087526fc8b8d0d53d09555258b3d9852273300` |
| 26 | `theorem` | [AnalyticAt.map_nhdsNE](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/analyticat-map-nhdsne--d5eb614ceb9fbaf1360df844.md) | 336 | `result-track:d5eb614ceb9fbaf1360df844bf503fce87683f9388f0be5dd9a1ed331b336736` |
| 27 | `theorem` | [AnalyticOnNhd.preimage_mem_codiscreteWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/analyticonnhd-preimage-mem-codiscretewithin--2876f6fe72e0f2efe1f3db99.md) | 345 | `result-track:2876f6fe72e0f2efe1f3db997de2890fd237ce31bc96c277f3460d24cc001235` |
| 28 | `theorem` | [AnalyticOnNhd.map_codiscreteWithin](../../../../../mathematics/Analysis/AsymptoticAnalysis/IsolatedZeros/Variantdd50b96d371e97f2e36aaa423f2ea59693038f6c9ea00d4f8ed029ef0439b24a.lean/declarations/analyticonnhd-map-codiscretewithin--d288f0c64a26b4b60d17fc09.md) | 364 | `result-track:d288f0c64a26b4b60d17fc093421dd454d92c001ea39d440e4deb640c5406c52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceCriticalDensityQuadrature.Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1316c9cf13d2bdef98600b9c180cf5716ef074f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1316c9cf13d2bdef98600b9c180cf5716ef074f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalRemovedPrimeWork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity--e78bf90370a701e837d7168f.md) | 27 | `declaration-track:e78bf90370a701e837d7168fc95ce775fb1be591c22bd681601fbe6dae72dfa3` |
| 2 | `def` | [criticalDensityPrefixDiscrepancy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensityprefixdiscrepancy--0a19f75bfc20144d9387982e.md) | 30 | `declaration-track:0a19f75bfc20144d9387982e130a0fee01f94d6dc15cf82b63f783c6173ec443` |
| 3 | `theorem` | [decay_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/decay-continuous--bdcf88d831902517243299f0.md) | 33 | `result-track:bdcf88d831902517243299f067dd92e047c0b565eb04b1b19aaf53c3331a36db` |
| 4 | `theorem` | [density_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/density-continuous--b40567167532b40612c068d3.md) | 37 | `result-track:b40567167532b40612c068d3109a4c22c7d6af35f064d1a6b949282ceeccb0da` |
| 5 | `theorem` | [decay_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/decay-hasderivat--1ed5ebb10530117409e8e618.md) | 40 | `result-track:1ed5ebb10530117409e8e618160fd5fae095fde66419c08ea0fce02b50e54b39` |
| 6 | `theorem` | [criticalDensity_mem_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-mem-icc--b8016a07998664084a0b7edd.md) | 51 | `result-track:b8016a07998664084a0b7edd963ed3454467bce895ee13f328a84154fbe4e0eb` |
| 7 | `theorem` | [criticalDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-integral--c8bf7cb7e2db71f7ff1b6694.md) | 62 | `result-track:c8bf7cb7e2db71f7ff1b66945a4688b834b746844c00bdcf86f82488d479ebb8` |
| 8 | `theorem` | [criticalDensityPrefixDiscrepancy_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensityprefixdiscrepancy-eq--afd36c95942908c974491e12.md) | 74 | `result-track:afd36c95942908c974491e122e22729bf9c331d049a4e8bcb0b0f17a45bdc4b7` |
| 9 | `theorem` | [criticalDensity_integral_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-integral-pos--6f7e1d30ff16d9141b6ee462.md) | 81 | `result-track:6f7e1d30ff16d9141b6ee462d42d58891dc9ba2d6b57e0225cfe82573f3c82d9` |
| 10 | `theorem` | [criticalDensity_mass_lt_raw_length](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-mass-lt-raw-length--310f7e6bd047dfb377c33ff7.md) | 94 | `result-track:310f7e6bd047dfb377c33ff7d70edbd43757398b6f70e0198c1bdfa0f7266323` |
| 11 | `theorem` | [criticalDensity_weighted_pairedTailTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-weighted-pairedtailtest--39679b23be98531fcd31f207.md) | 104 | `result-track:39679b23be98531fcd31f207650c2b0853ccf5b94b2faf4e8fe40d03be567d2a` |
| 12 | `theorem` | [criticalDensity_quadrature_eq_full_drift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticaldensity-quadrature-eq-full-drift--5ef2e659c8d2ea457089a1b6.md) | 158 | `result-track:5ef2e659c8d2ea457089a1b6c2d9a766a32e1b0abef4757387532e00c4db0d83` |
| 13 | `theorem` | [criticalRemovedPairedWork_eq_density_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceCriticalDensityQuadrature/Varianta3d12a7a0b85fabddfaad41c604978c1b7a90c25aff156bea39cfd105fd31e7e.lean/declarations/criticalremovedpairedwork-eq-density-quadrature--ab5efa9ebd9c0acbd6c3cf0b.md) | 179 | `result-track:ab5efa9ebd9c0acbd6c3cf0bdbbbfc34d362f92550070d3e8a504cd90e7abe79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

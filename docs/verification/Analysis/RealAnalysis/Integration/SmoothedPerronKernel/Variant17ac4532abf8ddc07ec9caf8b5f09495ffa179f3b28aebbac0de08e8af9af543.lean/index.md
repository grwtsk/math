# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothedPerronKernel.Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "405d594e75b9a3abe049040bd46f2ae42f722060",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `405d594e75b9a3abe049040bd46f2ae42f722060`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceKernel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/kernelintegrand-integrable-ioi-zero--269a9ad65fe80bc82d4c3a8c.md) | 26 | `result-track:269a9ad65fe80bc82d4c3a8c7be5ce359d44dbc678d5e5f0bd0fe920b7f239b8` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/integral-first-moment--0bfb40cb26088eb131e954ea.md) | 40 | `result-track:0bfb40cb26088eb131e954ea6e5fa2d614bdd47dd339758f90ad15d960deee4f` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp--936afa142bce8165b43c6800.md) | 62 | `declaration-track:936afa142bce8165b43c6800435297680333ef360761ac29106dc5ff113cee84` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp-continuous--13d6a2dffc84748ccbdb8608.md) | 66 | `result-track:13d6a2dffc84748ccbdb860815fbf21ea540f98f0f04960556ffe9d9e772982a` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp-eq-indicator--4fa55bc87f746b0fda24f96f.md) | 71 | `result-track:4fa55bc87f746b0fda24f96f12fd1a20a9ed94ad97b3e131b54b2eb9155814f8` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp-integrable--d2e4e46aa6eebb5ae2bcd703.md) | 79 | `result-track:d2e4e46aa6eebb5ae2bcd703fa1faa239825b88448f6df424d9b07e3aaa8b014` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp-fourier--7b162e43496595de84d09409.md) | 84 | `result-track:7b162e43496595de84d094094d8a47bdff91ec7bb7a025fc08367fce0fe1446e` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/reciprocal-square-integrable--753f7ac0ffbf060d62511db8.md) | 103 | `result-track:753f7ac0ffbf060d62511db85eb16f3b93b6e63ba5bacfc23fa6911dd4222db3` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/dampedramp-fourier-integrable--0036e098423a4f1796bae97e.md) | 117 | `result-track:0036e098423a4f1796bae97e5352e71f668cc13554cb5389c1c9b00b12540680` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/perronintegrand--2d0e39ec2e52d3fc1f50802c.md) | 129 | `declaration-track:2d0e39ec2e52d3fc1f50802c6c3478bc32224d5508b6445a8ab436b3b58279d1` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/perronintegrand-integrable--6711fc55f192f5cdf8be9f86.md) | 134 | `result-track:6711fc55f192f5cdf8be9f864df8d5bffb72b0b0dd90d6b2570ffa7b7eb9b4d9` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/vertical-ramp-inversion--c403cf466a4852c548a4e8ad.md) | 147 | `result-track:c403cf466a4852c548a4e8add2053e16ad8185ce2fdf618f92d7202eb8403e9d` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/elementary-perron-kernel--1e134ffb986d763237b93ae9.md) | 173 | `result-track:1e134ffb986d763237b93ae9c47da997070cf6391554fcaa906599656ff80eb5` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/elementary-perron-endpoint--6f69ea36b305d53f2f84dcd5.md) | 196 | `result-track:6f69ea36b305d53f2f84dcd5cd978d059544035a997a0679f2004e5ae19dfa75` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variant17ac4532abf8ddc07ec9caf8b5f09495ffa179f3b28aebbac0de08e8af9af543.lean/declarations/elementary-perron-ratio--2c2502f43b4716f61cb3afb4.md) | 201 | `result-track:2c2502f43b4716f61cb3afb44ca3ec8b2b67d0484072f255d45709e9396b50bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

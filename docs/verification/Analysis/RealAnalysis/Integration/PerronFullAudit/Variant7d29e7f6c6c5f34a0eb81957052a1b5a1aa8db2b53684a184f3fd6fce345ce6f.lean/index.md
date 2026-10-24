# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PerronFullAudit.Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db4c7f7e03284dfaeb049cfac1228ba236e60e9a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db4c7f7e03284dfaeb049cfac1228ba236e60e9a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean.json)

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
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/kernelintegrand-integrable-ioi-zero--1a95dfbd5d7d4c575878c958.md) | 26 | `result-track:1a95dfbd5d7d4c575878c95805b68366ab01d8444ac50f811aa5280c6a900588` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/integral-first-moment--053c67ba7cf6666d91bc5ed8.md) | 40 | `result-track:053c67ba7cf6666d91bc5ed88428f54d56c58f5118f62deabaf83c3b1a523cd9` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp--f73fd807b8c4338242c79c51.md) | 62 | `declaration-track:f73fd807b8c4338242c79c511d7f2f7c51326fc3c7714f5cb4d66aa523cff501` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp-continuous--26a211d5dbba378068e3878d.md) | 66 | `result-track:26a211d5dbba378068e3878d8f876649e410011ae20887b4f2719a9be97251f4` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp-eq-indicator--1aa81ec220efbe5d25ab7686.md) | 71 | `result-track:1aa81ec220efbe5d25ab7686178bf340353f949f33cbd7cc3d6ebdcb2dc81c68` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp-integrable--fbc4b499a043821c8127fa9a.md) | 79 | `result-track:fbc4b499a043821c8127fa9a75f8289c6d6de50a453288003026115b7d32e827` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp-fourier--162e5ea47178e0e185b13807.md) | 84 | `result-track:162e5ea47178e0e185b138075dfa6affdc197db95fb8d92b2a19604f7b0e0e56` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/reciprocal-square-integrable--c2e6917df52a0eb4c53c8311.md) | 103 | `result-track:c2e6917df52a0eb4c53c8311ec28cbc0a1d8db3d3b81015e65cc527a5b3cc9d2` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/dampedramp-fourier-integrable--e91f0cc7953c86d7e7fe6886.md) | 117 | `result-track:e91f0cc7953c86d7e7fe6886a9c7c46d28ccd341034a6e52ff17324c96735e6e` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/perronintegrand--d297801fe3c73c724874ca89.md) | 129 | `declaration-track:d297801fe3c73c724874ca89d910000f7eaffd55263b2f6caf529cd77ec5a830` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/perronintegrand-integrable--be290f9efdcabf854794283b.md) | 134 | `result-track:be290f9efdcabf854794283b287a2e8cc5d39d4de07e2257cd4af77206c1c3a9` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/vertical-ramp-inversion--62455d6d04ee406df265f933.md) | 147 | `result-track:62455d6d04ee406df265f93302daae56f73a16bd83cdccd64de09f919b64f70e` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/elementary-perron-kernel--6bc8ef3f16d1ff378ac11a6a.md) | 173 | `result-track:6bc8ef3f16d1ff378ac11a6adf245e00067aff0dfaed64c774654fca9421f956` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/elementary-perron-endpoint--1cbf153d37c648d5078960ca.md) | 196 | `result-track:1cbf153d37c648d5078960ca5bb8cf9e3d1322cb290974c6248c4930e3149b13` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PerronFullAudit/Variant7d29e7f6c6c5f34a0eb81957052a1b5a1aa8db2b53684a184f3fd6fce345ce6f.lean/declarations/elementary-perron-ratio--c1fb17f9356a07bf945e906a.md) | 201 | `result-track:c1fb17f9356a07bf945e906aaf8db896316895739972a99898ee7b3988de93ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SmoothedPerronKernelBeforeStyle.Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ad653aee902a12ee8e425737d979ffd0835f083",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ad653aee902a12ee8e425737d979ffd0835f083`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean.json)

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
| 1 | `theorem` | [kernelIntegrand_integrable_Ioi_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/kernelintegrand-integrable-ioi-zero--ac7a61d933e7b68335c64a0e.md) | 26 | `result-track:ac7a61d933e7b68335c64a0e24b44e8e8e61ba44fb54b0f1c0b50afa3c48e804` |
| 2 | `theorem` | [integral_first_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/integral-first-moment--20133e47445ed563fcf89485.md) | 40 | `result-track:20133e47445ed563fcf894853bf011bb0ed8f578cc7b51b44d066ed2f9788d02` |
| 3 | `def` | [dampedRamp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp--38703a18665a9716fe362557.md) | 62 | `declaration-track:38703a18665a9716fe3625574a039c144c5d80ef3d8cb74295ec7fe02d524c01` |
| 4 | `theorem` | [dampedRamp_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp-continuous--fc564d319a535bed2ea4dd4a.md) | 66 | `result-track:fc564d319a535bed2ea4dd4a3bf714a091cdb7c55e321a178d2d7ea0eaf519c7` |
| 5 | `theorem` | [dampedRamp_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp-eq-indicator--d617ec2b07f4efb202a87ece.md) | 71 | `result-track:d617ec2b07f4efb202a87ecec2a56e1f48623d16a0c2e30aeac123358fa735eb` |
| 6 | `theorem` | [dampedRamp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp-integrable--81a0ab6a840bddb65610064f.md) | 79 | `result-track:81a0ab6a840bddb65610064f8968de59add6b7445b26fb83a2129d8ce454c815` |
| 7 | `theorem` | [dampedRamp_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp-fourier--8bfb81e21031de15993d1a24.md) | 84 | `result-track:8bfb81e21031de15993d1a24a1d5244451bf33024a752a5015490271a339ca5e` |
| 8 | `theorem` | [reciprocal_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/reciprocal-square-integrable--2fde6cf8a077a2daa25c04a8.md) | 103 | `result-track:2fde6cf8a077a2daa25c04a8ef9e22f383d3e0888a19afddf3c734a9115a62a3` |
| 9 | `theorem` | [dampedRamp_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/dampedramp-fourier-integrable--147ac30384b25baf701bd089.md) | 117 | `result-track:147ac30384b25baf701bd089814cf9166184e89e636cc214c3803bdd47398d37` |
| 10 | `def` | [perronIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/perronintegrand--e3ed9e18df9212f1f5e1d0a1.md) | 129 | `declaration-track:e3ed9e18df9212f1f5e1d0a19f3a2c573f3acc55fcb53cbe3c49eaed1a72bea2` |
| 11 | `theorem` | [perronIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/perronintegrand-integrable--077c71c5fc68d9e81c0d13ea.md) | 134 | `result-track:077c71c5fc68d9e81c0d13ea8b92533b07bfd6dc3f6df47f51343b7e8a01abf8` |
| 12 | `theorem` | [vertical_ramp_inversion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/vertical-ramp-inversion--45a465b4965b96df6a062452.md) | 147 | `result-track:45a465b4965b96df6a0624527b2289aac1ce7c953a09d266623b3efb0320bb98` |
| 13 | `theorem` | [elementary_perron_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/elementary-perron-kernel--825d0b203a2312981249e3b3.md) | 173 | `result-track:825d0b203a2312981249e3b3bf1e5bd89479548a6dc6a98c2dca5094dc328994` |
| 14 | `theorem` | [elementary_perron_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/elementary-perron-endpoint--4a2397715bf06075385953ae.md) | 196 | `result-track:4a2397715bf06075385953ae2751c3a4a34469118449530d71dae1c59ea589ea` |
| 15 | `theorem` | [elementary_perron_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SmoothedPerronKernelBeforeStyle/Variante932fa31de120909cb168745815157d75ca0563525da0f3314b69775f67e9092.lean/declarations/elementary-perron-ratio--e8024db0d394c2620ff69348.md) | 201 | `result-track:e8024db0d394c2620ff6934876195729fae764e2139e3656dc87dd3e1bc61e2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

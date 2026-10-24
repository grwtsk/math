# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelMoment.Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3dee3e04c8a54eb4328423127a4b3271cc93bc48",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3dee3e04c8a54eb4328423127a4b3271cc93bc48`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample--e8241b2979480178a4af3059.md) | 18 | `declaration-track:e8241b2979480178a4af3059440b8ca97e16c3a17d2bf02e88530d141c1ce0ca` |
| 2 | `def` | [sampleDerivativeProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/samplederivativeprofile--e896889ddf92082bb73743a2.md) | 21 | `declaration-track:e896889ddf92082bb73743a2c94ae2f3a311825543f0f145bec529a081f5e0a6` |
| 3 | `theorem` | [v_diff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/v-diff--122855c877cd89f82cb6a876.md) | 23 | `result-track:122855c877cd89f82cb6a876dce4d48c800b55bd186325c0b05075c28bfeb8cb` |
| 4 | `theorem` | [v_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/v-cont--71194d4646b6e178d36af6ab.md) | 26 | `result-track:71194d4646b6e178d36af6ab6d074ba5d21588dd28865c20c39e664421e86b82` |
| 5 | `theorem` | [profile_cont](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/profile-cont--79e59f4dd08a201e1568de8e.md) | 28 | `result-track:79e59f4dd08a201e1568de8ec64936f87e6e52b8f456dfd4ca05bdbbc9cc8fbd` |
| 6 | `theorem` | [profile_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/profile-compact--bab9d4630110deea98339c2c.md) | 32 | `result-track:bab9d4630110deea98339c2c9c6a30de3401082da629b78220f50134b262b710` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-hasderivat--e4ed3345dfdcf271095cad5c.md) | 40 | `result-track:e4ed3345dfdcf271095cad5c3afb9b7d071c2af09227202a2795216268eb7f19` |
| 8 | `theorem` | [logSample_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-eq--61e147f613611e90f34c9bd2.md) | 50 | `result-track:61e147f613611e90f34c9bd214024670a7c9da46a42fa6ffc215fa76389558c9` |
| 9 | `theorem` | [logSample_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-exp--b230bed58591bb869ceb83a6.md) | 55 | `result-track:b230bed58591bb869ceb83a6b8791b5cce0dae7ab7f6faab3e7bcd58974902eb` |
| 10 | `theorem` | [translated_compact](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/translated-compact--e98459bade8b4bdda29991ad.md) | 62 | `result-track:e98459bade8b4bdda29991adb19714626f29f8759eaebec6445b62aea80546f0` |
| 11 | `theorem` | [logSample_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-integrableon--0d92a4f9a7afb654856f7156.md) | 69 | `result-track:0d92a4f9a7afb654856f715671659fcf13a838f8662f414bf71c19ac42596e3b` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-deriv-exp--c42695692e956402d30c318c.md) | 80 | `result-track:c42695692e956402d30c318c8f7312ffb2d1a61e17d2a28effc38cb507830355` |
| 13 | `def` | [derivativeBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/derivativebudget--24ad509f83945493f2102738.md) | 88 | `declaration-track:24ad509f83945493f2102738f5249cda2b2167b36d3a83d558ec7cf517d481aa` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/derivativebudget-integrable--e9b8319a0e15d9adc855650a.md) | 91 | `result-track:e9b8319a0e15d9adc855650a65b8dbdc2e7a34bf916b2c15f4ccc1afb7ae0c10` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/derivativebudget-nonneg--967b80e47a7956a2dc0440ec.md) | 97 | `result-track:967b80e47a7956a2dc0440ecff0409e1a830be7d5fbead6f00ee9819e7a3953d` |
| 16 | `theorem` | [derivative_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/derivative-translate--a3d6bbb625f0d29090b71e80.md) | 100 | `result-track:a3d6bbb625f0d29090b71e80ada0f2f175c943336f67f40661085b84fffa43b0` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-deriv-integrableon--f6f572922f655efb60a5201c.md) | 109 | `result-track:f6f572922f655efb60a5201cc7aef949d4859b46516d74a7f858e4b76a901929` |
| 18 | `theorem` | [logSample_variation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-variation-le--9618be6ac68d716ee85ce0bd.md) | 127 | `result-track:9618be6ac68d716ee85ce0bd452b1fefb4874087a8015f9d5efe7bf10536e26b` |
| 19 | `theorem` | [weighted_translate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/weighted-translate--c69132718b1dd16b8099009b.md) | 159 | `result-track:c69132718b1dd16b8099009b956871ef1dc0189f089c03ce6beb001e352e324e` |
| 20 | `theorem` | [weighted_translated_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/weighted-translated-integrable--759ae8c94ec832be61b8a337.md) | 168 | `result-track:759ae8c94ec832be61b8a337af4e26424d5a25b6420b84b5870d5fba07fad829` |
| 21 | `theorem` | [weighted_translated_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/weighted-translated-integral-zero--6bc668efb4976ab17f68cf1e.md) | 175 | `result-track:6bc668efb4976ab17f68cf1e2832d08559ed4472f625296def8ae42c2a029f4e` |
| 22 | `theorem` | [logSample_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-integral-zero--f1847d5dce79552761129b26.md) | 183 | `result-track:f1847d5dce79552761129b265489984021163decac3d88dc9e782b3e2eff9a38` |
| 23 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelMoment/Variant8f6c570c4fb4bafe8b948ddc4a06566e4c1ace918f46d107b1d9c61adf778f7c.lean/declarations/logsample-integrableon-and-integral-zero--abdd3fcf19200ebb9e1dd0ce.md) | 197 | `result-track:abdd3fcf19200ebb9e1dd0ce09ea6f889001d681feb1fddc9e8256a6bfd41850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

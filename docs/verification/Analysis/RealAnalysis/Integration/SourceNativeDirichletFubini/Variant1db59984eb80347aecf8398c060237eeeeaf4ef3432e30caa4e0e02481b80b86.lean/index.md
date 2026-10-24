# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceNativeDirichletFubini.Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeReadout` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletPhase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletphase--4a5082adf00a52f805c2cd26.md) | 36 | `declaration-track:4a5082adf00a52f805c2cd2672580d679585041e304e2e0f91f113567b6c898f` |
| 2 | `def` | [dirichletSourceTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletsourceterm--db8563b6e00a2fa92f03e44e.md) | 40 | `declaration-track:db8563b6e00a2fa92f03e44e0d63a19c6f220f49916187304f11bff98778c3f4` |
| 3 | `theorem` | [dirichletPhase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletphase-norm--ae6475de47529d2f1f294d8c.md) | 45 | `result-track:ae6475de47529d2f1f294d8c94c76e9908cbb5c50d7efec9ce9a965e7b1f4913` |
| 4 | `theorem` | [mangoldt_term_phase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/mangoldt-term-phase--46c0a7fe86ba172b5cd533cf.md) | 53 | `result-track:46c0a7fe86ba172b5cd533cf08bf51b773bd2bd012182169b806d193f1e53ac7` |
| 5 | `theorem` | [dirichletSourceTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletsourceterm-integrable--d3e6df83fa57da31cfaa7968.md) | 74 | `result-track:d3e6df83fa57da31cfaa796869d2eec2eddf5ebcdc2e9732dc66dc55eb860954` |
| 6 | `theorem` | [dirichletSourceTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletsourceterm-integral-norm--17eb37801636ee2ff83c65b0.md) | 85 | `result-track:17eb37801636ee2ff83c65b02c5d42ed44256a82870ec50d60a7bf261c1dbb57` |
| 7 | `theorem` | [dirichletSourceTerm_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletsourceterm-norm-integrals-summable--baaf23e70a606ae706c41296.md) | 94 | `result-track:baaf23e70a606ae706c41296dda3b1fe9b9ed6b0d3555eec1b4db961aa6b87c7` |
| 8 | `theorem` | [angularIntegrand_eq_dirichlet_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/angularintegrand-eq-dirichlet-tsum--03be846f10b730ad7390c0c3.md) | 100 | `result-track:03be846f10b730ad7390c0c3603f591e1ef5a9a43ccfddf6818a8b22089d732f` |
| 9 | `theorem` | [angularContour_eq_dirichlet_integral_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/angularcontour-eq-dirichlet-integral-tsum--a25bf640d670877bd3d6ccae.md) | 114 | `result-track:a25bf640d670877bd3d6ccae04f4d0f2b66e56655d21e6834a456926ea7e00a6` |
| 10 | `theorem` | [mangoldt_term_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/mangoldt-term-two--294d22e5b74eabadeefbf55b.md) | 123 | `result-track:294d22e5b74eabadeefbf55bac9c2502555b84081744a0387625437a32226b53` |
| 11 | `theorem` | [dirichletSourceTerm_scalar_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/dirichletsourceterm-scalar-integral--5358aed818ca34deba96c784.md) | 133 | `result-track:5358aed818ca34deba96c78405ceda0a92425fe1b0b2583686cecb6de7f5b90f` |
| 12 | `theorem` | [inverted_coefficient_eq_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/inverted-coefficient-eq-source--d43e6bdabd7c82f857564b6d.md) | 147 | `result-track:d43e6bdabd7c82f857564b6dc2a607878b7efd8f39b7594acc2c42807fc3b386` |
| 13 | `theorem` | [source_coefficient_zero_outside_inventory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/source-coefficient-zero-outside-inventory--cc740271600268c02a56e37b.md) | 171 | `result-track:cc740271600268c02a56e37bfba6d727af115cbe9c5f04d972702131a5ee5d55` |
| 14 | `theorem` | [angularContour_eq_closedPrimeMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/angularcontour-eq-closedprimemoment--8915992cf949456b6809f00a.md) | 189 | `result-track:8915992cf949456b6809f00a6d63dc6eb88d895d3f355577daf1bd9c11c66b9d` |
| 15 | `theorem` | [closedPrimeMoment_sub_head_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/closedprimemoment-sub-head-norm-bound--19efae7d2fe5572f9c78eb25.md) | 206 | `result-track:19efae7d2fe5572f9c78eb25c2ee6a333bfc25697322caabefc77dd24eea93ec` |
| 16 | `theorem` | [closedPrimeMoment_growing_tail_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/declarations/closedprimemoment-growing-tail-bound--aea0168f57c953689365464d.md) | 213 | `result-track:aea0168f57c953689365464dca82412b7405fe43f628edef0c61d0a8f1a61910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

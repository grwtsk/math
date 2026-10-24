# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt05.Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30d6b53b3195808e30643c8a038bb87a0bdcd5d7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30d6b53b3195808e30643c8a038bb87a0bdcd5d7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/mangoldtweight--e6599390969ffaec585ce583.md) | 27 | `declaration-track:e6599390969ffaec585ce58371b9aa2dcc6486bf501e1eadb2b92df1f8b1f54b` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/laplaceatom--b15e98dc164a0076dbe3f317.md) | 30 | `declaration-track:b15e98dc164a0076dbe3f317d76d2310505a094eb5a3a77e7797d4b34f15aaa6` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/onset-pos--a41f2e9a9b1d3715c33d01a1.md) | 34 | `result-track:a41f2e9a9b1d3715c33d01a1aae5eda68ef235c8bd260c004bd56769e534a2c3` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/weight-nonneg--a5a7db41d15bfe812e0b617c.md) | 37 | `result-track:a5a7db41d15bfe812e0b617c17a1f5121dd813079d8486d426e5c301d32e71cc` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-nonneg--b8bca277d15f85aec65d1b65.md) | 41 | `result-track:b8bca277d15f85aec65d1b651132f7b01e3bb0a434f1ffecc479aa6bdcae616a` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-measurable--4b0004b5c5d6df35e9b1828b.md) | 44 | `result-track:4b0004b5c5d6df35e9b1828bd302c500468a4e8a57ed9c74b7b1ed9229583bd3` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-integrable--1c47db5773a0cf3222b4bdba.md) | 50 | `result-track:1c47db5773a0cf3222b4bdbafdafd5d446904f0a7e6bbece7420bcbef8b77f90` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-integral--176d7024e26eee4fd92cec2c.md) | 57 | `result-track:176d7024e26eee4fd92cec2cb8d1faf24ca4e82ecc257a83fa219f64f1d96efd` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/weighted-exp-eq-norm-term--91bf59899a18bb7cebfa5771.md) | 65 | `result-track:91bf59899a18bb7cebfa57717a4300f9eaf3dd2aafa912b35c5e90f9adbcf354` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-norm-integrals-summable--5fc869d2229423e45e4705d2.md) | 78 | `result-track:5fc869d2229423e45e4705d2d90bc5cd5861c3327869a1b23dcbc33d2032dcc6` |
| 11 | `theorem` | [onset_closed_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/onset-closed-iff--58c89be67bf43bb2f0c5964b.md) | 91 | `result-track:58c89be67bf43bb2f0c5964b8b998c2e3a4d178dd3d32cce61469d55a59956da` |
| 12 | `theorem` | [atom_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atom-zero-outside--815b2325f2a390c06a051aaf.md) | 96 | `result-track:815b2325f2a390c06a051aaf5e3ac1e65f547daa657746e611c3f97b66033707` |
| 13 | `theorem` | [atoms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atoms-summable--570ae9e1c13edc9d913a53cd.md) | 105 | `result-track:570ae9e1c13edc9d913a53cd7f600f942b3db4817c13b43b98378e2b98ce402d` |
| 14 | `theorem` | [atoms_tsum_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atoms-tsum-eq-actual--e7a0e5f425cab3d0361707d1.md) | 108 | `result-track:e7a0e5f425cab3d0361707d1dcb602fdd9688388f9f188fbec2356523ea7434f` |
| 15 | `theorem` | [atoms_tsum_eq_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atoms-tsum-eq-indicator--fba79464952fc10ee2030b3f.md) | 134 | `result-track:fba79464952fc10ee2030b3f2b11e4144878aea078da93220ec61c2978c82488` |
| 16 | `theorem` | [atoms_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atoms-integrals-summable--90c2ddd7f5fcdc380d69644b.md) | 148 | `result-track:90c2ddd7f5fcdc380d69644b88574bd5c40a7f2ca89e91218c58267f462eb219` |
| 17 | `theorem` | [atoms_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/atoms-lintegral--27e9208e2378332473be040a.md) | 153 | `result-track:27e9208e2378332473be040aac7c08aecdc7bd12fb369107bc152c72f6683700` |
| 18 | `theorem` | [actual_prefix_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/actual-prefix-laplace-integrable--f7ef537b6f3847cd9dff0399.md) | 171 | `result-track:f7ef537b6f3847cd9dff03990909266240783d1f835a96977be650c68fdd5b65` |
| 19 | `theorem` | [actual_prefix_laplace_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/actual-prefix-laplace-eq-tsum--4c388c887ddea034a96c8dfe.md) | 181 | `result-track:4c388c887ddea034a96c8dfe9bb4e366f3288644686d99de1cd5163156541d81` |
| 20 | `theorem` | [weighted_exp_eq_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/weighted-exp-eq-term--a0cfe0d636d7a6f92bad34f1.md) | 190 | `result-track:a0cfe0d636d7a6f92bad34f1ad9248e9c42f77c804e9c0fd63e28a4752294803` |
| 21 | `theorem` | [actual_prefix_laplace_eq_LSeries](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt05/Variant6280a677c82124eec6d607384c24c758f3c6f066ec57fad6e104699c11a360ae.lean/declarations/actual-prefix-laplace-eq-lseries--05a9ee303c0ae407a6e72bd8.md) | 202 | `result-track:05a9ee303c0ae407a6e72bd8de7db2c39584cc1f4debd5189a8e85dfaa6ec1f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

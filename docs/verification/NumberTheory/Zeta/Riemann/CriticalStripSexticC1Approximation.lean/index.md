# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticC1Approximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feb6fc25eb1c1c9e80378f1ce562247b652941be",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feb6fc25eb1c1c9e80378f1ce562247b652941be`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairApproximation`](../../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairApproximation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSixteenDerivativeSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSixteenDerivativeSource.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Complex.Convex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/tailradius--e4a61d851a76512517fe0a5e.md) | 28 | `declaration-track:e4a61d851a76512517fe0a5e5283c0453317d37d73a7d2543632d219d5856a22` |
| 2 | `def` | [logRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/logradius--b9997e7d9f0030e5ee7a3aa2.md) | 29 | `declaration-track:b9997e7d9f0030e5ee7a3aa2c8bd77ee501feb157748f384c55daf1dd01d0a24` |
| 3 | `def` | [valueRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/valueradius--75a017e953860a6cc3d46f01.md) | 30 | `declaration-track:75a017e953860a6cc3d46f014ae9e277a2bb52be89a5efea50d59008010d11b9` |
| 4 | `def` | [derivativeRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/derivativeradius--8186d7445d009fc2b9d581e6.md) | 31 | `declaration-track:8186d7445d009fc2b9d581e6d9083d1da64117f2e2c7d8d38298b56324c06a2a` |
| 5 | `lemma` | [tailRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/tailradius-nonneg--0916f1258a98dcfac0ca7c3b.md) | 34 | `result-track:0916f1258a98dcfac0ca7c3be74b21740a985d85e8cc6c2a0894976aeea29c29` |
| 6 | `lemma` | [logRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/logradius-nonneg--3664ec5979bc43dc765c9bdc.md) | 35 | `result-track:3664ec5979bc43dc765c9bdc5716dadcbeb3194e51189890af5ba10811cbe079` |
| 7 | `lemma` | [valueRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/valueradius-nonneg--955e6b0275cd11d886c23435.md) | 36 | `result-track:955e6b0275cd11d886c2343571c0fd4c169df0f8383f858365fcac7a39d91638` |
| 8 | `lemma` | [derivativeRadius_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/derivativeradius-nonneg--0e50090f23a851cfac0265e6.md) | 38 | `result-track:0e50090f23a851cfac0265e611437c2d9567080c0dcc031d7d1c4413ab3a54b8` |
| 9 | `lemma` | [tail_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/tail-bound--a472628e423e76493513b3d2.md) | 44 | `result-track:a472628e423e76493513b3d24a5689a1a64f4629b36c67ae85e50f107bf96522` |
| 10 | `lemma` | [logTail_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/logtail-bound--482550733213dd56dc6a33ae.md) | 54 | `result-track:482550733213dd56dc6a33ae9ad684e7563cf2b068dbc509dd04eef169baa587` |
| 11 | `theorem` | [finiteModel_hasDerivAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/finitemodel-hasderivat--f86ba6fcf9ebfdb7cfb38869.md) | 66 | `result-track:f86ba6fcf9ebfdb7cfb388694c36cc5da548fe9696648d1feea4baa086c5a5f6` |
| 12 | `theorem` | [derivative_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/derivative-residual--897c795ace71820138fcdbfe.md) | 88 | `result-track:897c795ace71820138fcdbfe9ef967f804535d01f9682ea4304b4de09eb8c8fb` |
| 13 | `lemma` | [multiplier_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/multiplier-bound--d2fce8b28403d3a9252237a5.md) | 95 | `result-track:d2fce8b28403d3a9252237a59953fdfa2c77aac21fef29551c10c9b3f5e264c1` |
| 14 | `theorem` | [value_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/value-error--84d6d5f89c024b6d35d16a4f.md) | 101 | `result-track:84d6d5f89c024b6d35d16a4ffff5a82b9825fcb2a6d1aace94ae448deab79a41` |
| 15 | `theorem` | [derivative_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/derivative-error--6fb3a1aec435da7107f3d963.md) | 109 | `result-track:6fb3a1aec435da7107f3d9631bab64aecbbe319fdf292658e227bb7595b9cb99` |
| 16 | `def` | [band](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/band--c54f87716d3cd2aad4ea2611.md) | 128 | `declaration-track:c54f87716d3cd2aad4ea26113ba14836cc9ca36e561648d9e7e000f820cf1940` |
| 17 | `lemma` | [band_convex](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/band-convex--e8b229ec64daccb495d3da7c.md) | 130 | `result-track:e8b229ec64daccb495d3da7cedd7e57da76734201e69222b89f12a6dea5ca5fc` |
| 18 | `lemma` | [band_factors](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/band-factors--4503470c197a28ae34fdfabb.md) | 136 | `result-track:4503470c197a28ae34fdfabb3eab9ba135652a58339e01a092e7215f4888fcf2` |
| 19 | `lemma` | [tailRadius_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/tailradius-tendsto-zero--6cc5571d077ff02ea7fc864a.md) | 146 | `result-track:6cc5571d077ff02ea7fc864a12b1129c71567fe3c725b45fd84eb222b44f0ed1` |
| 20 | `lemma` | [logRadius_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/logradius-tendsto-zero--68ca7f55a014ad5d9d49d266.md) | 152 | `result-track:68ca7f55a014ad5d9d49d266bfb672283d074d1b492a640b843ac89422aa29c3` |
| 21 | `lemma` | [valueRadius_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/valueradius-tendsto-zero--7f10cf311aa5216f2a58433e.md) | 158 | `result-track:7f10cf311aa5216f2a58433e5bd14dd33171f7e62226f67216d5f744a6e1b810` |
| 22 | `lemma` | [derivativeRadius_tendsto_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/derivativeradius-tendsto-zero--34c43c5ed6325ddfe2f16698.md) | 162 | `result-track:34c43c5ed6325ddfe2f16698d821c13084b40671b076e9893c9fcc47707ec749` |
| 23 | `lemma` | [cutoff64_radii](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticC1Approximation.lean/declarations/cutoff64-radii--6c5b953ced0033e59e177cdd.md) | 168 | `result-track:6c5b953ced0033e59e177cdda6c43277906e8eee42079991b05ef36ea6ad9b5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

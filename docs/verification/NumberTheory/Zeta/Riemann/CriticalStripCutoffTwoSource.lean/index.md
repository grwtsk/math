# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "707808984bfd819e6237f65cbdfc936d8c0a6505",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `707808984bfd819e6237f65cbdfc936d8c0a6505`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/power--072b0097cb4983f17e151aea.md) | 25 | `declaration-track:072b0097cb4983f17e151aeab5c5d3c591a4714154cbbecceb251342b30c2cd8` |
| 2 | `def` | [coefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/coefficient--f7279970739c0f209bd2d12d.md) | 27 | `declaration-track:f7279970739c0f209bd2d12db16d362e740cacad58f06a8cb7bd1665c2aa3bd2` |
| 3 | `def` | [scaledCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/scaledcoefficient--99d61b03c499374a4156a48f.md) | 31 | `declaration-track:99d61b03c499374a4156a48fe56d414fff0a4e5cf0b52534383148cbb070bf07` |
| 4 | `lemma` | [coefficient_eq_scaled](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/coefficient-eq-scaled--3ec6936df2363e533552a4b0.md) | 34 | `result-track:3ec6936df2363e533552a4b045381bc2de478acee2ca315300e9a54fa98eb98d` |
| 5 | `lemma` | [negative_shift](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/negative-shift--488113b58ea4d5481036e18c.md) | 38 | `result-track:488113b58ea4d5481036e18c01ec2596434bb7e88bf9934fa6da0188fd7462bb` |
| 6 | `theorem` | [finiteModel_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/finitemodel-two--cb93cd8c1bf1a90e333ee021.md) | 45 | `result-track:cb93cd8c1bf1a90e333ee021d1bee5ef7da4e4dbd5d3a9e142f74381118d385d` |
| 7 | `theorem` | [source_residual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/source-residual--18ef278ea4e9ec6a1883aee6.md) | 65 | `result-track:18ef278ea4e9ec6a1883aee666dda7bf6271d97f045dd5860b3354c49f1e1f6c` |
| 8 | `lemma` | [power_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/power-norm--21dbb38b601bc4752f60cf47.md) | 70 | `result-track:21dbb38b601bc4752f60cf478223d4577a7cf90b55f3448246ea85e2bd483216` |
| 9 | `lemma` | [log_two_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/log-two-lower--391094186a83ae6bb42e2a0b.md) | 75 | `result-track:391094186a83ae6bb42e2a0b349e671d2278cd4d623eb6c5897399fd1fcc3978` |
| 10 | `lemma` | [real_power_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/real-power-weight--c4c2b1547e436a5f941aea7d.md) | 82 | `result-track:c4c2b1547e436a5f941aea7df39f833cbc36f554e1f6d94e2ca381c72257f0e9` |
| 11 | `theorem` | [power_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/power-weight--6b840f3e984f3bc9f0312e8e.md) | 109 | `result-track:6b840f3e984f3bc9f0312e8efaeb43a4afac0077a8e0c82ad40226a967d6944a` |
| 12 | `lemma` | [weighted_product_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/weighted-product-bound--ce6a5f92a3691b39eecfd69a.md) | 115 | `result-track:ce6a5f92a3691b39eecfd69ab1270ff0c1bc2c1ef5ca41092700a86ede0751d8` |
| 13 | `def` | [shiftedProduct](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/shiftedproduct--0676babd4f32a2d789447e9a.md) | 127 | `declaration-track:0676babd4f32a2d789447e9acb709870c672bcdff5ca08a0a5e53d6ee71303bc` |
| 14 | `def` | [tailCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/tailcoefficient--a978c0b2bc0bdf87bd6a9e48.md) | 130 | `declaration-track:a978c0b2bc0bdf87bd6a9e486a85e3b2957b7310eb99501bcebcd9e3f0bdce4f` |
| 15 | `lemma` | [multiplier_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/multiplier-norm--1c7be001b016546d4d4bd926.md) | 132 | `result-track:1c7be001b016546d4d4bd9268290cdd771344e8ea4b683efa122d65313cd708c` |
| 16 | `lemma` | [cutoff_power](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/cutoff-power--bcf898313eccc143fa1e469a.md) | 137 | `result-track:bcf898313eccc143fa1e469a0af3350dc3362e56f1226c9838f5090512566d85` |
| 17 | `theorem` | [source_error](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoSource.lean/declarations/source-error--d76a8ab7803c43eaba6fe5a9.md) | 143 | `result-track:d76a8ab7803c43eaba6fe5a9e8a2f323d5b19b411f9afa22e2c2816bf3726103` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

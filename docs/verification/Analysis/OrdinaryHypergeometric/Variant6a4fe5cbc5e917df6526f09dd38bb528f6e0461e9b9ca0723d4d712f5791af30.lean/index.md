# Verification target: GRWTSK.Analysis.OrdinaryHypergeometric.Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511d7d51e3135a689a8530c3e616d4831a58361f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/index.md) · [Full source](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511d7d51e3135a689a8530c3e616d4831a58361f`.

Source path: `GRWTSK/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.OfScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.RCLike` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ordinaryHypergeometricCoefficient](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometriccoefficient--f7805a8465cd5ef178d490e5.md) | 68 | `declaration-track:f7805a8465cd5ef178d490e570495cb63b424c4fe4022e2dd4e49d153ff32bec` |
| 2 | `def` | [ordinaryHypergeometricSeries](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries--b6d74f36b05dfe5bb4dcf76e.md) | 73 | `declaration-track:b6d74f36b05dfe5bb4dcf76e96ceb7d158c675d5ab050213e9ca1c3634d7d48e` |
| 3 | `def` | [ordinaryHypergeometric](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric--715043e636ffc2059d15af5c.md) | 83 | `declaration-track:715043e636ffc2059d15af5c7be587132de6f99430bf2a3261a6ba7c3c6f11e7` |
| 4 | `theorem` | [ordinaryHypergeometricSeries_apply_eq](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-apply-eq--00466f1cee568303ece01967.md) | 89 | `result-track:00466f1cee568303ece019676b40e7488b61a7beaad2f1c150c0e7366dcbd408` |
| 5 | `theorem` | [ordinaryHypergeometricSeries_apply_eq'](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-apply-eq--fa83c279255d5c04283872f9.md) | 96 | `result-track:fa83c279255d5c04283872f97fab6094ccbb2b05bdf8f7c50c8e278ea10b65a8` |
| 6 | `theorem` | [ordinaryHypergeometric_sum_eq](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-sum-eq--b8e4576c1177d7a2bdfa3214.md) | 102 | `result-track:b8e4576c1177d7a2bdfa32140fd565e7057581ebb0552adb2887a67923038604` |
| 7 | `theorem` | [ordinaryHypergeometric_eq_tsum](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-eq-tsum--180d6e0a7b1dce7779b244ac.md) | 107 | `result-track:180d6e0a7b1dce7779b244ac9eba1b8f6bcd9f55206f447cf4a814d1f620e861` |
| 8 | `theorem` | [ordinaryHypergeometricSeries_apply_zero](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-apply-zero--e12120549421a7b962796957.md) | 112 | `result-track:e12120549421a7b9627969572c41a4fefdabb07dcbe52ac0b0f901a443428be6` |
| 9 | `theorem` | [ordinaryHypergeometric_zero](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-zero--4e7c5a98f060b8757eab0cbd.md) | 118 | `result-track:4e7c5a98f060b8757eab0cbd9651d6a1d209afc1205eaef46bc1c9f2d5e4bf8d` |
| 10 | `theorem` | [ordinaryHypergeometricSeries_symm](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-symm--6a930c52b6239ec70f4b8331.md) | 122 | `result-track:6a930c52b6239ec70f4b83319fd1d7cbcc93536bcd1aeb92962a127cb93ac712` |
| 11 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_of_neg_nat](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-eq-zero-of-neg-nat--61e654809a44ea7936af7209.md) | 129 | `result-track:61e654809a44ea7936af7209c164245afbdf95ef1d3999f4d871a088ce74acb4` |
| 12 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₁](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--62d7694d83ae9f3b7d7b63c4.md) | 148 | `result-track:62d7694d83ae9f3b7d7b63c4bc4d85e61a5ec64681cd39341f657805fc9ab9b7` |
| 13 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₂](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--f9fd3fc4479b9e6d7de2a446.md) | 153 | `result-track:f9fd3fc4479b9e6d7de2a4462044d40ac46650c8fe4376d6f805c3f299ad98d1` |
| 14 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₃](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat--def9de468d1db74202567722.md) | 158 | `result-track:def9de468d1db742025677225605962574a799c720a918e97633d29614f74f43` |
| 15 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_iff](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-eq-zero-iff--98f1673f5b3c1496ef551732.md) | 164 | `result-track:98f1673f5b3c1496ef551732850eaea8ec25ed3fcfe959818c7a09b710f1a6e6` |
| 16 | `theorem` | [ordinaryHypergeometricSeries_norm_div_succ_norm](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-norm-div-succ-norm--bf0a57678adf19730774469c.md) | 177 | `result-track:bf0a57678adf19730774469cc9413dfb057740a77b7270875d3e0786d7635efe` |
| 17 | `theorem` | [ordinaryHypergeometricSeries_radius_eq_one](../../../../mathematics/Analysis/OrdinaryHypergeometric/Variant6a4fe5cbc5e917df6526f09dd38bb528f6e0461e9b9ca0723d4d712f5791af30.lean/declarations/ordinaryhypergeometricseries-radius-eq-one--d35a0b5c1834d7e13187588c.md) | 202 | `result-track:d35a0b5c1834d7e13187588c7a319e26754fc80723f5f6c34ceb6c821c3df48e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

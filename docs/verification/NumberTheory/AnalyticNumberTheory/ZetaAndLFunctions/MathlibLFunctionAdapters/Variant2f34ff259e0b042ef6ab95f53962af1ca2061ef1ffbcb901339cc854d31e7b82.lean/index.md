# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MathlibLFunctionAdapters.Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "377eab4d5de0f5d158b9c3d8f2fec3b50f10c967",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `377eab4d5de0f5d158b9c3d8f2fec3b50f10c967`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [canonicalCompletedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/canonicalcompletedlfunction--c7c5825d327d0303fd5307df.md) | 34 | `declaration-track:c7c5825d327d0303fd5307df1f0f68bd9292f38dd91cf9d9cd48ca99ac7f2110` |
| 2 | `theorem` | [canonicalCompletedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/canonicalcompletedlfunction-one-sub--812ebb9f9668babd30324b91.md) | 41 | `result-track:812ebb9f9668babd30324b91035918b4d1a4293092d3903bf9bfb3f701ea6de6` |
| 3 | `theorem` | [gammaFactor_ne_zero_of_re_pos](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/gammafactor-ne-zero-of-re-pos--c7d25ee7e1fe67580e5dd2b5.md) | 52 | `result-track:c7d25ee7e1fe67580e5dd2b56ced62dcf03652fa7374c1572e4a0d9921143750` |
| 4 | `theorem` | [canonicalCompletedLFunction_zero_iff_LFunction_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/canonicalcompletedlfunction-zero-iff-lfunction-zero--dbd6d13bdb43b729b0981f6a.md) | 66 | `result-track:dbd6d13bdb43b729b0981f6af7d36d34abd885ff92b8c90a3a68b13c3e7cefcd` |
| 5 | `def` | [poleRemovedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/poleremovedlfunction--c5f884f86c4de16182f983b2.md) | 84 | `declaration-track:c5f884f86c4de16182f983b224f93837f332e70bcdbd6da142348dd18bf945a2` |
| 6 | `theorem` | [poleRemovedLFunction_eq_LFunction_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/poleremovedlfunction-eq-lfunction-of-ne-one--2c363f4067b72bb67f6f511e.md) | 94 | `result-track:2c363f4067b72bb67f6f511e973c0aa44591efe871b7a450fae47257aa285da7` |
| 7 | `theorem` | [poleRemovedLFunction_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/poleremovedlfunction-one--16bfac08c0533ad3dd6a9170.md) | 101 | `result-track:16bfac08c0533ad3dd6a9170f822cd45aba364da1939af9cc4fbcf26fd649c05` |
| 8 | `theorem` | [differentiable_poleRemovedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/differentiable-poleremovedlfunction--83fd3ed99ea9037b0b474947.md) | 110 | `result-track:83fd3ed99ea9037b0b4749472e2ceab3558f265bde53303e90401be8f5b8dabc` |
| 9 | `theorem` | [poleRemovedLFunction_zero_iff_LFunction_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/poleremovedlfunction-zero-iff-lfunction-zero--70a5aa73d06782983f2956a5.md) | 123 | `result-track:70a5aa73d06782983f2956a563faf56228b52183d5d728db60abf83607e5d05a` |
| 10 | `theorem` | [poleRemovedLFunction_ne_zero_of_one_lt_re](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/poleremovedlfunction-ne-zero-of-one-lt-re--2cf9ec61ef014c29aa89e6f1.md) | 141 | `result-track:2cf9ec61ef014c29aa89e6f1e64285696cc860709accdd0ae5ef82729058b924` |
| 11 | `theorem` | [lSeriesTerm_inverse_eq_star](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/lseriesterm-inverse-eq-star--67d43cda3e827853ddc54bf7.md) | 154 | `result-track:67d43cda3e827853ddc54bf7ff4d20650808ea137b90e379e1ba90263ca9cb37` |
| 12 | `theorem` | [LSeries_inverse_eq_star](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/MathlibLFunctionAdapters/Variant2f34ff259e0b042ef6ab95f53962af1ca2061ef1ffbcb901339cc854d31e7b82.lean/declarations/lseries-inverse-eq-star--659b6b14b6b75dbd5fd995c0.md) | 176 | `result-track:659b6b14b6b75dbd5fd995c01d8016d31418848d63283ac4b2d7e971db73469a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

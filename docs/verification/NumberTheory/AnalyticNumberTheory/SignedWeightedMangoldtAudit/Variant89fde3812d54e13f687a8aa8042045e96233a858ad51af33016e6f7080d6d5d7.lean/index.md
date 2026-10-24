# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.SignedWeightedMangoldtAudit.Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34cf4ae09d2a0f36ec920c12d8b7841d2d4607ac",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34cf4ae09d2a0f36ec920c12d8b7841d2d4607ac`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Chebyshev` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Misc` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Stirling` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedmangoldt--c385f20c47b8a007391280be.md) | 27 | `declaration-track:c385f20c47b8a007391280be50a24ff3f692703be4fcfbb75ef4595ebc2e93fd` |
| 2 | `theorem` | [log_factorial_eq_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/log-factorial-eq-sum--64f19781df65c0223d57195a.md) | 30 | `result-track:64f19781df65c0223d57195aaacb4e5155f5089643c717cfa846efd5e687459c` |
| 3 | `theorem` | [factorial_identity](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/factorial-identity--7c9a78f6ee3475285770a0c6.md) | 40 | `result-track:7c9a78f6ee3475285770a0c6a43cb9bc87fa5c15fd6499b69bd290fa7966c8c8` |
| 4 | `theorem` | [natural_division_error_le_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/natural-division-error-le-one--aa78cdd05b85e8c0f551f4e5.md) | 47 | `result-track:aa78cdd05b85e8c0f551f4e536294ca0073d520538e5841b35f0880234ed8db0` |
| 5 | `theorem` | [factorial_le_scaled_weighted](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/factorial-le-scaled-weighted--bcea623ebe733479c6106f1b.md) | 58 | `result-track:bcea623ebe733479c6106f1bbf0e1cc61e5b67feefc94b95606d82658b99db48` |
| 6 | `theorem` | [scaled_weighted_le_factorial_add_psi](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/scaled-weighted-le-factorial-add-psi--cadf5676822167310b24883d.md) | 70 | `result-track:cadf5676822167310b24883d79b040456e96b394fdb9674da788f8c536e0c655` |
| 7 | `theorem` | [log_factorial_lower](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/log-factorial-lower--8ad99b4048c6bfd1ca0dafef.md) | 88 | `result-track:8ad99b4048c6bfd1ca0dafef1a086ffaf44d127038a9200326545e18d4827f79` |
| 8 | `theorem` | [log_factorial_upper](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/log-factorial-upper--6b9c634e03aae9e388434140.md) | 95 | `result-track:6b9c634e03aae9e388434140e788fb97d7e9d13801d3b64bb07c74dd7e90a633` |
| 9 | `theorem` | [weightedMangoldt_sub_log_bounds](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedmangoldt-sub-log-bounds--2c0370d42bbe4562ee73fa5e.md) | 102 | `result-track:2c0370d42bbe4562ee73fa5e3a30a11e4491de2ea9fa03c985ae961bb4da77f6` |
| 10 | `theorem` | [weightedMangoldt_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedmangoldt-mertens--9b20c087829d5f8364172e36.md) | 112 | `result-track:9b20c087829d5f8364172e362cdeb8b37e355ef26ff1d75945183792ea52e016` |
| 11 | `def` | [primeCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/primecoefficient--689972e464812f994f391c5e.md) | 118 | `declaration-track:689972e464812f994f391c5eb0669fafc9fa565017f67fdf88264bd35bb6800b` |
| 12 | `def` | [properPowerCoefficient](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/properpowercoefficient--d1814926ce6ad4650777204a.md) | 120 | `declaration-track:d1814926ce6ad4650777204a1f776e9d218498707aa6bf12d7a0858f730ce96e` |
| 13 | `def` | [weightedPrime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedprime--965d142a7a1086bc940647eb.md) | 122 | `declaration-track:965d142a7a1086bc940647eb4da6330ad7513d32649793576e5451fc0864ab2f` |
| 14 | `theorem` | [properPowerCoefficient_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/properpowercoefficient-nonneg--a7d44d22111d49202883d02a.md) | 124 | `result-track:a7d44d22111d49202883d02aeb06b2612139265c2c2630ec8ee48620639632be` |
| 15 | `theorem` | [properPower_prefix](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/properpower-prefix--51ad9be02c0dc9ea57aece55.md) | 129 | `result-track:51ad9be02c0dc9ea57aece5589f38d5e9c55952a632161f5bc1d0bf8bc0bf286` |
| 16 | `theorem` | [weighted_difference](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weighted-difference--71b5da41181f2f134920341b.md) | 138 | `result-track:71b5da41181f2f134920341bf6eb6e4aba8c89fe35fdec398e9c35aa0aaebccb` |
| 17 | `theorem` | [weighted_difference_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weighted-difference-nonneg--c2316c74817798c15471158b.md) | 144 | `result-track:c2316c74817798c15471158ba21cf64f510a7df65c065c5addd8580601867b5c` |
| 18 | `theorem` | [weighted_difference_abel](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weighted-difference-abel--85c0988e95614e0489a0d7f1.md) | 149 | `result-track:85c0988e95614e0489a0d7f135404a5d6c3bafa4c6b53bc4a912f0ed19ed013e` |
| 19 | `theorem` | [properPower_integrand_integrable](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/properpower-integrand-integrable--71d1111fe6de8ecd092425b0.md) | 188 | `result-track:71d1111fe6de8ecd092425b0628bcdec984060d0e6a83b2fe782577dde2cfbf8` |
| 20 | `theorem` | [sqrt_div_square](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/sqrt-div-square--abf9f36ee00363644eea3571.md) | 201 | `result-track:abf9f36ee00363644eea35718c4e1357c7fd7239832dc12b1dd638ed56b05f70` |
| 21 | `theorem` | [weighted_difference_bound_of_sqrt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weighted-difference-bound-of-sqrt--227330b16752fbeff4de4c8c.md) | 206 | `result-track:227330b16752fbeff4de4c8c80f75d031e88d1ae24f10f617e2dbc6929352a07` |
| 22 | `theorem` | [weighted_difference_uniformly_bounded](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weighted-difference-uniformly-bounded--cc192ba3f7e86e58d6a652c1.md) | 249 | `result-track:cc192ba3f7e86e58d6a652c1101dbc0656e0ac1bccebf09e83206d1a4b82f4c2` |
| 23 | `theorem` | [weightedPrime_mertens](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedprime-mertens--028dd4e7d7808b2b986ef865.md) | 259 | `result-track:028dd4e7d7808b2b986ef8655ba5158fac963e673ec17a9ebfe6da8116df7216` |
| 24 | `theorem` | [weightedPrime_eq_filtered](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedprime-eq-filtered--757a5f7568868f5f6a284c54.md) | 269 | `result-track:757a5f7568868f5f6a284c54693bf4f3cf054654142abdaece78ad306a49b21a` |
| 25 | `theorem` | [log_floor_error](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/log-floor-error--81640cc5e860047663d9a7f0.md) | 277 | `result-track:81640cc5e860047663d9a7f0176149a7bd2ce38094c32ac617b28456d860889e` |
| 26 | `theorem` | [weightedPrime_mertens_real](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedprime-mertens-real--5e332cdd98a2cac0d347c29b.md) | 294 | `result-track:5e332cdd98a2cac0d347c29b6cdfc094c2cced94e3eb8a29639679ef1d5fabdc` |
| 27 | `theorem` | [weightedPrime_mertens_log_cutoff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldtAudit/Variant89fde3812d54e13f687a8aa8042045e96233a858ad51af33016e6f7080d6d5d7.lean/declarations/weightedprime-mertens-log-cutoff--f117be79e1366f2049690254.md) | 314 | `result-track:f117be79e1366f204969025476842e6a4e3f9879e963250eaea75a198dd877ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

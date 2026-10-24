# Verification target: GRWTSK.Analysis.InnerProductSpace.LogarithmicCharacterGramBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db2cb85bcb679383a4a4b7664fb6fbe644ed2422",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db2cb85bcb679383a4a4b7664fb6fbe644ed2422`.

Source path: `GRWTSK/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unit_phase_preserves_absolute_gram](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/unit-phase-preserves-absolute-gram--1c3ff2081caea18f3dd2ed12.md) | 26 | `result-track:1c3ff2081caea18f3dd2ed126ec8304a7f37fee6332b16c81514b09c359b8565` |
| 2 | `theorem` | [signed_two_packet_fixture](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/signed-two-packet-fixture--93dd0df8e10cc2d6c7d7f5dc.md) | 34 | `result-track:93dd0df8e10cc2d6c7d7f5dc856c71104e9c7e5cee6be8c1b952adc3ef79fdd4` |
| 3 | `theorem` | [normalized_identical_packet_fixture](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/normalized-identical-packet-fixture--4fc690b609b86a1fcd5c1040.md) | 41 | `result-track:4fc690b609b86a1fcd5c104059cd807b0d73b29677423e0b7bfec0620b5d279a` |
| 4 | `theorem` | [dense_rows_force_cardinality](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/dense-rows-force-cardinality--f0a165bc1f579044495fc909.md) | 67 | `result-track:f0a165bc1f579044495fc909ea5a7b9cbd5e1031732858fa58cab1186cd2b5a5` |
| 5 | `theorem` | [repeated_unit_packets_force_cardinality](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/repeated-unit-packets-force-cardinality--6e087241e0d2856359c8f0b0.md) | 91 | `result-track:6e087241e0d2856359c8f0b0fa44283f1cee14136ef824006132dfa1a1e4aa78` |
| 6 | `def` | [logarithmicOrbitGram](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmicorbitgram--df74faa99a934c54539e920f.md) | 102 | `declaration-track:df74faa99a934c54539e920f7e8499cef79c3595795d8d266dd632a1605dce34` |
| 7 | `def` | [logarithmicCharacter](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmiccharacter--17359c40d74f276dc64772d9.md) | 105 | `declaration-track:17359c40d74f276dc64772d9d83b613d0e53c1ced24ebdd8df9271ae0702dbdf` |
| 8 | `def` | [complexLogarithmicOrbitGram](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/complexlogarithmicorbitgram--5cc7e929b1cca3f4d778e34b.md) | 108 | `declaration-track:5cc7e929b1cca3f4d778e34b9f76d25a082e43d1bfb0955ce3db153798ddc9cf` |
| 9 | `theorem` | [logarithmic_character_correlation](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmic-character-correlation--fdba8738c9e9f56fa2e547fe.md) | 112 | `result-track:fdba8738c9e9f56fa2e547febe7f9bb8ee4b1bdb1806b04d7d61cb78dd70305e` |
| 10 | `theorem` | [complex_orbit_gram_real](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/complex-orbit-gram-real--13eb2e3434f13b9a157814f0.md) | 128 | `result-track:13eb2e3434f13b9a157814f0e8674295d14a1d90cd6231b62023e7ccc3792779` |
| 11 | `theorem` | [logarithmic_orbit_gram_lower](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmic-orbit-gram-lower--73e9116428d8a7f7b1a1fafd.md) | 148 | `result-track:73e9116428d8a7f7b1a1fafd6f5219bcd4c828d6b12c5d3a4356ce58e98fc781` |
| 12 | `theorem` | [two_prime_orbit_gram_positive](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/two-prime-orbit-gram-positive--b2c73cc5c1ad0b2524be32df.md) | 171 | `result-track:b2c73cc5c1ad0b2524be32df091e415086f75c921f4b0eda64c0b0fa41bd9492` |
| 13 | `theorem` | [logarithmic_band_close](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmic-band-close--b825015f19354708c9b2cc00.md) | 184 | `result-track:b825015f19354708c9b2cc00479a6dbfecc0a5bea0f0539cd521d1f1862af8f3` |
| 14 | `theorem` | [logarithmic_band_rows_force_cardinality](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/logarithmic-band-rows-force-cardinality--84d187327b33fef1c3879aad.md) | 200 | `result-track:84d187327b33fef1c3879aadcaa82b9b5e30f4738935d44eeeb5f95b41ecc408` |
| 15 | `theorem` | [complex_logarithmic_band_rows_force_cardinality](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/complex-logarithmic-band-rows-force-cardinality--29d695fd8e82b39902110504.md) | 219 | `result-track:29d695fd8e82b39902110504dbb590e493df4f8ed5af6ad021e6563aff29fd10` |
| 16 | `theorem` | [consecutive_log_gap](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/consecutive-log-gap--3e83a860d60eb4892b831369.md) | 239 | `result-track:3e83a860d60eb4892b831369dbf3fa3846f8925c0901f1ae65cbff72d16cf0b0` |
| 17 | `theorem` | [upper_bessel_does_not_imply_reconstruction](../../../../mathematics/Analysis/InnerProductSpace/LogarithmicCharacterGramBounds.lean/declarations/upper-bessel-does-not-imply-reconstruction--ad188d0f74196f597a188796.md) | 253 | `result-track:ad188d0f74196f597a18879690c4cce534fe7bade5b908d13850bf91adec8f99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

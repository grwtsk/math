# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PackingObservations.Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43bdedd3a4604fa32406d0c7c2071ccd89928165`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cappedValuation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation--abc195a78a60d398dec4ac85.md) | 22 | `declaration-track:abc195a78a60d398dec4ac8537453906518fa4e4730de21be8d8fb1b5faac0fd` |
| 2 | `theorem` | [cappedValuation_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-le--cf971ae5a206a5ef4e5e8080.md) | 26 | `result-track:cf971ae5a206a5ef4e5e8080f4719c19aa21100ff838396a1a55efe0d77a522b` |
| 3 | `theorem` | [cappedValuation_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-zero--67c477838e7eda90df892fa7.md) | 33 | `result-track:67c477838e7eda90df892fa77177b684dca879564d4b09e35112a6bb21fb88c3` |
| 4 | `theorem` | [cappedValuation_projection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-projection--ea6d699b4b3284ae18b625c1.md) | 37 | `result-track:ea6d699b4b3284ae18b625c176b96a8c1f49ac49705278fba16819cab00ab7b0` |
| 5 | `theorem` | [cappedValuation_power_dvd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-power-dvd--46b113e7e7448f733c1c8f30.md) | 46 | `result-track:46b113e7e7448f733c1c8f30758ad3058b9bcd719577fc487e7eddf8fea69841` |
| 6 | `theorem` | [cappedValuation_eq_of_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-eq-of-profile--49f054777cd2ad3db7b25083.md) | 58 | `result-track:49f054777cd2ad3db7b25083014bc7e3352193fadf8cd999244caf81b1f9c80a` |
| 7 | `theorem` | [cappedValuation_eq_of_fin_profile](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/cappedvaluation-eq-of-fin-profile--79b89a41cdaa2625f9c0389e.md) | 69 | `result-track:79b89a41cdaa2625f9c0389ed0ba2991b65a4b7b1c47b219ed811aac23596fba` |
| 8 | `def` | [signature](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/signature--e8abc685c1621295ad716f3d.md) | 79 | `declaration-track:e8abc685c1621295ad716f3d1c4e6c47cbaab9012b02b52c99b4f8d440b03632` |
| 9 | `def` | [ObservationalEquivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/observationalequivalence--2dc33daa7087ccf548815d54.md) | 87 | `declaration-track:2dc33daa7087ccf548815d54b13fbc59ac9ffbfe5ffd97d46c5b227aad927a30` |
| 10 | `theorem` | [signature_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/signature-eq-iff--f1bce45624616a7efbd2240a.md) | 91 | `result-track:f1bce45624616a7efbd2240ad1b94d010e751bfc8b7c38679f00eeb3b4981c2d` |
| 11 | `theorem` | [support_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/support-partition-refinement--06c15020fe313108889ffe36.md) | 112 | `result-track:06c15020fe313108889ffe360cb89b33975fc57056513a4ba177936652f216a6` |
| 12 | `theorem` | [depth_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/depth-partition-refinement--8d3ff0c9e92135ce38c50249.md) | 120 | `result-track:8d3ff0c9e92135ce38c5024928b28443b4d6c291bd61d67ecaf36a9cdb0b981c` |
| 13 | `theorem` | [signature_partition_refinement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/signature-partition-refinement--81357ac1e30b52ca3e25959a.md) | 129 | `result-track:81357ac1e30b52ca3e25959a4e27cfbede3e6981f1c39c7746c8fbae3e4528a8` |
| 14 | `structure` | [Packing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/packing--eaed8f582a86ced416b1c7c4.md) | 136 | `declaration-track:eaed8f582a86ced416b1c7c4de20da709e3846bfe9a609d8302059224d3fe2fa` |
| 15 | `def` | [Packing.survivorSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/packing-survivorset--48708a50c304bed8ae8b0629.md) | 153 | `declaration-track:48708a50c304bed8ae8b06293cc8b171977da28d6e9b4659b45d7943a94e5f23` |
| 16 | `theorem` | [Packing.mem_survivor_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/packing-mem-survivor-iff--74ba45763afe9991e6cf8592.md) | 158 | `result-track:74ba45763afe9991e6cf8592991e411723c6c274c9c0ff1318401569dea70d6c` |
| 17 | `theorem` | [Packing.exclusion_witness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/packing-exclusion-witness--f59c42018d1b88172ec82131.md) | 178 | `result-track:f59c42018d1b88172ec82131958f456680aa647d9ad350dd810716be3771f1c1` |
| 18 | `theorem` | [Packing.relative_minimality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/packing-relative-minimality--6d8cab0b0d7eb0e800eef92a.md) | 188 | `result-track:6d8cab0b0d7eb0e800eef92a79fbd04b5e3c2310e65ed0d9264699c0a952e8e8` |
| 19 | `structure` | [RawPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/rawpacking--1c8b63e5145f26849cf7da60.md) | 199 | `declaration-track:1c8b63e5145f26849cf7da603edb1a339eb76610b19c2ab73631dab82ad7665c` |
| 20 | `def` | [RawPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/rawpacking-survives--1717d3386d654703f0a2c473.md) | 208 | `declaration-track:1717d3386d654703f0a2c473aa843efc56211e8af21e0b7c9d97a6adec1ad9f5` |
| 21 | `structure` | [ProperPacking](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/properpacking--cab51bc4cf1e9f622f690164.md) | 212 | `declaration-track:cab51bc4cf1e9f622f690164843a199ae7f9dd6747bd7469df732c2d7e793f3e` |
| 22 | `def` | [ProperPacking.InRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/properpacking-inrange--f6b6a9c5d9507847bc83296e.md) | 223 | `declaration-track:f6b6a9c5d9507847bc83296e390a532c050f17ebfb96c9ba8fe1613a0fc0d53a` |
| 23 | `def` | [ProperPacking.Survives](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/properpacking-survives--cd0310f1be8108f2ceadeb76.md) | 228 | `declaration-track:cd0310f1be8108f2ceadeb760ecf6260db2d7b74bd7403ee4230e575bb4803be` |
| 24 | `theorem` | [raw_excludes_visible_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/raw-excludes-visible-prime--efb40e784f5cab7e43980884.md) | 233 | `result-track:efb40e784f5cab7e43980884d794981c996631f7fb554cf0c8a348df5415c864` |
| 25 | `theorem` | [proper_preserves_primes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/proper-preserves-primes--633ad5c3479869bdf4895d8c.md) | 241 | `result-track:633ad5c3479869bdf4895d8ca90b365f7bc1bf9901fcb8d4f0383a3dba5cb825` |
| 26 | `theorem` | [raw_support_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/raw-support-monotone--4d28432a30a990cb72136693.md) | 249 | `result-track:4d28432a30a990cb72136693c11819d8741300a8fa729464598d229842553081` |
| 27 | `theorem` | [zero_not_nondivisible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/zero-not-nondivisible--7b240e3b2e73b11f57871bf7.md) | 256 | `result-track:7b240e3b2e73b11f57871bf7707c4666fee47e3eb39edb9aa3db3f2f9c763331` |
| 28 | `theorem` | [shallow_observation_collision](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/shallow-observation-collision--60843269bc20cacaac436f6b.md) | 260 | `result-track:60843269bc20cacaac436f6b99d28171a691694e40de466d7b3468403e0ab3a8` |
| 29 | `theorem` | [deeper_observation_separation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/deeper-observation-separation--f69137a3815cfec360dd5055.md) | 268 | `result-track:f69137a3815cfec360dd5055750cc5b8e6d6dd66ab2b6aa0cd3df76c21238c67` |
| 30 | `theorem` | [prime_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/prime-power-period-count--8db3fb5a3b7f86b0cfab2556.md) | 277 | `result-track:8db3fb5a3b7f86b0cfab2556cba539600c251b4abb0a4507afe0568f91e896a2` |
| 31 | `theorem` | [next_power_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/next-power-period-count--79d4d7a14e55411fec95fdde.md) | 283 | `result-track:79d4d7a14e55411fec95fddef910d9dbefe372d0c9fecaff6fb420341e6149d9` |
| 32 | `theorem` | [exact_valuation_shell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/exact-valuation-shell--a52d5dc09b219554147b86cc.md) | 289 | `result-track:a52d5dc09b219554147b86cca91a33a6d2bfa8d2cbde9ba6bef120dd1b0c0bab` |
| 33 | `theorem` | [exact_valuation_period_count](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/exact-valuation-period-count--6770142f7c36aa639dc2efab.md) | 296 | `result-track:6770142f7c36aa639dc2efab2b788d03d4dd58313884f5ed7c69bd4eba1e1798` |
| 34 | `theorem` | [prime_power_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/prime-power-period-frequency--0d57132f0460aa21db28e636.md) | 320 | `result-track:0d57132f0460aa21db28e6364bc0e0d46b6aa50200e4251a9b6b6a51747e8b73` |
| 35 | `theorem` | [exact_valuation_period_frequency](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/exact-valuation-period-frequency--9c20ce4ce20a2482428b865e.md) | 330 | `result-track:9c20ce4ce20a2482428b865ebcfadc08e9833d4ac01da3d00cee66006b7543c1` |
| 36 | `theorem` | [logarithmic_divisibility_scale](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/logarithmic-divisibility-scale--6be08cc52b707ceb38761540.md) | 342 | `result-track:6be08cc52b707ceb38761540e92ffc40fc0084ad8a550969149c6465f7433819` |
| 37 | `theorem` | [bounded_proper_classification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/bounded-proper-classification--d84179c60d62b74c7aca8f1b.md) | 349 | `result-track:d84179c60d62b74c7aca8f1b02faed0a4d67a804632e08cad06c989c706e2420` |
| 38 | `theorem` | [raw_survival_implies_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/raw-survival-implies-prime-components--bf31d43301b00c9e3afef52e.md) | 367 | `result-track:bf31d43301b00c9e3afef52ed2645202983b353cbc7b5208f0f001dd68f7f4ed` |
| 39 | `theorem` | [proper_preserves_two_three](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/proper-preserves-two-three--7fb7e314c51e5a4052d6449a.md) | 382 | `result-track:7fb7e314c51e5a4052d6449a417ed8f3464722f948fae75001225722cf6640b2` |
| 40 | `theorem` | [proper_preserves_translated_prime_components](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/proper-preserves-translated-prime-components--c51a06d2cf27111f7de042ca.md) | 403 | `result-track:c51a06d2cf27111f7de042ca4e977c0b43d96df567e81f8cdb6916eb9d2f05dc` |
| 41 | `theorem` | [zero_depth_keeps_composite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/declarations/zero-depth-keeps-composite--b085e760e5ff00489af801d3.md) | 412 | `result-track:b085e760e5ff00489af801d32081cb745f0113f3f2ba251f4b73b18d06f02479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

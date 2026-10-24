# Verification target: GRWTSK.Analysis.MeasureTheory.BranchSignedPrimitiveDecoder.Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa2a69ac42b44cda1242a485f0a0f00ba1aacb4a`.

Source path: `GRWTSK/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primitiveDensity](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/primitivedensity--9cf71288d59eccf2afa878fe.md) | 26 | `declaration-track:9cf71288d59eccf2afa878fe4b4f2ea77503f2ec81711316a086fd8064ecd9cf` |
| 2 | `def` | [firstPrimitive](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/firstprimitive--910601d49756cfdc40575e6f.md) | 29 | `declaration-track:910601d49756cfdc40575e6f898be60af02df4dfb580feeb8714c0049a5f7e38` |
| 3 | `def` | [secondPrimitive](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondprimitive--605e788ed7445fcd2c57c499.md) | 32 | `declaration-track:605e788ed7445fcd2c57c499ae25df6e5eaa1eefc7c1aed6ad98b1fedce709f5` |
| 4 | `def` | [logDensity](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/logdensity--ce4e72a35bcec3215bd959cc.md) | 36 | `declaration-track:ce4e72a35bcec3215bd959ccc4f3e689e377389585342c2dd1b5664ebd543ac4` |
| 5 | `def` | [secondWeight](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondweight--0002f1bbf25b934c6e05c49d.md) | 39 | `declaration-track:0002f1bbf25b934c6e05c49dee7aea43e7dc1b9ea07ea715d5f2f4c2527733f8` |
| 6 | `theorem` | [firstWeight_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/firstweight-hasderivat--3837f107a1115bd0715fe29b.md) | 43 | `result-track:3837f107a1115bd0715fe29b0adc1d4813ffa0ce609b707df15df17d86056a28` |
| 7 | `theorem` | [secondWeight_hasDerivAt](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondweight-hasderivat--5a5c46f058d476d484608bfb.md) | 52 | `result-track:5a5c46f058d476d484608bfb8ba0b44e2d1766848c7a67231ed4634741ddc2d6` |
| 8 | `theorem` | [inverse_sqrt_density_continuousOn](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/inverse-sqrt-density-continuouson--cc012c5185032403a14eaba4.md) | 67 | `result-track:cc012c5185032403a14eaba4b0c18b234ba5b624e2f3e5f6fae8d3573be5b3f7` |
| 9 | `theorem` | [primitiveDensity_integrable](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/primitivedensity-integrable--b3d84bc50ae4700f7d5acb03.md) | 76 | `result-track:b3d84bc50ae4700f7d5acb03ff396686189f90d0b6ba52cbcd0e98bc8f6924b4` |
| 10 | `theorem` | [second_density_integrable](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/second-density-integrable--b00f1056127d5f6c7c3185c9.md) | 86 | `result-track:b00f1056127d5f6c7c3185c912a62fbdeaeb0246d3ad5fd5133b4bd060c8d280` |
| 11 | `theorem` | [firstPrimitive_finite_decoder](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/firstprimitive-finite-decoder--89e38f7212bc6ca11eaf88a0.md) | 102 | `result-track:89e38f7212bc6ca11eaf88a0edf88416cf0d703c2c449c986909793a60a94cb9` |
| 12 | `theorem` | [secondWeight_upper](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondweight-upper--008037b557f99c816812d8e7.md) | 139 | `result-track:008037b557f99c816812d8e7f775bfceef4087007142c4e35c5ee6e16dbb7c78` |
| 13 | `theorem` | [secondPrimitive_finite_decoder](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondprimitive-finite-decoder--5ab02ed0da09ef07489665e2.md) | 144 | `result-track:5ab02ed0da09ef07489665e2eb4661e8e815a4c64e3ead6455acff0f0d58d34b` |
| 14 | `theorem` | [logDensity_eq_transported](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/logdensity-eq-transported--26585b781cd8a4f6aa805174.md) | 174 | `result-track:26585b781cd8a4f6aa80517452e14eb904663a31c66057cc3342bf8e51b243f3` |
| 15 | `theorem` | [firstPrimitive_eq_log_integral](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/firstprimitive-eq-log-integral--f8939a341bae8621cc5ba8fe.md) | 181 | `result-track:f8939a341bae8621cc5ba8fe7be048747db6b4caf860026625f94e1bc93ddaa0` |
| 16 | `theorem` | [secondPrimitive_eq_log_integral](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondprimitive-eq-log-integral--4b7e6af56a2b4f76135c789d.md) | 191 | `result-track:4b7e6af56a2b4f76135c789d859705a80326f73595fa678c64cbcefd1dbddc41` |
| 17 | `theorem` | [secondWeight_eq_integral](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondweight-eq-integral--394c259e506892fafffbe5f4.md) | 204 | `result-track:394c259e506892fafffbe5f4aa1bef41fa4315ed12edbd53b9fd718e1c534ec7` |
| 18 | `theorem` | [secondWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/secondweight-nonneg--4041c9e41a07fa9fa8ac829a.md) | 227 | `result-track:4041c9e41a07fa9fa8ac829a73b95f4c48575feb7eb5e9bdaceb687c29f4047a` |
| 19 | `theorem` | [source_first_primitive_decoder](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/source-first-primitive-decoder--c7dd8a27c2fb7e36316319af.md) | 238 | `result-track:c7dd8a27c2fb7e36316319af071a090167f471bb2d5cf23dc9eb68a017c906fe` |
| 20 | `theorem` | [source_second_primitive_decoder](../../../../../mathematics/Analysis/MeasureTheory/BranchSignedPrimitiveDecoder/Variant696945be87b8ce89c75933156d2457322c0b4ba0c2ebe3804467a38a90eff2fd.lean/declarations/source-second-primitive-decoder--efaed12d89dccbeb8b15994a.md) | 254 | `result-track:efaed12d89dccbeb8b15994a25d40b053f8cb52bb75524578d3913a14baeeb96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

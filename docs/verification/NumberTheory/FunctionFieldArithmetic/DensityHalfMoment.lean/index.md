# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityHalfMoment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5c31a9fbb58ce18c0ad5a0f62f38d4b36cea412`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityHalfPrimeFactor`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfPrimeFactor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.EulerProduct.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityCorrectionHalf](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/densitycorrectionhalf--29dbf08f3c1938c9c8f1fbc5.md) | 21 | `declaration-track:29dbf08f3c1938c9c8f1fbc57f49cb7b4304b0a3ea7f54ee6a64fb1d95b43300` |
| 2 | `def` | [reciprocalThreeHalf](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/reciprocalthreehalf--fc41e2f0d803d27fda63313f.md) | 23 | `declaration-track:fc41e2f0d803d27fda63313f5562a67c716e19d1722868c0d9565c5e4c4f5260` |
| 3 | `theorem` | [density_half_nonneg](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-nonneg--dd02dac82df9e37e5e44a4c8.md) | 25 | `result-track:dd02dac82df9e37e5e44a4c8bff448103af3ffcd7e18bcd594eb0c38a0bb43a9` |
| 4 | `theorem` | [density_half_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-one--88b8709cd185dacc71181a28.md) | 28 | `result-track:88b8709cd185dacc71181a28b5e2dc3235f622cc88f0e424c3cb220deaef02ff` |
| 5 | `theorem` | [density_half_mul](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-mul--cabd2fe69dbac5f9ff94b2eb.md) | 31 | `result-track:cabd2fe69dbac5f9ff94b2eb6c960bb1f9d20dfd2c2af7c896c3165b5d60e23d` |
| 6 | `theorem` | [density_half_sqrt_pow](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-sqrt-pow--823b69fe1fb480b361f1438e.md) | 37 | `result-track:823b69fe1fb480b361f1438e9214c9af4a9a8294a7c1489ff64ec474b0d03e2b` |
| 7 | `theorem` | [density_half_prime_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-prime-hassum--1e09744888ccfd0b7d5aad09.md) | 43 | `result-track:1e09744888ccfd0b7d5aad09106494085bb7f2181f115ccf93e1924730f37ae6` |
| 8 | `theorem` | [reciprocal_three_half_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/reciprocal-three-half-summable--ca4a826c833194d60353f87e.md) | 54 | `result-track:ca4a826c833194d60353f87eeeca1ec373e0485b14e8bb2ca7f34f9e9547e4b8` |
| 9 | `theorem` | [reciprocal_three_half_sqrt](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/reciprocal-three-half-sqrt--a031c8a3fe8cb509152f8099.md) | 57 | `result-track:a031c8a3fe8cb509152f8099bd7693f46a395375957df922e75c25eaed53b766` |
| 10 | `theorem` | [density_half_prime_mass_le](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-prime-mass-le--586bafbebee78defc52102a1.md) | 68 | `result-track:586bafbebee78defc52102a19b89af7cb3e637cd90f8ad885de25ad187be18b1` |
| 11 | `theorem` | [density_half_factored_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-factored-hassum--a23ab90d404322437da98d4c.md) | 82 | `result-track:a23ab90d404322437da98d4c5ddc07bd96cbc4e434f1757a0922d97b550c0a66` |
| 12 | `theorem` | [density_half_factored_bound](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-factored-bound--ebc5527729efdadff0f6a84f.md) | 96 | `result-track:ebc5527729efdadff0f6a84f7ace3e2fc3f064117dde3b064a16bdfe1c06844c` |
| 13 | `theorem` | [density_half_range_bound](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-range-bound--51230ec1ba0da0cad173a1ec.md) | 121 | `result-track:51230ec1ba0da0cad173a1ec1b455f411c22d70c299d51935bac25f68d35e89b` |
| 14 | `theorem` | [density_half_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-summable--59598eefeeef54d2015da031.md) | 148 | `result-track:59598eefeeef54d2015da031f85d5e5fe43102b68e20706b8f1fd0c83f1ea18a` |
| 15 | `theorem` | [density_half_tsum_bound](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-tsum-bound--f2172076a4b686dc66b121fe.md) | 151 | `result-track:f2172076a4b686dc66b121fe53efbff6831d83b6d4c482fb1f0d2b2cab60bcda` |
| 16 | `theorem` | [density_half_euler_hasProd](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-half-euler-hasprod--1f3c209f3a905c073e783f3d.md) | 155 | `result-track:1f3c209f3a905c073e783f3dce910fe43a8bbc9a68bdb7e43ad9818a016a76db` |
| 17 | `theorem` | [density_positive_half_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityHalfMoment.lean/declarations/density-positive-half-summable--ca64d1818b552bb66ae9e960.md) | 168 | `result-track:ca64d1818b552bb66ae9e960ef9befa5d1b0fe9790692883e83acf52f34cc7ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

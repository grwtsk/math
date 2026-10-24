# Verification target: GRWTSK.NumberTheory.Moebius.ReciprocalPrefixKernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1bb05abf62c335ef2cd4aa7b091133ab0d83abc",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1bb05abf62c335ef2cd4aa7b091133ab0d83abc`.

Source path: `GRWTSK/NumberTheory/Moebius/ReciprocalPrefixKernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/ReciprocalPrefixKernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.ReciprocalPrefixDensityAdapter`](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixDensityAdapter.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reciprocalFluxWeight](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/reciprocalfluxweight--6aeef04eccd42c754968f94f.md) | 28 | `declaration-track:6aeef04eccd42c754968f94fdb4d398eb75242886b9f2e57143dbac7e22e95ae` |
| 2 | `theorem` | [pickupWeightedPrefix_eq_reciprocalPartialSummation](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/pickupweightedprefix-eq-reciprocalpartialsummation--0473bd907eef39714f7a5cec.md) | 34 | `result-track:0473bd907eef39714f7a5cecf52927cc9cbb1a439ae2f295cfb1ca2fbe0ef488` |
| 3 | `theorem` | [sum_sqrt_increment](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/sum-sqrt-increment--b2cf0f7f9ed59bbc777d41b2.md) | 73 | `result-track:b2cf0f7f9ed59bbc777d41b2402e8f2b3b8946c256dcfdc0bf8da1ddddd141c3` |
| 4 | `theorem` | [reciprocalFluxWeight_sum_zero](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/reciprocalfluxweight-sum-zero--1e10f29bfd9f65af4e7488f0.md) | 84 | `result-track:1e10f29bfd9f65af4e7488f0369fe73c5fbf827d38ae67f717aa17ba373f02ac` |
| 5 | `theorem` | [pickupFlux_eq_reciprocalKernel](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/pickupflux-eq-reciprocalkernel--f67cdfb04a4230fb1408945a.md) | 96 | `result-track:f67cdfb04a4230fb1408945a1959bc83692519c86c3f5ef56cb571318a2a2c8c` |
| 6 | `theorem` | [pickupFlux_eq_reciprocalVariationKernel](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/pickupflux-eq-reciprocalvariationkernel--b881999b0b835500aaf8a052.md) | 124 | `result-track:b881999b0b835500aaf8a05298f62f2c4de5138443e73f25448077d83fab8ab5` |
| 7 | `theorem` | [wholePickup_eq_reciprocalVariationKernel](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/wholepickup-eq-reciprocalvariationkernel--8044bf33b53c65f1cf00adf0.md) | 149 | `result-track:8044bf33b53c65f1cf00adf01cff707a56558da1261cfbdf2520b2f9d851ca05` |
| 8 | `def` | [reciprocalVariationBlock](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/reciprocalvariationblock--c4115d17c152979f871d57d3.md) | 160 | `declaration-track:c4115d17c152979f871d57d327923738fa0025988cd5e6dac0dbbd1861e8fe5b` |
| 9 | `theorem` | [criticalIntervalBlock_eq_reciprocalVariationKernel](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/criticalintervalblock-eq-reciprocalvariationkernel--580320a979a98f105d5bff87.md) | 169 | `result-track:580320a979a98f105d5bff876c540e629a2bfdf4f1e1c6f4e7aea3c2c444711b` |
| 10 | `def` | [ReciprocalVariationBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/reciprocalvariationblockuniform--51d9d6261bdd2cd3bb089b31.md) | 182 | `declaration-track:51d9d6261bdd2cd3bb089b31b7c037ecea9d78249d1b1c5bb9eb4214784e7dc4` |
| 11 | `theorem` | [criticalIntervalBlockUniform_iff_reciprocalVariationBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/criticalintervalblockuniform-iff-reciprocalvariationblockuniform--c836c19b9a72c2fe2f85d31b.md) | 186 | `result-track:c836c19b9a72c2fe2f85d31b62ed556d50953d0d383d471d7cc67f7d87622a4d` |
| 12 | `theorem` | [criticalBoundary_iff_reciprocalVariationBlockUniform](../../../../mathematics/NumberTheory/Moebius/ReciprocalPrefixKernel.lean/declarations/criticalboundary-iff-reciprocalvariationblockuniform--5c06d44c54cb3ab126f7bae7.md) | 202 | `result-track:5c06d44c54cb3ab126f7bae764bab4c4ba6992c63e5b2533ead24390540fb7b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

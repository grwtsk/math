# Verification target: GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e15369bb13a4de253e658c4fdd6e799c8a70dbaf",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e15369bb13a4de253e658c4fdd6e799c8a70dbaf`.

Source path: `GRWTSK/NumberTheory/Moebius/LaplaceHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LaplaceHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergy`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceTransform`](../../../../mathematics/NumberTheory/Moebius/LaplaceTransform.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.Analytic`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/Analytic.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickup_tilt_integrable_of_energy_poly](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickup-tilt-integrable-of-energy-poly--e8f1833c7dcaa946865a763b.md) | 26 | `result-track:e8f1833c7dcaa946865a763b198ec6ead54e12a3d93c13f2dbc3a658b452c8a3` |
| 2 | `def` | [pickupPartDensity](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickuppartdensity--92a08199bdf885c76fe86f09.md) | 33 | `declaration-track:92a08199bdf885c76fe86f093cc771e5b8ef881697611630abfd46349faecc34` |
| 3 | `def` | [pickupPartMeasure](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickuppartmeasure--35aa285ddc889cdb871efc5f.md) | 35 | `declaration-track:35aa285ddc889cdb871efc5fb2f345b77061976e2bb4d422f6a2523eaec77225` |
| 4 | `theorem` | [pickupPartDensity_continuous](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickuppartdensity-continuous--5b93541cf512d294ecce0653.md) | 38 | `result-track:5b93541cf512d294ecce06532efd4fc407e66c675d9d585b0b842ef5b5e84ce3` |
| 5 | `theorem` | [pickup_part_real_integrable](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickup-part-real-integrable--a246a1c87d8d6a35b8fe2a0a.md) | 43 | `result-track:a246a1c87d8d6a35b8fe2a0a35b23afc033c69acfe3b62d32307025b2b140709` |
| 6 | `theorem` | [pickup_part_complex_integrable](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/pickup-part-complex-integrable--5c99b5828acc88225e9c2dc3.md) | 63 | `result-track:5c99b5828acc88225e9c2dc360403f3a3dcf9ce973acd6b79095f48434edefd1` |
| 7 | `theorem` | [signedPickupLaplace_eq_part_difference](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/signedpickuplaplace-eq-part-difference--b2d06c28c4fca36b44183e19.md) | 82 | `result-track:b2d06c28c4fca36b44183e19a747786df3903cce01377e33bd598718c4f399b2` |
| 8 | `theorem` | [analyticAt_signedPickupLaplace_of_tilts](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/analyticat-signedpickuplaplace-of-tilts--4307b875db68dbf1656862d6.md) | 114 | `result-track:4307b875db68dbf1656862d6d764edc893d3a400540deac2cf4328e140f71d64` |
| 9 | `theorem` | [differentiableOn_signedPickupLaplace_of_energy_poly](../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/declarations/differentiableon-signedpickuplaplace-of-energy-poly--e50282b492481d6e3cff8383.md) | 129 | `result-track:e50282b492481d6e3cff8383444391faaee9b3176c76e640044a171b5de1c2f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

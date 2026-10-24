# Verification target: GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a2dcb692aca52f506e6375dcd47d714990ed8e3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a2dcb692aca52f506e6375dcd47d714990ed8e3`.

Source path: `GRWTSK/NumberTheory/Moebius/DiagonalEnergyBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DiagonalEnergyBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy`](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [moebius_coefficient_abs_le_one](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/moebius-coefficient-abs-le-one--186b01373b8cb57f5bcbc159.md) | 26 | `result-track:186b01373b8cb57f5bcbc15921b3b0fd06d5cd736721eaee39235e1b7f9a8949` |
| 2 | `theorem` | [moebius_coefficient_sq_le_one](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/moebius-coefficient-sq-le-one--cab85a6402ed790214a6f7cd.md) | 30 | `result-track:cab85a6402ed790214a6f7cdae3c2f853c8d55323d0ab9434410d84669c3f28f` |
| 3 | `theorem` | [inverse_half_square](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/inverse-half-square--d89b86cff45395f09bd2fe07.md) | 35 | `result-track:d89b86cff45395f09bd2fe07e4fae9ec6fe27206ed2380912324542d5cf0fff4` |
| 4 | `theorem` | [response_square_le_reciprocal](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/response-square-le-reciprocal--e1fccd866ed536aacf17282b.md) | 43 | `result-track:e1fccd866ed536aacf17282b78eb71a47cc3e5401087eed81ec2e3bc3b117b29` |
| 5 | `def` | [diagonalDensity](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonaldensity--f45c0929ef9400f7142fcef4.md) | 75 | `declaration-track:f45c0929ef9400f7142fcef41211f5ccaba876b67a8ad63fb2b30001c09b7897` |
| 6 | `theorem` | [diagonal_density_active](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-density-active--8f5d0ccc15886086a1d0a28e.md) | 78 | `result-track:8f5d0ccc15886086a1d0a28e221323dd0dccbd607fd3b50c88a1c4f1aa863a0f` |
| 7 | `theorem` | [diagonal_density_le](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-density-le--c20acddf24cf1d1d2a3d891c.md) | 93 | `result-track:c20acddf24cf1d1d2a3d891c9958a84d229497daea734a9ae2f57a5ba35cb319` |
| 8 | `theorem` | [weighted_response_square_integrable](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/weighted-response-square-integrable--ecdaca593c4e8180e7344e2f.md) | 118 | `result-track:ecdaca593c4e8180e7344e2f2f94cedf6f8eb9f3b92c323474c763121006c6b6` |
| 9 | `theorem` | [diagonal_density_integrable](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-density-integrable--dab38383379a1c472a4d00dd.md) | 127 | `result-track:dab38383379a1c472a4d00dd3252e7f5fa3c44150d49a1d28a9e30b4372686a8` |
| 10 | `theorem` | [diagonal_density_integral_eq](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-density-integral-eq--3efefc4bea8373e4b68fa2f8.md) | 132 | `result-track:3efefc4bea8373e4b68fa2f83e7253083c88620b3198c8cedaa3131131b292e8` |
| 11 | `theorem` | [diagonal_nonnegative](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-nonnegative--f5ed2230f287538bd8050aac.md) | 147 | `result-track:f5ed2230f287538bd8050aace9e947de31b601773835900559227601dcdea6ca` |
| 12 | `theorem` | [linear_majorant_integrable](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/linear-majorant-integrable--cf49e2a2e7d099cbe970a38a.md) | 154 | `result-track:cf49e2a2e7d099cbe970a38a42e856480ba535fb3a5265a2a2cc9c8c6063dd12` |
| 13 | `theorem` | [linear_majorant_integral](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/linear-majorant-integral--4ea6269e158d9497e548aabe.md) | 159 | `result-track:4ea6269e158d9497e548aabec3429722e87b1f3460d00835c5ba342d73431733` |
| 14 | `theorem` | [diagonal_polynomial_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-polynomial-bound--fd26cc5ec7386cfdad09af17.md) | 171 | `result-track:fd26cc5ec7386cfdad09af174800fa3265db3042cfef72c09471fe438cecf172` |
| 15 | `theorem` | [diagonal_upper_bound](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/declarations/diagonal-upper-bound--ea308d253cfc7828acfdd941.md) | 183 | `result-track:ea308d253cfc7828acfdd941ae53269c5377f5f3fb19eb5795bce2906c357b9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

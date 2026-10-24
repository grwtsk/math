# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41ca23ee7f47160626f8aff22f65a4727367075",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41ca23ee7f47160626f8aff22f65a4727367075`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShortIntervalOscillation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaShortIntervalOscillation.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenSourceFrame`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenSourceFrame.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierMaximalExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/fouriermaximalexponent--d74ceeae1065d0d08daa6797.md) | 62 | `declaration-track:d74ceeae1065d0d08daa6797d3ba8068ab041c0b5defe3805015764f20fab7a8` |
| 2 | `theorem` | [fourierMaximalExponent_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/fouriermaximalexponent-one--f1ab9ab32abdeec3a6a87d2b.md) | 66 | `result-track:f1ab9ab32abdeec3a6a87d2badfba9ac0c75920b441a2fa1c31531da7354a348` |
| 3 | `theorem` | [fourierMaximalExponent_half](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/fouriermaximalexponent-half--280ae7905a879e6bbb4279dd.md) | 71 | `result-track:280ae7905a879e6bbb4279dd2dc42a26c3a820ebe63cba4ed01308a7ca16031c` |
| 4 | `theorem` | [fourierMaximalExponent_le_threeQuarters_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/fouriermaximalexponent-le-threequarters-iff--a7b3cced50708bad2d0f3ef4.md) | 77 | `result-track:a7b3cced50708bad2d0f3ef42e3bc9fc761dd5240d17d38b0f0f309380ebe20a` |
| 5 | `theorem` | [threeQuarters_lt_fourierMaximalExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/threequarters-lt-fouriermaximalexponent--17241862c7474ccdb06cc0a0.md) | 85 | `result-track:17241862c7474ccdb06cc0a0eb7a1a67f6307b1351dd6e5a1c880445c51d1f18` |
| 6 | `theorem` | [sourceFrame_linear_atom_count](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/sourceframe-linear-atom-count--223aaf77dd631bcc2ae156fb.md) | 92 | `result-track:223aaf77dd631bcc2ae156fb0c9e9412a41a726baa87bbe63bbdfdf5977a13c5` |
| 7 | `def` | [PrimeFourierMaximalReadoutAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/primefouriermaximalreadoutat--aad0f162f78b9156c20c165b.md) | 99 | `declaration-track:aad0f162f78b9156c20c165bb1f02526022330ef69b171c08d5e2ad35ca3cd42` |
| 8 | `theorem` | [primeFourierMaximalReadout_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/primefouriermaximalreadout-to-recurrence--1686e6943a22930f29bb7eb2.md) | 105 | `result-track:1686e6943a22930f29bb7eb2167411b0245ce527c36dd77b6c5e131b57368a0a` |
| 9 | `theorem` | [sevenEighths_primeFourierMaximalReadout_to_recurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/seveneighths-primefouriermaximalreadout-to-recurrence--dd3c5dd59a2bfb48538b6fe2.md) | 115 | `result-track:dd3c5dd59a2bfb48538b6fe21263efaee968bc87109f14153b83b9fcf45fe64a` |
| 10 | `theorem` | [sevenEighths_target_eq_squareRootBandwidthExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaFourierMaximalBarrier.lean/declarations/seveneighths-target-eq-squarerootbandwidthexponent--f196dba5a47a7dd6a2b43849.md) | 126 | `result-track:f196dba5a47a7dd6a2b43849007b8007ef7de82a44eb25f53f0b54fbdc57055b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

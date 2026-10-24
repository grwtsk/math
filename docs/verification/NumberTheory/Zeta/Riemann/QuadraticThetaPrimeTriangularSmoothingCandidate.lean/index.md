# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularSmoothingCandidate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2676fcc3a65719f1b1b89b23f9194b219f05f7b2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2676fcc3a65719f1b1b89b23f9194b219f05f7b2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeDFTSmoothingPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeDFTSmoothingPacket.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularSmoothingWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingweight--72bec87cf5447f739480e13b.md) | 15 | `declaration-track:72bec87cf5447f739480e13b408159e046837235cd591ef9df17e550af36fab4` |
| 2 | `theorem` | [triangularSmoothingWeight_eq_zero_of_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingweight-eq-zero-of-le--fb3679f81b298b1c21abdb32.md) | 21 | `result-track:fb3679f81b298b1c21abdb32815a6ad92edb4bcf9dfe9fbcc9ad883380e66b52` |
| 3 | `theorem` | [triangularSmoothingWeight_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingweight-nonnegative--dc484b1a18b9a387367145b1.md) | 26 | `result-track:dc484b1a18b9a387367145b1589d100f1fda6cbeff0fd0c40f26a10949b4d301` |
| 4 | `theorem` | [triangularSmoothingWeight_le_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingweight-le-one--28d83ff0a329a594b438b984.md) | 34 | `result-track:28d83ff0a329a594b438b98422be6e62b9c50b42499fb331e1b2a01f94b30e0c` |
| 5 | `def` | [triangularSmoothingL2Mass](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingl2mass--b3246eb1ac3872c384a4f2c3.md) | 45 | `declaration-track:b3246eb1ac3872c384a4f2c351482ff53de28b89651bd7480e849889a11f98bd` |
| 6 | `theorem` | [triangularSmoothingL2Mass_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingl2mass-nonnegative--8a193e6c4f63564039722d11.md) | 48 | `result-track:8a193e6c4f63564039722d11d8b40a409a0be52eac0a32056dbddd211f5958d8` |
| 7 | `theorem` | [triangularSmoothingL2Mass_le_cutoff](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingl2mass-le-cutoff--d939427a2e4be7e134f7adfb.md) | 55 | `result-track:d939427a2e4be7e134f7adfb40718106423a3931006cd671e25045b1f1c0bbdb` |
| 8 | `def` | [triangularPrimeIntervalSmoothingPacket](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularprimeintervalsmoothingpacket--57e4fcf5ef399194986c4a88.md) | 73 | `declaration-track:57e4fcf5ef399194986c4a8849d8ed0b45932eb654436e4873d36eb0ee072aed` |
| 9 | `def` | [TriangularBoundaryApproximationClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularboundaryapproximationclaim--94c0a894375c3d320cd1d3dc.md) | 90 | `declaration-track:94c0a894375c3d320cd1d3dc1438bd3ff1064c9aeaa9fc00097db3c148fa77f5` |
| 10 | `structure` | [TriangularSmoothingCandidateAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularSmoothingCandidate.lean/declarations/triangularsmoothingcandidateaccepted--fb60433d4022e5733f82e208.md) | 99 | `declaration-track:fb60433d4022e5733f82e2086067f7ac6819c5d2d0ab0bb631dad96d222b3566` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.C4MinimalScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0f88cf7b4605fcce3b944e68ca6f288c3f6ac4b`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.DiscriminantWindowMinimality`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/DiscriminantWindowMinimality.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [c4Exponent](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/c4exponent--7965339055e271d5384a4acc.md) | 27 | `declaration-track:7965339055e271d5384a4acc3ec4541072422c053c81085cd48e1ed5c73fcedc` |
| 2 | `def` | [scaleExponent](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/scaleexponent--4cfc8b9a24078fd52ab86042.md) | 30 | `declaration-track:4cfc8b9a24078fd52ab86042ba8dd5604d21688c7f170158d9f1ea8e9b68bf62` |
| 3 | `theorem` | [c4_value_eq_exp](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/c4-value-eq-exp--b0589498568c4a45b64a5594.md) | 33 | `result-track:b0589498568c4a45b64a5594bc7525142407009ff55bce392a66ece83a96d063` |
| 4 | `theorem` | [changed_c4_ne_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/changed-c4-ne-zero--2ac6cab116f0e08bca21b4c9.md) | 38 | `result-track:2ac6cab116f0e08bca21b4c90300f27b69bd6ef85ad3834a34ce27f2f134a887` |
| 5 | `theorem` | [c4_exponent_nonneg](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/c4-exponent-nonneg--f64c6720d609576d9c28a7c9.md) | 43 | `result-track:f64c6720d609576d9c28a7c94e0b1935ec7511353ddbfcd230e40da3a0dbdd44` |
| 6 | `theorem` | [c4_scale_balance](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/c4-scale-balance--c8efa61efa081e1d11721bb2.md) | 50 | `result-track:c8efa61efa081e1d11721bb20319dec549092c0ae5880cddf7158403e6544efe` |
| 7 | `theorem` | [discriminant_scale_balance](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/discriminant-scale-balance--db0c8c337a8a282a1b70d65a.md) | 62 | `result-track:db0c8c337a8a282a1b70d65ad6a86fa70a6081ac84d514bcdc485aee921c445d` |
| 8 | `theorem` | [integral_scale_bound](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/integral-scale-bound--c34dd228f8f47615276e2125.md) | 70 | `result-track:c34dd228f8f47615276e2125a81eee3d58b90ba6262f7431142a3fbc1199513d` |
| 9 | `theorem` | [minimal_dominates](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-dominates--f18bb0ca00a772f27e695c82.md) | 79 | `result-track:f18bb0ca00a772f27e695c820a5352e029829db67179d77102c66d55c8f90b3f` |
| 10 | `theorem` | [minimal_exponent_le_competitor](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-exponent-le-competitor--53eb80af876306077d217d4a.md) | 92 | `result-track:53eb80af876306077d217d4aef25d4a9153c3ddcc33799b04c0c565b83be6e33` |
| 11 | `theorem` | [minimal_change_exponent_le](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-change-exponent-le--1432cc25eda1918631d54454.md) | 101 | `result-track:1432cc25eda1918631d5445437ceb834e06688a8718bd25aa48d8f598ca37651` |
| 12 | `theorem` | [minimal_scale_nonneg](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-scale-nonneg--5a42631f71f929840d6048df.md) | 109 | `result-track:5a42631f71f929840d6048dffd8c58a5a11a4159b4a511e010783fc9ad96ee99` |
| 13 | `theorem` | [minimal_exponents_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-exponents-eq--85b1acca58cc66e55f0475b1.md) | 117 | `result-track:85b1acca58cc66e55f0475b1716f564e075c3e25a0a2da6fddcb0aab89d4cd38` |
| 14 | `theorem` | [minimal_scales_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-scales-eq--d81ad2654aaefcc22b4a0fa9.md) | 131 | `result-track:d81ad2654aaefcc22b4a0fa9d669ff0a4ad3461791acfb155acf52497a455973` |
| 15 | `theorem` | [minimal_scale_binary_of_c4_four](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C4MinimalScale.lean/declarations/minimal-scale-binary-of-c4-four--351832656f80fc6af117ccc1.md) | 140 | `result-track:351832656f80fc6af117ccc183f06d34a2689a558ece8ec7284b12b49a2f0177` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

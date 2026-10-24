# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.Basic.Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7d9b20501a74e34ea166f3bcf8b79ff55210daa",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7d9b20501a74e34ea166f3bcf8b79ff55210daa`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.RingHom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Torsion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.RingOfIntegers.isUnit_iff](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/rat-ringofintegers-isunit-iff--5c0b35417378d1c17f26aef6.md) | 48 | `result-track:5c0b35417378d1c17f26aef658fc0176b049cdce117259b3aa603a57bde30633` |
| 2 | `theorem` | [NumberField.isUnit_iff_norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/numberfield-isunit-iff-norm--daa83cab14baf921c14eaab7.md) | 61 | `result-track:daa83cab14baf921c14eaab7cfc73f3a58b1b8a15539d8653ad392063fd200a0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/instance--c5c9d8b3cc26e08bfd31b436.md) | 72 | `declaration-track:c5c9d8b3cc26e08bfd31b436991b888452bb6addc5dfd43e57af1775ab0465dd` |
| 4 | `theorem` | [coe_injective](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-injective--a69ff7bfb2b0656ab0b1a183.md) | 75 | `result-track:a69ff7bfb2b0656ab0b1a183e1b48f12845d30d1c8390af00f86b8c5a7ba385c` |
| 5 | `theorem` | [coe_coe](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-coe--32d7751354d910afb38ced69.md) | 80 | `result-track:32d7751354d910afb38ced699798eb9c39b99094d766fdb19b6ed19b8c5a2731` |
| 6 | `theorem` | [coe_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-mul--53bb4face2bcbd4c0d64f92e.md) | 82 | `result-track:53bb4face2bcbd4c0d64f92e1242e87b272b91b6e5bb66a832e5936c5d5bafbc` |
| 7 | `theorem` | [coe_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-pow--b24dd137d9c895ba9df51997.md) | 84 | `result-track:b24dd137d9c895ba9df5199786cf9cb93be8ef040faee076a8a022901a299891` |
| 8 | `theorem` | [coe_zpow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-zpow--68dff1ab655f46dc998afd52.md) | 87 | `result-track:68dff1ab655f46dc998afd5244f9b0ea49eb063252079713d747ab9f34783bc1` |
| 9 | `theorem` | [coe_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-one--75bf994d487d6cb33eb70b4a.md) | 91 | `result-track:75bf994d487d6cb33eb70b4a28a4076dbdcdad093e671269a9c575a4cec2b68a` |
| 10 | `theorem` | [coe_neg_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-neg-one--cf6f6e1b2b2bfeb5ea7699c6.md) | 93 | `result-track:cf6f6e1b2b2bfeb5ea7699c631ded130cad16b453318e1c85a8eaea49431d441` |
| 11 | `theorem` | [coe_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/coe-ne-zero--52b0ce143d5e7d6f642450bb.md) | 95 | `result-track:52b0ce143d5e7d6f642450bb120ea15052abb372ade4568b523bbd00b8b82bbb` |
| 12 | `theorem` | [norm](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/norm--2f5d5aef422ec7cc604f9cab.md) | 103 | `result-track:2f5d5aef422ec7cc604f9cab108c83d00de4fdc4951928f3b2847ac5a5cfeff9` |
| 13 | `theorem` | [pos_at_place](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/pos-at-place--e30bdf0946ad0a44d440f02d.md) | 108 | `result-track:e30bdf0946ad0a44d440f02d8f55cb898a604edfeff2b337023f8949aedfe2c5` |
| 14 | `theorem` | [sum_mult_mul_log](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/sum-mult-mul-log--3ab28a6589e31015bee1e9cf.md) | 112 | `result-track:3ab28a6589e31015bee1e9cf329fb75586ab0df1f2c45add4c85731f06ec0a19` |
| 15 | `def` | [torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsion--0166c1956520bbfe43083230.md) | 120 | `declaration-track:0166c1956520bbfe430832307036a4f1e9f761fcf89d2e14a98345bb70d3791a` |
| 16 | `theorem` | [mem_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/mem-torsion--469d48f26aa32325ee594c22.md) | 122 | `result-track:469d48f26aa32325ee594c2261c20e074420d2fcbe83e733d1548187a8527144` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/instance--0d6fe1bdf27b352c9269f7e0.md) | 132 | `declaration-track:0d6fe1bdf27b352c9269f7e0bf242393a53ead55b595c2adc39e9b6122899d14` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/instance--fb909f09739402e9369ccf67.md) | 142 | `declaration-track:fb909f09739402e9369ccf67cc67035778db8aefcd956c083b8a534433acacc2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/instance--2a15bcfb03f5eac060dec9c4.md) | 145 | `declaration-track:2a15bcfb03f5eac060dec9c4c92d427bfd0fab37b08cddbfbe5dd73daa51f373` |
| 20 | `def` | [torsionOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsionorder--ed7e8463567f1644b60f659c.md) | 148 | `declaration-track:ed7e8463567f1644b60f659c621d8fa028c266a7dfa48c9c1944b76d5850b40c` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/instance--0a4703946792e63a285ba4ed.md) | 150 | `declaration-track:0a4703946792e63a285ba4edbdfbd22ab6bccce25d74f5db456ec8dd69f9b4e4` |
| 22 | `theorem` | [torsionOrder_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsionorder-ne-zero--c4fb8c9a416295332f213593.md) | 153 | `result-track:c4fb8c9a416295332f2135931e4f1c71d26a9c8a01a1409f52fbd53e16c8a515` |
| 23 | `theorem` | [torsionOrder_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsionorder-pos--9c07f682e039943d03ee5558.md) | 156 | `result-track:9c07f682e039943d03ee555804ed4ecd1272bd4b5e6b072b71b095fa6e8bd053` |
| 24 | `theorem` | [rootsOfUnity_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/rootsofunity-eq-one--fc11511fb996e21062f4f0e4.md) | 161 | `result-track:fc11511fb996e21062f4f0e4f631be626b7a4a3c26919a1535d59903f027b5ce` |
| 25 | `theorem` | [rootsOfUnity_eq_torsion](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/rootsofunity-eq-torsion--5435728d17d6316fd5865b36.md) | 175 | `result-track:5435728d17d6316fd5865b3659c022ebeaf1d5e3668bd4ee42b922f13c4a693c` |
| 26 | `theorem` | [even_torsionOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/even-torsionorder--7915980571c08d4291b8be53.md) | 184 | `result-track:7915980571c08d4291b8be5311dc00745fc1efc695ca0b66f47f14eb17e5b293` |
| 27 | `theorem` | [torsion_eq_one_or_neg_one_of_odd_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsion-eq-one-or-neg-one-of-odd-finrank--d8fdcf3e7bd67bb64b33ad56.md) | 196 | `result-track:d8fdcf3e7bd67bb64b33ad56ca83018d416edd2e494e9956c795c91b8072c962` |
| 28 | `theorem` | [torsionOrder_eq_two_of_odd_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/Basic/Variantc72a3d56909e10df8c7a6d4abf0adc8106a73c25d1c5a6cf1fb085776238f72a.lean/declarations/torsionorder-eq-two-of-odd-finrank--5ed38f110c53b93e23ee364c.md) | 209 | `result-track:5ed38f110c53b93e23ee364cc2fff13e0099e7d0a42f1cb0f66d5b5ec689656f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

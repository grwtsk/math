# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.UnitInvariantMinimality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fa4deaeee069310b1592e8e1996afc4b1841d33",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fa4deaeee069310b1592e8e1996afc4b1841d33`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Reduction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [localVal](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/localval--c3ff8870052ea54c2b6bce12.md) | 29 | `declaration-track:c3ff8870052ea54c2b6bce12ce62bddfe3a5308035349f6a5760ad40e4f0b61e` |
| 2 | `theorem` | [val_map_eq_one_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/val-map-eq-one-iff--552a2244def937dca2ea64e3.md) | 32 | `result-track:552a2244def937dca2ea64e3923ecb0c5f87e5ebe7f96afcb035156ffb20f24b` |
| 3 | `theorem` | [val_map_lt_one_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/val-map-lt-one-iff--9e9c6853cf925d7b3a355c72.md) | 38 | `result-track:9e9c6853cf925d7b3a355c7292b530b5d927d110dceb279468023e27779ee32f` |
| 4 | `theorem` | [integral_c4_le_one](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/integral-c4-le-one--b3117b1d77cb1de000acba82.md) | 45 | `result-track:b3117b1d77cb1de000acba821be3beabd8406c754092a8178c92cb982eeaf5ba` |
| 5 | `theorem` | [integral_delta_le_one](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/integral-delta-le-one--282bc8f5a5ed9280407f9018.md) | 50 | `result-track:282bc8f5a5ed9280407f9018b11a9ffa92576d9f351cd13733028b17c75f4a6c` |
| 6 | `theorem` | [inverse_scale_le_one](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/inverse-scale-le-one--b0dc393ab52653b5c36cf7ee.md) | 56 | `result-track:b0dc393ab52653b5c36cf7ee32ec382312c8e40dddd79d09a76d93fdfd0e25a1` |
| 7 | `theorem` | [delta_value_le_of_c4_unit](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/delta-value-le-of-c4-unit--2f20ab1a4b7cece5493dac1c.md) | 72 | `result-track:2f20ab1a4b7cece5493dac1c85557d31108db9a669093ea3906153daecd76650` |
| 8 | `theorem` | [minimal_of_dominates](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/minimal-of-dominates--ce75b5ed8ff9b4a02988b79d.md) | 85 | `result-track:ce75b5ed8ff9b4a02988b79d8aba1c233bc9a36bf5d58e7996abd69705f97bb7` |
| 9 | `theorem` | [minimal_of_c4_value_one](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/minimal-of-c4-value-one--6eae759590cde5913282226a.md) | 96 | `result-track:6eae759590cde5913282226aea9442cac70c781e5b789be701bc4cf1d6fb2899` |
| 10 | `theorem` | [minimal_of_delta_value_one](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/minimal-of-delta-value-one--ce04bf096ba0a1e430323e72.md) | 100 | `result-track:ce04bf096ba0a1e430323e724469b195c76565c26ef66a6e0c3b71cc7d5ccd61` |
| 11 | `theorem` | [model_integral](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/model-integral--f7109b2232984e702edb890d.md) | 109 | `result-track:f7109b2232984e702edb890d488f2ed13c53fa3ab933c01a9cf7072fc9024a84` |
| 12 | `theorem` | [minimal_of_unit_c4](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/minimal-of-unit-c4--d2b30522566a007b92d5efed.md) | 112 | `result-track:d2b30522566a007b92d5efed32a1fdbdfa2f2cd379461160c6e5235b39095c52` |
| 13 | `theorem` | [good_of_unit_delta](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/good-of-unit-delta--aa501d7c1727483c7db95c9e.md) | 119 | `result-track:aa501d7c1727483c7db95c9eb7cfe05fdcfed601ba31555bd0805b5420c88fce` |
| 14 | `theorem` | [multiplicative_of_unit_c4](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/UnitInvariantMinimality.lean/declarations/multiplicative-of-unit-c4--57277b8991a65ddf6e8f697a.md) | 128 | `result-track:57277b8991a65ddf6e8f697ae6efd268fbe093a8fe03ab71b51840432e80d670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

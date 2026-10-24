# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.C6ModEight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc2fb352a57fd2cc8e05d192cacec872731e6ceb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc2fb352a57fd2cc8e05d192cacec872731e6ceb`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/C6ModEight.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/C6ModEight.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unit_sq](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/unit-sq--f6a3ee4c17693c8bf2ac58fa.md) | 27 | `result-track:f6a3ee4c17693c8bf2ac58fa653cbfdeda05e8fd26b2120445e54f0a188c35d3` |
| 2 | `theorem` | [unit_sixth](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/unit-sixth--c65708a7e9f5370a9a88cc76.md) | 32 | `result-track:c65708a7e9f5370a9a88cc769b9d8304c239ab5f7a78eb905967353d8445a424` |
| 3 | `theorem` | [c4_mod_eight](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/c4-mod-eight--153f7418535c796a50b2cebf.md) | 36 | `result-track:153f7418535c796a50b2cebff9b7fc2589eeb7cb20063e73e46faaa675aec5e7` |
| 4 | `theorem` | [twice_c6_mod_eight](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/twice-c6-mod-eight--c766fc3d97cbe7f96ced64bb.md) | 41 | `result-track:c766fc3d97cbe7f96ced64bb4d4a64275a06e6f3a9967850eb244aa58e57a669` |
| 5 | `theorem` | [a1_unit_of_c4_unit](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/a1-unit-of-c4-unit--6903bbea4df9010f7b588801.md) | 47 | `result-track:6903bbea4df9010f7b58880166a016dd70381c6969c58d23c73de1e88ef4a3ee` |
| 6 | `theorem` | [twice_c6_of_unit_c4](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/twice-c6-of-unit-c4--923c0024caaf124b3154b75e.md) | 57 | `result-track:923c0024caaf124b3154b75e94bfd9191718da45b9add1c1014ebdc7860d046f` |
| 7 | `theorem` | [odd_int_unit](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/odd-int-unit--be92983d8cff4e56be8b7fa8.md) | 63 | `result-track:be92983d8cff4e56be8b7fa8cbb00f4d6f605ab61e5dc21757dcf46a8a0e6fb8` |
| 8 | `def` | [oddLocalizationMap](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/oddlocalizationmap--29dc7df021a492fa1bf13e8d.md) | 73 | `declaration-track:29dc7df021a492fa1bf13e8d9e1a713fb61df4faf96c5b87e773455ce00b9c37` |
| 9 | `theorem` | [oddLocalizationMap_int](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/oddlocalizationmap-int--8e21f4a4feaf637da98ec44b.md) | 79 | `result-track:8e21f4a4feaf637da98ec44bedf9b197ead8176fe5b9c03a8ef4083767f6ea97` |
| 10 | `theorem` | [invariant_obstruction](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/invariant-obstruction--a40a52ddb1d4409ad786a46f.md) | 86 | `result-track:a40a52ddb1d4409ad786a46f3d66d76e90796a121221161fa5f91354a2d56c85` |
| 11 | `theorem` | [half_scale_cancellation](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/C6ModEight.lean/declarations/half-scale-cancellation--4b879b09afb1ab386e39f3f2.md) | 102 | `result-track:4b879b09afb1ab386e39f3f2fba8fafbc15937deed6b70ed42f94dcd4b6d9d2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

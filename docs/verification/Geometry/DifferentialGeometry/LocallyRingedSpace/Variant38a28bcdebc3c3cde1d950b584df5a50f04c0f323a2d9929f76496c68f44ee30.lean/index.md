# Verification target: GRWTSK.Geometry.DifferentialGeometry.LocallyRingedSpace.Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd11e4d0d6c5c5b4bb2e9a7bde7112d1c3659380",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd11e4d0d6c5c5b4bb2e9a7bde7112d1c3659380`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Sheaf.Smooth` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smoothSheafCommRing.isUnit_stalk_iff](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/declarations/smoothsheafcommring-isunit-stalk-iff--07a4c0fa74e9780ba14325bd.md) | 52 | `result-track:07a4c0fa74e9780ba14325bd05d4cf37b4ee0d588495dcfe2286d501db01d14b` |
| 2 | `theorem` | [smoothSheafCommRing.nonunits_stalk](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/declarations/smoothsheafcommring-nonunits-stalk--2538ccc1e000ef17f57bf641.md) | 113 | `result-track:2538ccc1e000ef17f57bf6414074b4ea2abab30b01a832c2cf4ae50abfc5cbf2` |
| 3 | `instance` | [smoothSheafCommRing.instLocalRing_stalk](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/declarations/smoothsheafcommring-instlocalring-stalk--586746fe40e0a629ef9dd174.md) | 121 | `declaration-track:586746fe40e0a629ef9dd174446bfa8a65b33473cb906fb194404508d707c719` |
| 4 | `def` | [IsManifold.locallyRingedSpace](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant38a28bcdebc3c3cde1d950b584df5a50f04c0f323a2d9929f76496c68f44ee30.lean/declarations/ismanifold-locallyringedspace--f04109c0ac64335cb469ee03.md) | 131 | `declaration-track:f04109c0ac64335cb469ee0392a5d882be71e5ed3e562a5062b860b464e8f138` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Geometry.DifferentialGeometry.LocallyRingedSpace.Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "108d4c93e2b2b51ab667e102b3f4305c16f1dd13",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `108d4c93e2b2b51ab667e102b3f4305c16f1dd13`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Sheaf.Smooth` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.RingedSpace.LocallyRingedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smoothSheafCommRing.isUnit_stalk_iff](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/declarations/smoothsheafcommring-isunit-stalk-iff--6fae8905eeefa8a9ecc2bf8a.md) | 44 | `result-track:6fae8905eeefa8a9ecc2bf8a8e0e593e9a6860b931f8d3e220afff320f1307a5` |
| 2 | `theorem` | [smoothSheafCommRing.nonunits_stalk](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/declarations/smoothsheafcommring-nonunits-stalk--c19ce148ac6a031916bf488f.md) | 105 | `result-track:c19ce148ac6a031916bf488f370ee8a8ff40ee7f0c2e204895c757991056ba12` |
| 3 | `instance` | [smoothSheafCommRing.instLocalRing_stalk](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/declarations/smoothsheafcommring-instlocalring-stalk--3b67186d77d9e845f6d7ea66.md) | 113 | `declaration-track:3b67186d77d9e845f6d7ea666adc92b33124cb29406b7b5e71b502b4715e5095` |
| 4 | `def` | [IsManifold.locallyRingedSpace](../../../../../mathematics/Geometry/DifferentialGeometry/LocallyRingedSpace/Variant88108e7593105fbe69317601aca6e51b4ef20ed41b01eeddfa2d2d8aca99c82f.lean/declarations/ismanifold-locallyringedspace--b82e96581d52e7fbee7c0c95.md) | 123 | `declaration-track:b82e96581d52e7fbee7c0c9538c71c65257eacc938f8ab123ed6a606cb875cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

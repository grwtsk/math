# Verification target: GRWTSK.Geometry.AlgebraicGeometry.FrobeniusSurface.Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69fefb915e01c0ef8e7107dd56dca96fb44c0519",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69fefb915e01c0ef8e7107dd56dca96fb44c0519`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrobeniusSurface](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/frobeniussurface--ae40acffb686ff00cc68306d.md) | 5 | `declaration-track:ae40acffb686ff00cc68306d59cb34efe8ff1b9ce8e8088682c17e16e1ca485b` |
| 2 | `def` | [currentGeometryBoundary](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/currentgeometryboundary--898184b807f4359e1296b608.md) | 11 | `declaration-track:898184b807f4359e1296b6083f2dff9ef7337162abeeefdc862c3e4af3b69fba` |
| 3 | `theorem` | [absolute_frobenius_not_implemented](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/absolute-frobenius-not-implemented--d6daa42677cca9e984085681.md) | 13 | `result-track:d6daa42677cca9e9840856818f3f00bdeb8695015109d7798e4777b835011ede` |
| 4 | `theorem` | [geometric_frobenius_not_glued](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/geometric-frobenius-not-glued--2ee6530a7bcdb71fcb566c38.md) | 17 | `result-track:2ee6530a7bcdb71fcb566c38b2ca618932e5aabf4db67c61229284824378ae0f` |
| 5 | `theorem` | [mathlib_scheme_interface_not_active](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/mathlib-scheme-interface-not-active--23c5c6c5a3de99df3fa31459.md) | 21 | `result-track:23c5c6c5a3de99df3fa3145938d5c82054df1dc9fa9ae19dbc2f00388479b492` |
| 6 | `theorem` | [drinfeld_shtuka_residue_isolated](../../../../../mathematics/Geometry/AlgebraicGeometry/FrobeniusSurface/Variant7f8a85f2e7b1324a7bf4810de9aecec4a89c5360bda2c9028c198a59fdcee712.lean/declarations/drinfeld-shtuka-residue-isolated--6e7f459d8c4d4bdb82d29ae0.md) | 25 | `result-track:6e7f459d8c4d4bdb82d29ae06658600ee661d4dae98b70e4585321a404ebd850` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

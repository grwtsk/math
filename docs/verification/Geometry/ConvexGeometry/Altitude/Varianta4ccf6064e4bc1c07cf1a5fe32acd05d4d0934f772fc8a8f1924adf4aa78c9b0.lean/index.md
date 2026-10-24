# Verification target: GRWTSK.Geometry.ConvexGeometry.Altitude.Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6315697d7006fb2eed028c52fe68cef9b061932e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6315697d7006fb2eed028c52fe68cef9b061932e`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Projection` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitude--007e85a0892cfa686f8c90a8.md) | 49 | `declaration-track:007e85a0892cfa686f8c90a84fb833d20ac9d5e44174813d6e775ec7f0b9b3a4` |
| 2 | `theorem` | [altitude_def](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitude-def--a39fb0ae398f61e71ea0cf9c.md) | 54 | `result-track:a39fb0ae398f61e71ea0cf9cfe18f7bf258da7ce4ce1f41764225ee041ae794a` |
| 3 | `theorem` | [mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/mem-altitude--d3c0aff8dc007d994862e48d.md) | 61 | `result-track:d3c0aff8dc007d994862e48d3f264a9b623a829e1fac377371863cb31ad0512c` |
| 4 | `theorem` | [direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/direction-altitude--dca850f7a306b865c67515c2.md) | 66 | `result-track:dca850f7a306b865c67515c2a476cdd15206690c9caa6f64dff4086be288a223` |
| 5 | `theorem` | [vectorSpan_isOrtho_altitude_direction](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/vectorspan-isortho-altitude-direction--998ca00621ae19aa842db53c.md) | 75 | `result-track:998ca00621ae19aa842db53cfb76712ab23e52f357fa7bc18969cb6930c18a65` |
| 6 | `instance` | [finiteDimensional_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/finitedimensional-direction-altitude--0503e41a63805ac1d141b322.md) | 83 | `declaration-track:0503e41a63805ac1d141b322520ebc5edfd5c5b28b278f7ef0473367ce9b4bfe` |
| 7 | `theorem` | [finrank_direction_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/finrank-direction-altitude--11ee28d55b74b5df23d41410.md) | 90 | `result-track:11ee28d55b74b5df23d41410402cb0592982aa81f2ddc82ff7e50d5b20971d9c` |
| 8 | `theorem` | [affineSpan_pair_eq_altitude_iff](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/affinespan-pair-eq-altitude-iff--4cbbc381d079391158ef46f6.md) | 108 | `result-track:4cbbc381d079391158ef46f6caeb2e6a2dbc7b75272411b099bce6577fe3632f` |
| 9 | `def` | [altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitudefoot--5995b7e5560ae50c4e212706.md) | 142 | `declaration-track:5995b7e5560ae50c4e21270684b42b394ce829521962da7dd79a19a49febcb53` |
| 10 | `lemma` | [ne_altitudeFoot](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/ne-altitudefoot--fa84c0f717f19f5f2a5d9a5f.md) | 145 | `result-track:fa84c0f717f19f5f2a5d9a5fc86fcb19085e76342ea2f656f5d400697c1be8fc` |
| 11 | `lemma` | [altitudeFoot_mem_affineSpan_faceOpposite](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitudefoot-mem-affinespan-faceopposite--1957eca1ed36be82eca3864a.md) | 151 | `result-track:1957eca1ed36be82eca3864a1bf688b28f02d612271e74039a192d77baec8f25` |
| 12 | `lemma` | [altitudeFoot_mem_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitudefoot-mem-affinespan--df0d968a53eadb37c8e72b73.md) | 155 | `result-track:df0d968a53eadb37c8e72b73f8f9c75a02c593813bbed1298be7244403419315` |
| 13 | `lemma` | [affineSpan_pair_altitudeFoot_eq_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/affinespan-pair-altitudefoot-eq-altitude--d159b058cdb8383fc14438b8.md) | 160 | `result-track:d159b058cdb8383fc14438b87652ef369be1cee9118c764702253b54236731fb` |
| 14 | `lemma` | [altitudeFoot_mem_altitude](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/altitudefoot-mem-altitude--05c14e29a16d34c371e8ee80.md) | 169 | `result-track:05c14e29a16d34c371e8ee80ab127db744792736fd0a12dad1589ee8550bdeb6` |
| 15 | `def` | [height](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/height--41bf6d2ae689478e73469b05.md) | 176 | `declaration-track:41bf6d2ae689478e73469b055302483a677b2ec07c11aa31efdb66ada861c6d8` |
| 16 | `lemma` | [height_pos](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/height-pos--c8ed20c9921060b296a388ea.md) | 179 | `result-track:c8ed20c9921060b296a388ea2a1aca0cb4eb856489c205a8d0f827a9f1986a6d` |
| 17 | `def` | [evalHeight](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/evalheight--d89a5a8e63174c9518a21c9d.md) | 185 | `declaration-track:d89a5a8e63174c9518a21c9dc1eec04a9814857ad4ed98ef82b2bbcbff8aef0b` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Altitude/Varianta4ccf6064e4bc1c07cf1a5fe32acd05d4d0934f772fc8a8f1924adf4aa78c9b0.lean/declarations/example--53eb325e8744842d76bad432.md) | 192 | `declaration-track:53eb325e8744842d76bad432d25a8cc8cdc1268f4866908c1d9684ed4c654807` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

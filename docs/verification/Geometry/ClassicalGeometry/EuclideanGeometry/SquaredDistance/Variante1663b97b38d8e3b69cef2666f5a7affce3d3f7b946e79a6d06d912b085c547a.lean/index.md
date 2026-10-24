# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SquaredDistance.Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89356130f3bcd7945111c7d335f0f8b728768f7d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89356130f3bcd7945111c7d335f0f8b728768f7d`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Plane` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [planeSquaredDistance](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/declarations/planesquareddistance--0f6160cac2cf75bcbd86c0e9.md) | 21 | `declaration-track:0f6160cac2cf75bcbd86c0e96a5b8cef0f8e4c5669483d31508f8613d173e1e5` |
| 2 | `theorem` | [planeSquaredDistance_coordinates](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/declarations/planesquareddistance-coordinates--ff42c92d6b4d0179bd726a3d.md) | 24 | `result-track:ff42c92d6b4d0179bd726a3d793390ab45686f6e36e8e10eae05c374eed84d52` |
| 3 | `theorem` | [planeSquaredDistance_nonnegative](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/declarations/planesquareddistance-nonnegative--a1ef3e04cef944796c0147ac.md) | 29 | `result-track:a1ef3e04cef944796c0147ac743a672b0445305af6c5e48c4de27d121cfbca99` |
| 4 | `theorem` | [planeSquaredDistance_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/declarations/planesquareddistance-self--6388fe8e6404aa9390e9bded.md) | 33 | `result-track:6388fe8e6404aa9390e9bdedc0a6e2ac72a6fc8a31eea3e9ed10fb385c94c29f` |
| 5 | `theorem` | [planeSquaredDistance_symmetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SquaredDistance/Variante1663b97b38d8e3b69cef2666f5a7affce3d3f7b946e79a6d06d912b085c547a.lean/declarations/planesquareddistance-symmetric--ad9bff8ce1ada10f13b6e0e9.md) | 37 | `result-track:ad9bff8ce1ada10f13b6e0e96a11886277bea9ab661daeb68a862e92d7d26ad1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.AffineSlopeTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7b70c96e61ea747859079415d529279e2d15c68",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7b70c96e61ea747859079415d529279e2d15c68`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Data.ZMod.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [slopePolynomial](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/slopepolynomial--ac62aa082334aa2e1022feb5.md) | 25 | `declaration-track:ac62aa082334aa2e1022feb54f960ff54f35e0650c15a07912eb89c7ec06165e` |
| 2 | `theorem` | [slope_degree](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/slope-degree--cac0cca0ccb4370543f84264.md) | 27 | `result-track:cac0cca0ccb4370543f84264755b3899747a3b0a1c84abed309d511164b9ffa7` |
| 3 | `theorem` | [splits_affine_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/splits-affine-iff--b2374ba6d742b9b6c3a33542.md) | 32 | `result-track:b2374ba6d742b9b6c3a3354203325964ee441cc3a88e321e536bbc8e9f9ac301` |
| 4 | `theorem` | [splits_of_cleared_identity](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/splits-of-cleared-identity--186f73d33f4578e5d8d818a8.md) | 37 | `result-track:186f73d33f4578e5d8d818a8ce12abc1e0e4b398fc8c6e55226ec772e570becc` |
| 5 | `theorem` | [eval_cleared_identity](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/eval-cleared-identity--cadeac7ce3820646b140d983.md) | 45 | `result-track:cadeac7ce3820646b140d983365a5ba6775955a22ec794bae344266cf036228a` |
| 6 | `theorem` | [root_transport_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/root-transport-iff--8072bee4602dc9af5a3c3dad.md) | 51 | `result-track:8072bee4602dc9af5a3c3dad42bc14df106759c5e1dbd363c1f97d962f82b845` |
| 7 | `def` | [rootEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/rootequiv--77ba12dab2e49b669849e65c.md) | 58 | `declaration-track:77ba12dab2e49b669849e65ce30c4555fb764d2b9e498a7419190fc5dd090ddc` |
| 8 | `theorem` | [slope_distinct_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/slope-distinct-iff--9a77ec35a69ac6e893e851df.md) | 77 | `result-track:9a77ec35a69ac6e893e851df0997f8ead3d375ee86974405ecec212a8118a7b4` |
| 9 | `def` | [halfSlopeChange](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/halfslopechange--5aa94b39ab78e25a9f1f5a84.md) | 90 | `declaration-track:5aa94b39ab78e25a9f1f5a84554a4f30819ac6d533dbbb60e86f7f844010efd0` |
| 10 | `theorem` | [half_tangent_identity](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/half-tangent-identity--45ac4db02bcf245f0dfd4ced.md) | 98 | `result-track:45ac4db02bcf245f0dfd4ced7eebe9b7a578be8e4a717485c2ac7c01495b6ae3` |
| 11 | `theorem` | [binary_tangent](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/binary-tangent--a6265ed533f778bdad273bc4.md) | 130 | `result-track:a6265ed533f778bdad273bc48607dc208e8c7ddeaad7144c05fd7924d0776a96` |
| 12 | `theorem` | [binary_quadratic_splits_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/binary-quadratic-splits-iff--22e360f214b7625ba9f087a5.md) | 138 | `result-track:22e360f214b7625ba9f087a558188011d5bd1058262f0269f8f1129a61b9cfde` |
| 13 | `theorem` | [binary_split_roots](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/AffineSlopeTransport.lean/declarations/binary-split-roots--9c14d7871567f9351804a782.md) | 157 | `result-track:9c14d7871567f9351804a7829b61fb0299653bdc5ee5f047bcb60bad10360c40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

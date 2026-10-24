# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.TangentPolynomialSplitting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e49c3699cdd3abaaf11337514b080c92bc7e38f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e49c3699cdd3abaaf11337514b080c92bc7e38f`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Reduction` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Splits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tangentPolynomial](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/tangentpolynomial--a8c915976e1d46b3b9fafe48.md) | 28 | `declaration-track:a8c915976e1d46b3b9fafe48a465c52ccb50b0ea239c841037c4ad2e84de2ca8` |
| 2 | `theorem` | [map_tangentPolynomial](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/map-tangentpolynomial--7205cdda707f18afd1cb28d2.md) | 32 | `result-track:7205cdda707f18afd1cb28d2b664ccdcb5cde7588173f8aeb53cd06d0fd5ec1c` |
| 3 | `def` | [tangentForm](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/tangentform--a72c1e02575229265be3bdea.md) | 37 | `declaration-track:a72c1e02575229265be3bdea40f8d578e75e7cea79ca6f68363153f6392c3202` |
| 4 | `theorem` | [affine_expansion](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/affine-expansion--9fedda7fe9c3aa32e1bbff8d.md) | 41 | `result-track:9fedda7fe9c3aa32e1bbff8d35b500ad1f979c0bf7893c953aa45845ac17422e` |
| 5 | `theorem` | [singular_expansion](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/singular-expansion--c34ac96af943321e803f232b.md) | 51 | `result-track:c34ac96af943321e803f232bb6083b190b020b86bb8c3f5962346db8b458b080` |
| 6 | `theorem` | [splits_map_equiv](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/splits-map-equiv--99b2b36853a627716fbfa58d.md) | 66 | `result-track:99b2b36853a627716fbfa58db384c9a9baade11a06303f4d28f39408c0b17c81` |
| 7 | `theorem` | [splits_C_mul_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/splits-c-mul-iff--fe8a40114eee1d64ae85f2dd.md) | 77 | `result-track:fe8a40114eee1d64ae85f2dd2f1350e849494965573c065bc89c4dee18bff5ba` |
| 8 | `theorem` | [splits_quadratic_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/splits-quadratic-iff--538b1a231a7490cd3d7f0cc7.md) | 88 | `result-track:538b1a231a7490cd3d7f0cc7de7b7b9f43f8f0fb60e5600e05c0a30932e19dfb` |
| 9 | `theorem` | [splits_scaled_quadratic_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/splits-scaled-quadratic-iff--ade0641653f0c4d602a06ec8.md) | 104 | `result-track:ade0641653f0c4d602a06ec8bd5f21416d6888ac03dd7026f6b58054d416437a` |
| 10 | `theorem` | [distinct_slopes](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/distinct-slopes--649a023c2f5bce9f5583466a.md) | 109 | `result-track:649a023c2f5bce9f5583466a4fecaa19d908c396caf4dd935b4b2501d015eb2e` |
| 11 | `theorem` | [tangent_factorization](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/tangent-factorization--98f06fe4d75de64b88b64f3e.md) | 119 | `result-track:98f06fe4d75de64b88b64f3e98669a71f7bb9d0cb41697e0cae88fa75ca87d64` |
| 12 | `theorem` | [supplied_integralModel](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/supplied-integralmodel--33ee91681fc4fd1a9fea34ba.md) | 131 | `result-track:33ee91681fc4fd1a9fea34ba0d21cbe82cb12331b6c0269b6ded5536610fde8b` |
| 13 | `theorem` | [split_iff_supplied_model](../../../../mathematics/AlgebraicGeometry/EllipticCurve/TangentPolynomialSplitting.lean/declarations/split-iff-supplied-model--3acb7c526da1e73c70e4f7a5.md) | 148 | `result-track:3acb7c526da1e73c70e4f7a5647d4047387743072dbf24b92dee2428d50aff5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

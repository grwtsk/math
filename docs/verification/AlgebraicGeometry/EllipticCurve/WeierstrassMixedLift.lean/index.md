# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassMixedLift

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eccdce322f9011544c39df1331a1e90ad7bcb957",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eccdce322f9011544c39df1331a1e90ad7bcb957`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood`](../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassSecondJet`](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolvent](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/resolvent--ca41758c6bf1ac1385149cb1.md) | 25 | `declaration-track:ca41758c6bf1ac1385149cb17102468b2b3297ff4a9063704ce0c01c006cd9cd` |
| 2 | `theorem` | [resolvent_balance](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/resolvent-balance--6b8a4dbbefa2e6422aee0831.md) | 29 | `result-track:6b8a4dbbefa2e6422aee08318cccf05116e05e136352e8dc9f51b19eed12ac2e` |
| 3 | `theorem` | [resolvent_inverse](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/resolvent-inverse--ca957494fc938d3ea1818415.md) | 40 | `result-track:ca957494fc938d3ea18184153491cf64014598901f1cda40d4a7cfeae082b332` |
| 4 | `theorem` | [map_resolvent](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/map-resolvent--596e580522ada847cbc4eb46.md) | 44 | `result-track:596e580522ada847cbc4eb4672a9f0cdabd64c0fce9fe94ee3188170e6845c58` |
| 5 | `def` | [lift](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/lift--ea26c9344f51ecdb55bd84f4.md) | 51 | `declaration-track:ea26c9344f51ecdb55bd84f410acaa30b99e0c60afc185c5ff14ae3f61faee76` |
| 6 | `theorem` | [map_lift](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/map-lift--1bddafdfaf9b58de4e2258a6.md) | 54 | `result-track:1bddafdfaf9b58de4e2258a63dbb30e146044a0b908bd2c8fae15d1df41351da` |
| 7 | `theorem` | [lift_mem](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/lift-mem--00c612f7265a5be93c3ebf22.md) | 58 | `result-track:00c612f7265a5be93c3ebf226661da20f8de0729bea2475f589f87e080f7fa3a` |
| 8 | `theorem` | [lift_square_dvd](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/lift-square-dvd--80d0d916b049f89932654c80.md) | 62 | `result-track:80d0d916b049f89932654c807e91b2779beb90dc01710ec8c576427be3baddbc` |
| 9 | `theorem` | [equation_iff_shift](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/equation-iff-shift--33c3413a0f133f24bba835aa.md) | 66 | `result-track:33c3413a0f133f24bba835aad65ada0a09a5269e130c9422ac38801163262172` |
| 10 | `theorem` | [lift_equation](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/lift-equation--ffb1baa500e482fefd851ca6.md) | 73 | `result-track:ffb1baa500e482fefd851ca66581748ce4f06af473e936b6dd3debfb1cd0a233` |
| 11 | `theorem` | [solution_eq_lift](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/solution-eq-lift--7431f68ffe276996bd3f6974.md) | 82 | `result-track:7431f68ffe276996bd3f69743883dcb227bf299a90a5a5bc221739dd5d6a12cb` |
| 12 | `theorem` | [lift_natural](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/lift-natural--3029b7a12fc07284627a9719.md) | 91 | `result-track:3029b7a12fc07284627a97192d0cfdef90d5c641cda9470e63621d3e87f02966` |
| 13 | `def` | [cubicResidual](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/cubicresidual--ecf745b68abe6fec2bde1628.md) | 105 | `declaration-track:ecf745b68abe6fec2bde16285c6380248d9219118656cf05ff9bd8ff7985f739` |
| 14 | `theorem` | [cubic_residual_expansion](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/cubic-residual-expansion--6ea2e61e4614b20ae179c977.md) | 109 | `result-track:6ea2e61e4614b20ae179c977c1976db18ed39f24753e5f94056edcc9f9ad393f` |
| 15 | `theorem` | [cubic_equation_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/cubic-equation-iff--e9532da5aac08062485d631b.md) | 119 | `result-track:e9532da5aac08062485d631bb2900009976957d645c11fa96e89f1551e965982` |
| 16 | `theorem` | [cubic_field_coefficients](../../../../mathematics/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/declarations/cubic-field-coefficients--ddf0f1a8b26a21091a52f878.md) | 133 | `result-track:ddf0f1a8b26a21091a52f87814561a3c5452b30603854d0b6b06b9cd1598639e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

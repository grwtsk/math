# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53d1dcf5c183721ea48752b4215175c62d2351fa",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53d1dcf5c183721ea48752b4215175c62d2351fa`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel`](../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [model](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/model--e243b8a064959c02a649d575.md) | 24 | `declaration-track:e243b8a064959c02a649d575ae5ca35a999f1737d74e9b58e0b159283beb6f9f` |
| 2 | `def` | [halfChange](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/halfchange--39a541ee61422203ff8fecb9.md) | 32 | `declaration-track:39a541ee61422203ff8fecb907e9a6723274ef682712b95baaaa3cdee9081bdb` |
| 3 | `theorem` | [variableChange_model](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/variablechange-model--e7be3924e904e4c1f2ac9bd5.md) | 39 | `result-track:e7be3924e904e4c1f2ac9bd5aff847290fadfb73b22f9e0e5b938aea5b1c9285` |
| 4 | `theorem` | [model_c4](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/model-c4--ac643726b4705ae39e3ee37b.md) | 46 | `result-track:ac643726b4705ae39e3ee37ba06c1a8a325c59888d3daf4ff67c3a1bfbcfe504` |
| 5 | `theorem` | [model_delta](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/model-delta--52b5224d2642d80a9f7914b9.md) | 51 | `result-track:52b5224d2642d80a9f7914b9be43c666391e86bf29619003741ebf031a64bb6a` |
| 6 | `theorem` | [c4_not_dvd_two](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/c4-not-dvd-two--5ef443252893543d729f45a7.md) | 58 | `result-track:5ef443252893543d729f45a75fe5c13aac97aadf2838ac315d99780ba7e8f3a2` |
| 7 | `theorem` | [delta_even_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/delta-even-iff--4541c0ba2498b7ade980c419.md) | 67 | `result-track:4541c0ba2498b7ade980c419814b6db5f45bbb789d8109dd3d1d12744e241b22` |
| 8 | `def` | [toNew](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/tonew--91f343432281409614ad21c3.md) | 75 | `declaration-track:91f343432281409614ad21c3b78c7c5e4c3697ec496c10b95ac8e25c6acb9d7b` |
| 9 | `def` | [toOld](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/toold--d49ac62108ca349943625ea4.md) | 78 | `declaration-track:d49ac62108ca349943625ea4147eaa704192430f5174028a06a89c5a460c4bed` |
| 10 | `theorem` | [toOld_toNew](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/toold-tonew--3e86a1bd5fb54687a560be21.md) | 81 | `result-track:3e86a1bd5fb54687a560be212225c8885c1860e2c3f8538c03374e4ac83ff82d` |
| 11 | `theorem` | [toNew_toOld](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/tonew-toold--3cab5d029f44c93d848c45f9.md) | 85 | `result-track:3cab5d029f44c93d848c45f968280c239fdf3b3a2225abe882fc037d5f373e8f` |
| 12 | `theorem` | [branch_coordinates](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/declarations/branch-coordinates--2e629caf2c965272463af390.md) | 91 | `result-track:2e629caf2c965272463af39096a00bffd1b7e9acc2727a6e7e4cc33654387d8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

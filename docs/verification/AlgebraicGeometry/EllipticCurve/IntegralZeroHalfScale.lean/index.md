# Verification target: GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralZeroHalfScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "609276cf175e47a03afaa7032c1f1cb36db3ec8c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/index.md) · [Full source](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `609276cf175e47a03afaa7032c1f1cb36db3ec8c`.

Source path: `GRWTSK/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale`](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [model](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/model--ef9d9d04a86f1bc0d109b88e.md) | 20 | `declaration-track:ef9d9d04a86f1bc0d109b88e240f0513d83d00f80380c7af34a187eff04934c4` |
| 2 | `def` | [zeroChange](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/zerochange--3a0e35595cd0333a9ad3510d.md) | 28 | `declaration-track:3a0e35595cd0333a9ad3510dc5c0c03807272a860a41ea9385ab173389142f2a` |
| 3 | `theorem` | [variableChange_model](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/variablechange-model--74ad618784d62d3513708138.md) | 35 | `result-track:74ad618784d62d351370813835eb4ff9d474f97c90ffa53d213ead2dea3c93f8` |
| 4 | `theorem` | [model_c4](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/model-c4--63f99154c7ce95e6121b0388.md) | 43 | `result-track:63f99154c7ce95e6121b03888041a76e60ecb23e2d437233e4dd14a17f2a3e15` |
| 5 | `theorem` | [model_delta](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/model-delta--ea74ae00b2f471d1dee70a95.md) | 48 | `result-track:ea74ae00b2f471d1dee70a951a290b69c16157a2ba07751c62e55c7878ddb141` |
| 6 | `theorem` | [parameter_c4](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/parameter-c4--8f2e638d4195f0630177edb9.md) | 54 | `result-track:8f2e638d4195f0630177edb91884ce6ea794df7cb70f1f9bc0e87b980bfb867a` |
| 7 | `theorem` | [parameter_delta](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/parameter-delta--921fd214ae9799c2155a54f1.md) | 61 | `result-track:921fd214ae9799c2155a54f1eaff7b8fb6b8229c2c0ec6a18603724503107100` |
| 8 | `theorem` | [c4_not_dvd_two](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/c4-not-dvd-two--1654a51076dccf86b9d98bdb.md) | 69 | `result-track:1654a51076dccf86b9d98bdbb220a3b894105dc71aaadf82347569eb5f466a6b` |
| 9 | `theorem` | [delta_even_iff](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/delta-even-iff--0897d7137c0f7b9a5cfe8d45.md) | 74 | `result-track:0897d7137c0f7b9a5cfe8d45d7744371ee4cf5cf9faa2c79cf8a3d04f7925fb0` |
| 10 | `def` | [toNew](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/tonew--60bb852d499716243c91889f.md) | 81 | `declaration-track:60bb852d499716243c91889f0afac77c47e8b8323a346a68416d88f53dcdade3` |
| 11 | `def` | [toOld](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/toold--296a8f2a0062766efa8c3d19.md) | 83 | `declaration-track:296a8f2a0062766efa8c3d19a9cd972c6612549810553a07b3ecc584cb6f559e` |
| 12 | `theorem` | [toOld_toNew](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/toold-tonew--da010524449eb9e4bc129c8c.md) | 85 | `result-track:da010524449eb9e4bc129c8ca361cb84a851fa21490f2e15e8bba7ece4e446a6` |
| 13 | `theorem` | [toNew_toOld](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/tonew-toold--563ea9a103c008d2afded108.md) | 89 | `result-track:563ea9a103c008d2afded1080ac1c478b760e35122f4ef824f6499d8c31f8dba` |
| 14 | `theorem` | [branch_coordinates](../../../../mathematics/AlgebraicGeometry/EllipticCurve/IntegralZeroHalfScale.lean/declarations/branch-coordinates--7f2e18d4a69449b3e25bc381.md) | 94 | `result-track:7f2e18d4a69449b3e25bc381e6400a101e1cb76498cef81647c3b4280f9e4a2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GeometricResidual.Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2ce383ceebe262c0f674b4267a6a28c9364b00",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2ce383ceebe262c0f674b4267a6a28c9364b00`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeometricResidualSpecification](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification--25c767dc1d7c07fb6d68634e.md) | 30 | `declaration-track:25c767dc1d7c07fb6d68634e1639707f13ed10d6db3d834ef7e4da39639d64a7` |
| 2 | `def` | [GeometricResidualSpecification.geometricKernel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-geometrickernel--f36e924ad1f0274b3397abae.md) | 53 | `declaration-track:f36e924ad1f0274b3397abae09f6fcdd1ac6df6662f9c508780331e4ec0ba356` |
| 3 | `def` | [GeometricResidualSpecification.residual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-residual--976e72e970b04c15459816f5.md) | 63 | `declaration-track:976e72e970b04c15459816f59162ef3ab1d896ee4d21757ba824246757cf0a5b` |
| 4 | `def` | [GeometricResidualSpecification.residualIncrement](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-residualincrement--f40c46a05b1aa9200cc2d0dd.md) | 74 | `declaration-track:f40c46a05b1aa9200cc2d0dd2dfd08962558f55cc26a5d195305f084ff4d0414` |
| 5 | `theorem` | [GeometricResidualSpecification.geometricKernel_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-geometrickernel-succ--1b0565ab229b3e747c0b7dd6.md) | 83 | `result-track:1b0565ab229b3e747c0b7dd619177878e12acc1bbe6437dec011b5954c397469` |
| 6 | `theorem` | [GeometricResidualSpecification.residual_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-residual-zero--4427b2f395948f721b56d6e6.md) | 97 | `result-track:4427b2f395948f721b56d6e6914934c844dc2772830db43df5520ddede720994` |
| 7 | `theorem` | [GeometricResidualSpecification.residual_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-residual-succ--b65e21474d2fc20951ab60e1.md) | 110 | `result-track:b65e21474d2fc20951ab60e1f44609e26d8dea20edc1a2b69a8b200fc7cbf064` |
| 8 | `def` | [GeometricResidualSpecification.toPrefixCompatibleResidual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GeometricResidual/Variant0d99eef4bed3d7686b79f57db50291af46a0843135004ce84ed7c800beb801be.lean/declarations/geometricresidualspecification-toprefixcompatibleresidual--055db117350195e5b0c362f7.md) | 126 | `declaration-track:055db117350195e5b0c362f7f9e4bb5a729fc56b2576cd1358bf2b4bda59941c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

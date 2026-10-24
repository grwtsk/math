# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d790f36777c1bafabe89dda19823a4cc2fe72a5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d790f36777c1bafabe89dda19823a4cc2fe72a5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskSurjectivity`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarDiskSurjectivity.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_norm_exp_arg](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/declarations/complex-norm-exp-arg--4a09d647f6b8a05e087dac02.md) | 36 | `result-track:4a09d647f6b8a05e087dac020e48cddfc0d2b6af05666084b703154662c59181` |
| 2 | `def` | [normalizedComplexAngle](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/declarations/normalizedcomplexangle--0e07f53d49b2833f8c7c8377.md) | 43 | `declaration-track:0e07f53d49b2833f8c7c83776245a17bed7570ceacf56848e85ca4211db520d1` |
| 3 | `theorem` | [normalizedComplexAngle_mul_two_pi](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/declarations/normalizedcomplexangle-mul-two-pi--ec5d2735a12f2959cfc1573b.md) | 47 | `result-track:ec5d2735a12f2959cfc1573bb0b5d7c7953d153465831809b23322e234f9e555` |
| 4 | `theorem` | [complex_realAnglePolar_representation](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/declarations/complex-realanglepolar-representation--e11eabb855819d44d0e4e05c.md) | 53 | `result-track:e11eabb855819d44d0e4e05c4c1b3e83c405786be6ae23375415ec7a2ca3a3fc` |
| 5 | `theorem` | [standardConePolarDisk_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/declarations/standardconepolardisk-surjective--fb0446bdb89fd0c968ec2e45.md) | 61 | `result-track:fb0446bdb89fd0c968ec2e45844d20332c9ccc210c5f35c24eefe10344e4eef0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

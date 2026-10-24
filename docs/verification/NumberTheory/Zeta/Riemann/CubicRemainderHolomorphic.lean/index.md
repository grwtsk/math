# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec0df0b92390c6702c5abeab349bf88ba08a9516",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec0df0b92390c6702c5abeab349bf88ba08a9516`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainder`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainder.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellLogMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/celllogmoment--558f54da964972c2c3c6391d.md) | 33 | `declaration-track:558f54da964972c2c3c6391d06415f2b2d56b23a3d2496f9746b14fa61f4c312` |
| 2 | `theorem` | [cellLogMoment_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/celllogmoment-integrable--d2a567519d79c97fc5662ce1.md) | 37 | `result-track:d2a567519d79c97fc5662ce1352df18dbd7c7ee45aebd64b8cd54ec04de1e4b5` |
| 3 | `theorem` | [norm_cell_log_density_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/norm-cell-log-density-le--67472b55f29790581e77f48a.md) | 51 | `result-track:67472b55f29790581e77f48ad30642259c94e2efe323ee1680d74a0328af64cd` |
| 4 | `theorem` | [hasDerivAt_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/hasderivat-cell--3fcde3e6f6cc9b69d6686f34.md) | 67 | `result-track:3fcde3e6f6cc9b69d6686f34e751c12e7cb57cbf6f98f0f80114f429491439ef` |
| 5 | `theorem` | [differentiable_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/differentiable-cell--8e49926f2520d252a2fb5b73.md) | 104 | `result-track:8e49926f2520d252a2fb5b733d8e3944f904b0191cab38eec03f0177804571a6` |
| 6 | `theorem` | [differentiableOn_above](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/differentiableon-above--0ebac97f898ada294b237634.md) | 109 | `result-track:0ebac97f898ada294b237634ce4d5abd9511ca28ac8f3d89bd67e10146cf264c` |
| 7 | `theorem` | [differentiableAt_cubicRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/differentiableat-cubicremainder--6ed4c0495fe322917e4a5905.md) | 119 | `result-track:6ed4c0495fe322917e4a59052235ecf1e4f30f84c1b564a5440da6e1dc229dce` |
| 8 | `theorem` | [analyticOnNhd_cubicRemainder](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/analyticonnhd-cubicremainder--c85224fdc2a34e37ae36b8ce.md) | 127 | `result-track:c85224fdc2a34e37ae36b8ce01dc81f209a492dc1fb430d36385f63f88633578` |
| 9 | `theorem` | [hasSum_cellLogMoment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/declarations/hassum-celllogmoment--bcb8ed8538f9e8bae535b9c2.md) | 134 | `result-track:bcb8ed8538f9e8bae535b9c267e17048326ee31b95645b674c430926cad49682` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

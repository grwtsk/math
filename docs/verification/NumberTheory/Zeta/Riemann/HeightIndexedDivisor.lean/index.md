# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.HeightIndexedDivisor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f693410a2b2a1d52a3e86418fad252daa042487",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f693410a2b2a1d52a3e86418fad252daa042487`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SeparatedContourHeights`](../../../../../mathematics/NumberTheory/Zeta/Riemann/SeparatedContourHeights.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles`](../../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.RectangularPoleReduction`](../../../../../mathematics/Analysis/ComplexAnalysis/RectangularPoleReduction.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singularHeadAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/singularheadat--f1c9016c7a6eca321ee17527.md) | 30 | `declaration-track:f1c9016c7a6eca321ee17527f033a8dcc011b9ff8e41f06803950aa1509666c3` |
| 2 | `theorem` | [singularHeadAt_old](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/singularheadat-old--42b59be7b05ac8613e7157ae.md) | 36 | `result-track:42b59be7b05ac8613e7157ae40d9598e9bb8683a972849568199a532e9fbd8fa` |
| 3 | `theorem` | [trivial_left_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/trivial-left-iff--f044570e333d5bf958dfe20d.md) | 40 | `result-track:f044570e333d5bf958dfe20d9b82ac07583e2c6201191dc5e312956171050246` |
| 4 | `theorem` | [mem_singularHeadAt_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/mem-singularheadat-iff--e129e4c6d3068eacc52bb350.md) | 50 | `result-track:e129e4c6d3068eacc52bb350b0f5d1025c9d80721a58985477fec5f50571b95f` |
| 5 | `theorem` | [singular_mem_of_closed](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/singular-mem-of-closed--66138f16b7226b14d0396579.md) | 81 | `result-track:66138f16b7226b14d039657980291276f0a86ae5adeb7e7edeb44f2bd1cd7f62` |
| 6 | `theorem` | [sum_singularHeadAt](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/sum-singularheadat--04d2eef35f88c3f37ccb9db4.md) | 99 | `result-track:04d2eef35f88c3f37ccb9db49c16ca709a4fc5ad063c8b816a749599e15ecced` |
| 7 | `theorem` | [trivial_mem_headAt_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/trivial-mem-headat-iff--42f3ccd48b721a9f978a8773.md) | 128 | `result-track:42f3ccd48b721a9f978a877393b2072abff0af4604b9e5885d6b845d0f30fbaf` |
| 8 | `theorem` | [singularHeadAt_rounded](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/singularheadat-rounded--16070a25d88fff1d3fd9e026.md) | 147 | `result-track:16070a25d88fff1d3fd9e026759d1ea1f71d990674eae52a9224f94cd43eda08` |
| 9 | `theorem` | [rounded_avoids](../../../../../mathematics/NumberTheory/Zeta/Riemann/HeightIndexedDivisor.lean/declarations/rounded-avoids--0138fd94150dc2b96f58fb1e.md) | 154 | `result-track:0138fd94150dc2b96f58fb1e23ae7527cb859dc489f549a1f9feb18c9a104ae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

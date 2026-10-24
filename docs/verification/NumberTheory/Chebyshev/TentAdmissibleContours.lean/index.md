# Verification target: GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2974858924a3aa4207314292faafc7cb4a9962c9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2974858924a3aa4207314292faafc7cb4a9962c9`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TentAdmissibleContours.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TentAdmissibleContours.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.OrientedRectangle`](../../../../mathematics/Analysis/ComplexAnalysis/OrientedRectangle.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.AdmissibleRectangles`](../../../../mathematics/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentPerronLine`](../../../../mathematics/NumberTheory/Chebyshev/TentPerronLine.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentResidueContributions`](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integrand](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/integrand--372e07b5abc65cbbfe6d8add.md) | 40 | `declaration-track:372e07b5abc65cbbfe6d8add5d0e923219fedbc87d64d0df4cc57359e8c57ac0` |
| 2 | `theorem` | [analyticAt_integrand](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/analyticat-integrand--560180c0f93ef4f669c00cbb.md) | 44 | `result-track:560180c0f93ef4f669c00cbb74edbae352df9c8ec49f42c6f4451eeef9f7da08` |
| 3 | `theorem` | [analyticAt_integrand_on_boundary](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/analyticat-integrand-on-boundary--3cb2e6b0eaa7877269a0c28d.md) | 51 | `result-track:3cb2e6b0eaa7877269a0c28d11f27e03f07b9be00975242ad23f6f32e7c28bb4` |
| 4 | `theorem` | [analyticAt_integrand_off_singularHead](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/analyticat-integrand-off-singularhead--424b0c5b5b2f78bafb1b2db7.md) | 58 | `result-track:424b0c5b5b2f78bafb1b2db7c87af3f3ad45e62046ac25a4dcdd676055abcd7a` |
| 5 | `theorem` | [intervalIntegrable_boundary_path](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/intervalintegrable-boundary-path--f7d0631ecfabd296d813f602.md) | 68 | `result-track:f7d0631ecfabd296d813f602d1f7da889c3e29e48feb7e5b996f9c97cb0e7533` |
| 6 | `theorem` | [intervalIntegrable_horizontal](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/intervalintegrable-horizontal--1d905318eae14a7e1e85b9da.md) | 78 | `result-track:1d905318eae14a7e1e85b9dacd6c235f13c88c2df134cb6c2114cbf48230c975` |
| 7 | `theorem` | [intervalIntegrable_vertical](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/intervalintegrable-vertical--277b64ba43e866cf4017762c.md) | 87 | `result-track:277b64ba43e866cf4017762c2351bbe79f773cede7117a19782868cba73571a9` |
| 8 | `def` | [rightSegment](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/rightsegment--f1cb39624e811781d22fe5e1.md) | 96 | `declaration-track:f1cb39624e811781d22fe5e14f556412688fc492af438aa38e8c012ecc7f7820` |
| 9 | `theorem` | [rightSegment_decomposition](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/rightsegment-decomposition--756e899ea942a39d7a5186d3.md) | 100 | `result-track:756e899ea942a39d7a5186d341de2a45790aaf9609f91ed42bb9651f5fbde1cb` |
| 10 | `theorem` | [rightSegment_tendsto_squareSource](../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/declarations/rightsegment-tendsto-squaresource--a92ba8f77ab565c213f3e0c2.md) | 114 | `result-track:a92ba8f77ab565c213f3e0c2c5e06dd3587376e2e2fd4b25e1f6d761160761c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

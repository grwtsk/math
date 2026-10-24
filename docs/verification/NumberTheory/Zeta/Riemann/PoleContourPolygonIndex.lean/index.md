# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PoleContourPolygonIndex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65023fe9db4deb510b333a492650b69ae835eb4e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65023fe9db4deb510b333a492650b69ae835eb4e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.RationalPolygonIndex`](../../../../../mathematics/Analysis/ComplexAnalysis/RationalPolygonIndex.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourWinding`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluate](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/declarations/evaluate--173586b8e77e07fb4d74df5d.md) | 27 | `declaration-track:173586b8e77e07fb4d74df5de33883f3ed34d0651e5cfa825140fc8fdc0fb7b4` |
| 2 | `theorem` | [evaluate_eq_some_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/declarations/evaluate-eq-some-iff--b516d63a72baa7fe9b63b016.md) | 31 | `result-track:b516d63a72baa7fe9b63b016794829a20bdcf4196ae3ea09271262b33e5456f1` |
| 3 | `theorem` | [imageIndex_computed](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/declarations/imageindex-computed--7989c59fec26d4854692641e.md) | 39 | `result-track:7989c59fec26d4854692641eed1d7d5b1ca06e2a00c3edc502d0e2fa2e27c5f7` |
| 4 | `theorem` | [sourceIndex_computed](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/declarations/sourceindex-computed--f201a1a4d666e22218db7054.md) | 49 | `result-track:f201a1a4d666e22218db705413f370971af0b671d0ff2f09c04b7e7335ea9c17` |
| 5 | `theorem` | [evaluate_sound](../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourPolygonIndex.lean/declarations/evaluate-sound--e76b3d25fc4493deea469bec.md) | 57 | `result-track:e76b3d25fc4493deea469bec575f7372608c3cd91d8b3441d3a2d4ced9153bce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

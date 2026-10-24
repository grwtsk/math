# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLocalZeroContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3743e01022b7680e5f779490ae148d3ce5d1d53",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3743e01022b7680e5f779490ae148d3ce5d1d53`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.IsolatedFiniteOrderContour`](../../../../../mathematics/Analysis/ComplexAnalysis/IsolatedFiniteOrderContour.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonContour`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonContour.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [circleIntegral_eq_canonical_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/circleintegral-eq-canonical-multiplicity--a45d8705e2bba074de1e2365.md) | 38 | `result-track:a45d8705e2bba074de1e236541ecd95b7f79d2d29012d2b1eb46f32ce5dd7fae` |
| 2 | `theorem` | [normalized_index_eq_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/normalized-index-eq-multiplicity--7c32c52ff45d9df7bdfc3832.md) | 50 | `result-track:7c32c52ff45d9df7bdfc3832a6505413d4b80b263a76710a80358b9ee548e68e` |
| 3 | `theorem` | [regular_extension_with_canonical_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/regular-extension-with-canonical-residue--39415846bd318cb6c279ca61.md) | 65 | `result-track:39415846bd318cb6c279ca61fe6c8b4779c423eb6c3b867a7c3cc3be04fc358c` |
| 4 | `theorem` | [centered_isolated_zero_geometry](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/centered-isolated-zero-geometry--e8d53a85e557939213f20090.md) | 78 | `result-track:e8d53a85e557939213f20090d698d8c69a3fb260de00c22e5981bf27bd593ed9` |
| 5 | `theorem` | [isolated_regionHead_eq_singleton](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/isolated-regionhead-eq-singleton--29eceb6376900668d31fc04f.md) | 92 | `result-track:29eceb6376900668d31fc04f22d94ca7fc4154a46936d624bf973ccfdb9c07fd` |
| 6 | `theorem` | [isolated_regionCount_eq_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/isolated-regioncount-eq-multiplicity--1b97e74b66151d3b7ddf4a35.md) | 110 | `result-track:1b97e74b66151d3b7ddf4a355ab7134bd84545f510d5de63ac2b3a6c3fc97c83` |
| 7 | `theorem` | [normalized_index_eq_regionCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/normalized-index-eq-regioncount--29bba64ad4006845b85f4489.md) | 121 | `result-track:29bba64ad4006845b85f4489a557f3b0d65505d43c75223a6ddc6b6034817874` |
| 8 | `theorem` | [concrete_root_multiplicity_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/concrete-root-multiplicity-one--f425cfbe93d5af55efd707a1.md) | 134 | `result-track:f425cfbe93d5af55efd707a10dc92ea297b65883a27ac76cf5321f6dbc78a080` |
| 9 | `theorem` | [local_zero_with_canonical_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/declarations/local-zero-with-canonical-weight--f070c6453d0b1d6b2e29d4d4.md) | 151 | `result-track:f070c6453d0b1d6b2e29d4d40b753d557d856059b7244f4eee6d6e7535fc9912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

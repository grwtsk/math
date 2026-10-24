# Verification target: GRWTSK.Algebra.LinearAlgebra.Determinant.RankOneQuadraticForm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9c8fcc057d97f18cfa7411a0ef9ed6841023f46",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9c8fcc057d97f18cfa7411a0ef9ed6841023f46`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.Matrix.SchurComplement` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [determinant_encoding](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/determinant-encoding--54620f4c744350ae12504783.md) | 29 | `result-track:54620f4c744350ae1250478390023fe38577f80301221897de80ce264705587e` |
| 2 | `abbrev` | [PickupIndex](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/pickupindex--434c0f30d85252bddb8be1a8.md) | 51 | `declaration-track:434c0f30d85252bddb8be1a8c720a84f0fd8288d318b24b74f8cbc01b08cadab` |
| 3 | `def` | [responseMatrix](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/responsematrix--057968dbb240499519373db2.md) | 54 | `declaration-track:057968dbb240499519373db2e53c816daa4e202a2f7bd3abcc5e4b99edad7302` |
| 4 | `def` | [coefficientRow](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/coefficientrow--a26ca0d0c31341a44199e4cf.md) | 58 | `declaration-track:a26ca0d0c31341a44199e4cfdfa93fd56456cb197a1f730d166fc25cdd19d56e` |
| 5 | `def` | [pickupDeterminant](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/pickupdeterminant--6c8fd0a5a985ae93cf257d38.md) | 61 | `declaration-track:6c8fd0a5a985ae93cf257d38b9f3e20f8abfdcf8726d084e4078d9ff2da3234d` |
| 6 | `theorem` | [pickupDeterminant_eq_energy](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/pickupdeterminant-eq-energy--d416e4da7e3c2fbb33cbdb38.md) | 65 | `result-track:d416e4da7e3c2fbb33cbdb38c3fd71b4745c567f97b655ca202897f3554eb17c` |
| 7 | `theorem` | [pickupDeterminant_bound_iff](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/pickupdeterminant-bound-iff--dd5fc03c499267578288159e.md) | 82 | `result-track:dd5fc03c499267578288159ed6a9f95aed1fc7f1adab2a8d93ef9cdd84fa510c` |
| 8 | `theorem` | [pickupDeterminant_poly_iff](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrenceab97171605624dbe46508b19.lean/declarations/pickupdeterminant-poly-iff--722e634ecc7a0c4da7a1dbef.md) | 88 | `result-track:722e634ecc7a0c4da7a1dbef26904f5f85ccd8275d2f13d2ea181a03c5e9b776` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

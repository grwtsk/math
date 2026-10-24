# Verification target: GRWTSK.Algebra.LinearAlgebra.RiemannHypothesis.Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85573ab7298fd5529d3fa644c9c3afb6ec55d26e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85573ab7298fd5529d3fa644c9c3afb6ec55d26e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseReflection](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phasereflection--d80f1893517bc5b3f44b5f7d.md) | 37 | `declaration-track:d80f1893517bc5b3f44b5f7d20f073f3f9bd89110edf3b576144a59e414e0d83` |
| 2 | `def` | [phaseRotation](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phaserotation--c80346f535d5f1aff3ace180.md) | 41 | `declaration-track:c80346f535d5f1aff3ace1806e08d0ecdf4f4dde874a178fc43b3c5599e880e1` |
| 3 | `def` | [phaseProjector](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phaseprojector--558b8de4d07ee112dde7027b.md) | 45 | `declaration-track:558b8de4d07ee112dde7027b6f619fc78537f64164dcf843245569ab9ac0968e` |
| 4 | `def` | [phaseLineVector](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phaselinevector--2c30ad928e156a91fae83b7b.md) | 49 | `declaration-track:2c30ad928e156a91fae83b7b5b702d7c7b21534dad7e441e064858d1911c2a4d` |
| 5 | `theorem` | [phase_reflection_is_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflection-is-hermitian--38d94245770b5a3287469836.md) | 52 | `result-track:38d94245770b5a3287469836cdf2b10720c4a425fb318f2279387c5eb5387693` |
| 6 | `theorem` | [phase_reflection_is_self_adjoint](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflection-is-self-adjoint--1c989e96172bbc2d8f9f38a5.md) | 59 | `result-track:1c989e96172bbc2d8f9f38a59ffacb536272580d797a6669a9ec0824a16a83be` |
| 7 | `theorem` | [phase_reflection_square](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflection-square--2458f0171b3ce2bedc292ef4.md) | 64 | `result-track:2458f0171b3ce2bedc292ef4441bc3f6e4b11bc618e9a6bd467c3f57710592a0` |
| 8 | `theorem` | [phase_reflection_involution](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflection-involution--ea1c9a01872a73512a63ecc7.md) | 72 | `result-track:ea1c9a01872a73512a63ecc7b3025cd5fe9a069bc4a8bca9b78a8a5a3093a500` |
| 9 | `theorem` | [phase_reflection_involution_of_norm](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflection-involution-of-norm--ba0a584c304c4f30e399d035.md) | 78 | `result-track:ba0a584c304c4f30e399d0358080fd6a173e33cbcd7cb7aa8d33661279354b87` |
| 10 | `theorem` | [phase_rotation_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-rotation-eq-diagonal--6c6aa87d97e57e35ea69a467.md) | 85 | `result-track:6c6aa87d97e57e35ea69a467ee517fc2aa2ed216ee5d69b9823c77a8481fd3ce` |
| 11 | `theorem` | [phase_rotation_unitary](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-rotation-unitary--ad25ded7602fd60059dda994.md) | 92 | `result-track:ad25ded7602fd60059dda994ba829ec335a5145d5ecd474c16de503c3c3412c0` |
| 12 | `theorem` | [phase_reflections_commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-reflections-commute-iff--7f06d17c85a83935fabd08ec.md) | 106 | `result-track:7f06d17c85a83935fabd08ec0ee7fcc3d36a8e25a28b22edfe9a9c3eae3d49c0` |
| 13 | `theorem` | [unit_phase_reflections_need_not_commute](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/unit-phase-reflections-need-not-commute--612ea55c1b6e8d01e288b416.md) | 122 | `result-track:612ea55c1b6e8d01e288b4164a80daf7333cff0321693453d8593713da5bac2e` |
| 14 | `theorem` | [phase_defect_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-defect-eq-det--58a2fb5a57e0baddf8caa80c.md) | 128 | `result-track:58a2fb5a57e0baddf8caa80c5f145d04ad1ea46743108c93993c682fb5209986` |
| 15 | `theorem` | [phase_defect_eq_trace_deficit](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-defect-eq-trace-deficit--f7deb090cfed3faaceab0f7b.md) | 136 | `result-track:f7deb090cfed3faaceab0f7ba3a164346d2c48b72c02622f98aca76637d7b176` |
| 16 | `theorem` | [phase_defect_eq_half_trace_square](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-defect-eq-half-trace-square--b4ca6efa700738700b053d4e.md) | 149 | `result-track:b4ca6efa700738700b053d4e8ef5527ec7d0b5f01dd43946e65e3efdcf6c9bbe` |
| 17 | `theorem` | [unit_phase_defect_dictionary](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/unit-phase-defect-dictionary--27186de2152bc81ac4431499.md) | 157 | `result-track:27186de2152bc81ac443149907e53f08aa1a45c9a7076ff4abb9e52500532cdf` |
| 18 | `theorem` | [phase_defect_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-defect-nonneg--b3ca59a9b0b83d47da3354a6.md) | 167 | `result-track:b3ca59a9b0b83d47da3354a6d50020c4e3f8d7ccaf4e3f6e588f079fbdfa19a0` |
| 19 | `theorem` | [phase_projector_is_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-is-hermitian--30b19ed89d980e4060fc99e4.md) | 171 | `result-track:30b19ed89d980e4060fc99e4242a29081813f70a309c0b4b2fbef0d3233152a7` |
| 20 | `theorem` | [phase_projector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-idempotent--5f2d9a263828979e53509073.md) | 177 | `result-track:5f2d9a263828979e53509073c967f9de2dbae6fdc49c0042f9015be9648574b4` |
| 21 | `theorem` | [phase_projector_mul_vec](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-mul-vec--e1767da3dd23a08711b054b1.md) | 185 | `result-track:e1767da3dd23a08711b054b118a20976edeb130a873e46734b88aa2aa4703cab` |
| 22 | `theorem` | [phase_projector_mul_vec_eq_smul_line](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-mul-vec-eq-smul-line--240fd1735b267e8343530554.md) | 194 | `result-track:240fd1735b267e8343530554ee502ed3f9a49633260c823875389e64b901db01` |
| 23 | `theorem` | [phase_projector_fixes_line](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-fixes-line--48b50568f54854796a6f11a3.md) | 207 | `result-track:48b50568f54854796a6f11a3ea92b85d00a0a43511c577a156c817b51cadbe65` |
| 24 | `theorem` | [phase_projector_range](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-range--c00d732890ba6c31aee962c6.md) | 217 | `result-track:c00d732890ba6c31aee962c64e68eedef9a8f056d2e401fbd08320cc58ec9953` |
| 25 | `theorem` | [phase_line_vector_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-line-vector-ne-zero--5d0e6a267fb73eed2d464e3c.md) | 228 | `result-track:5d0e6a267fb73eed2d464e3c17218bcd6f454c29dfa4aa69cddd475441adbb3d` |
| 26 | `theorem` | [phase_projector_rank_one](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variantc6638b9c4ac614685f286733e3f3049fcaaf4654cf3437efd9023b8b8efc0a90.lean/declarations/phase-projector-rank-one--61f79dc83b7c1673e983fd4b.md) | 234 | `result-track:61f79dc83b7c1673e983fd4be946746651aade1fa3d642b3a01c9682ee721518` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

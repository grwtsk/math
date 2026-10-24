# Verification target: GRWTSK.Algebra.LinearAlgebra.RiemannHypothesis.Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b92eef621713ca0d2639faaa06609747a79de08",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b92eef621713ca0d2639faaa06609747a79de08`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Notation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseReflection](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phasereflection--6f07751c732004f92aa07a13.md) | 29 | `declaration-track:6f07751c732004f92aa07a137958848c1d836b692d91663e73da9c8b7f12f62f` |
| 2 | `def` | [phaseRotation](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phaserotation--1d5dafb7310fd66f9a1852fc.md) | 33 | `declaration-track:1d5dafb7310fd66f9a1852fc78ea4be08659f61447b64a16e8d94e1114484557` |
| 3 | `def` | [phaseProjector](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phaseprojector--c246e09980703a9ecaa067f5.md) | 37 | `declaration-track:c246e09980703a9ecaa067f548b7f1fe52817f73c0429adb69dcf143955faf99` |
| 4 | `def` | [phaseLineVector](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phaselinevector--83daf4348432cf913896fed9.md) | 41 | `declaration-track:83daf4348432cf913896fed9b5f186c64d1b309676aaeb1962fbf7411c999c03` |
| 5 | `theorem` | [phase_reflection_is_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflection-is-hermitian--a925c5bcee0f181f43d146e0.md) | 44 | `result-track:a925c5bcee0f181f43d146e0e404b59c6b8ac22434a928db06c18d83398f0cb0` |
| 6 | `theorem` | [phase_reflection_is_self_adjoint](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflection-is-self-adjoint--d00850b9feba3c589b13dcf6.md) | 51 | `result-track:d00850b9feba3c589b13dcf6a16ab2a725241b6f82737701a6c59de97e1c1383` |
| 7 | `theorem` | [phase_reflection_square](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflection-square--8886f38d89fbf387771247ef.md) | 56 | `result-track:8886f38d89fbf387771247ef1b5c06eac7d6e887251d92d4693cb619729aa381` |
| 8 | `theorem` | [phase_reflection_involution](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflection-involution--0e78da4a4dd22255d3b1ce08.md) | 64 | `result-track:0e78da4a4dd22255d3b1ce087e8728a4ad51bdcbe560bfcabb234ead9ecae3b6` |
| 9 | `theorem` | [phase_reflection_involution_of_norm](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflection-involution-of-norm--7d440d3c5e1ca1ac1c682ee5.md) | 70 | `result-track:7d440d3c5e1ca1ac1c682ee52c4849a58ba73bd1664d2c40cc2761a9e1c47485` |
| 10 | `theorem` | [phase_rotation_eq_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-rotation-eq-diagonal--80b4351b7ced26f6850de17d.md) | 77 | `result-track:80b4351b7ced26f6850de17dfabe138281e682012b63f8ae395d6b911511cdc1` |
| 11 | `theorem` | [phase_rotation_unitary](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-rotation-unitary--2095615efced08d5096e3223.md) | 84 | `result-track:2095615efced08d5096e32232dc6f601f99c899f19c47cbec28b65069f3023bf` |
| 12 | `theorem` | [phase_reflections_commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-reflections-commute-iff--ab6a9b1cac8252bfd5f44417.md) | 98 | `result-track:ab6a9b1cac8252bfd5f444174d050405c673119a0543027d5e0860db3ee8757a` |
| 13 | `theorem` | [unit_phase_reflections_need_not_commute](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/unit-phase-reflections-need-not-commute--133dc4202e0a7c54a869ba83.md) | 114 | `result-track:133dc4202e0a7c54a869ba83c96ac1768903952678b12838d6de58b1958cd8e8` |
| 14 | `theorem` | [phase_defect_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-defect-eq-det--1881980e8349902925a9a4aa.md) | 120 | `result-track:1881980e8349902925a9a4aac2e90d8ccd933c584a5396cfc6573d26ad964708` |
| 15 | `theorem` | [phase_defect_eq_trace_deficit](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-defect-eq-trace-deficit--451aecad8eeddccbf8155dd2.md) | 128 | `result-track:451aecad8eeddccbf8155dd224d09d594bd6b95005c25033759ccd2872774c1f` |
| 16 | `theorem` | [phase_defect_eq_half_trace_square](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-defect-eq-half-trace-square--225e2bc1149ef6df28b37f54.md) | 141 | `result-track:225e2bc1149ef6df28b37f54ec2804675c5281076e3856cc81499723fb30e394` |
| 17 | `theorem` | [unit_phase_defect_dictionary](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/unit-phase-defect-dictionary--0d7428a3b9b01e34e5e790fa.md) | 149 | `result-track:0d7428a3b9b01e34e5e790fa63b7eeff5eb4575db62b61dc77982bf96fb8da09` |
| 18 | `theorem` | [phase_defect_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-defect-nonneg--e666f45b2d8ef9ca343fd5a9.md) | 159 | `result-track:e666f45b2d8ef9ca343fd5a948fb8cceb58d3e3f4ecae7c860a2ef1ba88b5457` |
| 19 | `theorem` | [phase_projector_is_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-is-hermitian--5cb24cbbf355e9e239e3f798.md) | 163 | `result-track:5cb24cbbf355e9e239e3f798dda3bf7e1f20ed759e4839c6d90b4d7a606e7238` |
| 20 | `theorem` | [phase_projector_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-idempotent--461bc5d81c428705a3a13cd3.md) | 169 | `result-track:461bc5d81c428705a3a13cd3f918a363f07644863e435876116782ca24534881` |
| 21 | `theorem` | [phase_projector_mul_vec](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-mul-vec--24f1579c2e3b65ce1fc22bb5.md) | 177 | `result-track:24f1579c2e3b65ce1fc22bb58b4b12e2a60e3805b3ed4a9117d73300fc41e27e` |
| 22 | `theorem` | [phase_projector_mul_vec_eq_smul_line](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-mul-vec-eq-smul-line--68860e2e944ea0f67c1e1d36.md) | 186 | `result-track:68860e2e944ea0f67c1e1d363f98840a8b3b51d4935479424e4cfea85cd4f529` |
| 23 | `theorem` | [phase_projector_fixes_line](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-fixes-line--557f869bbfcf33046f768123.md) | 199 | `result-track:557f869bbfcf33046f768123c68f05450b30b9856015e0b1565f97a0066d66d0` |
| 24 | `theorem` | [phase_projector_range](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-range--221b7d96cd1f8f8a12ac3cb1.md) | 209 | `result-track:221b7d96cd1f8f8a12ac3cb107f8a6ffb774a3d16f37e87808047961cc009627` |
| 25 | `theorem` | [phase_line_vector_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-line-vector-ne-zero--1aa70f0f363e8a28f1cb2ce2.md) | 220 | `result-track:1aa70f0f363e8a28f1cb2ce20bd0c2bf7570b43818174a823c35298498d168c3` |
| 26 | `theorem` | [phase_projector_rank_one](../../../../../mathematics/Algebra/LinearAlgebra/RiemannHypothesis/Variant02ebfe603d43d84e9e7c73a9c8327f302bb1cd95ecaa0b72d18b9a466118650e.lean/declarations/phase-projector-rank-one--263d45a07a165571cded7665.md) | 226 | `result-track:263d45a07a165571cded76658ca15d547879b7e1d233acb468b3751490287c16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

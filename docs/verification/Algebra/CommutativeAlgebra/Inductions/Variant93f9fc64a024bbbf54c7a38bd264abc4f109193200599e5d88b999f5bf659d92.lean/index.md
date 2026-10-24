# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Inductions.Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec2a475818b1afea591d0ab1b222929bca15d83",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec2a475818b1afea591d0ab1b222929bca15d83`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx--f1bfc639ec57e3073fa78bc8.md) | 38 | `declaration-track:f1bfc639ec57e3073fa78bc89ae5dbbb3f174cbb3e5dc2355f68d76486a693f6` |
| 2 | `theorem` | [coeff_divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/coeff-divx--9adc24f39474030dddc3a034.md) | 42 | `result-track:9adc24f39474030dddc3a03463088828cf7088ea578c565269369ced43bdb392` |
| 3 | `theorem` | [divX_mul_X_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-mul-x-add--7c8c476d25b7e305bf49d57b.md) | 45 | `result-track:7c8c476d25b7e305bf49d57b1db5936bfdaabdf5f0205b99a5e95b74be380857` |
| 4 | `theorem` | [X_mul_divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/x-mul-divx-add--de1d36135465637e40dfa3bb.md) | 49 | `result-track:de1d36135465637e40dfa3bb8fdce42de2b96c6aad26bf73f20d3bb025b76b56` |
| 5 | `theorem` | [divX_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-c--ba535ebfc5bb3d49b9bf146f.md) | 53 | `result-track:ba535ebfc5bb3d49b9bf146f9d127af6fdb8f946ac4f5423e91d418e6e72a5bd` |
| 6 | `theorem` | [divX_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-eq-zero-iff--82da971bd52878345cb99d85.md) | 56 | `result-track:82da971bd52878345cb99d85d3fe93d11ff6273c162b41835f9ed14635795e22` |
| 7 | `theorem` | [divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-add--411c92937893553adb8885cb.md) | 59 | `result-track:411c92937893553adb8885cb7d020757224bbb3b292de344e3130e43dac6b86f` |
| 8 | `theorem` | [divX_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-zero--36fd2ed87d3ac16a4dc45256.md) | 63 | `result-track:36fd2ed87d3ac16a4dc45256caa8b19a60ead4ef40f1c90235a335c306477ce5` |
| 9 | `theorem` | [divX_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-one--c6401786f566ae12020f0314.md) | 66 | `result-track:c6401786f566ae12020f03144ac1614b19d46a74575dd7dec55a6d3d03488c32` |
| 10 | `theorem` | [divX_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-c-mul--3ff359e40fe76bf4cc08d1e4.md) | 71 | `result-track:3ff359e40fe76bf4cc08d1e4866d8cbe8726b1a393265fe84574279a3fd085c6` |
| 11 | `theorem` | [divX_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-x-pow--9c368fb4a5fbc757d32c8954.md) | 75 | `result-track:9c368fb4a5fbc757d32c895434e60c5993c935af2a1fb0736e67d4654585aa56` |
| 12 | `def` | [divX_hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-hom--f0e8d6e880bd24e6724cdec4.md) | 83 | `declaration-track:f0e8d6e880bd24e6724cdec42787f066cc8e3546bd9205d976d517e8fdc8b8fa` |
| 13 | `theorem` | [divX_hom_toFun](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-hom-tofun--19da6c21c65c8618cda81686.md) | 88 | `result-track:19da6c21c65c8618cda81686793863fc3ccc5e6a76cf38b08e70438217846488` |
| 14 | `theorem` | [natDegree_divX_eq_natDegree_tsub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/natdegree-divx-eq-natdegree-tsub-one--ba013de279c4e3be014b633f.md) | 90 | `result-track:ba013de279c4e3be014b633f58591002e596239f1c380c6af2e10a23bc9926d2` |
| 15 | `theorem` | [natDegree_divX_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/natdegree-divx-le--d97fc2b63414d2dbbb01b182.md) | 100 | `result-track:d97fc2b63414d2dbbb01b18228298c9d373fdfd5d83927b5f8d92b3ef6b43765` |
| 16 | `theorem` | [divX_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/divx-c-mul-x-pow--19811601961d84e8a62f671b.md) | 103 | `result-track:19811601961d84e8a62f671b759c53858e31a8bab7716aa0549aac5585f58860` |
| 17 | `theorem` | [degree_divX_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/degree-divx-lt--45030823bda60457c8aba55a.md) | 106 | `result-track:45030823bda60457c8aba55a9e213b579336572bc8cb5f86f942bd208b1b4513` |
| 18 | `def` | [recOnHorner](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/reconhorner--83d5cdd9df3417ef1f14e40f.md) | 134 | `declaration-track:83d5cdd9df3417ef1f14e40f02bc85c12ba3225ba40c859e78f96d443ab1d117` |
| 19 | `theorem` | [degree_pos_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/degree-pos-induction-on--c559e73e2a1074478715ab3a.md) | 164 | `result-track:c559e73e2a1074478715ab3a50435aa372bb0c21af42581b9e07a9de941fd183` |
| 20 | `theorem` | [natDegree_ne_zero_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variant93f9fc64a024bbbf54c7a38bd264abc4f109193200599e5d88b999f5bf659d92.lean/declarations/natdegree-ne-zero-induction-on--a337d7ec1ac65e1b3354ac2c.md) | 194 | `result-track:a337d7ec1ac65e1b3354ac2cdfce860a1ed292e3ee65cc41681b3b9314186dac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

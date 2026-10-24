# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AuditReconstructed.Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc51d0223ec17b1c3d5913552a7d2dd7ba9c3a3b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.ZMod` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNumbers` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PlaneCode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/planecode--632a5d76ab79f773eab82714.md) | 27 | `declaration-track:632a5d76ab79f773eab82714d609fcb5fcd96a064976e999d5d01c12af5bdf03` |
| 2 | `def` | [encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/encode--0a748d35a130af293e77ad55.md) | 34 | `declaration-track:0a748d35a130af293e77ad554e7de8242ac9414534ffd08840764c7a1b601374` |
| 3 | `def` | [interpret](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/interpret--dc8ddf896e44be486e821d56.md) | 38 | `declaration-track:dc8ddf896e44be486e821d56ce5b7bd6d1efe205326da490e2297a4e223610c8` |
| 4 | `def` | [Supported](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/supported--ba75be6ca69f362b3ad997f1.md) | 42 | `declaration-track:ba75be6ca69f362b3ad997f1b3b63cd8717950387b303187b8ae3c0053f7bbd4` |
| 5 | `def` | [coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/coefficients--fff8d82b11c4551cdfd7cda3.md) | 45 | `declaration-track:fff8d82b11c4551cdfd7cda3563f0150f0ec9b5ad06d7bb88720e184af8f46fd` |
| 6 | `def` | [operation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation--b658c5e8a6c6dd2d50044666.md) | 49 | `declaration-track:b658c5e8a6c6dd2d50044666c101f31509a836b775b6305cb7e6091f52d0ba89` |
| 7 | `def` | [move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/move--ab39a39eab10fdcf9a7d5f26.md) | 54 | `declaration-track:ab39a39eab10fdcf9a7d5f2694dace611c21b58d3cb62e0f08b0cfab5e96c68d` |
| 8 | `theorem` | [operation_eq_coefficients](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation-eq-coefficients--6acb50ec810aae6ae042409b.md) | 61 | `result-track:6acb50ec810aae6ae042409b055b2b83f73707debd194332ba0f5584c8259faa` |
| 9 | `theorem` | [interpret_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/interpret-encode--9a09caa4c4c4217738512931.md) | 70 | `result-track:9a09caa4c4c42177385129315fa248af07564b89dc3749618c30783ad9ad93f4` |
| 10 | `theorem` | [interpret_move](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/interpret-move--07f7b1f95c02d818a09065f3.md) | 74 | `result-track:07f7b1f95c02d818a09065f38191e9333603a99615bafdba043293966ed41e56` |
| 11 | `theorem` | [interpret_move_encode](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/interpret-move-encode--62357b0ef860c8c3409f9b25.md) | 80 | `result-track:62357b0ef860c8c3409f9b253eb0b217bf29be60e76d8d65245157360a085cf4` |
| 12 | `def` | [quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/quadratic--c253f119481e9a384095d069.md) | 85 | `declaration-track:c253f119481e9a384095d069c788d177afdbc4e5c778da024d7d13dff892d3be` |
| 13 | `theorem` | [operation_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation-quadratic--dfdb4fbd3a198110e2f5c872.md) | 88 | `result-track:dfdb4fbd3a198110e2f5c87260c2404d63a56dc065025354fda8d8d217085868` |
| 14 | `theorem` | [move_quadratic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/move-quadratic--8d5b1823707558e52b5a22a5.md) | 96 | `result-track:8d5b1823707558e52b5a22a5fb0e3c3761890c6725cebdcdb9a815320ec029af` |
| 15 | `def` | [reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/reflection--379e5c68702d7a45171be760.md) | 101 | `declaration-track:379e5c68702d7a45171be7604475bdd4a26ed13507bc32a6c1e39f46e0caaf39` |
| 16 | `theorem` | [reflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/reflection-sq--40f5d8b538366554c5fe2dfc.md) | 105 | `result-track:40f5d8b538366554c5fe2dfcdd59f10ddb5a7f4c9e604d14870ff39e67beaae9` |
| 17 | `theorem` | [reflection_reversal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/reflection-reversal--b802b7aeda3e310fc9c12b7c.md) | 109 | `result-track:b802b7aeda3e310fc9c12b7ce4f12d4be9268bdd09a0a5fd9e627af742a660f5` |
| 18 | `theorem` | [operation_inverse](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation-inverse--883a865953d85611e4510a44.md) | 115 | `result-track:883a865953d85611e4510a44ef7862c9242a9c2ac56ce3edbb6fb001ec94a426` |
| 19 | `def` | [phaseReflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phasereflection--d0b88988de0c7a0d1d7ca206.md) | 122 | `declaration-track:d0b88988de0c7a0d1d7ca20674ace13d87b7555cb88b47e8ad2f0370656ed776` |
| 20 | `theorem` | [phaseReflection_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phasereflection-sq--b0f3e0e5c6f4f76f1eb289d7.md) | 126 | `result-track:b0f3e0e5c6f4f76f1eb289d7fd7f18c3bce23aaf36c7939001f2719d4711c4e7` |
| 21 | `theorem` | [coefficients_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/coefficients-one--9e4a284918c561ccc73dfb73.md) | 136 | `result-track:9e4a284918c561ccc73dfb7335e95bd425c0adaa25664e0b5f06f428332c088a` |
| 22 | `theorem` | [operation_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation-one--d5003fade0e5b8d9d2c4dee0.md) | 140 | `result-track:d5003fade0e5b8d9d2c4dee0b6742d924a88d6ce02a76c38ba87fab1e1bd994e` |
| 23 | `def` | [IntegralAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/integralat--d8b46f9603d0c40cb6e1bf44.md) | 154 | `declaration-track:d8b46f9603d0c40cb6e1bf445cf89a421d87f32f926b9e47bb59ba1370719758` |
| 24 | `def` | [IntegralVector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/integralvector--9d8b252d86f14549ca0cd7bf.md) | 158 | `declaration-track:9d8b252d86f14549ca0cd7bfc14cca60bde3081bf5c80afcebe1ff3aee0d26da` |
| 25 | `theorem` | [operation_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/operation-integral--0a9b205de377317f0379d998.md) | 161 | `result-track:0a9b205de377317f0379d9986b07e73fbc7aadbf09b3801aa4d210e440d407aa` |
| 26 | `theorem` | [integralAt_iff_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/integralat-iff-preserves-integral--79c42a6d90fb4c3645acc2e7.md) | 178 | `result-track:79c42a6d90fb4c3645acc2e7d2c095aef6f93e6c40423604354a4aa8bdf8f4a8` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/instance--fad3b61871516cde799136e7.md) | 192 | `declaration-track:fad3b61871516cde799136e719eb5424f49b412b66bc041cd85b67d74fe0cccc` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/instance--6c5c6204a0174a6dc5e727c9.md) | 193 | `declaration-track:6c5c6204a0174a6dc5e727c92399a2a3c54a0a181bc95591a6ecca221add6a61` |
| 29 | `theorem` | [coefficients_two_rat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/coefficients-two-rat--d9dd45790909a07aef688e87.md) | 196 | `result-track:d9dd45790909a07aef688e87e89c3a6df14d7dab7f66b5e5aae1761c8b7baa97` |
| 30 | `theorem` | [phase_two_supported_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-two-supported-five--e33344204d6544154a82fc22.md) | 201 | `result-track:e33344204d6544154a82fc2242d2c4188aa56602c8144a1b5b5d9b37c51962f0` |
| 31 | `theorem` | [coefficients_two_five_diagonal_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/coefficients-two-five-diagonal-norm--33c3d18032c2fd5dd40c8255.md) | 205 | `result-track:33c3d18032c2fd5dd40c82554429e053ca0361763f884eec4218619e6af1fd25` |
| 32 | `theorem` | [phase_two_five_not_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-two-five-not-integral--3c19c917c9f78e91a08dd127.md) | 216 | `result-track:3c19c917c9f78e91a08dd1277fa2b54ea23d04d6d7213f1d9c2dcb67df573d4d` |
| 33 | `theorem` | [phase_two_not_supported_mod_five](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-two-not-supported-mod-five--d0c015722d19706cf82f3baf.md) | 223 | `result-track:d0c015722d19706cf82f3bafda9664e8e4ef43168d9e88cf6b0fb1ea14251ff9` |
| 34 | `theorem` | [phase_one_not_supported_mod_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-one-not-supported-mod-two--c12251b747ad24755cc55fc5.md) | 228 | `result-track:c12251b747ad24755cc55fc52e6470bfb1390188ad8182a4b802757814988127` |
| 35 | `theorem` | [phase_one_supported_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-one-supported-two--9de1ead1e4c54a62c8ded3a2.md) | 233 | `result-track:9de1ead1e4c54a62c8ded3a2a78f51ca9bbd38d45f710b030cb512e2281cebbb` |
| 36 | `theorem` | [phase_one_two_denominator_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-one-two-denominator-norm--4e968c3f363e54c73936f826.md) | 237 | `result-track:4e968c3f363e54c73936f8267e6b0c655a042acf0d23bec47972ef3bf2ea856f` |
| 37 | `theorem` | [phase_one_two_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-one-two-integral--52d2a8ac44a323c5db14093a.md) | 242 | `result-track:52d2a8ac44a323c5db14093a6aafbf56e47144a7e6dcdc2c6a18bb26d03a94c1` |
| 38 | `theorem` | [phase_two_five_basis_nonintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-two-five-basis-nonintegral--9df8df5c10862986069fce1e.md) | 249 | `result-track:9df8df5c10862986069fce1eefc3e3e811b73ce0fa3b651653bc1bfad724718c` |
| 39 | `theorem` | [phase_one_two_preserves_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AuditReconstructed/Variant3a3206c01642fb1fd8a88c9cde09168d509f139d5575b94bf89ef109e0750c0b.lean/declarations/phase-one-two-preserves-integral--74133633f9dac7824f20e151.md) | 255 | `result-track:74133633f9dac7824f20e1517824a19a878f03c2ea9782ae9cc3fe21d2cc10b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

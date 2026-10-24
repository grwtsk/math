# Verification target: GRWTSK.Analysis.Isometry.Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa979ab4be06d50929e4904ef7426c250ceb7152",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa979ab4be06d50929e4904ef7426c250ceb7152`.

Source path: `GRWTSK/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation--82578c0007a1f49d8a3e86ba.md) | 49 | `declaration-track:82578c0007a1f49d8a3e86ba6f81ee51681420c53d6b11a34c0e016c4adc3c87` |
| 2 | `theorem` | [rotation_apply](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation-apply--2dde5a3aab6997fac5626d5e.md) | 58 | `result-track:2dde5a3aab6997fac5626d5e21b85ec5f6f0a73a45b60277fa9dec83ddcf47e3` |
| 3 | `theorem` | [rotation_symm](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation-symm--b62e710eb271b5eba3cbd803.md) | 63 | `result-track:b62e710eb271b5eba3cbd803f4f582b1d94d38ac002b393c4fcb9a676d316b1c` |
| 4 | `theorem` | [rotation_trans](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation-trans--f8f8a26341086cc90f07e98d.md) | 68 | `result-track:f8f8a26341086cc90f07e98d4fe6c93a39165be4cda2c393cdd5c83c68dc8784` |
| 5 | `theorem` | [rotation_ne_conjLie](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation-ne-conjlie--a3e093773d013f95faac0865.md) | 73 | `result-track:a3e093773d013f95faac086575e0e28cc879762412dcb5adc83a448c451974ae` |
| 6 | `def` | [rotationOf](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotationof--b14345097bf05b5a486b1055.md) | 85 | `declaration-track:b14345097bf05b5a486b1055fdd389d7f41ef15a28a6aa4d48509be382189a86` |
| 7 | `theorem` | [rotationOf_rotation](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotationof-rotation--4ac4ebfc5996807faf235818.md) | 90 | `result-track:4ac4ebfc5996807faf235818ee20909d90cd0a9726302af9364fcfd03a55b263` |
| 8 | `theorem` | [rotation_injective](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/rotation-injective--b7ad7f9ae37d99e80a6e5699.md) | 94 | `result-track:b7ad7f9ae37d99e80a6e5699eba5aed2bf7b9ee68f898967bf7b3827abf9792f` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq--441b2bf8d09f5874a1e4518d.md) | 98 | `result-track:441b2bf8d09f5874a1e4518d68798dba0c2e0857da50b7001cadffb5b6d28e92` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re--ea17f1bddd0520ba52683c45.md) | 104 | `result-track:ea17f1bddd0520ba52683c455d92319fb40adefc7b587f91f87cfc54571528d7` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linearisometry-im-apply-eq-im--e54479d02c20ea8d7ba7e7e2.md) | 112 | `result-track:e54479d02c20ea8d7ba7e7e2750c27aef6d4c8aafed1b1a71555a9eb78f50803` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linearisometry-re-apply-eq-re--e2dc0e46e4a60b690e68de82.md) | 127 | `result-track:e2dc0e46e4a60b690e68de828f9af1e97b5b541066a64004848fe8a7eaeba583` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linear-isometry-complex-aux--54afe9f4f3aaddfebad66115.md) | 133 | `result-track:54afe9f4f3aaddfebad661152e9082db93c950485d9482e63f4c05adc72986d1` |
| 14 | `theorem` | [linear_isometry_complex](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linear-isometry-complex--c0f49bb16984c3d2257c1503.md) | 150 | `result-track:c0f49bb16984c3d2257c15036b499cac67441eb35a8fa98f4f589c4a1d2986d0` |
| 15 | `theorem` | [toMatrix_rotation](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/tomatrix-rotation--f9e7736830c63d2b3ce83807.md) | 162 | `result-track:f9e7736830c63d2b3ce83807da77ab8a9cb237dc61ba417feb63ad7bf6c60d28` |
| 16 | `theorem` | [det_rotation](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/det-rotation--e9362f508adc8fa331b5a459.md) | 172 | `result-track:e9362f508adc8fa331b5a45921ead9e8963ce6545415f245372ba774d7241572` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../mathematics/Analysis/Isometry/Variantf34c324ead783115048d8ad54cd3253d16f785c53f24f2aca5acece8f2e35ee1.lean/declarations/linearequiv-det-rotation--02e95c2788edb50ef16a391e.md) | 179 | `result-track:02e95c2788edb50ef16a391eaf1277a1d0455f2c3198a6113a210d69927151a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.Orientation.Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0584920226a31acbc029a4b357fe0e042dcf997",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/index.md) · [Full source](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0584920226a31acbc029a4b357fe0e042dcf997`.

Source path: `GRWTSK/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Orientation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_to_matrix_orthonormalBasis_of_same_orientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/det-to-matrix-orthonormalbasis-of-same-orientation--9b6b3e7cfeb58c9f1b6b4b26.md) | 52 | `result-track:9b6b3e7cfeb58c9f1b6b4b2686ae6e2d5bd5ca705a45442c703e20e865324011` |
| 2 | `theorem` | [det_to_matrix_orthonormalBasis_of_opposite_orientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/det-to-matrix-orthonormalbasis-of-opposite-orientation--9175044cc113700bb9d601fe.md) | 62 | `result-track:9175044cc113700bb9d601fe4de014be8dc2f969c79193dc375bc1d994dbb422` |
| 3 | `theorem` | [same_orientation_iff_det_eq_det](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/same-orientation-iff-det-eq-det--1049e73fa03dd1439cef3695.md) | 72 | `result-track:1049e73fa03dd1439cef3695e44b7a120cda3410d2112d5e46b146078066d186` |
| 4 | `theorem` | [det_eq_neg_det_of_opposite_orientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/det-eq-neg-det-of-opposite-orientation--e2c553383622afd702dcbd19.md) | 86 | `result-track:e2c553383622afd702dcbd19cd46fb819c3e01d8d1c7d1f9dfc15bb58cbf894e` |
| 5 | `theorem` | [orthonormal_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/orthonormal-adjusttoorientation--e058026b4d1b886182869415.md) | 97 | `result-track:e058026b4d1b886182869415204f33e0fc85f28acc95b83eafc625b93c4c9c5b` |
| 6 | `def` | [adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/adjusttoorientation--44399ccd91d900b3ca54020b.md) | 104 | `declaration-track:44399ccd91d900b3ca54020b6506c24e87d7c3f5c240c19078cf5e5dc30d74c2` |
| 7 | `theorem` | [toBasis_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/tobasis-adjusttoorientation--0b8dabb97ba1b68b9d0c60ca.md) | 107 | `result-track:0b8dabb97ba1b68b9d0c60ca1e87f2e1ade32f6ae08873b151ffa1304b18a8c2` |
| 8 | `theorem` | [orientation_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/orientation-adjusttoorientation--1f1ad6e410fb2b3267e43830.md) | 113 | `result-track:1f1ad6e410fb2b3267e43830e645c90f9f931d95386d4962bc5ccc28f35d29d8` |
| 9 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--37cd2760747751a0bb2a441b.md) | 119 | `result-track:37cd2760747751a0bb2a441b6e7aa6a58ee79c237677e33ef7997abbc3efdafc` |
| 10 | `theorem` | [det_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/det-adjusttoorientation--f6b28c9d3af9f3c35d758b36.md) | 124 | `result-track:f6b28c9d3af9f3c35d758b36aa1a881a67396259375b4d80b15ad676ff3d8bf5` |
| 11 | `theorem` | [abs_det_adjustToOrientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/abs-det-adjusttoorientation--8191cfc12f395fd7dec471c3.md) | 129 | `result-track:8191cfc12f395fd7dec471c3c9cc460e519907f251eaf93479b3b8b2ee0607e1` |
| 12 | `def` | [finOrthonormalBasis](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/finorthonormalbasis--daee5241f858270321aec425.md) | 144 | `declaration-track:daee5241f858270321aec425b61b03bbc655c0ac2e60b0783f4f80304709c4e5` |
| 13 | `theorem` | [finOrthonormalBasis_orientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/finorthonormalbasis-orientation--e932041698c48ae423056fc7.md) | 152 | `result-track:e932041698c48ae423056fc79818a0125552ecae06fd156eb85da5b0977a3b02` |
| 14 | `theorem` | [volumeForm_zero_pos](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-zero-pos--4726aa4df3b22e2ed1fad934.md) | 175 | `result-track:4726aa4df3b22e2ed1fad9347839cacb3f9195fae951d11f83d6eadf14179d3c` |
| 15 | `theorem` | [volumeForm_zero_neg](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-zero-neg--9d615c4b9398b9162b26b898.md) | 180 | `result-track:9d615c4b9398b9162b26b8984a12c7edd78c7ecf43df322e6792e2207c5b0642` |
| 16 | `theorem` | [volumeForm_robust](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-robust--d7879000bab6a028b5bc2d8f.md) | 193 | `result-track:d7879000bab6a028b5bc2d8f180eaf44d7f38f260b48118012becf8d8e70e498` |
| 17 | `theorem` | [volumeForm_robust_neg](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-robust-neg--f45a75df1acd9f801f638fda.md) | 205 | `result-track:f45a75df1acd9f801f638fda50c6049d6db3c940f0bd9bb8a7e24f791d5dbac0` |
| 18 | `theorem` | [volumeForm_neg_orientation](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-neg-orientation--d57f985ef84839dda8766d75.md) | 218 | `result-track:d57f985ef84839dda8766d75fa714213fa279ec669e8656b01ffd4d3e4d4eba8` |
| 19 | `theorem` | [volumeForm_robust'](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-robust--ee95a6e928afefe094fd86ec.md) | 230 | `result-track:ee95a6e928afefe094fd86ec106933fed109f6b154c46cfa73710dc3d096e59d` |
| 20 | `theorem` | [abs_volumeForm_apply_le](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/abs-volumeform-apply-le--a4cddb86701f8ef7fe36c0fd.md) | 240 | `result-track:a4cddb86701f8ef7fe36c0fd81251795b0771856205c11eefacde615afe5a1ef` |
| 21 | `theorem` | [volumeForm_apply_le](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-apply-le--2b13757ecbff3168b96944a2.md) | 255 | `result-track:2b13757ecbff3168b96944a2fdff3975139f47fea65f6234b0c4e8c91b56eb0d` |
| 22 | `theorem` | [abs_volumeForm_apply_of_pairwise_orthogonal](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/abs-volumeform-apply-of-pairwise-orthogonal--eb88ce20ef9f2a78b4cc2f64.md) | 261 | `result-track:eb88ce20ef9f2a78b4cc2f6488d6500d27d9c3c72a23a8007712fc4b5affa14b` |
| 23 | `theorem` | [abs_volumeForm_apply_of_orthonormal](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/abs-volumeform-apply-of-orthonormal--12bbbdfc82ef508348a36c3f.md) | 285 | `result-track:12bbbdfc82ef508348a36c3f28bb63953c3e840b5a59774113cc56c774f47557` |
| 24 | `theorem` | [volumeForm_map](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-map--361492f6f0873cfa0996ea79.md) | 289 | `result-track:361492f6f0873cfa0996ea7991b1ae9051a7e1f8b451a04a899d1bb20b0d5c0d` |
| 25 | `theorem` | [volumeForm_comp_linearIsometryEquiv](../../../../mathematics/Analysis/Orientation/Variant39b013c980f4bc3420f0a8acb07d98988716ef520df7f8dddacc045656219f16.lean/declarations/volumeform-comp-linearisometryequiv--e425414ad59f05fa48c42cc3.md) | 305 | `result-track:e425414ad59f05fa48c42cc3d6558c78a7f72649866f64d7a955d0d661212512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

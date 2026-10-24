# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccfbe4006693717d614547d1aec84156deb42fd4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccfbe4006693717d614547d1aec84156deb42fd4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Orientation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_to_matrix_orthonormalBasis_of_same_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/det-to-matrix-orthonormalbasis-of-same-orientation--a809137e0868cc401463d703.md) | 54 | `result-track:a809137e0868cc401463d7033eca5d3d6d9939e051294d9813781c6416ddcd34` |
| 2 | `theorem` | [det_to_matrix_orthonormalBasis_of_opposite_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/det-to-matrix-orthonormalbasis-of-opposite-orientation--d6fdd42a0b45191b476813f1.md) | 65 | `result-track:d6fdd42a0b45191b476813f1694df5420b8879cd7f7b850ad06bab1fc1c8f4ce` |
| 3 | `theorem` | [same_orientation_iff_det_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/same-orientation-iff-det-eq-det--be921041c2f76cb77221aeea.md) | 76 | `result-track:be921041c2f76cb77221aeea72ea2ac313a708055ccdaf53bf9a6c6f05c7adde` |
| 4 | `theorem` | [det_eq_neg_det_of_opposite_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/det-eq-neg-det-of-opposite-orientation--1bfd22569a483cf798c5c558.md) | 91 | `result-track:1bfd22569a483cf798c5c558930f225bebd1bd67af9940ebc9015e20dab2e75b` |
| 5 | `theorem` | [orthonormal_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/orthonormal-adjusttoorientation--6d03359ce5a52112cbd4871b.md) | 103 | `result-track:6d03359ce5a52112cbd4871b81594459c11deed152d132a08474f80b2f13fa63` |
| 6 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/adjusttoorientation--e31b97c01c59faf39d01c193.md) | 111 | `declaration-track:e31b97c01c59faf39d01c1938be481b190c3702a71a391d16be70fe0f0ad40b3` |
| 7 | `theorem` | [toBasis_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/tobasis-adjusttoorientation--dfdb8f6ef91825c68323ab1b.md) | 115 | `result-track:dfdb8f6ef91825c68323ab1b25d1efb4fecd07cb862eb6db33240a18c64639de` |
| 8 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/orientation-adjusttoorientation--dfe47e73311fc371aa320854.md) | 122 | `result-track:dfe47e73311fc371aa32085402fe8a76f62649b77a6bae97e54168bd15247d45` |
| 9 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--ee789329bc928549900817b4.md) | 129 | `result-track:ee789329bc928549900817b465c3f1a0bd2150397e5f9dc2a49b3318afb63787` |
| 10 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/det-adjusttoorientation--0c42bf9a4df4c3004826874f.md) | 135 | `result-track:0c42bf9a4df4c3004826874fc298fb6c8ea38b2a863ae2bbce5555e8e40e01bd` |
| 11 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/abs-det-adjusttoorientation--f5ed0452e1a6449d22084f27.md) | 141 | `result-track:f5ed0452e1a6449d22084f277deed80e30ac395297349c94c0e478c3120ec062` |
| 12 | `def` | [finOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/finorthonormalbasis--f9b1d7303af3c8b50af0a2eb.md) | 157 | `declaration-track:f9b1d7303af3c8b50af0a2eb9feec413fa6867f35499043e8d39c07604fa9a06` |
| 13 | `theorem` | [finOrthonormalBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/finorthonormalbasis-orientation--2b3a52cd489179028e94a059.md) | 166 | `result-track:2b3a52cd489179028e94a059f53881b83d8100e32837b0002e87d30e42f17fc6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/instance--6d8bff5589e8e4a5e0089f38.md) | 179 | `declaration-track:6d8bff5589e8e4a5e0089f38f7ddc8fb48d9055ffa5660b8eae85fc025e4d97b` |
| 15 | `theorem` | [volumeForm_zero_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-zero-pos--314d92a2d22039b2eb611ef2.md) | 193 | `result-track:314d92a2d22039b2eb611ef2179a629af9190c13abcf3615f148b2271c80cff4` |
| 16 | `theorem` | [volumeForm_zero_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-zero-neg--b9c9badef7fee77d1ed354f6.md) | 199 | `result-track:b9c9badef7fee77d1ed354f646a8da23f22902ae3b6590b54bba8d5afbf31c24` |
| 17 | `theorem` | [volumeForm_robust](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-robust--e4be69f899a87d7858893299.md) | 213 | `result-track:e4be69f899a87d7858893299a21541fbdcd509cda3fac42ca48d8b79c644bd79` |
| 18 | `theorem` | [volumeForm_robust_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-robust-neg--d5d1288e535ec00e63e2484d.md) | 226 | `result-track:d5d1288e535ec00e63e2484d19d11e0f96afc5e55636b03ac657869badd09156` |
| 19 | `theorem` | [volumeForm_neg_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-neg-orientation--7d801d96ac904c298a5bc769.md) | 240 | `result-track:7d801d96ac904c298a5bc76998f8b2bfed6ff9dfc12dbf29fc513cf16f000642` |
| 20 | `theorem` | [volumeForm_robust'](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-robust--a3324d7c966d159d4e76601e.md) | 254 | `result-track:a3324d7c966d159d4e76601ec59c82b2a9596671f337e3b40335e07508b8f991` |
| 21 | `theorem` | [abs_volumeForm_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/abs-volumeform-apply-le--d7885e57c6e828992dda7c95.md) | 265 | `result-track:d7885e57c6e828992dda7c955af5656fdcb93d95543088e7ee623f65ef69cc51` |
| 22 | `theorem` | [volumeForm_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-apply-le--4c207ecb41e04adf16bcf5a5.md) | 281 | `result-track:4c207ecb41e04adf16bcf5a5e6c25d2e4ec161a4edfae46c9d4f8ef0d5e14176` |
| 23 | `theorem` | [abs_volumeForm_apply_of_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/abs-volumeform-apply-of-pairwise-orthogonal--e705ee54dc54c22f353b004f.md) | 288 | `result-track:e705ee54dc54c22f353b004fc0dbd5c9bbaafaf6d1c9746f13dfe5bdd10fb64f` |
| 24 | `theorem` | [abs_volumeForm_apply_of_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/abs-volumeform-apply-of-orthonormal--0afc3a08c7d951d023079485.md) | 313 | `result-track:0afc3a08c7d951d02307948510cc52cc572caa380ec6b513832d649c80e1e046` |
| 25 | `theorem` | [volumeForm_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-map--de514649c2abdd62921853c9.md) | 318 | `result-track:de514649c2abdd62921853c9feb56a28a1031e25bc53ce310e13055234de47e1` |
| 26 | `theorem` | [volumeForm_comp_linearIsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant4dad84daef0216c76e6d6cb039894834b50afbb39cafec8ca1a9f088a7a622ba.lean/declarations/volumeform-comp-linearisometryequiv--1abb57a50e9aeb13eab348c3.md) | 335 | `result-track:1abb57a50e9aeb13eab348c3e0bd0db1c78425d69a7cc454c0c780496ac88c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

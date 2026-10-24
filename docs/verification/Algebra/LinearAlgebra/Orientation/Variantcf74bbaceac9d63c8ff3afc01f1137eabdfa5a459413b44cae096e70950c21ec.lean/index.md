# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca3d00f80ee906cc33f4da99cea3fd278b89d23",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca3d00f80ee906cc33f4da99cea3fd278b89d23`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Orientation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_to_matrix_orthonormalBasis_of_same_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/det-to-matrix-orthonormalbasis-of-same-orientation--11dbcff6192c65ad0005ad3d.md) | 62 | `result-track:11dbcff6192c65ad0005ad3d6ea70f1a5c0063990302fac0cd75dc17e5bd73a7` |
| 2 | `theorem` | [det_to_matrix_orthonormalBasis_of_opposite_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/det-to-matrix-orthonormalbasis-of-opposite-orientation--12b7a1c052eaacd5d3d91576.md) | 73 | `result-track:12b7a1c052eaacd5d3d91576bebb274182f6ae86efe295834e41d7d25ddcc141` |
| 3 | `theorem` | [same_orientation_iff_det_eq_det](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/same-orientation-iff-det-eq-det--c6ae27578b3ac2cc62637902.md) | 84 | `result-track:c6ae27578b3ac2cc62637902d44f3c5674af8d2908f5c27d2a8da543ea1b932f` |
| 4 | `theorem` | [det_eq_neg_det_of_opposite_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/det-eq-neg-det-of-opposite-orientation--d006593a11153b6455aeafb8.md) | 99 | `result-track:d006593a11153b6455aeafb81a810579d8abf74318a642bca60d8bb0294b45f1` |
| 5 | `theorem` | [orthonormal_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/orthonormal-adjusttoorientation--aeb076ebbe9830a9275a33be.md) | 111 | `result-track:aeb076ebbe9830a9275a33bef6b007e00e3ea1a4363dbe758fbf87e791ab69a3` |
| 6 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/adjusttoorientation--dfdf80fee1a5a424f141c7c0.md) | 119 | `declaration-track:dfdf80fee1a5a424f141c7c0ff59cc16161dbd821dae52d068724f14d6e66e72` |
| 7 | `theorem` | [toBasis_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/tobasis-adjusttoorientation--d64dbc8c831a7c8b5ef550cc.md) | 123 | `result-track:d64dbc8c831a7c8b5ef550cca23accce352fe9fb10ddb4424330ecb9d4318e16` |
| 8 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/orientation-adjusttoorientation--4a812386f2d20cee61af255b.md) | 130 | `result-track:4a812386f2d20cee61af255bf30e5e5362db6833d1bf97f205fc4d332fbf4b9b` |
| 9 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--1bf043d58a5cd9c01860f9ce.md) | 137 | `result-track:1bf043d58a5cd9c01860f9ce2ede3a3f5d3fb17ad51706e7349dc2699a7bbf83` |
| 10 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/det-adjusttoorientation--6e74f01910814f0741657409.md) | 143 | `result-track:6e74f01910814f07416574093623586f314609872eaf01a4c4a05e788317fd65` |
| 11 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/abs-det-adjusttoorientation--86d21b98245438c6e292f9d9.md) | 149 | `result-track:86d21b98245438c6e292f9d9991ea47b50cafdff5b211ec3b3074cf7aa3730ef` |
| 12 | `def` | [finOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/finorthonormalbasis--d27f9a069eeb0b40e60efd66.md) | 165 | `declaration-track:d27f9a069eeb0b40e60efd66f61f8bd372af8e49b69463cbdc13470258a72079` |
| 13 | `theorem` | [finOrthonormalBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/finorthonormalbasis-orientation--1fb829697d856d3ab49e718b.md) | 174 | `result-track:1fb829697d856d3ab49e718bd01913948f2c8cb8da4b6c369d027eaf24c601ff` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/instance--04aeb19e3088c05b1a6073e9.md) | 187 | `declaration-track:04aeb19e3088c05b1a6073e96d24e4c4ccd61c3588070328ecf3beba52fee3ca` |
| 15 | `theorem` | [volumeForm_zero_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-zero-pos--1aed55f678dc6cf2d7df370c.md) | 201 | `result-track:1aed55f678dc6cf2d7df370cc984bc7ea052613582eec44c35a3d43e874e9711` |
| 16 | `theorem` | [volumeForm_zero_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-zero-neg--5c60e46cce2a362012286b66.md) | 207 | `result-track:5c60e46cce2a362012286b66d07fc7bc78f0a0389fca2602b1d6df43f45273d2` |
| 17 | `theorem` | [volumeForm_robust](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-robust--a31563637ac3db5ae85e2e9b.md) | 221 | `result-track:a31563637ac3db5ae85e2e9bbc3f1f34f74efab0c0dd2e41617df41be8d4d512` |
| 18 | `theorem` | [volumeForm_robust_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-robust-neg--44817a5e63111ae49a883ac8.md) | 234 | `result-track:44817a5e63111ae49a883ac8077ecf7fe62c2ebd324d324e49905d314e51eca2` |
| 19 | `theorem` | [volumeForm_neg_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-neg-orientation--ac75427cc786d9dffc12d12a.md) | 248 | `result-track:ac75427cc786d9dffc12d12a2b5827aad4604794928a313be61b016576fe3d00` |
| 20 | `theorem` | [volumeForm_robust'](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-robust--13a00d59c752a170f4badb75.md) | 262 | `result-track:13a00d59c752a170f4badb75b922c631b5021febbb653d9697d8ce3271473674` |
| 21 | `theorem` | [abs_volumeForm_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/abs-volumeform-apply-le--a551221a657bebfe788c3b0a.md) | 273 | `result-track:a551221a657bebfe788c3b0ace19b733d3bd48a01122d92427807ddaa31e7e36` |
| 22 | `theorem` | [volumeForm_apply_le](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-apply-le--ab3aa2c7660dae9855abba23.md) | 289 | `result-track:ab3aa2c7660dae9855abba23032d7d73efaf4b7f6071dc35630e7aabb8fa4d06` |
| 23 | `theorem` | [abs_volumeForm_apply_of_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/abs-volumeform-apply-of-pairwise-orthogonal--eab45844088012c424f68104.md) | 296 | `result-track:eab45844088012c424f68104085b3045babc8f481ad08141d7566fde41c6a86f` |
| 24 | `theorem` | [abs_volumeForm_apply_of_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/abs-volumeform-apply-of-orthonormal--8586c98c320f3a51c5b1c625.md) | 321 | `result-track:8586c98c320f3a51c5b1c625e3f16420e207c0847e17e94597dc639830fc34e3` |
| 25 | `theorem` | [volumeForm_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-map--8300d906a14bc84c72c1ef98.md) | 326 | `result-track:8300d906a14bc84c72c1ef98337c5bd26396d9c08669e240676bbb439c3701c4` |
| 26 | `theorem` | [volumeForm_comp_linearIsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variantcf74bbaceac9d63c8ff3afc01f1137eabdfa5a459413b44cae096e70950c21ec.lean/declarations/volumeform-comp-linearisometryequiv--e868dde4e157cb53976ed9c8.md) | 343 | `result-track:e868dde4e157cb53976ed9c8b21c21450637b46895fd71097e03eb8ac9b4b56e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

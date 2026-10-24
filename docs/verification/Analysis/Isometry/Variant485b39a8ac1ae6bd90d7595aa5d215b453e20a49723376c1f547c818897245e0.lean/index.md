# Verification target: GRWTSK.Analysis.Isometry.Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f815f591c246c1def1913ec9b8235a2ff4b280",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/index.md) · [Full source](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f815f591c246c1def1913ec9b8235a2ff4b280`.

Source path: `GRWTSK/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rotation](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation--823c4354f8cd145967cd52cd.md) | 41 | `declaration-track:823c4354f8cd145967cd52cde0b908502a2e0cdf29e21e732a44ac7c054de1c2` |
| 2 | `theorem` | [rotation_apply](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation-apply--06b7e5c6e96ed434793ada7f.md) | 50 | `result-track:06b7e5c6e96ed434793ada7f770e29e578c77dd1cf7dbcfe60ab635c3a0f5c3b` |
| 3 | `theorem` | [rotation_symm](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation-symm--faf67725312f7420f6c274f2.md) | 55 | `result-track:faf67725312f7420f6c274f24d6875bc7b0c432568997b685464b5654b2bb9ab` |
| 4 | `theorem` | [rotation_trans](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation-trans--545668d857fae8f2be116d92.md) | 60 | `result-track:545668d857fae8f2be116d926902ae0c5a28a667a8168ec9ffd6c1b3e95be3c0` |
| 5 | `theorem` | [rotation_ne_conjLie](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation-ne-conjlie--03d4eb5e91d1f1521c3e88ce.md) | 65 | `result-track:03d4eb5e91d1f1521c3e88ce4dbf04293a76da4a3f53a9e6cdc2d162ea4ffd59` |
| 6 | `def` | [rotationOf](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotationof--f8fce314805ba94462505f54.md) | 77 | `declaration-track:f8fce314805ba94462505f542f0b908f97027b38ef6df02d4e402fce8d17fc8c` |
| 7 | `theorem` | [rotationOf_rotation](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotationof-rotation--dd3915a06921dd4c97a03c91.md) | 82 | `result-track:dd3915a06921dd4c97a03c919b0fb40d0800d7bfa9ab58d62af7471546931019` |
| 8 | `theorem` | [rotation_injective](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/rotation-injective--c78564290b36c3abe24514c0.md) | 86 | `result-track:c78564290b36c3abe24514c0ddab9b8341910f3fe85150b2422af6cd21096e11` |
| 9 | `theorem` | [LinearIsometry.re_apply_eq_re_of_add_conj_eq](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linearisometry-re-apply-eq-re-of-add-conj-eq--acff65d8cddb8716857f38f8.md) | 90 | `result-track:acff65d8cddb8716857f38f855eac1985082462b0ffc20a081a2053f84ec55e9` |
| 10 | `theorem` | [LinearIsometry.im_apply_eq_im_or_neg_of_re_apply_eq_re](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linearisometry-im-apply-eq-im-or-neg-of-re-apply-eq-re--ec1e3090485ed7a2b7812d8c.md) | 96 | `result-track:ec1e3090485ed7a2b7812d8cde9af62c96b944da4023fa466239ebb2b2bdd7e0` |
| 11 | `theorem` | [LinearIsometry.im_apply_eq_im](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linearisometry-im-apply-eq-im--03f0c6507b71fa5fa007bf50.md) | 104 | `result-track:03f0c6507b71fa5fa007bf5015280055b7ba9532f92e0e802d5c577625f9a585` |
| 12 | `theorem` | [LinearIsometry.re_apply_eq_re](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linearisometry-re-apply-eq-re--97a45ccbaa8f2ee73ebb34e2.md) | 119 | `result-track:97a45ccbaa8f2ee73ebb34e2f43f01b05a62d9d6f145ed2cc565f019507f29ec` |
| 13 | `theorem` | [linear_isometry_complex_aux](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linear-isometry-complex-aux--f2f9063afec4ff82e1e6dd72.md) | 125 | `result-track:f2f9063afec4ff82e1e6dd724b6e49808e20ed5806b839c64fe111002a0457dd` |
| 14 | `theorem` | [linear_isometry_complex](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linear-isometry-complex--44dd47798bc35ee94420dda2.md) | 142 | `result-track:44dd47798bc35ee94420dda283677c7d668af2ad92c5264ded63c7d40598ee03` |
| 15 | `theorem` | [toMatrix_rotation](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/tomatrix-rotation--53ddca4ac7df7f404c781c79.md) | 154 | `result-track:53ddca4ac7df7f404c781c797ab8d8b6f54c5d789c999db47d60bb4b06b98e5b` |
| 16 | `theorem` | [det_rotation](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/det-rotation--b4293712d74bc4b082740e8d.md) | 164 | `result-track:b4293712d74bc4b082740e8db2a7b1dfd59142aa71eb833f8d9d42897a27887d` |
| 17 | `theorem` | [linearEquiv_det_rotation](../../../../mathematics/Analysis/Isometry/Variant485b39a8ac1ae6bd90d7595aa5d215b453e20a49723376c1f547c818897245e0.lean/declarations/linearequiv-det-rotation--1d3424d75c19eb363d58741c.md) | 171 | `result-track:1d3424d75c19eb363d58741c58ff3ebb5d10ed67c2c2ae80dc557e243abc69b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

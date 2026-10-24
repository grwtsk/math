# Verification target: GRWTSK.Algebra.GroupTheory.Even.Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c77822ac64f975b854ab1f58fe7893e9e09963d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c77822ac64f975b854ab1f58fe7893e9e09963d`.

Source path: `GRWTSK/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSquare](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare--7d64c7d4db2d942f8619d5af.md) | 52 | `declaration-track:7d64c7d4db2d942f8619d5af2509c4cc448f8947faa4354bead6df40bf549c85` |
| 2 | `lemma` | [IsSquare.mul_self](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-mul-self--c5df12038c571154a63d49e0.md) | 54 | `result-track:c5df12038c571154a63d49e0cfde93008744927c3020824b25544c8e70447b02` |
| 3 | `lemma` | [isSquare_op_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-op-iff--8ec96a5cb1544d7a234ca487.md) | 57 | `result-track:8ec96a5cb1544d7a234ca48719e2bbfb2e7bc2aa90f73dc4d1a4f67fc6971425` |
| 4 | `lemma` | [isSquare_unop_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-unop-iff--d5c75ad4347ec79e8ddd3fbc.md) | 61 | `result-track:d5c75ad4347ec79e8ddd3fbca2dae600bbf5c965c34265faa3d0bfba99fb473e` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/instance--0a4fe77c7b0878fafaf6430e.md) | 64 | `declaration-track:0a4fe77c7b0878fafaf6430e4947cc84e3feffbba3e977b5e0a52875b73b95bb` |
| 6 | `lemma` | [even_ofMul_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/even-ofmul-iff--a3aee5052d7e1de9dbd4956f.md) | 68 | `result-track:a3aee5052d7e1de9dbd4956fdd003962d970da216cd747fddcc225a497a13ac3` |
| 7 | `lemma` | [isSquare_toMul_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-tomul-iff--2cc10669027b8a5278da9234.md) | 71 | `result-track:2cc10669027b8a5278da923459b3177d32b7c35c450998307053cff5441006c1` |
| 8 | `instance` | [Additive.instDecidablePredEven](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/additive-instdecidablepredeven--ba21516dd9c38e921588f8af.md) | 73 | `declaration-track:ba21516dd9c38e921588f8af7cb4afed9a445efa266804105e257e9b81feb447` |
| 9 | `lemma` | [isSquare_ofAdd_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-ofadd-iff--ad7a73ed8399e98f5bcee082.md) | 82 | `result-track:ad7a73ed8399e98f5bcee082e102eb535563691746432863f79f2e0ef35bb402` |
| 10 | `lemma` | [even_toAdd_iff](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/even-toadd-iff--db62f45492f613e2d0999a81.md) | 85 | `result-track:db62f45492f613e2d0999a8179b17fcd67a517782bf7d7115e2505e05eaad97f` |
| 11 | `instance` | [Multiplicative.instDecidablePredIsSquare](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/multiplicative-instdecidablepredissquare--b8165d1f68ed379981b4d4b6.md) | 87 | `declaration-track:b8165d1f68ed379981b4d4b64b7b785e5683c7bce3fa52d078e7d87d449d012f` |
| 12 | `lemma` | [IsSquare.one](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-one--d8a661ba4220f1c6092df053.md) | 94 | `result-track:d8a661ba4220f1c6092df05395241ebd511f314a3f88f6fd9e3864a66a47dde0` |
| 13 | `lemma` | [IsSquare.map](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-map--317da2438b06c89b5ec33e92.md) | 103 | `result-track:317da2438b06c89b5ec33e9281353ca33e875e4464f48f030861b457f8055e90` |
| 14 | `lemma` | [isSquare_iff_exists_sq](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-iff-exists-sq--cd4aaf9a20d639af4b72fc28.md) | 112 | `result-track:cd4aaf9a20d639af4b72fc28ecf857d6cd8003d4979ae6af64cd1201bee3f999` |
| 15 | `lemma` | [IsSquare.sq](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-sq--a8cad79fd34c770f4198f54f.md) | 120 | `result-track:a8cad79fd34c770f4198f54f7de5bfa9c2dded3be03dacc07fa7cb80f7c66c69` |
| 16 | `lemma` | [IsSquare.pow](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-pow--3073fb639de403a5d4c6aa22.md) | 125 | `result-track:3073fb639de403a5d4c6aa228374c048193dd8f112a8c792ba26cf99b2c07c52` |
| 17 | `lemma` | [Even.isSquare_pow](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/even-issquare-pow--54470ef9d8a2ab60a90d147f.md) | 131 | `result-track:54470ef9d8a2ab60a90d147f0d9e90a507e73fb22240fb74ec3614c974a45ce8` |
| 18 | `lemma` | [IsSquare.mul](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-mul--38112ab684716c24569268d4.md) | 139 | `result-track:38112ab684716c24569268d437eb4222f6e6dec66e95e2557850d5ac3fb0b34e` |
| 19 | `lemma` | [isSquare_inv](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-inv--529ce201e70dfeeeb535cfd6.md) | 145 | `result-track:529ce201e70dfeeeb535cfd6714f052e631970670c25fa034900119d7d015664` |
| 20 | `lemma` | [IsSquare.zpow](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-zpow--4d6544975ed30a8b25476408.md) | 150 | `result-track:4d6544975ed30a8b254764081ffa6055a5a2abb584c1ef11a7987ab682ad9896` |
| 21 | `lemma` | [IsSquare.div](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/issquare-div--d295109db11b99f051c0b455.md) | 156 | `result-track:d295109db11b99f051c0b4555817d0c94382fd996f7ed1fd821bed828465e3f9` |
| 22 | `lemma` | [Even.isSquare_zpow](../../../../../mathematics/Algebra/GroupTheory/Even/Varianta496910f75a3656dc63a5c5854fea6b5b2f98b6a8672968b0fcaba2b874f6703.lean/declarations/even-issquare-zpow--c51b41dea274cea93e978919.md) | 160 | `result-track:c51b41dea274cea93e97891966cfdaf129d38de8f2cee5b9aad45da69e3d92ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

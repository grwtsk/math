# Verification target: GRWTSK.Algebra.GroupTheory.VerySmallDoubling.Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8618c51d439b44b5fe633a9c0bb8e0b2a503be13",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8618c51d439b44b5fe633a9c0bb8e0b2a503be13`.

Source path: `GRWTSK/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Qify` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smul_stabilizer_of_no_doubling_aux](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/smul-stabilizer-of-no-doubling-aux--c6c27771eed166c996b234c5.md) | 48 | `result-track:c6c27771eed166c996b234c5b9ee332e898983f425dc92a90cd2a011f8a2881d` |
| 2 | `lemma` | [smul_stabilizer_of_no_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/smul-stabilizer-of-no-doubling--aae2c028ebf3afd75dd4e088.md) | 74 | `result-track:aae2c028ebf3afd75dd4e0886fe5b6ecbfb6e33dbf09fcb06df20cdf27a7d12c` |
| 3 | `lemma` | [op_smul_stabilizer_of_no_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/op-smul-stabilizer-of-no-doubling--3d252bd3a5776fd3736fd883.md) | 79 | `result-track:3d252bd3a5776fd3736fd883f1e4007f59ac50f76cd5a2f77777bd60c2f984fe` |
| 4 | `lemma` | [big_intersection](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/big-intersection--4f4e4aec2b5e58cfb06c7f13.md) | 84 | `result-track:4f4e4aec2b5e58cfb06c7f13a4a1aeb4c6d25d2d47752b59adaff258a1ce384b` |
| 5 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two_aux](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two-aux--bc55868440f738e16625cbc0.md) | 94 | `result-track:bc55868440f738e16625cbc0c0ddfb89225d41e33edeaa86b63cd2de34b91605` |
| 6 | `lemma` | [mul_inv_eq_inv_mul_of_doubling_lt_two](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/mul-inv-eq-inv-mul-of-doubling-lt-two--54a740c19c7872cdc68e17b7.md) | 117 | `result-track:54a740c19c7872cdc68e17b75b2af7bb563e299ef85eb96c6df8a38fc81dcebd` |
| 7 | `lemma` | [weaken_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/weaken-doubling--80f358765b50af8cd6fb92c4.md) | 122 | `result-track:80f358765b50af8cd6fb92c4374ea11df951f5b868e972d06cd8cd3950efc805` |
| 8 | `lemma` | [nonempty_of_doubling](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/nonempty-of-doubling--39a026f4e6b9c86c6b8e09b4.md) | 126 | `result-track:39a026f4e6b9c86c6b8e09b46f8e99d0ff721c316ffc6bde3da60736b5559d3d` |
| 9 | `def` | [invMulSubgroup](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/invmulsubgroup--bb512da42d5382db0d219a26.md) | 134 | `declaration-track:bb512da42d5382db0d219a262c1cf92837021d803e95ed39088871704b557f2d` |
| 10 | `lemma` | [invMulSubgroup_eq_inv_mul](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/invmulsubgroup-eq-inv-mul--8cc96d5021a4a49b72c6cdbb.md) | 177 | `result-track:8cc96d5021a4a49b72c6cdbb527ff7ea51aa39208904c5f1eb27029699cb35fd` |
| 11 | `lemma` | [invMulSubgroup_eq_mul_inv](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/invmulsubgroup-eq-mul-inv--5df5ba7c00fa1642da9b28a9.md) | 179 | `result-track:5df5ba7c00fa1642da9b28a9b20ee132246a1f50809be977505fe728c4142564` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/instance--e96a322dc9228a1549b906c1.md) | 184 | `declaration-track:e96a322dc9228a1549b906c1e83abdff015481ed356aafd9c4b4218e12eab512` |
| 13 | `lemma` | [weak_invMulSubgroup_bound](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/weak-invmulsubgroup-bound--772877b14c75348eef63a197.md) | 187 | `result-track:772877b14c75348eef63a197517b06393a33dc31926215fb0a15b7cbcc192fcc` |
| 14 | `lemma` | [A_subset_aH](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/a-subset-ah--bff3dffde02c2a56a15ccc71.md) | 222 | `result-track:bff3dffde02c2a56a15ccc713ca694be91b5bac28b0ea3d7672a99e31fee15d0` |
| 15 | `lemma` | [subgroup_strong_bound_left](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/subgroup-strong-bound-left--5f9d588bdc4b005e7f893bd0.md) | 226 | `result-track:5f9d588bdc4b005e7f893bd0d73671c00b17bdc8c418300e8a9ca1f4df078618` |
| 16 | `lemma` | [subgroup_strong_bound_right](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/subgroup-strong-bound-right--bfcd17055a8916f565ab06c5.md) | 237 | `result-track:bfcd17055a8916f565ab06c511b58201d332e65b31fd276915a1c8425d4def68` |
| 17 | `lemma` | [smul_inv_mul_opSMul_eq_mul_of_doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/smul-inv-mul-opsmul-eq-mul-of-doubling-lt-three-halves--510631689e60bdc9a39225af.md) | 278 | `result-track:510631689e60bdc9a39225af73ff79e57f76aac84f93f918b7dd67192a195cb8` |
| 18 | `lemma` | [card_inv_mul_of_doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/card-inv-mul-of-doubling-lt-three-halves--6d15246b181eabbaa487afed.md) | 282 | `result-track:6d15246b181eabbaa487afede1f9cc42079e2544ed25db9ef090236f51406b8f` |
| 19 | `lemma` | [smul_inv_mul_eq_inv_mul_opSMul](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/smul-inv-mul-eq-inv-mul-opsmul--453ece581972f94ef2c8533d.md) | 287 | `result-track:453ece581972f94ef2c8533d3caba9dd32e71c8081da52c571bc9cae6794de3e` |
| 20 | `theorem` | [doubling_lt_three_halves](../../../../../mathematics/Algebra/GroupTheory/VerySmallDoubling/Variant26e86d739684e2f5f847ed418d08f3cdb9a1f170c4cfb86b7676444d9e32d41f.lean/declarations/doubling-lt-three-halves--e6964692c4c10bddb5272021.md) | 317 | `result-track:e6964692c4c10bddb5272021941a8ff2a1b19cbd4730fc3d6b1e3de26e7c3caa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

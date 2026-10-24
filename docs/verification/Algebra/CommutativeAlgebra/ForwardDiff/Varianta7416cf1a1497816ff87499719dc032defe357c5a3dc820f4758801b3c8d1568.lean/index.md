# Verification target: GRWTSK.Algebra.CommutativeAlgebra.ForwardDiff.Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e02e861f3b5ba46027afae778c0478d23201254",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e02e861f3b5ba46027afae778c0478d23201254`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean.json)

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
| 1 | `def` | [fwdDiff](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff--18aec6f2ff9ace820055b888.md) | 54 | `declaration-track:18aec6f2ff9ace820055b8880e6fd9694c1a1ab12db76d56086852807337d151` |
| 2 | `lemma` | [fwdDiff_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-add--31cf86c323a95937d0de76d4.md) | 60 | `result-track:31cf86c323a95937d0de76d4cf69174f31a0406e04dcfbaee415f85910c02c87` |
| 3 | `lemma` | [fwdDiff_const](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-const--31ca0fe5f2266685c2740534.md) | 64 | `result-track:31ca0fe5f2266685c27405340fe4361302b61c2e5a4f92d88f97d98048d1c8b4` |
| 4 | `lemma` | [fwdDiff_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-smul--1020ebc5996434bdd8333ad3.md) | 69 | `result-track:1020ebc5996434bdd8333ad339d023f80bc59d6cb645f78a4a4ffec2f532dd2f` |
| 5 | `lemma` | [fwdDiff_const_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-const-smul--a218e6e4d772e248a564614a.md) | 77 | `result-track:a218e6e4d772e248a564614acbd9a81c1a59b5b4793b1d255f012beffd3589f2` |
| 6 | `lemma` | [fwdDiff_smul_const](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-smul-const--97f800102bff863efeeaad74.md) | 81 | `result-track:97f800102bff863efeeaad74aec911326233bbe0214561547488f14178f945d1` |
| 7 | `def` | [fwdDiffₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff--6470fbe694e67914d24355d8.md) | 102 | `declaration-track:6470fbe694e67914d24355d80d0fafdac1f68b7d889445f27c764489f760fd2b` |
| 8 | `lemma` | [coe_fwdDiffₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/coe-fwddiff--9384d02866f391e297520f14.md) | 107 | `result-track:9384d02866f391e297520f14de215df0e3809aaa831794150e5854e56da8c645` |
| 9 | `lemma` | [coe_fwdDiffₗ_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/coe-fwddiff-pow--4ffefb7e9cbb4c0bd5745323.md) | 109 | `result-track:4ffefb7e9cbb4c0bd5745323e57ef86bb44ecb04e7a8276b19fb1f366e2bc513` |
| 10 | `def` | [shiftₗ](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/shift--37152ab3428b54ab310db9e3.md) | 114 | `declaration-track:37152ab3428b54ab310db9e385716bc4943ab4154efb2303014036ae00ecbdb4` |
| 11 | `lemma` | [shiftₗ_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/shift-apply--90946f0af93adc0388e6c4d8.md) | 116 | `result-track:90946f0af93adc0388e6c4d8e358c87ab912a0e74d189a1aa82c0ce0eb5e98e7` |
| 12 | `lemma` | [shiftₗ_pow_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/shift-pow-apply--57e5c79cdf040e4f267fcd67.md) | 118 | `result-track:57e5c79cdf040e4f267fcd673cacddbe95bc69953a67a0a921d21aa28002ebcd` |
| 13 | `lemma` | [fwdDiff_finsetSum](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-finsetsum--b9d197230a68ead5e1a2dbca.md) | 127 | `result-track:b9d197230a68ead5e1a2dbcab66f43e297d324dace858d3ddf06bcd54efe2305` |
| 14 | `lemma` | [fwdDiff_iter_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-add--5662dbf104e5e9bd9e580a57.md) | 133 | `result-track:5662dbf104e5e9bd9e580a573269582fd59ab5a0b9e30814aa4d320c5c2d7e55` |
| 15 | `lemma` | [fwdDiff_iter_const_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-const-smul--4968fddd35db21f3335ce009.md) | 137 | `result-track:4968fddd35db21f3335ce009475639e2e706b28d07d14b1e4df5cee7bedd511a` |
| 16 | `lemma` | [fwdDiff_iter_finsetSum](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-finsetsum--e2ad4c05027f18b1e1766287.md) | 143 | `result-track:e2ad4c05027f18b1e1766287ecc5f50f1acaab283f9d6a9c85f9645651e4efd0` |
| 17 | `theorem` | [fwdDiff_iter_eq_sum_shift](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-eq-sum-shift--164de51139344c83b5261460.md) | 155 | `result-track:164de51139344c83b52614609cd3bf8a3a77bc2ce6476b4c248d953c90e6b2a7` |
| 18 | `lemma` | [fwdDiff_iter_comp_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-comp-add--88c188379c5b6f33cbc8e337.md) | 171 | `result-track:88c188379c5b6f33cbc8e3378e5df49517fb3a02341de8192481533499f3c978` |
| 19 | `lemma` | [fwdDiff_comp_add](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-comp-add--2f15422c48fb3360a0338a63.md) | 175 | `result-track:2f15422c48fb3360a0338a63d2c890487daf41810645d08afc991dcbfcb6a89f` |
| 20 | `theorem` | [shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/shift-eq-sum-fwddiff-iter--c7e7e5eb5403af84bdec86d3.md) | 183 | `result-track:c7e7e5eb5403af84bdec86d384740c9b129b0324a2758103f02681f9ce5b9ea2` |
| 21 | `lemma` | [fwdDiff_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-choose--b2914b9ca79f248fb8ae7813.md) | 196 | `result-track:b2914b9ca79f248fb8ae781390fafaf2124b68e0985ad2d4bdd0afe779d9e682` |
| 22 | `lemma` | [fwdDiff_iter_choose](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-choose--4c6e3102c07a95f415908920.md) | 200 | `result-track:4c6e3102c07a95f415908920d3cd0a3120d5ccce097c8f4d496e28292128e787` |
| 23 | `lemma` | [fwdDiff_iter_choose_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-choose-zero--4cb3e6ef010f5be85bef0c65.md) | 207 | `result-track:4cb3e6ef010f5be85bef0c65575d86b743903edf36279724eade0faec03ed3c3` |
| 24 | `lemma` | [fwdDiff_addChar_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-addchar-eq--a98b9e1f3652cf656b549cd2.md) | 220 | `result-track:a98b9e1f3652cf656b549cd2c7368641def1b8e6e36ab83d2d147a206481ec38` |
| 25 | `theorem` | [fwdDiff_iter_pow_eq_zero_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-pow-eq-zero-of-lt--9b735f0207cd3e7eba9cb9e8.md) | 249 | `result-track:9b735f0207cd3e7eba9cb9e8d4eede4a7c4aedc1513c50f0dc9b8d48759d56c1` |
| 26 | `theorem` | [fwdDiff_iter_eq_factorial](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-eq-factorial--e50709278bcc6f4af231584c.md) | 264 | `result-track:e50709278bcc6f4af231584c59a011ba68d9788c70fef08939e33365f49106df` |
| 27 | `theorem` | [Polynomial.fwdDiff_iter_degree_eq_factorial](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/polynomial-fwddiff-iter-degree-eq-factorial--87a0b79c4459dd35645044c7.md) | 278 | `result-track:87a0b79c4459dd35645044c7bb417d4c2ac759ed9e1b3fddd8c50e9fcd02550f` |
| 28 | `theorem` | [Polynomial.fwdDiff_iter_eq_zero_of_degree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/polynomial-fwddiff-iter-eq-zero-of-degree-lt--22e3e1e804167719aa9613ca.md) | 286 | `result-track:22e3e1e804167719aa9613ca60eda8956c85dee1c4872a8f666c81d7b79be01b` |
| 29 | `theorem` | [Polynomial.fwdDiff_iter_degree_add_one_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/polynomial-fwddiff-iter-degree-add-one-eq-zero--c994068b0630728b3c7a5dd0.md) | 293 | `result-track:c994068b0630728b3c7a5dd0472d1a96df7e66daba01fb5080ce7c3d3a479624` |
| 30 | `theorem` | [fwdDiff_iter_sum_mul_pow_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/fwddiff-iter-sum-mul-pow-eq-zero--c9d6907ecd23f1280529ae6b.md) | 302 | `result-track:c9d6907ecd23f1280529ae6b6b3ab5033e89d2b575df6851691d4bb75c1a83ae` |
| 31 | `theorem` | [sum_range_shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/declarations/sum-range-shift-eq-sum-fwddiff-iter--9cde7f341b3873d9b79196e8.md) | 312 | `result-track:9cde7f341b3873d9b79196e887055b3bb080a0e8be0f6744a07dafd926b045a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

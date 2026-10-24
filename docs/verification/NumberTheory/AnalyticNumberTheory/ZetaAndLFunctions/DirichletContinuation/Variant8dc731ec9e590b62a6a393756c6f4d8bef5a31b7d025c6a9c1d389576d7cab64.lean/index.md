# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.DirichletContinuation.Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f5c55347e64f60429f6a522419008fed860222",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f5c55347e64f60429f6a522419008fed860222`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.ZMod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.DirichletCharacter.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction--140de273895bc20ef8db7239.md) | 65 | `declaration-track:140de273895bc20ef8db7239b6d8ccb11aa6e3834dbb83bd37316d870a2f1b08` |
| 2 | `lemma` | [LFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction-modone-eq--daaca1c71312c63b7d2884a4.md) | 71 | `result-track:daaca1c71312c63b7d2884a478e988f41db573ddfc4223f3acbec0b43fdaf6d2` |
| 3 | `lemma` | [LFunction_eq_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction-eq-lseries--257966b9b56de0ed80539d65.md) | 79 | `result-track:257966b9b56de0ed80539d650aae66e315d2bced08d9950d3a10462cbbc734be` |
| 4 | `lemma` | [deriv_LFunction_eq_deriv_LSeries](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/deriv-lfunction-eq-deriv-lseries--67e46be65f83deacbaa73992.md) | 83 | `result-track:67e46be65f83deacbaa739923ac9af08efe0a45dd309800b495cc0f4267b12ca` |
| 5 | `lemma` | [differentiableAt_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/differentiableat-lfunction--f0934da7886dd8dc9c0246f3.md) | 96 | `result-track:f0934da7886dd8dc9c0246f3202ebf8b3b5c9986b308126741e9454be34d36e8` |
| 6 | `lemma` | [differentiable_LFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/differentiable-lfunction--0cd80d49bb3fa6d719901ef9.md) | 102 | `result-track:0cd80d49bb3fa6d719901ef916abab26151f0f5c27e9eb6286af2c7b00783950` |
| 7 | `lemma` | [Even.LFunction_neg_two_mul_nat_add_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/even-lfunction-neg-two-mul-nat-add-one--1ac1cb78356a3d91e076a12b.md) | 108 | `result-track:1ac1cb78356a3d91e076a12bcab19cdf12d0bb99fe130644acc6f0ba9f4de723` |
| 8 | `lemma` | [Even.LFunction_neg_two_mul_nat](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/even-lfunction-neg-two-mul-nat--fc77b759a191631f9060253a.md) | 114 | `result-track:fc77b759a191631f9060253ad7ac3e1d01beefca6cb7d39c4c5ebb4f1d8f082f` |
| 9 | `lemma` | [Odd.LFunction_neg_two_mul_nat_sub_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/odd-lfunction-neg-two-mul-nat-sub-one--1de244bd0bc6e54785ba4633.md) | 120 | `result-track:1de244bd0bc6e54785ba4633ed699242040650d4932ae2ff9c7cc8ebf7b372d5` |
| 10 | `lemma` | [LFunction_changeLevel_aux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction-changelevel-aux--5938e3866fc6baaada52048d.md) | 129 | `result-track:5938e3866fc6baaada52048d2650b5a0917f21669f54bbf3ba7f055bf9200596` |
| 11 | `lemma` | [LFunction_changeLevel](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction-changelevel--00e90cf7eb0f6db88530c780.md) | 154 | `result-track:00e90cf7eb0f6db88530c780a706896944046e9226342bd297ecdf145e04e47a` |
| 12 | `abbrev` | [LFunctionTrivChar](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunctiontrivchar--dec3efcb8c31cf2140a751e0.md) | 173 | `declaration-track:dec3efcb8c31cf2140a751e0b389ef171e90ef4a7df69151293aec4afa22459f` |
| 13 | `lemma` | [LFunctionTrivChar_eq_mul_riemannZeta](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunctiontrivchar-eq-mul-riemannzeta--e6045f73423ed3e367c8cb93.md) | 178 | `result-track:e6045f73423ed3e367c8cb9349685c20efe779323594093c426c7bacd7f4142f` |
| 14 | `lemma` | [LFunctionTrivChar_residue_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunctiontrivchar-residue-one--6be27ac239737c620d3b5810.md) | 186 | `result-track:6be27ac239737c620d3b58100be2d57c74f6dcc2fdfbbad1e6c3b00316e3b6b2` |
| 15 | `def` | [gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/gammafactor--9e90e82f1eadbc78a3b80899.md) | 211 | `declaration-track:9e90e82f1eadbc78a3b808996304f780e6778f219a99aac9bea161898a428adf` |
| 16 | `lemma` | [Even.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/even-gammafactor-def--30db64eb23fc1967b2374285.md) | 214 | `result-track:30db64eb23fc1967b23742856fe1460ed923987654ff2fda7113702f33d3e7fc` |
| 17 | `lemma` | [Odd.gammaFactor_def](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/odd-gammafactor-def--b2d7d0caca88b266c428865e.md) | 218 | `result-track:b2d7d0caca88b266c428865ee58cce5c76d45ed3c2eb9f7772eb6f1376c1f529` |
| 18 | `def` | [completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/completedlfunction--31a5528cd0198c15d13afc8b.md) | 228 | `declaration-track:31a5528cd0198c15d13afc8bcb6079508012cb2b623b430573e8fdc5425c3248` |
| 19 | `lemma` | [completedLFunction_modOne_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/completedlfunction-modone-eq--cc83d95cd0e5ca5fd7d561f2.md) | 235 | `result-track:cc83d95cd0e5ca5fd7d561f239f61bba45f21e032f679e900f146c4094a88a40` |
| 20 | `lemma` | [differentiableAt_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/differentiableat-completedlfunction--86964b967cbb9dd2b0c86f7b.md) | 247 | `result-track:86964b967cbb9dd2b0c86f7baf9dbe281746789956c20802b308f9a8a4f96c87` |
| 21 | `lemma` | [differentiable_completedLFunction](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/differentiable-completedlfunction--d834aaa49934d8d2b6982f52.md) | 254 | `result-track:d834aaa49934d8d2b6982f52997d065a3ab138521d81b9431625902a0ddf8e37` |
| 22 | `lemma` | [LFunction_eq_completed_div_gammaFactor](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunction-eq-completed-div-gammafactor--315a2648bd3795068ce972f7.md) | 263 | `result-track:315a2648bd3795068ce972f78ffd54aa89d1212db317aea020d8e59c5d4a2d93` |
| 23 | `def` | [rootNumber](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/rootnumber--a73decfccd1aa1fd7aedac71.md) | 276 | `declaration-track:a73decfccd1aa1fd7aedac71581cbaf2aa38560bfd29b5d87990c6378fe1096b` |
| 24 | `lemma` | [rootNumber_modOne](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/rootnumber-modone--24e722760dbff46d39074cf4.md) | 280 | `result-track:24e722760dbff46d39074cf424bcdd4beb182e79d7b92326e67489e34c6cd712` |
| 25 | `theorem` | [completedLFunction_one_sub](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/completedlfunction-one-sub--d6a67039bd6e366af6a63794.md) | 288 | `result-track:d6a67039bd6e366af6a6379494eac3035f239787167e5b3b2b140597b7127201` |
| 26 | `abbrev` | [LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunctiontrivchar--97077245c334a0d6dbbff319.md) | 342 | `declaration-track:97077245c334a0d6dbbff31960d2a04b2387f20d150f14b23369749fbde099d2` |
| 27 | `lemma` | [LFunctionTrivChar₁_apply_one_ne_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/lfunctiontrivchar-apply-one-ne-zero--10030bbee313d73cf522358f.md) | 346 | `result-track:10030bbee313d73cf522358fe5d00de52cf8f002e54d81d1936484f4f2022062` |
| 28 | `lemma` | [differentiable_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/differentiable-lfunctiontrivchar--b2f17905fcf8c27b8cc59912.md) | 352 | `result-track:b2f17905fcf8c27b8cc5991244d4eb56c25464e5b70f02bfc0f028d5e00d982a` |
| 29 | `lemma` | [deriv_LFunctionTrivChar₁_apply_of_ne_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/deriv-lfunctiontrivchar-apply-of-ne-one--79605cfe64ff27b3fe1e8c00.md) | 361 | `result-track:79605cfe64ff27b3fe1e8c00d0077e08f6472e7f0d8151921639e0e220a97b46` |
| 30 | `lemma` | [continuousOn_neg_logDeriv_LFunctionTrivChar₁](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/continuouson-neg-logderiv-lfunctiontrivchar--13cf75697f854d454badbabb.md) | 373 | `result-track:13cf75697f854d454badbabb2a614b9db272037f72f47d0cb22110848d3ac10c` |
| 31 | `lemma` | [continuousOn_neg_logDeriv_LFunction_of_nontriv](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/declarations/continuouson-neg-logderiv-lfunction-of-nontriv--c3bf6c53af7e6df111e81ac6.md) | 393 | `result-track:c3bf6c53af7e6df111e81ac682d5119d600f3498a0b1023325e70fb103b1dbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

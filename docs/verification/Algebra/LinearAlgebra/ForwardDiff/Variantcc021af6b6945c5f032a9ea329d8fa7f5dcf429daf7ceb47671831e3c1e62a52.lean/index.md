# Verification target: GRWTSK.Algebra.LinearAlgebra.ForwardDiff.Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "283479e9193141c8446a03c476ed36bc78aa1071",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `283479e9193141c8446a03c476ed36bc78aa1071`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.AddChar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fwdDiff](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff--6afd797c753e999b613211a8.md) | 46 | `declaration-track:6afd797c753e999b613211a88dc686feaba1c915ef2f42b6b2754df83c2d93b9` |
| 2 | `lemma` | [fwdDiff_add](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-add--abb1eefc832c2877bac66e61.md) | 52 | `result-track:abb1eefc832c2877bac66e61cac521c09b10bf4a52e220102acd13abe3bac6a6` |
| 3 | `lemma` | [fwdDiff_const](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-const--cb1eebc9dbf03599c89c7e0d.md) | 56 | `result-track:cb1eebc9dbf03599c89c7e0d5176122aa51000a8700445be31e3f85caba2896e` |
| 4 | `lemma` | [fwdDiff_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-smul--5966b092c17a0b74f9dfaaa5.md) | 61 | `result-track:5966b092c17a0b74f9dfaaa528c244c2a565a8875fbce901632ce3122017c55b` |
| 5 | `lemma` | [fwdDiff_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-const-smul--b1126cd27be804ceb752eec4.md) | 69 | `result-track:b1126cd27be804ceb752eec4facea50b90107f15eba50474349d3d5f091781c3` |
| 6 | `lemma` | [fwdDiff_smul_const](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-smul-const--d1d69ff1fa5135a8d4db7c59.md) | 73 | `result-track:d1d69ff1fa5135a8d4db7c5904fdd97b9b0c950e2846f64688d10ff9f35d89bf` |
| 7 | `def` | [fwdDiffₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff--105ec965940a72dfcee2cc23.md) | 94 | `declaration-track:105ec965940a72dfcee2cc23e62da509c1766d605417f48851be8bc9257e7164` |
| 8 | `lemma` | [coe_fwdDiffₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/coe-fwddiff--2b03ac457653f603613dfa4c.md) | 99 | `result-track:2b03ac457653f603613dfa4c4705c41c80dce2f6231ebdc19dc1bd7e6670ce0b` |
| 9 | `lemma` | [coe_fwdDiffₗ_pow](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/coe-fwddiff-pow--87ba529a0fd7ecd6e72f0c46.md) | 101 | `result-track:87ba529a0fd7ecd6e72f0c46cddc4c91ead5139940abc0ce787f2dceb5e33186` |
| 10 | `def` | [shiftₗ](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/shift--975dd3a96a97115b5a5f5a2d.md) | 106 | `declaration-track:975dd3a96a97115b5a5f5a2d73448e12865059b8e456c47ddc756452a366424c` |
| 11 | `lemma` | [shiftₗ_apply](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/shift-apply--bb518e88c49be2222744d7d3.md) | 108 | `result-track:bb518e88c49be2222744d7d368aaa38b980d22c8ddecd9a46f5b56b9948cc9e9` |
| 12 | `lemma` | [shiftₗ_pow_apply](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/shift-pow-apply--87e46d241007c73c5bab62d1.md) | 110 | `result-track:87e46d241007c73c5bab62d1736393a371428d13e1d0c22ef841f4bcd9e7ca95` |
| 13 | `lemma` | [fwdDiff_finset_sum](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-finset-sum--cad1e822ddba7426ba05822d.md) | 119 | `result-track:cad1e822ddba7426ba05822ddef6d58b3109104c5998fc0b40103b8e728f3365` |
| 14 | `lemma` | [fwdDiff_iter_add](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-add--e3ae878be6d674b1f5d65dda.md) | 123 | `result-track:e3ae878be6d674b1f5d65dda9cbb82850f5ed033c4236ded9cc8a45283b9b452` |
| 15 | `lemma` | [fwdDiff_iter_const_smul](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-const-smul--c9d5d6d378f95b86a2c99a14.md) | 127 | `result-track:c9d5d6d378f95b86a2c99a1402f9e6d478f8944ba6d82ddc2520e86a5f3c50a9` |
| 16 | `lemma` | [fwdDiff_iter_finset_sum](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-finset-sum--feef1f3ac70a410d4b861f6a.md) | 133 | `result-track:feef1f3ac70a410d4b861f6a5f34bc9ad0f21676e97b7412f89fb95fbe8de1ec` |
| 17 | `theorem` | [fwdDiff_iter_eq_sum_shift](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-eq-sum-shift--e5ef2c45c203f0fd06da6284.md) | 143 | `result-track:e5ef2c45c203f0fd06da6284cf2d54003b8ce938e0e17983f107ecb5a885b254` |
| 18 | `theorem` | [shift_eq_sum_fwdDiff_iter](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/shift-eq-sum-fwddiff-iter--73515b3a9e97fc05d891ce85.md) | 163 | `result-track:73515b3a9e97fc05d891ce85ba056dbad1e8beee82cdf682db566e2c02f23a98` |
| 19 | `lemma` | [fwdDiff_choose](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-choose--581c793ce28977f726ef0630.md) | 174 | `result-track:581c793ce28977f726ef0630e8567a85d41bd04588dd682d12a04430f29d0990` |
| 20 | `lemma` | [fwdDiff_iter_choose](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-choose--e32dbe3806e037ed41e0a1b3.md) | 178 | `result-track:e32dbe3806e037ed41e0a1b3528dbb6a9343a7d0cf846b5c84655b0430072564` |
| 21 | `lemma` | [fwdDiff_iter_choose_zero](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-iter-choose-zero--f7618379cf73766738859afe.md) | 184 | `result-track:f7618379cf73766738859afe25a1c2516b478b5017981d2390e23a71be546fa8` |
| 22 | `lemma` | [fwdDiff_addChar_eq](../../../../../mathematics/Algebra/LinearAlgebra/ForwardDiff/Variantcc021af6b6945c5f032a9ea329d8fa7f5dcf429daf7ceb47671831e3c1e62a52.lean/declarations/fwddiff-addchar-eq--25d6683870f3bff688b7360b.md) | 197 | `result-track:25d6683870f3bff688b7360b69e47f0f8682a4b26ea3e23709a9959d94501f2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Basic.Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a64044be2df5d77f50e06e17a0992722ec6ae6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a64044be2df5d77f50e06e17a0992722ec6ae6`.

Source path: `GRWTSK/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.CompLemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.QuadraticChar.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [euler_criterion_units](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/euler-criterion-units--d90e0dfc70acb36f25394658.md) | 49 | `result-track:d90e0dfc70acb36f253946588904b99a84416de67595638eb6cd42cc3d60626a` |
| 2 | `theorem` | [euler_criterion](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/euler-criterion--b787ad542ee713eab93927db.md) | 62 | `result-track:b787ad542ee713eab93927db3e92b46f5a9eb65f2f5dd936c0caf09360054fe9` |
| 3 | `theorem` | [pow_div_two_eq_neg_one_or_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/pow-div-two-eq-neg-one-or-one--ea17caf150be83a1cd74d409.md) | 75 | `result-track:ea17caf150be83a1cd74d4094063dac0222957758b10f45361b863268e7f7fe0` |
| 4 | `def` | [legendreSym](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/legendresym--8c25ccc5d47f6af2df0f2ce0.md) | 108 | `declaration-track:8c25ccc5d47f6af2df0f2ce0576e7106e017f8ac375c5a33aff34d376e2947e4` |
| 5 | `theorem` | [eq_pow](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-pow--7fd2efd5b10f2a1eb16df714.md) | 115 | `result-track:7fd2efd5b10f2a1eb16df714db2ffd76bf0607275d29cb65e2412d2ed9c59f9d` |
| 6 | `theorem` | [eq_one_or_neg_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-one-or-neg-one--da8d73c05e379287b94b37bc.md) | 137 | `result-track:da8d73c05e379287b94b37bcbd4bd508a27542c01aab9c8a518ff910b77cff58` |
| 7 | `theorem` | [eq_neg_one_iff_not_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-neg-one-iff-not-one--ef1a4c5b93243a0b529f13a3.md) | 142 | `result-track:ef1a4c5b93243a0b529f13a369e400ae8c232e00e6dbfbf3d31a5cb1abc07181` |
| 8 | `theorem` | [eq_zero_iff](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-zero-iff--b85f5c132fa6a09906effb23.md) | 148 | `result-track:b85f5c132fa6a09906effb23dcb0c8e1187734b0a1b7ea71952467ebb1a2de04` |
| 9 | `theorem` | [at_zero](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/at-zero--4ed05c5f476bace1f8f05b41.md) | 153 | `result-track:4ed05c5f476bace1f8f05b41e6a0c7e1b51d522bfc7ef2f48bdc35a4ec903c86` |
| 10 | `theorem` | [at_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/at-one--686c4433f8d3cfc43ad7ee8f.md) | 157 | `result-track:686c4433f8d3cfc43ad7ee8f5c3d8eb8ba4ca29f1fddb885625341667385a319` |
| 11 | `theorem` | [mul](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/mul--88404c908f9ee03cc5b84774.md) | 161 | `result-track:88404c908f9ee03cc5b8477464c54c9bd10668bd4d5660552233e174599ace17` |
| 12 | `def` | [hom](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/hom--ac76bba756e16eff632c96d5.md) | 167 | `declaration-track:ac76bba756e16eff632c96d59388cf842eb7320b8eef7b8f311f47d0cd5e035c` |
| 13 | `theorem` | [sq_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/sq-one--90257df237c9d58c09f3878e.md) | 175 | `result-track:90257df237c9d58c09f3878ef9d7bfd9e51d92c6ba8e87cdad64f1b0a75db779` |
| 14 | `theorem` | [sq_one'](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/sq-one--6ea1208e50ef636a20ee6999.md) | 180 | `result-track:6ea1208e50ef636a20ee6999cb46345b72a36af7a09bb11014b090407b863165` |
| 15 | `theorem` | [mod](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/mod--21c77bb1f54340e6583f7dd4.md) | 187 | `result-track:21c77bb1f54340e6583f7dd4648e383d9854a1659835ceb4501e63e7dd49886c` |
| 16 | `theorem` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-one-iff--f4d58e72b91155715096309d.md) | 192 | `result-track:f4d58e72b91155715096309d2a1dba3612cfed7f17300ce3d47a6f8a602921d9` |
| 17 | `theorem` | [eq_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-one-iff--152ae0802195028b2b0f6767.md) | 196 | `result-track:152ae0802195028b2b0f67673b07b7bd459d806ceb13f9aa89fd416575065f1a` |
| 18 | `theorem` | [eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-neg-one-iff--1f39e315f0104a174e8bbaaf.md) | 201 | `result-track:1f39e315f0104a174e8bbaaf464114efa08d208a96026f21b4ae3b8397e605c8` |
| 19 | `theorem` | [eq_neg_one_iff'](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-neg-one-iff--32613d3aa0a64197dbdc0adf.md) | 205 | `result-track:32613d3aa0a64197dbdc0adf0e1eae02aeb055a6873aab262f12b44d0a272882` |
| 20 | `theorem` | [card_sqrts](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/card-sqrts--ee76e0dceecaa522af3b75ed.md) | 210 | `result-track:ee76e0dceecaa522af3b75ed155b65575885c393b3e5679b80fe3a8934c3bc0d` |
| 21 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--05c4033636e050fc0ed93ac5.md) | 230 | `result-track:05c4033636e050fc0ed93ac55cb9cf7c4232c95c1bb65e57f07462182a93a16b` |
| 22 | `theorem` | [eq_one_of_sq_sub_mul_sq_eq_zero'](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-one-of-sq-sub-mul-sq-eq-zero--d656093329d33e423847b326.md) | 241 | `result-track:d656093329d33e423847b32651aa45e6d4cc2a61b807f67963e11814b106087d` |
| 23 | `theorem` | [eq_zero_mod_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/eq-zero-mod-of-eq-neg-one--e2f61af6db4b523330cfeaff.md) | 253 | `result-track:e2f61af6db4b523330cfeaff5237137f9bd8d149a7afe16386a7f07cc45b72c5` |
| 24 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/prime-dvd-of-eq-neg-one--0fc9666dfe4852e29f9121ba.md) | 268 | `result-track:0fc9666dfe4852e29f9121ba6ae9de28fd3d61895fb2f9ad0d11f3518b265a38` |
| 25 | `theorem` | [legendreSym.at_neg_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/legendresym-at-neg-one--955accb40d8860db3266e45f.md) | 293 | `result-track:955accb40d8860db3266e45f83e269c2fafe2091f9ad0eb984b2a04bebd920be` |
| 26 | `theorem` | [exists_sq_eq_neg_one_iff](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/exists-sq-eq-neg-one-iff--cd60dd0d516866c19a5b3bfb.md) | 301 | `result-track:cd60dd0d516866c19a5b3bfbfbfb21f04c33ef35b082f95e20bb43d87193fa57` |
| 27 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_one](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/mod-four-ne-three-of-sq-eq-neg-one--24f6c897dff8205fc1078ccb.md) | 305 | `result-track:24f6c897dff8205fc1078ccbfab9dd9c77c707f3eb99a12a0cbbff984a84243e` |
| 28 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq'](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--13ce52c2eb47f674fd0f338e.md) | 310 | `result-track:13ce52c2eb47f674fd0f338e363770a67057f3da9fac802afd030de825299206` |
| 29 | `theorem` | [mod_four_ne_three_of_sq_eq_neg_sq](../../../../mathematics/NumberTheory/Basic/Variant94b814202e2f1a79c90968c85dc38d2e4f0ca7a4b26d5587f581ea9e3d8c5598.lean/declarations/mod-four-ne-three-of-sq-eq-neg-sq--c6af13ecf336c84641e8da4c.md) | 318 | `result-track:c6af13ecf336c84641e8da4cf5f0a1cd27f57988deb0f6fec662c6d18d3afd75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

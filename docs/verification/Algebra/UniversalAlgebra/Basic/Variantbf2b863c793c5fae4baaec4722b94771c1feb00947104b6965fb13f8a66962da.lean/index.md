# Verification target: GRWTSK.Algebra.UniversalAlgebra.Basic.Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e71969f4a459709b7a6bba807291c45c7ba81d4",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e71969f4a459709b7a6bba807291c45c7ba81d4`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Units` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Pow` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.LeastGreatest` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [MulArchimedean.comap](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/mularchimedean-comap--562fb7f05a5668295c5556cd.md) | 45 | `result-track:562fb7f05a5668295c5556cd052918e48ac260f291922a19a19a289d1575760f` |
| 2 | `instance` | [OrderDual.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/orderdual-instmularchimedean--15a7f2ea5a8f4a2a2f6571d2.md) | 53 | `declaration-track:15a7f2ea5a8f4a2a2f6571d2898e7218488c752f8dc9c1adf9bda021f74dc527` |
| 3 | `instance` | [Additive.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/additive-instarchimedean--13eea51d223d9567cf989bf8.md) | 61 | `declaration-track:13eea51d223d9567cf989bf8ebe1e069e8f136617f8b09e5bb3db563719d5067` |
| 4 | `instance` | [Multiplicative.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/multiplicative-instmularchimedean--59c2b67b7c9e61920aa3afd9.md) | 65 | `declaration-track:59c2b67b7c9e61920aa3afd9b7c110b071bd74ebde84cd48a648c9ab5588f501` |
| 5 | `theorem` | [existsUnique_zpow_near_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-zpow-near-of-one-lt--825bea9c574a7fe8cbaeea17.md) | 77 | `result-track:825bea9c574a7fe8cbaeea1702f7e19d858b58362a8b36d934f5356118dcd2aa` |
| 6 | `theorem` | [existsUnique_zpow_near_of_one_lt'](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-zpow-near-of-one-lt--0ed5c2738db20e6d9b17ab6e.md) | 97 | `result-track:0ed5c2738db20e6d9b17ab6e342ee6af3b163118ceba306298253ab507bddaea` |
| 7 | `theorem` | [existsUnique_div_zpow_mem_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-div-zpow-mem-ico--e33503845b7a55cacc2ed7c1.md) | 103 | `result-track:e33503845b7a55cacc2ed7c1123132d00e33fc47c00a5bfa2ded090dc8706aa5` |
| 8 | `theorem` | [existsUnique_mul_zpow_mem_Ico](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-mul-zpow-mem-ico--c11c07ca95683fa2c07399ac.md) | 109 | `result-track:c11c07ca95683fa2c07399aca1039fbc9922f065f85596e5823909325e2ed340` |
| 9 | `theorem` | [existsUnique_add_zpow_mem_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-add-zpow-mem-ioc--00afe00d915e0b5922bbafa2.md) | 116 | `result-track:00afe00d915e0b5922bbafa2f5964495efd5f118f5d5c3d624e56a65881f298d` |
| 10 | `theorem` | [existsUnique_sub_zpow_mem_Ioc](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/existsunique-sub-zpow-mem-ioc--eb10926d2949c3c08acbcf5f.md) | 124 | `result-track:eb10926d2949c3c08acbcf5f096d0bbbfb501f9f1e3cdcd4168afa9d41d541ad` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--de12b04b5cde11e4069ccc8f.md) | 136 | `declaration-track:de12b04b5cde11e4069ccc8f4e2eee19e0703ec70b8a8799383aeefc358f6e58` |
| 12 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/add-one-pow-unbounded-of-pos--030e16feda0d32c0d07a8dd9.md) | 147 | `result-track:030e16feda0d32c0d07a8dd90aaf4e63d2817e904aa7ca678f0524efc8300cd6` |
| 13 | `lemma` | [pow_unbounded_of_one_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/pow-unbounded-of-one-lt--12c6c4bdf92b76a384b4c003.md) | 159 | `result-track:12c6c4bdf92b76a384b4c0032c39302e8be72faa007ac03ba6eafea59684607d` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--38d491b72cc4797bbfaafa5d.md) | 170 | `declaration-track:38d491b72cc4797bbfaafa5da3f36a79ab76079c92c1ebeb26806c3b9c861338` |
| 15 | `theorem` | [exists_floor](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-floor--3d361f1a057dd5937ec53b74.md) | 183 | `result-track:3d361f1a057dd5937ec53b74cf0c3f7e783c1b7ac7df018b87d837211e3e4e3f` |
| 16 | `theorem` | [exists_nat_pow_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-nat-pow-near--88f7d56415bc6142f13a36ba.md) | 198 | `result-track:88f7d56415bc6142f13a36ba5e1efc60905c10b6aac9f92cd7c658e3d20353b3` |
| 17 | `lemma` | [exists_nat_one_div_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-nat-one-div-lt--6f26a0f54e31cd7f5a0fe77d.md) | 214 | `result-track:6f26a0f54e31cd7f5a0fe77df8d12426f4394c19e5fc4833effa3f7faf3fbf0e` |
| 18 | `theorem` | [exists_mem_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-mem-ico-zpow--5432ef3d15fa18540b6144f3.md) | 227 | `result-track:5432ef3d15fa18540b6144f3839821928fd1da8df255821b38fccc20e9c37917` |
| 19 | `theorem` | [exists_mem_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-mem-ioc-zpow--c31aba48602d23791384d082.md) | 245 | `result-track:c31aba48602d23791384d082b3569c0a5b6b894b460a0e7632ec230e99dee7ef` |
| 20 | `theorem` | [exists_pow_lt_of_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-pow-lt-of-lt-one--7aa9351a94f56a5765302a68.md) | 252 | `result-track:7aa9351a94f56a5765302a68be9dc0dcab92836a964a00758bb720a4c2607a2e` |
| 21 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-nat-pow-near-of-lt-one--463fa4ed82c960c0d8e21b5c.md) | 262 | `result-track:463fa4ed82c960c0d8e21b5c0e5230759f41c023abc14ff04066d346735c7cab` |
| 22 | `lemma` | [exists_pow_btwn_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-pow-btwn-of-lt-mul--5a83d0de9f36a8fa5e8bf70a.md) | 272 | `result-track:5a83d0de9f36a8fa5e8bf70a612919fab71402381bbae90c346df9b0931ce3be` |
| 23 | `lemma` | [exists_zpow_btwn_of_lt_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-zpow-btwn-of-lt-mul--73b9eb824d1f3ae625fd7c7d.md) | 287 | `result-track:73b9eb824d1f3ae625fd7c7dbdf0ff53b9cefcf6cfa56d785e627183a21946c5` |
| 24 | `theorem` | [archimedean_iff_nat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-nat-lt--c5b7f5d8a8d0cca862a520f3.md) | 312 | `result-track:c5b7f5d8a8d0cca862a520f3baa9869a898fe6a1d8909932bc6557b9d7769e60` |
| 25 | `theorem` | [archimedean_iff_nat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-nat-le--548bd6863bdcd09ab8e6d0b3.md) | 317 | `result-track:548bd6863bdcd09ab8e6d0b3b3b81609a4920c39cf538d76b8ae34559f5dec40` |
| 26 | `theorem` | [archimedean_iff_int_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-int-lt--516264e9a6db54e673371212.md) | 323 | `result-track:516264e9a6db54e67337121222848cfe7fe3a16ceff91d806f32a7afc06cf837` |
| 27 | `theorem` | [archimedean_iff_int_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-int-le--29271803860dec619019b192.md) | 331 | `result-track:29271803860dec619019b192c1ec3ab2e8ebd41e0a9a407dde846b8832551486` |
| 28 | `theorem` | [archimedean_iff_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-rat-lt--4a80afc1ec86582a83968745.md) | 337 | `result-track:4a80afc1ec86582a83968745ff21c28b5010ffc6b8d2a6da650ab419dfe86061` |
| 29 | `theorem` | [archimedean_iff_rat_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-iff-rat-le--14bf14060015bf13adb26985.md) | 344 | `result-track:14bf14060015bf13adb26985333a1daee3a00af52c4eeb50629604c552e118d2` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--c368509a8c936d29d8017a04.md) | 350 | `declaration-track:c368509a8c936d29d8017a0401bba674261ae3358ee0c5c06cbfe2f341f9a467` |
| 31 | `theorem` | [exists_rat_gt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-gt--80a0add938010aee0071d718.md) | 355 | `result-track:80a0add938010aee0071d718325c48742c4ebf5c8fe386e27ab4f56ef92479b3` |
| 32 | `theorem` | [exists_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-lt--8dde451c25ef2c0d86085172.md) | 357 | `result-track:8dde451c25ef2c0d8608517289fc49ac6fcdfd66d296e404516e3b707feed3cc` |
| 33 | `theorem` | [exists_div_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-div-btwn--a54228e58ae74625c5679c1f.md) | 361 | `result-track:a54228e58ae74625c5679c1f15fa517899f8337c6eb4c95d8938c4cb0e5ae326` |
| 34 | `theorem` | [exists_rat_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-btwn--bbe3630b190e307911561cb5.md) | 372 | `result-track:bbe3630b190e307911561cb54d2fb82f5abe48bf248bcf153cb75f05cd1df29b` |
| 35 | `theorem` | [exists_rat_mem_uIoo](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-mem-uioo--17b054c8f3e7e26ae8868d8a.md) | 377 | `result-track:17b054c8f3e7e26ae8868d8a035b7199d5ee71b1d51de7e2677328fe0aa51bfb` |
| 36 | `theorem` | [exists_pow_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-pow-btwn--dfa24e2ed92384de2cafc241.md) | 380 | `result-track:dfa24e2ed92384de2cafc241b36ab66bfbe69b70722b85a1c586b9ebe3424074` |
| 37 | `theorem` | [exists_rat_pow_btwn](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-pow-btwn--bb994dad29cb378595772da9.md) | 407 | `result-track:bb994dad29cb378595772da93e1fdd3faebd37ab86a1da04d38a745a962bea1e` |
| 38 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/le-of-forall-rat-lt-imp-le--85e695e3a419e60be8fb383c.md) | 416 | `result-track:85e695e3a419e60be8fb383c111a78a40f610950d6249c1c0e6c1eb42c627cfd` |
| 39 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/le-of-forall-lt-rat-imp-le--3f4e9db7c6049cd5d43a9d63.md) | 421 | `result-track:3f4e9db7c6049cd5d43a9d63d026493eefd3ebbadd9739a964bffb4745cac558` |
| 40 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/le-iff-forall-rat-lt-imp-le--e08ee316d317f67127a305a9.md) | 426 | `result-track:e08ee316d317f67127a305a96dadb1226c00caae9d5eaab96201b4c7cb98d3d5` |
| 41 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/le-iff-forall-lt-rat-imp-le--4bd8e9560894dd7f24624387.md) | 429 | `result-track:4bd8e9560894dd7f24624387d287e2408d45553ed79e907ae89f6f00db9a21ce` |
| 42 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/eq-of-forall-rat-lt-iff-lt--b43fae5f13826802e91ae055.md) | 432 | `result-track:b43fae5f13826802e91ae05587f360aa22a31975e35da74a8aafb4f8da2c1267` |
| 43 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/eq-of-forall-lt-rat-iff-lt--c62bc88691c6f9aa34d498de.md) | 436 | `result-track:c62bc88691c6f9aa34d498def5b90251ba7dbd95fff22cf2baa1c6ae21b591d1` |
| 44 | `theorem` | [exists_pos_rat_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-pos-rat-lt--b02881abc4c4afe13c431f09.md) | 440 | `result-track:b02881abc4c4afe13c431f09a1cdc328c3c6137d92e535a3f31dbd62ab758119` |
| 45 | `theorem` | [exists_rat_near](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/exists-rat-near--4850e22079e36fed6157a70a.md) | 443 | `result-track:4850e22079e36fed6157a70ab77732a17e9e4030ef6b2ee6581e6fa67bb1c0e2` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--c8495483af013bde23e5e555.md) | 450 | `declaration-track:c8495483af013bde23e5e55581aff2c90d370e18d6fa259e7acfa3df28ce8561` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--f1fefeb0a6323dbc11ffd6ee.md) | 455 | `declaration-track:f1fefeb0a6323dbc11ffd6ee0a2b91836f5f4ffee15692d9aef3f2c312349209` |
| 48 | `instance` | [Nonneg.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/nonneg-instarchimedean--6671ab4a991deb7b1731ba94.md) | 462 | `declaration-track:6671ab4a991deb7b1731ba947c925ce3cb1d153574de94c2afd0da1ca7c94b16` |
| 49 | `instance` | [Nonneg.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/nonneg-instmularchimedean--1e423f2086f075a4213e1c8e.md) | 469 | `declaration-track:1e423f2086f075a4213e1c8ecaa8449e8747c1513dae1d9b70dfca382c29448e` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--3d0de1ca4e8398525b5d5d59.md) | 474 | `declaration-track:3d0de1ca4e8398525b5d5d59c8f8badc154df2df2cf76d9862fa7942aa35e2f0` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--308de4644cbcea67273cb0f5.md) | 475 | `declaration-track:308de4644cbcea67273cb0f548df6a14d3dd3cdeca26d4ede66eab4e04a7fb8d` |
| 52 | `def` | [Archimedean.floorRing](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/archimedean-floorring--6e71a12a94b6a3c8108cab9e.md) | 480 | `declaration-track:6e71a12a94b6a3c8108cab9eedd81de7f4e0c36d19d4419587fb0cd7ee89b432` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/instance--4838c245404268a9b44d7b6d.md) | 486 | `declaration-track:4838c245404268a9b44d7b6d72e806e01d3792b890b84cf3a8362c389f390f05` |
| 54 | `instance` | [Units.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/units-instmularchimedean--30042c5e163f95f36a9b8cb1.md) | 493 | `declaration-track:30042c5e163f95f36a9b8cb1acaa4f0a53fb6b73d5d498db16fd362f947312ae` |
| 55 | `instance` | [WithBot.instArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/withbot-instarchimedean--3d6be53d726d253b1c8707d6.md) | 497 | `declaration-track:3d6be53d726d253b1c8707d6180562a73ea189bea93fc15bdfee97a8655c477b` |
| 56 | `instance` | [WithZero.instMulArchimedean](../../../../../mathematics/Algebra/UniversalAlgebra/Basic/Variantbf2b863c793c5fae4baaec4722b94771c1feb00947104b6965fb13f8a66962da.lean/declarations/withzero-instmularchimedean--12f4eef7df1b9b9c8c863678.md) | 508 | `declaration-track:12f4eef7df1b9b9c8c863678b971faed3c94c7a2f1eda8e29e87c09d3993b816` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

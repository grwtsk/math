# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e23e74c3f9d28748101db16932233993241892d7",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e23e74c3f9d28748101db16932233993241892d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/int-iscoprime-iff-gcd-eq-one--f89da6e526750ab7dc294b09.md) | 33 | `result-track:f89da6e526750ab7dc294b09b483d92efc39cadf3768f1fc401772d544607e1a` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/nat-iscoprime-iff-coprime--5687071b1fea814cbe0b3d29.md) | 42 | `result-track:5687071b1fea814cbe0b3d29b8fa0ca306e638ea93873ad34b76664f2d9ed208` |
| 3 | `theorem` | [Nat.Coprime.cast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/nat-coprime-cast--eeb4a7c8c0fa6889940fc3f7.md) | 47 | `result-track:eeb4a7c8c0fa6889940fc3f7ced6d60a8b99d7dc4d806d2b288ebb3d87e8a89b` |
| 4 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime--1a682f054757d75223d032d2.md) | 53 | `result-track:1a682f054757d75223d032d2b4d8448f4c31897f17147c7c0afafb3e3cf5b131` |
| 5 | `theorem` | [IsCoprime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-prod-left--a8b4852a844e3538be8fb522.md) | 58 | `result-track:a8b4852a844e3538be8fb522fbd10ca09e87362c539d7b2d603e71c04568cdba` |
| 6 | `theorem` | [IsCoprime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-prod-right--09c3e7c6745493631ebf5bd0.md) | 65 | `result-track:09c3e7c6745493631ebf5bd02c2fc29be57397826333fbdd9b57a57be5bc7060` |
| 7 | `theorem` | [IsCoprime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-prod-left-iff--931e2e051566b0e393a4d09b.md) | 68 | `result-track:931e2e051566b0e393a4d09bee3e94b1396339f7f05bbb90fbc74ae854398749` |
| 8 | `theorem` | [IsCoprime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-prod-right-iff--42130fb4572f8a794310d797.md) | 73 | `result-track:42130fb4572f8a794310d7971c5a7c6c44ecfccc41296bae1d69a18b40f50d78` |
| 9 | `theorem` | [IsCoprime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-of-prod-left--e48e16913a5314bf59e0b279.md) | 76 | `result-track:e48e16913a5314bf59e0b279069b3e5b71f4cadccccf4e987c0a063afe0ac3d5` |
| 10 | `theorem` | [IsCoprime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-of-prod-right--b2a0749ae9a087dd2eb28d33.md) | 80 | `result-track:b2a0749ae9a087dd2eb28d33d5c6f8888ec650abc922637928f8789fdde4d214` |
| 11 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/finset-prod-dvd-of-coprime--b2dc942a0a0ce14eb639dfe8.md) | 85 | `result-track:b2dc942a0a0ce14eb639dfe8a42f648e1dbd31077abcd8898ef33a92e6eaff44` |
| 12 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/fintype-prod-dvd-of-coprime--052a9f1e88ebdbb30188a9e3.md) | 101 | `result-track:052a9f1e88ebdbb30188a9e3010a002d1698cc2ba4f701235a4aa0e7714e3980` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--b6f14e592a70108e6bc71f64.md) | 109 | `result-track:b6f14e592a70108e6bc71f64d86f37359b514bb9e346b7732ce982ecf2833a63` |
| 14 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--de996a1ae70e155dcc21f9db.md) | 167 | `result-track:de996a1ae70e155dcc21f9db24fceed84538064b9d6b04d47debfadfab6dd731` |
| 15 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pairwise-coprime-iff-coprime-prod--631f186a661368834d11b536.md) | 172 | `result-track:631f186a661368834d11b5367c21d84cab85ea671706f1710c35355a4deb3220` |
| 16 | `theorem` | [IsCoprime.pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow-left--141014ad73750b11609298c0.md) | 185 | `result-track:141014ad73750b11609298c0848a1ac49d0a4c267e5cb399d131bd28e549b3bd` |
| 17 | `theorem` | [IsCoprime.pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow-right--5cb26d0a707b988c181fdb97.md) | 189 | `result-track:5cb26d0a707b988c181fdb971f663a49d87059a2b8fb0f2a70088520d0dc9d8e` |
| 18 | `theorem` | [IsCoprime.pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow--90b2d78493e11c19d84a397c.md) | 193 | `result-track:90b2d78493e11c19d84a397c0b2cdff84d167cba1c5b72020c8f665b6f8542be` |
| 19 | `theorem` | [IsCoprime.pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow-left-iff--f99c6cec8ebbec856f9ee656.md) | 196 | `result-track:f99c6cec8ebbec856f9ee656c3089f960fa1ad65a5f70cf026d64c07cd391c54` |
| 20 | `theorem` | [IsCoprime.pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow-right-iff--819709e76ea91b759b4d40e6.md) | 201 | `result-track:819709e76ea91b759b4d40e6504d0358a212bbc87173f41895089ca603ae4d98` |
| 21 | `theorem` | [IsCoprime.pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/iscoprime-pow-iff--3dd60cabc735fa850a6e32c0.md) | 204 | `result-track:3dd60cabc735fa850a6e32c0682358bb556e67b39e29c81cfa6ec8801a0db7a1` |
| 22 | `theorem` | [IsRelPrime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-prod-left--2e3aa36234749b6351a4fd8c.md) | 213 | `result-track:2e3aa36234749b6351a4fd8cbd2d1c62378b92a729d9c864e111f79e4fc08f87` |
| 23 | `theorem` | [IsRelPrime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-prod-right--101f8e98303888e185207fb8.md) | 220 | `result-track:101f8e98303888e185207fb8fc99685d3fb898166124d9049b49fb8c747c4083` |
| 24 | `theorem` | [IsRelPrime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-prod-left-iff--2b766dddb12762ec38e165d2.md) | 223 | `result-track:2b766dddb12762ec38e165d2ebe677f4a92e0f095fc6790760d15e5155a02bc4` |
| 25 | `theorem` | [IsRelPrime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-prod-right-iff--70b985e636f5df0ee6f0d610.md) | 228 | `result-track:70b985e636f5df0ee6f0d610ca40393b5ff6b219c7321aaa2cafa2cb57b37d68` |
| 26 | `theorem` | [IsRelPrime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-of-prod-left--49277973bea6f61d10e03cca.md) | 231 | `result-track:49277973bea6f61d10e03cca8b7aef4c99e58077ab062959ce2e362c44eb19ad` |
| 27 | `theorem` | [IsRelPrime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/isrelprime-of-prod-right--bb93f89b5677760c558a6aad.md) | 235 | `result-track:bb93f89b5677760c558a6aad130dd9268ea916ddfe84b48ad41d1bc3a7d713c5` |
| 28 | `theorem` | [Finset.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/finset-prod-dvd-of-isrelprime--fb1c9d5e04bb282990ebb38e.md) | 239 | `result-track:fb1c9d5e04bb282990ebb38eac5b9b6d481bef77669573b580e129fb50211413` |
| 29 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/fintype-prod-dvd-of-isrelprime--091c40af43b70348b061d983.md) | 255 | `result-track:091c40af43b70348b061d9839057219e3d1808bfdaba6d17a3e78b3ea8116ef6` |
| 30 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pairwise-isrelprime-iff-isrelprime-prod--8bde2585b61643f948563679.md) | 259 | `result-track:8bde2585b61643f948563679f5ee9a67365f2d855eea0ef7ba06c4e822026be4` |
| 31 | `theorem` | [pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow-left--bcebcda2a0b0dd095211723f.md) | 273 | `result-track:bcebcda2a0b0dd095211723fe1fd4b34a8ab90755f2167049e0bbe07cadba661` |
| 32 | `theorem` | [pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow-right--cf8cc6efeaab74b9c97a7127.md) | 277 | `result-track:cf8cc6efeaab74b9c97a71275bc39a7c5c828e976c0011c3401ed461499f9b78` |
| 33 | `theorem` | [pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow--cedf70f8175da5b581db2917.md) | 281 | `result-track:cedf70f8175da5b581db29178d5da981b983b59b9a1ce384815f4a702861a744` |
| 34 | `theorem` | [pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow-left-iff--8577d4ac86ba32136e550534.md) | 284 | `result-track:8577d4ac86ba32136e550534b00611825ed0d747ffdad512f598083d753dd7e2` |
| 35 | `theorem` | [pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow-right-iff--e4d12ae767a359f4c6ca8198.md) | 289 | `result-track:e4d12ae767a359f4c6ca8198ea14ecaa66e81241a787f6ba27a4a351b1b9d555` |
| 36 | `theorem` | [pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variant0b8cff41bac17e30069c139c521baf839d224a61e78443aac422b6ba07e81af8.lean/declarations/pow-iff--3f6c3ed3ab896aba9eb95b5c.md) | 292 | `result-track:3f6c3ed3ab896aba9eb95b5c921ac4ae2abdd3c3ac45df0c66e6c85f186d1458` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

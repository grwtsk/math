# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e83fdf511c3b2bd8daadc2d3dabba984e43a0973",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e83fdf511c3b2bd8daadc2d3dabba984e43a0973`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Commute` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [div_self](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-self--26dde3cbce575918e30185c2.md) | 36 | `result-track:26dde3cbce575918e30185c22490372d3eddfa88504ef83b64d14d170a7077f4` |
| 2 | `theorem` | [eq_mul_inv_iff_mul_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-mul-inv-iff-mul-eq--91a1f2d086f9a685064adac2.md) | 40 | `result-track:91a1f2d086f9a685064adac2d4a625fa48af3bfa176392731e3688f73108b78d` |
| 3 | `theorem` | [eq_inv_mul_iff_mul_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-inv-mul-iff-mul-eq--875a4adfd60d025700040ddf.md) | 44 | `result-track:875a4adfd60d025700040ddfa48369bc80654d1963ce97d92b7307a7cb20f374` |
| 4 | `theorem` | [inv_mul_eq_iff_eq_mul₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/inv-mul-eq-iff-eq-mul--59fa82e62a5beaf8afd2e90a.md) | 48 | `result-track:59fa82e62a5beaf8afd2e90af878408dd781c10bf6cac0444b0129b7aaaddbc4` |
| 5 | `theorem` | [mul_inv_eq_iff_eq_mul₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-inv-eq-iff-eq-mul--5576b9ac34c0af76a8b5480a.md) | 52 | `result-track:5576b9ac34c0af76a8b5480abba0c4c7a9549fc5191a34b7fe6c5b400a6eeaa8` |
| 6 | `theorem` | [mul_inv_eq_one₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-inv-eq-one--d9146c939cb7482631a5b6f9.md) | 56 | `result-track:d9146c939cb7482631a5b6f949a15e563c71bae697227a227bb80e27827c04d7` |
| 7 | `theorem` | [inv_mul_eq_one₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/inv-mul-eq-one--702bc3d5dad92dd71a148a52.md) | 60 | `result-track:702bc3d5dad92dd71a148a5268dfece7fd5d4fcbb3f336a5b114c68112bf493f` |
| 8 | `theorem` | [mul_eq_one_iff_eq_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-eq-one-iff-eq-inv--d9de0469417477d54b75b91c.md) | 64 | `result-track:d9de0469417477d54b75b91c987b19547044872f9ef373524f822775d211be69` |
| 9 | `theorem` | [mul_eq_one_iff_inv_eq₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-eq-one-iff-inv-eq--42e327df7e13240d979a42c6.md) | 68 | `result-track:42e327df7e13240d979a42c6713031a2c0b09f194c7065c37b9abbc02c5b18f9` |
| 10 | `theorem` | [div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-mul-cancel--53643702b1d8f6e4475549aa.md) | 73 | `result-track:53643702b1d8f6e4475549aa3a64c8c6f823674858a5b598cbba05b4849fad48` |
| 11 | `theorem` | [mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel--e8f4ba43695a3fb01f77b927.md) | 78 | `result-track:e8f4ba43695a3fb01f77b927f52438ec3a19b8a532ec3671e3ccc51989297f84` |
| 12 | `theorem` | [mul_one_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-one-div-cancel--1096556e985005528fcd294b.md) | 82 | `result-track:1096556e985005528fcd294b6e6fb7ba8857318b17bec59f2f74073e8adc92bf` |
| 13 | `theorem` | [one_div_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/one-div-mul-cancel--d784db106c8924372fd6c100.md) | 86 | `result-track:d784db106c8924372fd6c10042d3a29e79d588a9f73cc5b40ecb68617f064913` |
| 14 | `theorem` | [div_left_inj'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-left-inj--fb3a2cd6ac3fb4feb7b00cb3.md) | 90 | `result-track:fb3a2cd6ac3fb4feb7b00cb31367a4cabff17cc68b9af1b381a9d75c88226190` |
| 15 | `theorem` | [div_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-eq-iff--cb52cf24b281d436c7358132.md) | 95 | `result-track:cb52cf24b281d436c7358132fc5c2a91f2af9e1f7aa9b4ff6b8c9052559099ff` |
| 16 | `theorem` | [eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-div-iff--da562a1601f9db24731fda00.md) | 100 | `result-track:da562a1601f9db24731fda000af2925a7bce788108349112ab9ea73289773b96` |
| 17 | `theorem` | [div_eq_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-eq-iff-mul-eq--02c4db4f47f957631fe120eb.md) | 104 | `result-track:02c4db4f47f957631fe120eb601bb7994247a62b4ea1b37ee70d4daf094142cc` |
| 18 | `theorem` | [eq_div_iff_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-div-iff-mul-eq--dcbeaf9f5c6fcecea314fafa.md) | 108 | `result-track:dcbeaf9f5c6fcecea314fafa96dcfb15ad866d99fabb616f4c4279e8aba0d753` |
| 19 | `theorem` | [div_eq_of_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-eq-of-eq-mul--4c3a14707202c58e49b1cfe7.md) | 112 | `result-track:4c3a14707202c58e49b1cfe76b52f77a624652a945593ce829aa8f0fab64fe5b` |
| 20 | `theorem` | [eq_div_of_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-div-of-mul-eq--fe25bb671c72c0676c9f6cd5.md) | 116 | `result-track:fe25bb671c72c0676c9f6cd5e08dd0c50ab5b508ef2037a28b3d9bfa1eb4abd7` |
| 21 | `theorem` | [div_eq_one_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-eq-one-iff-eq--19a22faa9f761bb0446a3a00.md) | 120 | `result-track:19a22faa9f761bb0446a3a002e73bdf334a2892b72eeefc8391453049e63241a` |
| 22 | `theorem` | [div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-mul-left--5d4c4c2b3971241198d36a0a.md) | 124 | `result-track:5d4c4c2b3971241198d36a0aa1e3146ed1207d957f3e510ca131b15c1616c20f` |
| 23 | `theorem` | [mul_div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-mul-right--ee25420aab5088721a56b710.md) | 128 | `result-track:ee25420aab5088721a56b710384575c6abaa21e68e434506c28fefc276978117` |
| 24 | `theorem` | [mul_mul_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-mul-div--f672ff8aca9b065571718bd1.md) | 132 | `result-track:f672ff8aca9b065571718bd1d1250e5a5c45be68970b3edfab36e4a27034d7a7` |
| 25 | `theorem` | [div_div_div_cancel_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-div-div-cancel-right--a8081eaa038287f3b84e4cb6.md) | 136 | `result-track:a8081eaa038287f3b84e4cb6317b4fe2f767c514a843dbaf9fbb2ce02a59235c` |
| 26 | `theorem` | [div_mul_div_cancel](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-mul-div-cancel--d3c19b76eaaddacefe0e3b26.md) | 140 | `result-track:d3c19b76eaaddacefe0e3b26e099b6c17d8787fee88527b0a1f5e6cfe4d30d8d` |
| 27 | `theorem` | [div_mul_cancel_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-mul-cancel-of-imp--3e834f41d4bfc82181648bc1.md) | 144 | `result-track:3e834f41d4bfc82181648bc12955e1d3e24300cab3af39b69d78cb66e28c14db` |
| 28 | `theorem` | [mul_div_cancel_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel-of-imp--1b064b97391cb2870d84e0d0.md) | 148 | `result-track:1b064b97391cb2870d84e0d09a4b849f96bde01fd46d6d662858b1fa7508b1a5` |
| 29 | `theorem` | [divp_mk0](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/divp-mk0--4f2ce61e5781ff9d24de5829.md) | 153 | `result-track:4f2ce61e5781ff9d24de5829e3e29e827d17bb05c550c39eb22c0b98fe1a5bf2` |
| 30 | `theorem` | [div_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-mul-right--fa96f0f9ae9cc25973459e54.md) | 164 | `result-track:fa96f0f9ae9cc25973459e54fdd22013286ba77d4b701fb0b7bb0fea38ba2172` |
| 31 | `theorem` | [mul_div_cancel_left_of_imp](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel-left-of-imp--eb1a0591129cd17cc95980f5.md) | 168 | `result-track:eb1a0591129cd17cc95980f5a38e380c824c13287621fc5294ba90552c4c352a` |
| 32 | `theorem` | [mul_div_cancel_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel-left--18b448d631a3cc539da3c169.md) | 172 | `result-track:18b448d631a3cc539da3c169e029d48581ce9171096d2ee24c92a765e4e15a34` |
| 33 | `theorem` | [mul_div_cancel_of_imp'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel-of-imp--383e8723d1c37d5da69cebdb.md) | 176 | `result-track:383e8723d1c37d5da69cebdb3cc4f2f99c1e80d0a5b04d4745b14a56d49e7714` |
| 34 | `theorem` | [mul_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-cancel--2e9f7afdce6f34cba7846b79.md) | 180 | `result-track:2e9f7afdce6f34cba7846b79a9830b40931b1aad1f5fccd5d641ba6ccffefa01` |
| 35 | `theorem` | [mul_div_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-div-mul-left--3ed6e6a50d92bdb17dfaa60f.md) | 184 | `result-track:3ed6e6a50d92bdb17dfaa60f060e4d622000f91d57210f83cf4b98bbe774dd11` |
| 36 | `theorem` | [mul_eq_mul_of_div_eq_div](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/mul-eq-mul-of-div-eq-div--4e919836383ad1280a2e7ea1.md) | 188 | `result-track:4e919836383ad1280a2e7ea1e9c960052679d4e7d71985ce39bc08a5a5117e7d` |
| 37 | `theorem` | [div_eq_div_iff](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-eq-div-iff--6a6ffcf5a8543643267e0eb1.md) | 194 | `result-track:6a6ffcf5a8543643267e0eb1df19b06a098c4496f02f093847a21169aaefb511` |
| 38 | `theorem` | [div_div_cancel'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-div-cancel--65260769c56dd1a1b702c051.md) | 198 | `result-track:65260769c56dd1a1b702c05152fc2505bc736846f058514a5ad178333736a487` |
| 39 | `theorem` | [div_div_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-div-cancel-left--75a75a67dfed770ced74e1be.md) | 202 | `result-track:75a75a67dfed770ced74e1bef0b912b7ee4cfd3faa8bcf047a3a57948e9cc9c3` |
| 40 | `theorem` | [div_helper](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-helper--52f94220f7774298bddf425a.md) | 206 | `result-track:52f94220f7774298bddf425a9054f9280e8e4358b566a517d14559e946e9cb88` |
| 41 | `theorem` | [div_div_div_cancel_left'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/div-div-div-cancel-left--22f20041753f594956a5a322.md) | 210 | `result-track:22f20041753f594956a5a322cf7dfc61917f3177d1844315ace2c47589253a32` |
| 42 | `theorem` | [map_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/map-ne-zero--e37e39d1600506d17761c5aa.md) | 221 | `result-track:e37e39d1600506d17761c5aa112ce20abb2a79907bbd4735d68e7ec5678c8245` |
| 43 | `theorem` | [map_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/map-eq-zero--b6ebd1a26bfe8b7f4370b804.md) | 226 | `result-track:b6ebd1a26bfe8b7f4370b8044f88ebb1d71b639950bad454eb69fbe01fb90734` |
| 44 | `theorem` | [eq_on_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/eq-on-inv--7942ac29d3bac3d528b1e56c.md) | 231 | `result-track:7942ac29d3bac3d528b1e56c2a58e31a8803b13ce9e0f3bda7f5be0164206e43` |
| 45 | `theorem` | [map_inv₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/map-inv--1b539d81d4eb8fd15cf55084.md) | 245 | `result-track:1b539d81d4eb8fd15cf55084c1c805db485cc558b88b3cfc5989112064ea6f16` |
| 46 | `theorem` | [map_div₀](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/map-div--f24ed28b1dd85da9b81b578b.md) | 253 | `result-track:f24ed28b1dd85da9b81b578b5e81c6a4b997ada7d20e5943544ed397deed2ac2` |
| 47 | `def` | [MonoidWithZero.inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/monoidwithzero-inverse--6ad0235962564698d06b1437.md) | 261 | `declaration-track:6ad0235962564698d06b143763374567d31deb6725c11ad74a8ace7e85294316` |
| 48 | `theorem` | [MonoidWithZero.coe_inverse](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/monoidwithzero-coe-inverse--e2884e3989ec9755b5b109f2.md) | 270 | `result-track:e2884e3989ec9755b5b109f2caac18f16a078704e2b6bfccff5e2fb7183e14a6` |
| 49 | `theorem` | [MonoidWithZero.inverse_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/monoidwithzero-inverse-apply--9f2b07e0794246306692b222.md) | 276 | `result-track:9f2b07e0794246306692b2222db95f3c94214edc9bcff22b55e950768e251fe0` |
| 50 | `def` | [invMonoidWithZeroHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/invmonoidwithzerohom--bd295b90e2bad8fbc6a3abab.md) | 282 | `declaration-track:bd295b90e2bad8fbc6a3abab02adf922239d65de867166b6fd369061f78b516c` |
| 51 | `theorem` | [smul_mk0](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantca52c22d94c496e9ff8594f93b88756d5e3af132f790725620393e2f4aa0a8a5.lean/declarations/smul-mk0--616ec5d08929368f6b78dfe8.md) | 293 | `result-track:616ec5d08929368f6b78dfe8c5f53cb3ec64b3868faf1e36032d03f9b7e707b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

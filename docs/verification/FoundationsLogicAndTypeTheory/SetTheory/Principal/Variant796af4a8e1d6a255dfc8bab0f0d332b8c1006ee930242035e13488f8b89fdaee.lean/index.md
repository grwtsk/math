# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Principal.Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e28024ff52cd065c19a29702d4d3be546b77ff3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e28024ff52cd065c19a29702d4d3be546b77ff3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal--d14dfbad22ae5068172c3ae3.md) | 56 | `declaration-track:d14dfbad22ae5068172c3ae34178d952ae1a472fa65587e15343b93fcc7adfff` |
| 2 | `theorem` | [principal_iff_principal_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-iff-principal-swap--16b9fc3df796a03cdab046fe.md) | 60 | `result-track:16b9fc3df796a03cdab046fe57ba8379023331646a4a64bf94b287fff64836b2` |
| 3 | `theorem` | [principal_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-zero--2d5078135e314a7c237f191c.md) | 65 | `result-track:2d5078135e314a7c237f191cdaaf17c88061e901e8fd52b52e97193b5fa7c85d` |
| 4 | `theorem` | [principal_one_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-one-iff--65997c95e454c4ff32f41f76.md) | 70 | `result-track:65997c95e454c4ff32f41f766c965555ebb2ab225c8fbdf5a61a4b4ea07d739b` |
| 5 | `theorem` | [Principal.iterate_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-iterate-lt--01cace3be33d178b5dddc4ba.md) | 77 | `result-track:01cace3be33d178b5dddc4ba495d438a780d328b16e43901c719b79a1c7bf4ea` |
| 6 | `theorem` | [op_eq_self_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/op-eq-self-of-principal--6916dfd82756e969768b55df.md) | 85 | `result-track:6916dfd82756e969768b55df24eac3a2befe7568a16b3f64d723eb949867639d` |
| 7 | `theorem` | [nfp_le_of_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/nfp-le-of-principal--02b70aacc003fd72c2af2ba8.md) | 92 | `result-track:02b70aacc003fd72c2af2ba8600f8a58985c972238bf936c02740b5ae6784402` |
| 8 | `theorem` | [principal_nfp_blsub₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-nfp-blsub--72a27b9b3770e4fbc6980852.md) | 99 | `result-track:72a27b9b3770e4fbc6980852af89fdaf8354105b788b925146ca9376690bdd1e` |
| 9 | `theorem` | [unbounded_principal](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/unbounded-principal--5d8a5429de2f58242f9ee437.md) | 116 | `result-track:5d8a5429de2f58242f9ee43745e6d342f45de9bde809037a1c28af447f9f49bf` |
| 10 | `theorem` | [principal_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-one--929d9b2c7c4adf4692f922c0.md) | 124 | `result-track:929d9b2c7c4adf4692f922c0aa1baee2303c08a76a07068ff264b1599659c619` |
| 11 | `theorem` | [principal_add_of_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-of-le-one--4843ae529f12c646a4a344f4.md) | 128 | `result-track:4843ae529f12c646a4a344f477979f8c5f5d5d4fe18fe225fe3c24a8d6f31112` |
| 12 | `theorem` | [principal_add_isLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-islimit--49f0db2c3350591b9c580ce8.md) | 134 | `result-track:49f0db2c3350591b9c580ce88b7494d543a4065391a1caf508782ba865ebabd1` |
| 13 | `theorem` | [principal_add_iff_add_left_eq_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-iff-add-left-eq-self--8db65565fc96dd2d1d1be79c.md) | 146 | `result-track:8db65565fc96dd2d1d1be79cc9c27afda0d8c790bf9545110afad56e8650e8bf` |
| 14 | `theorem` | [exists_lt_add_of_not_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/exists-lt-add-of-not-principal-add--aa7f53ea34a6a2417ed45a27.md) | 159 | `result-track:aa7f53ea34a6a2417ed45a27e93a0cdfd99988f8cc3085db11c9aff59289bf59` |
| 15 | `theorem` | [principal_add_iff_add_lt_ne_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-iff-add-lt-ne-self--7a3bea30f2e41494e9f3c73f.md) | 170 | `result-track:7a3bea30f2e41494e9f3c73f9e285c174dfc27761f447ef5bf65dad28f34ef62` |
| 16 | `theorem` | [add_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/add-omega--e637ffb3e80b8f462b0eb78a.md) | 178 | `result-track:e637ffb3e80b8f462b0eb78a3a40f23e6bfceea91d689def155a7d4eb8055cff` |
| 17 | `theorem` | [principal_add_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-omega--b0ab234cfee2fea654883a9f.md) | 185 | `result-track:b0ab234cfee2fea654883a9fd048e459b53380e5970b94faea175b7c82ce2b01` |
| 18 | `theorem` | [add_omega_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/add-omega-opow--c2869105a4321bf8672f2fb5.md) | 189 | `result-track:c2869105a4321bf8672f2fb57e53c46b383e9d87c5c2f8284fd860f9b73a274b` |
| 19 | `theorem` | [principal_add_omega_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-omega-opow--2b64bd30e6a4972fb4beacf7.md) | 207 | `result-track:2b64bd30e6a4972fb4beacf794779ca81b9f685316447e3476d171d70a44d1f1` |
| 20 | `theorem` | [principal_add_iff_zero_or_omega_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-iff-zero-or-omega-opow--fd0c16e6e576c17f6e16794a.md) | 212 | `result-track:fd0c16e6e576c17f6e16794a15f2f8c82d21e384835810b3ca0326b94ece7216` |
| 21 | `theorem` | [opow_principal_add_of_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/opow-principal-add-of-principal-add--db6ebee663b31ac23a97eda9.md) | 236 | `result-track:db6ebee663b31ac23a97eda96ee26c1bbd9fa3a40ceae085d14539f2e598e89a` |
| 22 | `theorem` | [add_absorp](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/add-absorp--430296202cfb465114a23f20.md) | 247 | `result-track:430296202cfb465114a23f207997fe7cffba872f664de0afbb9bbbe6d79d6db2` |
| 23 | `theorem` | [mul_principal_add_is_principal_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-principal-add-is-principal-add--ac3acf4b7b2a58044079ec6d.md) | 251 | `result-track:ac3acf4b7b2a58044079ec6d91d49b22ea3b7e0de4cebe56f07f573ac614a606` |
| 24 | `theorem` | [principal_mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-one--c6d7f22a0a3e05ae75fe0746.md) | 272 | `result-track:c6d7f22a0a3e05ae75fe074641d380394023800ac9a3002aef10cbf9475e5232` |
| 25 | `theorem` | [principal_mul_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-two--5cb31a71785c174397651538.md) | 277 | `result-track:5cb31a71785c174397651538b425d6513d3d475e3e63941cae8d295ae5bf46e9` |
| 26 | `theorem` | [principal_mul_of_le_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-of-le-two--8416b7262a9cecd458ee8692.md) | 285 | `result-track:8416b7262a9cecd458ee86923fa6f8386ed5129c5f5d7082857a10fee2db9f5f` |
| 27 | `theorem` | [principal_add_of_principal_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-of-principal-mul--67d8acf5f2f7b34646e0692a.md) | 296 | `result-track:67d8acf5f2f7b34646e0692aa7e246d80da1710fc6f05689fbf6ab0253436e1b` |
| 28 | `theorem` | [principal_mul_isLimit](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-islimit--ab0b7a9b6638b46735dfb5cc.md) | 308 | `result-track:ab0b7a9b6638b46735dfb5cc82eca2244f97e1035d53f3a26547d2b5c186229e` |
| 29 | `theorem` | [principal_mul_iff_mul_left_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-iff-mul-left-eq--411c36ac6b86f422a6c0aad0.md) | 314 | `result-track:411c36ac6b86f422a6c0aad08d760e79b4326f7fec85b411e6b16baec85fc0e3` |
| 30 | `theorem` | [principal_mul_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-omega--64bffa66c73d80a83a18f0c2.md) | 331 | `result-track:64bffa66c73d80a83a18f0c234a8e72b37f9f3e6da667e173f3ea71d5bc0408b` |
| 31 | `theorem` | [mul_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-omega--639b56638848c57d938fbc90.md) | 338 | `result-track:639b56638848c57d938fbc9014bac2b665c4c27725c109513ef143e684f0ef16` |
| 32 | `theorem` | [mul_lt_omega_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-lt-omega-opow--35b973d6909a30f2b355b450.md) | 342 | `result-track:35b973d6909a30f2b355b45015f9c45bd23a852358295d39b3640e47eb5266b1` |
| 33 | `theorem` | [mul_omega_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-omega-opow-opow--0535027a27b4954c01cf7257.md) | 357 | `result-track:0535027a27b4954c01cf7257f2ca9fb89ad78880e05851a179ed8b95f40f2316` |
| 34 | `theorem` | [principal_mul_omega_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-omega-opow-opow--4a63741da8c4ddc86d206065.md) | 370 | `result-track:4a63741da8c4ddc86d206065fc74fd0869608ef0dbb0fa6eab497f052f7931da` |
| 35 | `theorem` | [principal_add_of_principal_mul_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-add-of-principal-mul-opow--bb8f8ac7d2d9aa78f0313c51.md) | 374 | `result-track:bb8f8ac7d2d9aa78f0313c51a8e1eb9a5069c118b98629848b09aa7a6f0b8001` |
| 36 | `theorem` | [principal_mul_iff_le_two_or_omega_opow_opow](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-mul-iff-le-two-or-omega-opow-opow--d39a1fb2ef9410db3a5554a7.md) | 381 | `result-track:d39a1fb2ef9410db3a5554a713068df1f4593af3b56881027fd3b77ca93aeb36` |
| 37 | `theorem` | [mul_omega_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-omega-dvd--d339b2165ba16627cfbdf973.md) | 400 | `result-track:d339b2165ba16627cfbdf973702ff7a16cf0abc3ce8658417bac6d9a855c1106` |
| 38 | `theorem` | [mul_eq_opow_log_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/mul-eq-opow-log-succ--bfd2a34a298567e4e1ac6955.md) | 404 | `result-track:bfd2a34a298567e4e1ac69553d5c9d1c45d908aeea3a2806d579e0ad407f543f` |
| 39 | `theorem` | [principal_opow_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/principal-opow-omega--ba0913e3536d94559f44d889.md) | 426 | `result-track:ba0913e3536d94559f44d889a206f2cb241f61ebfc1c88e88c04cf5ad6a08d78` |
| 40 | `theorem` | [opow_omega](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant796af4a8e1d6a255dfc8bab0f0d332b8c1006ee930242035e13488f8b89fdaee.lean/declarations/opow-omega--299d4c13b94968ffc544cb42.md) | 433 | `result-track:299d4c13b94968ffc544cb425a70c12df5e2f470620cef048d137d37e281e69a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.GroupTheory.SemidirectProduct.Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16ef08dc87d9254d3d009ba50dd61a5b9344cd7",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16ef08dc87d9254d3d009ba50dd61a5b9344cd7`.

Source path: `GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Complement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemidirectProduct](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/semidirectproduct--9d85c81f680849f6307d5f19.md) | 42 | `declaration-track:9d85c81f680849f6307d5f19aab253f69681ba5568c2fa61e3f11e63757fa8d3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/instance--d85d3f5b58aa251343ca1dfc.md) | 60 | `declaration-track:d85d3f5b58aa251343ca1dfc3304ece47ca65c43b9a8c421172b98e95073b080` |
| 3 | `lemma` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mul-def--c9069a4dd8eaafdf70bbab60.md) | 63 | `result-track:c9069a4dd8eaafdf70bbab608f58ae40fe9dccf644906056d49756b7b802dc9e` |
| 4 | `theorem` | [mul_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mul-left--7d98f218d543339dddf4cc04.md) | 66 | `result-track:7d98f218d543339dddf4cc043a4ede7f0b91244226c5e49e4424e8f1ed18e2c1` |
| 5 | `theorem` | [mul_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mul-right--46e55983b6161a667d88db3d.md) | 69 | `result-track:46e55983b6161a667d88db3d14a16bc0767d1cb5a52c024575f6408f194ad62b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/instance--db12169e029ecb8b0627af2d.md) | 71 | `declaration-track:db12169e029ecb8b0627af2decc28a148abf099f052ae13bda1551df6eaf0f14` |
| 7 | `theorem` | [one_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/one-left--1026309af8d31494f8d87ef8.md) | 74 | `result-track:1026309af8d31494f8d87ef8e08a3947fb4912d90452465a981ad227b634cc14` |
| 8 | `theorem` | [one_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/one-right--039b1bf76d813de077999771.md) | 77 | `result-track:039b1bf76d813de077999771d0fbee13c70168843c834fa38379639f66f6817b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/instance--017b596748451681e414c572.md) | 79 | `declaration-track:017b596748451681e414c572289590094910bf28b1c9e1a00baaf3c1b6dd30a8` |
| 10 | `theorem` | [inv_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inv-left--7f9eb6907ddc57d634b4dd9a.md) | 83 | `result-track:7f9eb6907ddc57d634b4dd9ad57806722e96f1fcb7bc64578c4bbfec91968d8c` |
| 11 | `theorem` | [inv_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inv-right--915e600808771fec3ce4c6ce.md) | 86 | `result-track:915e600808771fec3ce4c6ce79f0e9d73236e51aee20a59e06be112173f3902c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/instance--c0304d9aee7e25a0c8044e92.md) | 88 | `declaration-track:c0304d9aee7e25a0c8044e9273ceb7edae8fcdadd2ec2b4cdd2e71aeddb86e42` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/instance--773db2f70acbe4b4f05523b5.md) | 94 | `declaration-track:773db2f70acbe4b4f05523b5d88f709cb0ed2df1405cc91535bdc124dd40690c` |
| 14 | `def` | [inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl--8e9168daea0dbd2cc048698d.md) | 97 | `declaration-track:8e9168daea0dbd2cc048698d208bab0e4e5aaee96c8d44e73fdba1db47293673` |
| 15 | `theorem` | [left_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/left-inl--5764b55f84eed3b85f323542.md) | 104 | `result-track:5764b55f84eed3b85f323542f334e6191632b9ab422fc0aaa4baa0243699e39e` |
| 16 | `theorem` | [right_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/right-inl--8870e29ebc5b7eb179d10e33.md) | 107 | `result-track:8870e29ebc5b7eb179d10e3361d972c9842265fb85527803db77c2731ade281e` |
| 17 | `theorem` | [inl_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl-injective--7aef528f71e3fefc185515cd.md) | 109 | `result-track:7aef528f71e3fefc185515cd63dbd2e1875f7adc0547290dc2c71dee6ea11173` |
| 18 | `theorem` | [inl_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl-inj--552110473ab0c02407210744.md) | 113 | `result-track:552110473ab0c02407210744dcdcd8fd28b52a4d943183a712ac8413d7058001` |
| 19 | `def` | [inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inr--f10e49771fc8db834fcda6fa.md) | 117 | `declaration-track:f10e49771fc8db834fcda6fa636fbb5f3c81c500ce0c47c2587747754b9fdecb` |
| 20 | `theorem` | [left_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/left-inr--f622fe7c16809045afa93633.md) | 123 | `result-track:f622fe7c16809045afa93633ad2e5f3dc5246277df4800f055cd52482f8dd63f` |
| 21 | `theorem` | [right_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/right-inr--7de1a6089c769e702c76bf00.md) | 126 | `result-track:7de1a6089c769e702c76bf00d19c14c94a2e5caab0025584c4e889b9b68fef3a` |
| 22 | `theorem` | [inr_injective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inr-injective--7b631b2113b0f524e8c7cdfd.md) | 128 | `result-track:7b631b2113b0f524e8c7cdfd89c87ec5d4b690cc866cfd63741ec2fb3dc0299b` |
| 23 | `theorem` | [inr_inj](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inr-inj--271300d5ed389acf336e4e4b.md) | 132 | `result-track:271300d5ed389acf336e4e4b4427de1cb40cb025e6366d6d7a51c2c516d45d3d` |
| 24 | `theorem` | [inl_aut](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl-aut--fe7589bca3a398f5ca72c04b.md) | 135 | `result-track:fe7589bca3a398f5ca72c04bf48fad945648777bebc80806977e79ccfeb5b9ca` |
| 25 | `theorem` | [inl_aut_inv](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl-aut-inv--bf24a806cbd66a9bb98de5f1.md) | 138 | `result-track:bf24a806cbd66a9bb98de5f199f6798a8b2db9f076d9bbbccf9690ddc70c4596` |
| 26 | `theorem` | [mk_eq_inl_mul_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mk-eq-inl-mul-inr--504ae50edfd9861586f36cf7.md) | 142 | `result-track:504ae50edfd9861586f36cf72f0c1e294a46d0efd4b5619ee8d295cce3ca4c7c` |
| 27 | `theorem` | [inl_left_mul_inr_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/inl-left-mul-inr-right--a48f7ef30d671cfead8a65f6.md) | 145 | `result-track:a48f7ef30d671cfead8a65f669440eaf5314cf238a84663449ef1936d965a831` |
| 28 | `def` | [rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom--684b4d6f2f76802b82cd1b33.md) | 148 | `declaration-track:684b4d6f2f76802b82cd1b3300170e57e1cbd27361db5f596613ab5ef839090a` |
| 29 | `theorem` | [rightHom_eq_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-eq-right--083a1b400c9000ee1b0555e5.md) | 154 | `result-track:083a1b400c9000ee1b0555e588a07265237476dec9c1878d0454215ceeb11c03` |
| 30 | `theorem` | [rightHom_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-comp-inl--5a765dfca7cb476bd73c0587.md) | 157 | `result-track:5a765dfca7cb476bd73c0587aaca589f7ac1f3f77c5faf7194b7a4367a5748bb` |
| 31 | `theorem` | [rightHom_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-comp-inr--d4b8559305cf47f22a556bce.md) | 160 | `result-track:d4b8559305cf47f22a556bcec1aec737c1dee9c65f1f6c9815a2d29dd01cbb24` |
| 32 | `theorem` | [rightHom_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-inl--1e1a396933372ede4d4cac10.md) | 164 | `result-track:1e1a396933372ede4d4cac103c87e48ed3f0651b4ad0d04cca5c50cdc352b811` |
| 33 | `theorem` | [rightHom_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-inr--87df3a193ebb5ebcb7db09d1.md) | 167 | `result-track:87df3a193ebb5ebcb7db09d1c540c9fc38040d62dbb48d29b0207923d64130a5` |
| 34 | `theorem` | [rightHom_surjective](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-surjective--aae13824c487ab358ed8c13d.md) | 169 | `result-track:aae13824c487ab358ed8c13d2ae75e5ffe6e4dd615ece6241c33504aeae59db5` |
| 35 | `theorem` | [range_inl_eq_ker_rightHom](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/range-inl-eq-ker-righthom--822ca1c4d5e97ee16337e646.md) | 172 | `result-track:822ca1c4d5e97ee16337e6460edf4cf4aa879f82106131f8c797d3562aad56c3` |
| 36 | `def` | [equivProd](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/equivprod--67d5becad0978b278ec1f693.md) | 178 | `declaration-track:67d5becad0978b278ec1f6930f14dcc520ffbaceec549a1bac3203f75167da66` |
| 37 | `def` | [mulEquivProd](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mulequivprod--8514a2517a89cc703bfb3d55.md) | 187 | `declaration-track:8514a2517a89cc703bfb3d55cbfa1f69c62b5f7c138b76c320eb78e4a6a2ee7a` |
| 38 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift--4f6246bad25e01aa3e4661b4.md) | 196 | `declaration-track:4f6246bad25e01aa3e4661b40fab2fe4e25c5a18aa71b9eb8cdc04d0637cd36b` |
| 39 | `theorem` | [lift_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift-inl--f64bd8d15b59185a04a3a247.md) | 205 | `result-track:f64bd8d15b59185a04a3a24743f77fa1991229b8d206be09851e6156d23397b3` |
| 40 | `theorem` | [lift_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift-comp-inl--a5eb37013d8f74088e6ac805.md) | 208 | `result-track:a5eb37013d8f74088e6ac805504dac2a44f1a36f65a07702f453e0439d3ea290` |
| 41 | `theorem` | [lift_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift-inr--45d58deac86647660a2d4c57.md) | 211 | `result-track:45d58deac86647660a2d4c57718cc907bdd0a326230c07e4ce7e0282217b4d34` |
| 42 | `theorem` | [lift_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift-comp-inr--7930771463fb4ff974e55177.md) | 214 | `result-track:7930771463fb4ff974e55177f4c9b0b70a51fde9865d7fb7c6cfc301c29dcea2` |
| 43 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/lift-unique--d492aa08d67c303031bee622.md) | 216 | `result-track:d492aa08d67c303031bee62233953e32b4c5fa7f0929c0073068c37682db9411` |
| 44 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/hom-ext--a25c3a19b9419c16a75d6ed2.md) | 224 | `result-track:a25c3a19b9419c16a75d6ed27126cad2e50f82be7122f71f9ee15b21eba79370` |
| 45 | `def` | [monoidHomSubgroup](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/monoidhomsubgroup--442c282df51dc6119a63597f.md) | 231 | `declaration-track:442c282df51dc6119a63597f904bc4743c70f94d0a4c2ffbb31f7c5ae50ced22` |
| 46 | `def` | [mulEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/mulequivsubgroup--6bdb4e392fc3d21f9704f388.md) | 237 | `declaration-track:6bdb4e392fc3d21f9704f388f9490131cd9c17a74ec7fe12873d89cb5f94d4c3` |
| 47 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map--5dc6c0e07e635242b1c6208e.md) | 252 | `declaration-track:5dc6c0e07e635242b1c6208e949bff54ae5b6d49f3d2406e69c030c586f2cd4d` |
| 48 | `theorem` | [map_left](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-left--062c6b314b3dbc25883108ee.md) | 260 | `result-track:062c6b314b3dbc25883108eee953e8794866acb5bb2e1a0c39e04a6c633465cf` |
| 49 | `theorem` | [map_right](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-right--873c939c980fe1b891104a7c.md) | 263 | `result-track:873c939c980fe1b891104a7c6fe799a34ed041b5ddf01ee6bc917d071ed385ff` |
| 50 | `theorem` | [rightHom_comp_map](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/righthom-comp-map--a97847417be19735d8478e45.md) | 266 | `result-track:a97847417be19735d8478e452a73e5115321f07208f3d7791b022b7ef5159154` |
| 51 | `theorem` | [map_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-inl--63714318d7d2d027a217741c.md) | 269 | `result-track:63714318d7d2d027a217741ce0487d4d5a2eae72b7bceb3add71c6b4eafb79d2` |
| 52 | `theorem` | [map_comp_inl](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-comp-inl--4bc742a9bb2b610f99a18c74.md) | 272 | `result-track:4bc742a9bb2b610f99a18c74a72e34361461cfcdc34adbba3f5c3bde5142a88c` |
| 53 | `theorem` | [map_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-inr--308171e00886eb16571705b5.md) | 275 | `result-track:308171e00886eb16571705b537c01ddcc5b3b8187f676af3a79a2017095a2ca6` |
| 54 | `theorem` | [map_comp_inr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/map-comp-inr--96c529815bab67088416d0c1.md) | 278 | `result-track:96c529815bab67088416d0c10f0cdefc19717c75db1f3b26ab5ade40d5551df2` |
| 55 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/congr--3143c65d7e0fce4a04577fc8.md) | 292 | `declaration-track:3143c65d7e0fce4a04577fc8e5fc7e2aa18953992cbdb974743498c6cc386f3f` |
| 56 | `def` | [congr'](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/congr--462a038907f578ce0ab415c8.md) | 303 | `declaration-track:462a038907f578ce0ab415c84d1ae0180e7460f99712300da034c0da46c7669c` |
| 57 | `lemma` | [card](../../../../../mathematics/Algebra/GroupTheory/SemidirectProduct/Variant6c43c80b66b8575563e1c000cedc3e1dd970e592271769ca4b9f2665a664d747.lean/declarations/card--031f578e609e15bf19b2159b.md) | 310 | `result-track:031f578e609e15bf19b2159bc3d813a823664746bdd9b80c56b8c7e9d6b8573e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

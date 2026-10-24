# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd2332e53fa883f6eb9b60c55aa8097a65e6bc3",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd2332e53fa883f6eb9b60c55aa8097a65e6bc3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.NatLemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.DecidableEq` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lex` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.List.lt_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/root-list-lt-toarray--65373bfb64915d67099c51b8.md) | 30 | `result-track:65373bfb64915d67099c51b8bf8dd29a146ff7bbfea48647f508ad8f7c492dcd` |
| 2 | `theorem` | [_root_.List.le_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/root-list-le-toarray--c2439d08efe59f4c9fcc1d6d.md) | 31 | `result-track:c2439d08efe59f4c9fcc1d6d9c338b10b9d9846c36c8f9924f8f211587d8cdda` |
| 3 | `theorem` | [lt_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-tolist--76cf34908f996da3cb8931b4.md) | 33 | `result-track:76cf34908f996da3cb8931b4ead39aadc2d82bfadf0ed6fff2f2787508517521` |
| 4 | `theorem` | [le_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-tolist--10645247d6333cbe988533a5.md) | 34 | `result-track:10645247d6333cbe988533a525466738d0f1cd07fdb37c04b84b098a9bfbdb83` |
| 5 | `theorem` | [not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/not-lt--1951f3d14b9facee7baf0f90.md) | 42 | `result-track:1951f3d14b9facee7baf0f90bdbf03857701ced237880e1ab23f094c0f5076cc` |
| 6 | `theorem` | [not_lt_iff_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/not-lt-iff-ge--89741ab57d69b92f0bb2b761.md) | 45 | `result-track:89741ab57d69b92f0bb2b7614a4e1a92382ab89cb32e1fba469352aeda8c3003` |
| 7 | `theorem` | [not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/not-le--dd70b7191f82b2718dfdf070.md) | 48 | `result-track:dd70b7191f82b2718dfdf070ee32881c492d45f979843c202b7baddde12d246e` |
| 8 | `theorem` | [not_le_iff_gt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/not-le-iff-gt--5b6927d7c70392175bce8f03.md) | 53 | `result-track:5b6927d7c70392175bce8f036bc6f3d02377128c399296370301ca1b25c03bde` |
| 9 | `theorem` | [lex_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-empty--d35c9d725bd3aa74a641e7ef.md) | 57 | `result-track:d35c9d725bd3aa74a641e7ef8d18e0bdf91427707d5865e7279a074227a941f2` |
| 10 | `theorem` | [cons_lex_cons.forIn'_congr_aux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/cons-lex-cons-forin-congr-aux--9801f1dac237ca3ca6a5e7c5.md) | 60 | `result-track:9801f1dac237ca3ca6a5e7c5b9078ea1a83f57c4e224fc35e84628f2dfd0a01d` |
| 11 | `theorem` | [cons_lex_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/cons-lex-cons--4b226952f42cd1bf2cd4b353.md) | 75 | `result-track:4b226952f42cd1bf2cd4b35325c071372902748d9b806e2716ef262e367d3713` |
| 12 | `theorem` | [_root_.List.lex_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/root-list-lex-toarray--cf777e9e85245f6c08ac0817.md) | 86 | `result-track:cf777e9e85245f6c08ac0817f4161c04a1231c1798f83961b9f4af39c163c31e` |
| 13 | `theorem` | [singleton_lex_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/singleton-lex-singleton--bf63664f7017da72a4b8bda3.md) | 97 | `result-track:bf63664f7017da72a4b8bda3d5c6cae3acae101c0af8cd047092749576d74f8c` |
| 14 | `theorem` | [lex_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-tolist--122d248918f71f0893c4b50c.md) | 100 | `result-track:122d248918f71f0893c4b50c72bdc58fff3eae2d965ebc11c8520a15203c556f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--bda27810f02d824de951d71d.md) | 104 | `declaration-track:bda27810f02d824de951d71d37e53a0fc5871c16a96c10974cb87824bce4a0ac` |
| 16 | `theorem` | [lt_irrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-irrefl--67ace149a09b4d0d642957d4.md) | 112 | `result-track:67ace149a09b4d0d642957d401064f722b3fde5bfd74bf3160dfb8a9d3781d9e` |
| 17 | `instance` | [ltIrrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/ltirrefl--fe12e287bec79572c0990ed4.md) | 115 | `declaration-track:fe12e287bec79572c0990ed4701546a4a7aea2afcdfae2079d8ff9731ed97ef3` |
| 18 | `theorem` | [not_lt_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/not-lt-empty--eba868cb03e92ab66a7ca632.md) | 118 | `result-track:eba868cb03e92ab66a7ca6323aff39d297c3896603878d805fa7e95506f18540` |
| 19 | `theorem` | [empty_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/empty-le--a468be751f4a9236aa8caff1.md) | 119 | `result-track:a468be751f4a9236aa8caff18f9fe588a2610bd132cfed26d93c60a3e328ed64` |
| 20 | `theorem` | [le_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-empty--a75a661ba103a8f05be711c6.md) | 121 | `result-track:a75a661ba103a8f05be711c6b2fafe2c34fb78b34d61d36fea61a66e20de5343` |
| 21 | `theorem` | [empty_lt_push](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/empty-lt-push--84ac70684b489f3df482b683.md) | 125 | `result-track:84ac70684b489f3df482b68394f3187611f0b5142bc228c8a7e05c3ad4840dc0` |
| 22 | `theorem` | [le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-refl--e9fba8a4aec8777482c2b903.md) | 128 | `result-track:e9fba8a4aec8777482c2b9035b969c127fc266c3b0a68afda2fc310c4d191008` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--a3be864d3bf2ef48d70b0eee.md) | 131 | `declaration-track:a3be864d3bf2ef48d70b0eee3b3621deb750d4e6d2c443d7673049b884752d2d` |
| 24 | `theorem` | [lt_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-trans--f7b59b9982a60131525f0b0c.md) | 134 | `result-track:f7b59b9982a60131525f0b0c0d6f6d21a9a63a8c1d0bb5cb56b5025c434c1d78` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--f6c71b1ca952aeb19ba58f2d.md) | 139 | `declaration-track:f6c71b1ca952aeb19ba58f2d9742c5302614a52b3e47303b001f26ca8dc6d26b` |
| 26 | `theorem` | [lt_of_le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-of-le-of-lt--fcab768afc94129cc76020ec.md) | 143 | `result-track:fcab768afc94129cc76020ece75c5556b3d37fccadc22f0561609939c6ef2b71` |
| 27 | `theorem` | [lt_of_le_of_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-of-le-of-lt--0bf9cb2e9d4157c2689ca8f2.md) | 148 | `result-track:0bf9cb2e9d4157c2689ca8f22d4993a98bb53776a1ab6b8f286330f07b5d0c1c` |
| 28 | `theorem` | [le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-trans--d4079b585cb2cf6e09a6179e.md) | 157 | `result-track:d4079b585cb2cf6e09a6179e5f9804d5e3bc25fec0749e0265a5266389db466c` |
| 29 | `theorem` | [le_trans'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-trans--f2578e33fe0280241cc74bb8.md) | 162 | `result-track:f2578e33fe0280241cc74bb876fd8012cfa58f2ac1f3d5a4c9c7446b2d754ae2` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--cd9ce5b3169163ea98539ac0.md) | 171 | `declaration-track:cd9ce5b3169163ea98539ac0dbd1944612b074f3e35aab2619d97469f00b95c6` |
| 31 | `theorem` | [lt_asymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-asymm--a540f594ac1ecddbbd10a9c9.md) | 175 | `result-track:a540f594ac1ecddbbd10a9c9698b1bdc299f07ec7cbef86cf64cda980388c4c3` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--74cc6d0a0bf2b5d2005e33f1.md) | 179 | `declaration-track:74cc6d0a0bf2b5d2005e33f1b369ee8e8ea9181d472486f65f7b5c4a49cdc59a` |
| 33 | `theorem` | [le_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-total--a70a0a445d6b3fdc74db5364.md) | 184 | `result-track:a70a0a445d6b3fdc74db536411dfeeb1566c95f9b497ca42cbd90a2c2424ed1c` |
| 34 | `theorem` | [le_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-of-lt--7571896433956dc3bba40e55.md) | 188 | `result-track:7571896433956dc3bba40e55ad47144bc4db40f8128a0c8e96088f67c35d7884` |
| 35 | `theorem` | [le_iff_lt_or_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-iff-lt-or-eq--784dc5e9a10e3c4242a8109b.md) | 193 | `result-track:784dc5e9a10e3c4242a8109b5f3ed257ad26e74ed34d6434ed90410905b23c3a` |
| 36 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-antisymm--c3dbe6c92d35a749b94877cc.md) | 200 | `result-track:c3dbe6c92d35a749b94877ccedd1346b565372d19b8c1e6c4cd4114b2251f77d` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--6e95adb37addb51bf743aa32.md) | 204 | `declaration-track:6e95adb37addb51bf743aa32b005ab3c850a0d01317fe4f3f2147877b39d5cda` |
| 38 | `theorem` | [lex_eq_true_iff_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-eq-true-iff-lt--c50a1ada9ba4d21038142c7c.md) | 208 | `result-track:c50a1ada9ba4d21038142c7c9b5eb8e4336ceb1b9093d8f79eb75098bc64ef77` |
| 39 | `theorem` | [lex_eq_false_iff_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-eq-false-iff-ge--d597ea0607ed02dda09ca184.md) | 214 | `result-track:d597ea0607ed02dda09ca18430ea855b9ae375fd37f091478b40af6e3499b83e` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--0372f360960365b70b657206.md) | 220 | `declaration-track:0372f360960365b70b65720682c2258d6c48ac33bd4ac8be423f3dbf0b19ac78` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/instance--3ae093363c75e6958b61c82a.md) | 223 | `declaration-track:3ae093363c75e6958b61c82ae6ca786726e1189af9c56872b9ca13660e1ac90c` |
| 42 | `theorem` | [lex_eq_true_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-eq-true-iff-exists--1f30f4151745ced1b4a3394b.md) | 234 | `result-track:1f30f4151745ced1b4a3394b65d45ff68fef564242ddfd3ed83d5c081fe81a45` |
| 43 | `theorem` | [lex_eq_false_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lex-eq-false-iff-exists--07f0b4b806924ec7852a52ff.md) | 259 | `result-track:07f0b4b806924ec7852a52ff31054aa88be8d7e4edf4b271476249f092366e7d` |
| 44 | `theorem` | [lt_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/lt-iff-exists--24792816bf631219e45328c3.md) | 272 | `result-track:24792816bf631219e45328c3d7d4a4252a38d6712dac63ce33104ce8df07babe` |
| 45 | `theorem` | [le_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-iff-exists--f3e5d37df4290a89762b966a.md) | 282 | `result-track:f3e5d37df4290a89762b966a437f86d6889b93357f0898b74071421b54f97df0` |
| 46 | `theorem` | [append_left_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/append-left-lt--14c0a89d397a2fa35da0f401.md) | 294 | `result-track:14c0a89d397a2fa35da0f40181a2b9789d93403f57dc534e23737eacff53d800` |
| 47 | `theorem` | [append_left_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/append-left-le--dc62694b782034214d6e35be.md) | 301 | `result-track:dc62694b782034214d6e35bef8ae229088eadde0aa27dd9840f595f5cee0ba76` |
| 48 | `theorem` | [le_append_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/le-append-left--379e3826a58a197f26f5849d.md) | 311 | `result-track:379e3826a58a197f26f5849d05e24ea95a8446c4bc9b33f28bb9319ab958ee52` |
| 49 | `theorem` | [map_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/map-lt--b2ce76763d78dc8ddf07f115.md) | 317 | `result-track:b2ce76763d78dc8ddf07f11566747f1312278e6ae75c0cf6cbf8d9643e2b0643` |
| 50 | `theorem` | [map_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2d491fc944edb48d88ecfacc387ddf834e78053ccfdbfbe63eaba725eac8b5dc.lean/declarations/map-le--19dbcd5b31bc72e71895e39b.md) | 324 | `result-track:19dbcd5b31bc72e71895e39b428175486a77940556493432d0ec5d12bdd6e733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

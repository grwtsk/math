# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sqrt.Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95b38ee8c1851996d62b83a36477dfb6e06b3c96",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95b38ee8c1851996d62b83a36477dfb6e06b3c96`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [iter_fp_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/iter-fp-bound--9e10729803844cef7ee2081e.md) | 35 | `result-track:9e10729803844cef7ee2081e02bc8f7936e9fefc6d01c28b843c4ed9037c77bb` |
| 2 | `lemma` | [AM_GM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/am-gm--9ebd8a91a7e5bea6f5848848.md) | 45 | `result-track:9ebd8a91a7e5bea6f5848848909f2cecd2eaedf0772fedb6aa13f1060f86188a` |
| 3 | `lemma` | [sqrt.iter_sq_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-iter-sq-le--210c8db13fb959f3d104c406.md) | 55 | `result-track:210c8db13fb959f3d104c4063aa06c14c5eeb7a7aafb3de9d559d39b2d8d18a0` |
| 4 | `lemma` | [sqrt.lt_iter_succ_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-lt-iter-succ-sq--7146bfc019ea9e841e678253.md) | 68 | `result-track:7146bfc019ea9e841e678253256397dff66222a24187f760346440d3e242f9b0` |
| 5 | `def` | [IsSqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/issqrt--58212ced8381d2402ff0d5a0.md) | 90 | `declaration-track:58212ced8381d2402ff0d5a03632bf5e292941fbc5da4f2e14ae050840616d22` |
| 6 | `lemma` | [sqrt_isSqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-issqrt--9e23af1e29b4bff383bf4a8a.md) | 102 | `result-track:9e23af1e29b4bff383bf4a8a95f01f5fefa5ce93f517e461c81547056c4ad42f` |
| 7 | `lemma` | [sqrt_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-le--db36ebaca15c704c6d66f6d5.md) | 119 | `result-track:db36ebaca15c704c6d66f6d57314f3582daec5c52a0d0c6742d396589de32dd9` |
| 8 | `lemma` | [sqrt_le'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-le--8494d7905b7f75c214f617f3.md) | 121 | `result-track:8494d7905b7f75c214f617f3d3c713dee33885eaa702a9901553fdc93d54399d` |
| 9 | `lemma` | [lt_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/lt-succ-sqrt--4fb34a4a982efab15af5d3e9.md) | 123 | `result-track:4fb34a4a982efab15af5d3e9fb3c545739c02725ec678fa6bef3e64e01b8318a` |
| 10 | `lemma` | [lt_succ_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/lt-succ-sqrt--16e58ae85e44606296101694.md) | 125 | `result-track:16e58ae85e4460629610169442f423c8866476b08d7884c2fb3c20d31be3a02b` |
| 11 | `lemma` | [sqrt_le_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-le-add--2882c9b061a184c2ec1f3c95.md) | 127 | `result-track:2882c9b061a184c2ec1f3c955e777d3a7a04edc0ff9652dfbcfa28525ee5f060` |
| 12 | `lemma` | [le_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/le-sqrt--cc914e1667891a7d03a6b36e.md) | 130 | `result-track:cc914e1667891a7d03a6b36eac57744fe4f5cae9c665f0bfda14a74ffb14543e` |
| 13 | `lemma` | [le_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/le-sqrt--e22ed3d820a2348ce935123b.md) | 134 | `result-track:e22ed3d820a2348ce935123b97800b87989a2c0f01c28bd6307d5b0a94666844` |
| 14 | `lemma` | [sqrt_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-lt--1b40559fb1f149f51c27292d.md) | 136 | `result-track:1b40559fb1f149f51c27292d8eea2018cbe381b2e73f17af913c64414cb772fd` |
| 15 | `lemma` | [sqrt_lt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-lt--0e6d4dc0d73e649f67eeb58c.md) | 138 | `result-track:0e6d4dc0d73e649f67eeb58c2f56c5e899cbf0e0f8a642aeea458933d2d41ea9` |
| 16 | `lemma` | [sqrt_le_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-le-self--4b0d6e1abe18d6f8cc5b43f5.md) | 140 | `result-track:4b0d6e1abe18d6f8cc5b43f5579c3cb6ecd003b7a81309729cf7bbc4f258f46f` |
| 17 | `lemma` | [sqrt_le_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-le-sqrt--a44d5c3f25d3fd1dce870d90.md) | 142 | `result-track:a44d5c3f25d3fd1dce870d9043930ec8b495246cee3d114afeb41be27058d13a` |
| 18 | `lemma` | [sqrt_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-zero--7434ecd3419743afa1a41d06.md) | 144 | `result-track:7434ecd3419743afa1a41d069c9bde57754345f868659882472db18ad7d54021` |
| 19 | `lemma` | [sqrt_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-one--70d3f912a275b0b51fa4a1dd.md) | 146 | `result-track:70d3f912a275b0b51fa4a1dd5b19bf7572d1007562c53a234d5d56d8ba4f802e` |
| 20 | `lemma` | [sqrt_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-eq-zero--a2bf0d3ad48c45b03cca949b.md) | 148 | `result-track:a2bf0d3ad48c45b03cca949be07109fb0fb8946999814a9854be1f0157173ff7` |
| 21 | `lemma` | [eq_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/eq-sqrt--143979a918cc8fa13badd91f.md) | 153 | `result-track:143979a918cc8fa13badd91f00058947c18e1bc70749ff8c6e8a70ede8a862e2` |
| 22 | `lemma` | [eq_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/eq-sqrt--c647d4b95f1a81d837e9bdc5.md) | 157 | `result-track:c647d4b95f1a81d837e9bdc58408bfa96ff1d2f8358e73ad765cf681affbdbd6` |
| 23 | `lemma` | [le_three_of_sqrt_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/le-three-of-sqrt-eq-one--eb0b81dfa060670c68e342f0.md) | 160 | `result-track:eb0b81dfa060670c68e342f0cf4f713d97b221a5bcf46205db8d0a37a25b7ff5` |
| 24 | `lemma` | [sqrt_lt_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-lt-self--c1fca139c20eecf1091939d2.md) | 163 | `result-track:c1fca139c20eecf1091939d2cbeae7639d633d4ace9dad18415ffb1c64d8061b` |
| 25 | `lemma` | [sqrt_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-pos--cb7cb4d06b9a485116bc9e60.md) | 166 | `result-track:cb7cb4d06b9a485116bc9e605bf7f5e734cc537fc9e8b0f60c007b7454ce2f6f` |
| 26 | `lemma` | [sqrt_add_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-add-eq--1690d8220b25c2144c35c24a.md) | 169 | `result-track:1690d8220b25c2144c35c24a1efec40610e29db6b52d045fea8460361a62aef4` |
| 27 | `lemma` | [sqrt_add_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-add-eq--fcb428257c7abde4928e9468.md) | 177 | `result-track:fcb428257c7abde4928e9468fdaeb149bb6c5bb13a1bd00b8a85afe34fd19cfd` |
| 28 | `lemma` | [sqrt_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-eq--cc3af4281f996949017cb51b.md) | 180 | `result-track:cc3af4281f996949017cb51b3b2f3c173c506a76fda1df603d50da59182f8cbd` |
| 29 | `lemma` | [sqrt_eq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-eq--69e84384696108e6d51aa65e.md) | 182 | `result-track:69e84384696108e6d51aa65e304de01021253d199aa6761f3400e0afc05dba81` |
| 30 | `lemma` | [sqrt_succ_le_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-succ-le-succ-sqrt--3d916718b9fe1e8089419186.md) | 184 | `result-track:3d916718b9fe1e8089419186f8e91eef44664843bcc9e9948a35a603360abbe0` |
| 31 | `lemma` | [exists_mul_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/exists-mul-self--ba3843e7ae455e185bf675fb.md) | 189 | `result-track:ba3843e7ae455e185bf675fb0fbee56aaaf80cb5324addd92d517762955702df` |
| 32 | `lemma` | [exists_mul_self'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/exists-mul-self--639599ed9c30016b9b527264.md) | 192 | `result-track:639599ed9c30016b9b52726456f37490b551d6a411478b66dfd035be632af5c6` |
| 33 | `lemma` | [sqrt_mul_sqrt_lt_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-mul-sqrt-lt-succ--7b3fdabcbde89a3c27f6e573.md) | 195 | `result-track:7b3fdabcbde89a3c27f6e573af7ae244cd85ea5950858880b760aa2f88ed2b26` |
| 34 | `lemma` | [sqrt_mul_sqrt_lt_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/sqrt-mul-sqrt-lt-succ--875437c6cc75ced00fb6eabe.md) | 198 | `result-track:875437c6cc75ced00fb6eabed07f7fab3ba069c7b36a34fff215655e5d81ae61` |
| 35 | `lemma` | [succ_le_succ_sqrt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/succ-le-succ-sqrt--1f078c74cb4c6cae9bc9e729.md) | 201 | `result-track:1f078c74cb4c6cae9bc9e7291e0eb81ada6a411d1c0134f1b87de9ef573e7242` |
| 36 | `lemma` | [succ_le_succ_sqrt'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/succ-le-succ-sqrt--502e619493a1f5ba56ee7232.md) | 204 | `result-track:502e619493a1f5ba56ee723215ac5d1e1bd1590dfd20e7705c1381eb360c20aa` |
| 37 | `lemma` | [not_exists_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/not-exists-sq--8574c37f929379f5b61f0585.md) | 208 | `result-track:8574c37f929379f5b61f0585233bcd5d467d4c993dce45e33362b09aed0f1c39` |
| 38 | `lemma` | [not_exists_sq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sqrt/Variant8cfda22436c5c88cfefd159f4a5eb5753ae50abada427eb30f001464e24e88a7.lean/declarations/not-exists-sq--ca5fbf86c37458243b7bd282.md) | 214 | `result-track:ca5fbf86c37458243b7bd282749e74ac2c1a79934bf4a241049457fed16dcd2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8aa8c3793482e540365026ae8633f4f172be60e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8aa8c3793482e540365026ae8633f4f172be60e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.ZeroCons` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp--c7299b1fb27bd546848102a6.md) | 35 | `declaration-track:c7299b1fb27bd546848102a61af49be1164751e2e90e6945b4de53aad9e68428` |
| 2 | `theorem` | [coe_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/coe-countp--bb52c6cdc62273f6c02ee8c4.md) | 39 | `result-track:bb52c6cdc62273f6c02ee8c413de34edd325a7042b3455c8a98f5a34999d3bee` |
| 3 | `theorem` | [countP_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-zero--e1f82a246d6ae650aabd8b9a.md) | 43 | `result-track:e1f82a246d6ae650aabd8b9a33b3bb2ea86709f887f26ef7e153874357e05098` |
| 4 | `theorem` | [countP_cons_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-cons-of-pos--b79f81760f3feb2eb279027d.md) | 49 | `result-track:b79f81760f3feb2eb279027d652a62dd021c2d4e37824c63de74b972616d0e32` |
| 5 | `theorem` | [countP_cons_of_neg](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-cons-of-neg--669bae79316967715ffc6e6c.md) | 53 | `result-track:669bae79316967715ffc6e6c114e7063c0d94cbcad540ea4d3cb18ff626dd9d1` |
| 6 | `theorem` | [countP_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-cons--bdfa730a3511c8eab0889f65.md) | 58 | `result-track:bdfa730a3511c8eab0889f65f7f9eaff7a7e1c610ebda6a95c60a5da9c677a9b` |
| 7 | `theorem` | [countP_le_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-le-card--b9e38e75b1a05111cbce00ed.md) | 61 | `result-track:b9e38e75b1a05111cbce00ed844e4c84188f1f54794130ee2298f166af835cad` |
| 8 | `theorem` | [card_eq_countP_add_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/card-eq-countp-add-countp--73463e76529a83ce9e1f4c5b.md) | 64 | `result-track:73463e76529a83ce9e1f4c5b2fe6a127d0c96478ed0e8a8381b3b5f768c52255` |
| 9 | `theorem` | [countP_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-le-of-le--7aa7c636e35042dd7f7df808.md) | 68 | `result-track:7aa7c636e35042dd7f7df808a8cf1fedad48fe26a4f55dbe4ac75850ef9725a1` |
| 10 | `theorem` | [countP_True](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-true--eb2a9282babca2fe3f0647f8.md) | 72 | `result-track:eb2a9282babca2fe3f0647f80c6e10c5439bf059a619bbb9a14cdd5d6b97dbec` |
| 11 | `theorem` | [countP_False](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-false--ee8b1e357b395828c2058bc9.md) | 76 | `result-track:ee8b1e357b395828c2058bc9c9367c9a2f30edcea3c7a85b43edbb8b2d86c071` |
| 12 | `lemma` | [countP_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-attach--67875e86fcf8f14b7d416c56.md) | 79 | `result-track:67875e86fcf8f14b7d416c565c8bb3ad46fe278c845255f8eee808596c13e3b4` |
| 13 | `theorem` | [countP_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-pos--d415b589617d627bf0e3e7e2.md) | 86 | `result-track:d415b589617d627bf0e3e7e2c5662b5f1be4f2890bddc9141cd407ca7083c4a1` |
| 14 | `theorem` | [countP_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-eq-zero--532cdbe2c15146fcda3b850e.md) | 89 | `result-track:532cdbe2c15146fcda3b850eba0738ec7f79639611eee08033f740640f346920` |
| 15 | `theorem` | [countP_eq_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-eq-card--77379e2751f360de371e6f4b.md) | 92 | `result-track:77379e2751f360de371e6f4b82eb4f4fab3a2067b6264bb54eeae2faff0c4898` |
| 16 | `theorem` | [countP_pos_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-pos-of-mem--44e8f5bba8bf551124794445.md) | 95 | `result-track:44e8f5bba8bf5511247944456f2b68593fcf2c314bf3a8488637e0d246f6dca5` |
| 17 | `theorem` | [countP_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/countp-congr--f44fe9786ffb33ab7f40c6f1.md) | 99 | `result-track:f44fe9786ffb33ab7f40c6f11a0d80f89cea72c1cc84deb5c740c67a3ac3d326` |
| 18 | `def` | [count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count--b69a4bc3f208cfc4c34f0e81.md) | 119 | `declaration-track:b69a4bc3f208cfc4c34f0e81c442687d77446f4811700065cc7fa0a31b7dcd79` |
| 19 | `theorem` | [coe_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/coe-count--1ac84f993125180def13cfc3.md) | 123 | `result-track:1ac84f993125180def13cfc31736079d9a5952dac5e2b3328986c3fddf141ae8` |
| 20 | `theorem` | [count_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-zero--229ecaadf8fbed1bbb00afc9.md) | 128 | `result-track:229ecaadf8fbed1bbb00afc9346a8ea93352f561f011b52f86c4a2a922f954e2` |
| 21 | `theorem` | [count_cons_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-cons-self--a03d90de7a8abc2b617b6caa.md) | 132 | `result-track:a03d90de7a8abc2b617b6caa15d80997c70ab8569362d19a0957bc4f162cba07` |
| 22 | `theorem` | [count_cons_of_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-cons-of-ne--83d36cef7386541adb3f541f.md) | 136 | `result-track:83d36cef7386541adb3f541f386be9e1689474f6592840ec8c85892e207d9ca5` |
| 23 | `theorem` | [count_le_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-le-card--5742f74f298fcd6c6959002a.md) | 139 | `result-track:5742f74f298fcd6c6959002a4ef2a0d8b011532ef469150031c817802a2de484` |
| 24 | `theorem` | [count_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-le-of-le--345bd806d8befae3f5f28d5e.md) | 143 | `result-track:345bd806d8befae3f5f28d5e4ad743cda48e6c4a60749a8d5ba7552d1b0441b6` |
| 25 | `theorem` | [count_le_count_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-le-count-cons--6a874610e9727ca4709cbd16.md) | 146 | `result-track:6a874610e9727ca4709cbd16fe593d89e17f89723baa559b95df49b3290684f4` |
| 26 | `theorem` | [count_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-cons--f774f0695cf1e28fe3bb200e.md) | 149 | `result-track:f774f0695cf1e28fe3bb200e53460c2ddc72efe3c6ae19019c92976ce358b5e0` |
| 27 | `theorem` | [count_singleton_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-singleton-self--48902b24236df24319df780a.md) | 153 | `result-track:48902b24236df24319df780a4546a15489c6772297740bf419fac6b69a773e2d` |
| 28 | `theorem` | [count_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-singleton--828b553246ec3e4c7d6fac50.md) | 156 | `result-track:828b553246ec3e4c7d6fac50ef04c1721ef2f1b7e2dd89918c837e62ef29ddac` |
| 29 | `lemma` | [count_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-attach--f6f8e769a037eb4347c772ad.md) | 160 | `result-track:f6f8e769a037eb4347c772ad05b9058957531243c1bac18ee7d0bfe258de719d` |
| 30 | `theorem` | [count_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-pos--dc5850c42dcfb39200b3f7d2.md) | 163 | `result-track:dc5850c42dcfb39200b3f7d2bd9adbb063931e06834e5d78738a8739a7cd6092` |
| 31 | `theorem` | [one_le_count_iff_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/one-le-count-iff-mem--38af72639005825190f73f01.md) | 165 | `result-track:38af72639005825190f73f01db0088885303e0e439d585de1e79cc20ff14e8fc` |
| 32 | `theorem` | [count_eq_zero_of_notMem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-eq-zero-of-notmem--bc61f17484182d9ec1ee9eca.md) | 169 | `result-track:bc61f17484182d9ec1ee9ecab9faf4deefae8f40b6b1bf01174afec0c507480a` |
| 33 | `lemma` | [count_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-ne-zero--11a1fe2ee737f0e6a8558e4d.md) | 174 | `result-track:11a1fe2ee737f0e6a8558e4de01f339b24ac46abe958b8f1985ccebdb677acb6` |
| 34 | `lemma` | [count_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-eq-zero--eb1a20d54c337bba048404fc.md) | 176 | `result-track:eb1a20d54c337bba048404fc533674c8bdc4ded5227def097adb1fd762fc87da` |
| 35 | `theorem` | [count_eq_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-eq-card--36c8f3e59ee272e4b3cdd5b5.md) | 178 | `result-track:36c8f3e59ee272e4b3cdd5b5503f3d5f2a642922a838cfa548b1f3590263ac0e` |
| 36 | `theorem` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/ext--d52865f2644904657c58ba79.md) | 181 | `result-track:d52865f2644904657c58ba79e45112daa4ac8df95de6536b2a35f711e2343c8b` |
| 37 | `theorem` | [ext'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/ext--670eacc7a3b0c8a880bccb65.md) | 187 | `result-track:670eacc7a3b0c8a880bccb6598f02a71c286a01bbba6e595d209799c7569febe` |
| 38 | `lemma` | [count_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-injective--2dc1d40d8b42c257e66802c9.md) | 190 | `result-track:2dc1d40d8b42c257e66802c9487800729a81eaba08d5290830524a0d7be2a871` |
| 39 | `theorem` | [le_iff_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/le-iff-count--fb0ed3ccd1e7d240be84a2be.md) | 193 | `result-track:fb0ed3ccd1e7d240be84a2be6f837b70343e6352fd13e12cd82ca82c516717bb` |
| 40 | `theorem` | [Rel.countP_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/rel-countp-eq--a7f35a0fe4d102201dc9f6ba.md) | 204 | `result-track:a7f35a0fe4d102201dc9f6ba3f0c39f3b2ad88cd912410be7336b0932df1b741` |
| 41 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/nodup-iff-count-le-one--b858020bcfb5985795a8e4eb.md) | 220 | `result-track:b858020bcfb5985795a8e4eb8d26f617d8576a82ccb2b1eb80ca755020cb125d` |
| 42 | `theorem` | [nodup_iff_count_eq_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/nodup-iff-count-eq-one--a77f72f0d14c1bf48adf9a1f.md) | 225 | `result-track:a77f72f0d14c1bf48adf9a1fbb138e97499b109e1d5f2e28e0b24417a8566564` |
| 43 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-eq-one-of-mem--5257434798ffd1dbaca56a20.md) | 229 | `result-track:5257434798ffd1dbaca56a2060ed4fa6ed4147fdce49a742b38860246da22788` |
| 44 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantc411d4c2247b7d2a254570636bdebcad480603830303c3c260ac2b95777b70e4.lean/declarations/count-eq-of-nodup--7e9530b7c8206aab80839b22.md) | 233 | `result-track:7e9530b7c8206aab80839b22e6d87e0e7d700c187720e6d68083d46c2a68e691` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

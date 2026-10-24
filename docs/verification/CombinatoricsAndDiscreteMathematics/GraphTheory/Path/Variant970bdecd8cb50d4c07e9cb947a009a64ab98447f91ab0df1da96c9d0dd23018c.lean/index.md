# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Path.Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e022e62198ed910c05085ab204d1406d5dd71e2",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e022e62198ed910c05085ab204d1406d5dd71e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/path--3148f178ed62e39e14fe0dc5.md) | 32 | `declaration-track:3148f178ed62e39e14fe0dc5f7fbf547ff8525879b9296a83cb07c91a385968c` |
| 2 | `def` | [Hom.toPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/hom-topath--c7d653f360b4f9f66e610960.md) | 40 | `declaration-track:c7d653f360b4f9f66e6109604e44b57abb6c13305c374e4ba237a041a0fc259b` |
| 3 | `lemma` | [nil_ne_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/nil-ne-cons--287cfdb220aa46e24a28f718.md) | 47 | `result-track:287cfdb220aa46e24a28f71851cf9f3e738d15fc31d2e6868e7c0faf7a3efad5` |
| 4 | `lemma` | [cons_ne_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/cons-ne-nil--752500108b3a1db9ffb59ae7.md) | 50 | `result-track:752500108b3a1db9ffb59ae775b11145677dc2b36f78e39f16cd696ba2e26b12` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/obj-eq-of-cons-eq-cons--0ec2c661a3c66e115e55ceec.md) | 53 | `result-track:0ec2c661a3c66e115e55ceec8f6393ae725223a4f2426d87d7f799e10608e901` |
| 6 | `lemma` | [heq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/heq-of-cons-eq-cons--6eaa641b09ac5b5438bb06f9.md) | 56 | `result-track:6eaa641b09ac5b5438bb06f9151d77677007be453106fa1f457cd58d175d5d96` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/hom-heq-of-cons-eq-cons--68fbc2c6e8161882d13aff76.md) | 59 | `result-track:68fbc2c6e8161882d13aff76988bf7b97ec0895e50d16b30f934abff27fa23d1` |
| 8 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/length--8915d41405abe6b77bd2260d.md) | 63 | `declaration-track:8915d41405abe6b77bd2260d3a62e74bf73ca5cb55ed57e6f662d4eecdc06db6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/instance--d0fce78e19a729f51856bb31.md) | 67 | `declaration-track:d0fce78e19a729f51856bb319c314134ff856e7108fd4e0d70989298609fcb79` |
| 10 | `theorem` | [length_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/length-nil--ac578e5fdc08c26833ac35f3.md) | 71 | `result-track:ac578e5fdc08c26833ac35f30dc3221b7438821dbec3e44fb0f603d28ea73e03` |
| 11 | `theorem` | [length_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/length-cons--b3f0e9fb7286ec3d1a797fd7.md) | 75 | `result-track:b3f0e9fb7286ec3d1a797fd7920b73e7364a850d52ec6436bf7c3e0845f4dd27` |
| 12 | `theorem` | [eq_of_length_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/eq-of-length-zero--60fd69dae7db31ff0a8be5ff.md) | 78 | `result-track:60fd69dae7db31ff0a8be5ff09ca0bb76e8d739d26a28b962eb5867f1d8d6a81` |
| 13 | `theorem` | [eq_nil_of_length_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/eq-nil-of-length-zero--f67262b04037531ebd48ec72.md) | 83 | `result-track:f67262b04037531ebd48ec72a768cc75c2b78fc5ff10b9829125c592ef2ab150` |
| 14 | `def` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp--53e6868e374a8f43e6990ccb.md) | 89 | `declaration-track:53e6868e374a8f43e6990ccbcfb5e438244743c8574de6b3db2b02fb2484ddbf` |
| 15 | `theorem` | [comp_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-cons--288e85328160deb7be7d5e67.md) | 94 | `result-track:288e85328160deb7be7d5e67bae855e89f889052e56f69b201a1aad811a44c8a` |
| 16 | `theorem` | [comp_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-nil--2e9725b95c5b91a8276553ec.md) | 99 | `result-track:2e9725b95c5b91a8276553ec1ad9bf7044562ad4ce1e77f2bc8eb81d5fe01173` |
| 17 | `theorem` | [nil_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/nil-comp--cadd75019d9b95874ba08c9d.md) | 103 | `result-track:cadd75019d9b95874ba08c9d5deece02d6673d1be37ac6632779e9a5a48d5efd` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-assoc--0bfd8ad157843538bc9dab51.md) | 108 | `result-track:0bfd8ad157843538bc9dab519c6440a73050cf8ae9967363f08f40e765bb915e` |
| 19 | `theorem` | [length_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/length-comp--d23f3601987b63b92473f7fb.md) | 114 | `result-track:d23f3601987b63b92473f7fb26cbc54e9b7f0fcb090665d62b4440446814379e` |
| 20 | `theorem` | [comp_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-inj--6141c7bfb6cc3acafe573221.md) | 118 | `result-track:6141c7bfb6cc3acafe573221e6375bf46b054d699785c0e99bca5b9870475c8b` |
| 21 | `theorem` | [comp_inj'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-inj--9db3b00d8a0242eda07df3ab.md) | 135 | `result-track:9db3b00d8a0242eda07df3aba5161dbc75be899228dbd5dd6c0f23778760086a` |
| 22 | `theorem` | [comp_injective_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-injective-left--4c9aad4cc80c2bccdcab0039.md) | 141 | `result-track:4c9aad4cc80c2bccdcab0039f776cc524932e3a72fa1bef19a95569acfc42618` |
| 23 | `theorem` | [comp_injective_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-injective-right--c2aa52d68583db7d9d7a89da.md) | 144 | `result-track:c2aa52d68583db7d9d7a89da580e4a9960b7b6ffcfb34dae3f8e45e08ec7d2d1` |
| 24 | `theorem` | [comp_inj_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-inj-left--096abee6e517152dd131c33d.md) | 148 | `result-track:096abee6e517152dd131c33df1c6fff5b9215dc70fe0cda3ade76e9e64e28193` |
| 25 | `theorem` | [comp_inj_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/comp-inj-right--f5a657003ecd11bb706b51a0.md) | 152 | `result-track:f5a657003ecd11bb706b51a05be2542183d944e60d8dfee2d47454e51c4a6563` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/eq-topath-comp-of-length-eq-succ--b4488157b4b79db10907df52.md) | 155 | `result-track:b4488157b4b79db10907df521300909da30d2343efd3e6959f1222c58f424117` |
| 27 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/tolist--975fe64cd6aad9dfdc874fd9.md) | 173 | `declaration-track:975fe64cd6aad9dfdc874fd91151e30aa3b3068b44d5ae96abc63a6ac42f8f8c` |
| 28 | `theorem` | [toList_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/tolist-comp--9552ea7465dd6239f4a3c5fd.md) | 180 | `result-track:9552ea7465dd6239f4a3c5fd18b8b873a2b826d479a1ad4d098566f8dad6c4ff` |
| 29 | `theorem` | [toList_chain_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/tolist-chain-nonempty--43a0dc1cfd6ef2ae7e9766f5.md) | 184 | `result-track:43a0dc1cfd6ef2ae7e9766f5dcf7680cf0ef1c6ab4d481f42b6cabd488eac2d6` |
| 30 | `theorem` | [toList_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/tolist-injective--ab3754436a67bec78cb3e697.md) | 191 | `result-track:ab3754436a67bec78cb3e69713275b7dafe3f0866e79e532205507dba3e447cf` |
| 31 | `theorem` | [toList_inj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/tolist-inj--408caf0ba809b1a5419e67d4.md) | 201 | `result-track:408caf0ba809b1a5419e67d46e61dadbeeb52b17b0dc840658d2c74c18c482d7` |
| 32 | `def` | [mapPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath--e5d2f033bf09aeeab8bbdfc7.md) | 215 | `declaration-track:e5d2f033bf09aeeab8bbdfc739d7ad430870b644ccf0eef98d0544179a1ef99a` |
| 33 | `theorem` | [mapPath_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-nil--23761e253113475a39a692f2.md) | 220 | `result-track:23761e253113475a39a692f2af688ee869a48b6c9db87ebcdcd150a0270d8ab3` |
| 34 | `theorem` | [mapPath_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-cons--5c5808b4c537590faecf3093.md) | 224 | `result-track:5c5808b4c537590faecf3093bfe3f08b41989b4e2511e4cf4c244b74d25824bc` |
| 35 | `theorem` | [mapPath_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-comp--ccbcb488ebed6048eadc632e.md) | 229 | `result-track:ccbcb488ebed6048eadc632e9f353cb45caa1d2a6c460b82b7b271f65a76ce74` |
| 36 | `theorem` | [mapPath_toPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-topath--924915c1cc6eae84cb11e03a.md) | 235 | `result-track:924915c1cc6eae84cb11e03ae50330f9da1eeb76b023b06ed2917d1035510105` |
| 37 | `theorem` | [mapPath_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-id--e26c9b171feafe772f939046.md) | 239 | `result-track:e26c9b171feafe772f93904611a4dee108ea2f8cd89611449aa1e61e0c53b19a` |
| 38 | `theorem` | [mapPath_comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant970bdecd8cb50d4c07e9cb947a009a64ab98447f91ab0df1da96c9d0dd23018c.lean/declarations/mappath-comp-apply--27305c5a1c34ff6a4f04de01.md) | 246 | `result-track:27305c5a1c34ff6a4f04de01f70be6d72d4deef9bf21d94a4f489af9625f8c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.List.Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "565d3a47fb36b1483107ae029f910ea5097fd655",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `565d3a47fb36b1483107ae029f910ea5097fd655`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Denumerable` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listEquivOfEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/listequivofequiv--69a5a85e7885431edc59b728.md) | 23 | `declaration-track:69a5a85e7885431edc59b7287ec6da26d03c39cf4a8924997706ab57025740e3` |
| 2 | `def` | [encodeList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/encodelist--28c57db8ff9383e3d0b3d80a.md) | 40 | `declaration-track:28c57db8ff9383e3d0b3d80ad78830e32512764c1fa8fcaaab7d53d11185729f` |
| 3 | `def` | [decodeList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/decodelist--b4fe6df9c421ecb7ff22a9bc.md) | 45 | `declaration-track:b4fe6df9c421ecb7ff22a9bc2d1bda515612a42f0a86d41cd5f58840e4458540` |
| 4 | `instance` | [_root_.List.encodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-list-encodable--a7371c938b15deaf7ebab746.md) | 55 | `declaration-track:a7371c938b15deaf7ebab7462e05c96ea3e5b18d7d28aea3aa1ac288faefb401` |
| 5 | `instance` | [_root_.List.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-list-countable--f9ae6e31d7e239ff03c2a00c.md) | 59 | `declaration-track:f9ae6e31d7e239ff03c2a00cf305c9b1e9a93b13a49a18abdc8fafe677d39dbc` |
| 6 | `theorem` | [encode_list_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/encode-list-nil--655b195b1ac177e8fe7a852c.md) | 64 | `result-track:655b195b1ac177e8fe7a852cc0a6b6b8983dca67636b547e4ac1af4bc1d3a4b7` |
| 7 | `theorem` | [encode_list_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/encode-list-cons--92ade97c16763cdf89bef45e.md) | 68 | `result-track:92ade97c16763cdf89bef45e5176115f7b9622d929843f336e579489f9ba868a` |
| 8 | `theorem` | [decode_list_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/decode-list-zero--034848fa776fc8f93d39c6cb.md) | 73 | `result-track:034848fa776fc8f93d39c6cb41b7b233bb1b743f7b929408e3f41ca0685c7009` |
| 9 | `theorem` | [decode_list_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/decode-list-succ--28f8de34b728167e55a84108.md) | 77 | `result-track:28f8de34b728167e55a84108c5ee3728f1ddfc15f6a762116299170d86de7ad6` |
| 10 | `theorem` | [length_le_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/length-le-encode--3282de9846fc4c7c79bde0ac.md) | 84 | `result-track:3282de9846fc4c7c79bde0ac4501fdd73b1c7a34dac1c7fc57e7bdaa23ce8be8` |
| 11 | `instance` | [_root_.Multiset.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-multiset-countable--43e2faee445ce66c0c3aa7f3.md) | 94 | `declaration-track:43e2faee445ce66c0c3aa7f3073a35654838c69a469a020392a071cd6e40cd35` |
| 12 | `instance` | [_root_.Finset.countable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-finset-countable--59ad8fd653b818d089ba74df.md) | 98 | `declaration-track:59ad8fd653b818d089ba74dfcb4997d64eb69355a85ddf52996b949529574553` |
| 13 | `def` | [encodableOfList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/encodableoflist--22d31fc6c3f763451f3fb28b.md) | 102 | `declaration-track:22d31fc6c3f763451f3fb28b31dc7ca32b0ff4b48fe299261a0a694dcd1d3f60` |
| 14 | `def` | [_root_.Fintype.truncEncodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-fintype-truncencodable--b86853ca2d515ddd20c7a6e6.md) | 107 | `declaration-track:b86853ca2d515ddd20c7a6e6dcb30da1a167798963db04990c63cb14975615fb` |
| 15 | `def` | [_root_.Fintype.toEncodable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/root-fintype-toencodable--06411d8b9cf4a34d76d5670e.md) | 114 | `declaration-track:06411d8b9cf4a34d76d5670e261cc28e6a5deb1cf5a318b5932c307ffa8e62dc` |
| 16 | `theorem` | [denumerable_list_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/denumerable-list-aux--c0bfe6c15bd71ebeb18c5fe5.md) | 128 | `result-track:c0bfe6c15bd71ebeb18c5fe5714dfd8724800b0a8737aadb737c22b521b56935` |
| 17 | `instance` | [denumerableList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/denumerablelist--757670c207df2ec4bded4a6b.md) | 142 | `declaration-track:757670c207df2ec4bded4a6b695001e6a9cb39a4469e8957ee29cd40e5bc648e` |
| 18 | `theorem` | [list_ofNat_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/list-ofnat-zero--a3f9a26783a3451ba2797fb7.md) | 146 | `result-track:a3f9a26783a3451ba2797fb7dd2e5077c784399e46467e6831d2c1979c42e5f5` |
| 19 | `theorem` | [list_ofNat_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/list-ofnat-succ--3c1bbc448609e55cc6855fb2.md) | 149 | `result-track:3c1bbc448609e55cc6855fb2bc7f361394b91a43f8863bebe791f1489d3b80b7` |
| 20 | `def` | [listUniqueEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/listuniqueequiv--06afd9c00061b7d4df7f9006.md) | 166 | `declaration-track:06afd9c00061b7d4df7f9006cf08de3a739e7b1c97576ae3ff56b817560c68bf` |
| 21 | `def` | [listUnitEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/listunitequiv--cab575e3cc88f2fd8292ebf3.md) | 174 | `declaration-track:cab575e3cc88f2fd8292ebf38164368d6372cf34736fdd9338948dc74883001e` |
| 22 | `def` | [listNatEquivNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/listnatequivnat--382da1a581dedc1eb3912ca1.md) | 178 | `declaration-track:382da1a581dedc1eb3912ca1edba6eb80e13c39aafa4d239f194d4893ca3e460` |
| 23 | `def` | [listEquivSelfOfEquivNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variant54afecb0945ad7f0924e59e9c39eeb32341cf71a9e5c4ec318b3ba80dbf02103.lean/declarations/listequivselfofequivnat--4afa4fc7efbfbf2108c59e60.md) | 182 | `declaration-track:4afa4fc7efbfbf2108c59e60bc98c666db23491784d0969fd43d04eca02f1fda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

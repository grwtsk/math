# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ec1109c7565c8890cd31005db1372ad38f42e4d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ec1109c7565c8890cd31005db1372ad38f42e4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-nil--92c8fd6030cc845b54fe41ad.md) | 39 | `result-track:92c8fd6030cc845b54fe41ad30c666b2e772f5445fc51c1f516b1ff908ef1339` |
| 2 | `theorem` | [toList_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-cons--0646d172a44f5b606a478b8e.md) | 40 | `result-track:0646d172a44f5b606a478b8eb1e2d07b7eb33197b869c60998a64388f47354c5` |
| 3 | `theorem` | [foldl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/foldl-eq--f3fbae151976ee57bedee620.md) | 44 | `result-track:f3fbae151976ee57bedee620f7c62c05ef8a9f7e58aba84950dcf46279457658` |
| 4 | `theorem` | [length_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/length-eq--9819781c5abb0ff73916ab12.md) | 49 | `result-track:9819781c5abb0ff73916ab1251b332f1950806684f4737bfd74eeed486f53f84` |
| 5 | `theorem` | [get?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/get-eq--2e13a0171034dd7bd769100a.md) | 59 | `result-track:2e13a0171034dd7bd769100a1646556806006517591c1ee83855753fcfee863a` |
| 6 | `theorem` | [getCast?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getcast-eq--bd2d31835e84179b6407f9b8.md) | 64 | `result-track:bd2d31835e84179b6407f9b8c53a7cf1bcf848ff553e88a45ea9c60e983f62e1` |
| 7 | `theorem` | [contains_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/contains-eq--7a00f1dc1eddfc1592508b3f.md) | 69 | `result-track:7a00f1dc1eddfc1592508b3fd32d8199d0dcfc1d5542df0bc06cdf893a624368` |
| 8 | `theorem` | [getCast_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getcast-eq--25370446e31674ff6cfca88e.md) | 74 | `result-track:25370446e31674ff6cfca88eaed6746be7253903fb77776355e8d4cdb071c70a` |
| 9 | `theorem` | [get_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/get-eq--27dc23033014f10288dff8f9.md) | 81 | `result-track:27dc23033014f10288dff8f9ba8bb03c7858e3ddf18e6a7c032109500b646e1b` |
| 10 | `theorem` | [getEntry_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getentry-eq--18df79118562d46b464b3a98.md) | 88 | `result-track:18df79118562d46b464b3a9897fb3716d396c64ea9ae62641a5aeaaa7fa3f457` |
| 11 | `theorem` | [getEntry?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getentry-eq--50e338915b04636319460d7a.md) | 96 | `result-track:50e338915b04636319460d7a78981d51a4316d01a90db58576a6c38b5b80dc61` |
| 12 | `theorem` | [getEntryD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getentryd-eq--5b4d8e2fac86cf2f4e4c05d8.md) | 104 | `result-track:5b4d8e2fac86cf2f4e4c05d847c609442f5dcf72c506fd7674df1b8f36dde75b` |
| 13 | `theorem` | [getEntry!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getentry-eq--03ecc43a77d938c5db3eb957.md) | 112 | `result-track:03ecc43a77d938c5db3eb9573dbb183cad9cb45be9ce238ed672929d0aac7403` |
| 14 | `theorem` | [getCastD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getcastd-eq--bd42f281cb37ac1056c2edee.md) | 120 | `result-track:bd42f281cb37ac1056c2edee8b0a785445d6cd18d1e033270b06a39df43a7951` |
| 15 | `theorem` | [getD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getd-eq--58c49a74e6bb9f0ed6a82e30.md) | 128 | `result-track:58c49a74e6bb9f0ed6a82e30465e8bfc2b8cecf339d8100424a28eadd89c45ca` |
| 16 | `theorem` | [panicWithPosWithDecl_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/panicwithposwithdecl-eq--409bb958a48b9ce1af5984bb.md) | 136 | `result-track:409bb958a48b9ce1af5984bb0d1656d173d30e099272ea0c2548764165c2b904` |
| 17 | `theorem` | [getCast!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getcast-eq--9ccd1a4ec212037df7418c82.md) | 140 | `result-track:9ccd1a4ec212037df7418c82c97b247e1326e601872c607db751b504885b941c` |
| 18 | `theorem` | [get!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/get-eq--b72fc4041b2233d80ff613dc.md) | 148 | `result-track:b72fc4041b2233d80ff613dcaa5d72715a846dcff0a732b39d5ecc497e5e8b46` |
| 19 | `theorem` | [getKey?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getkey-eq--6b61b614e05ec90d97fc163d.md) | 156 | `result-track:6b61b614e05ec90d97fc163daaf6d709201ad53c41bacf44eb8c364cbfb5c55f` |
| 20 | `theorem` | [getKey_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getkey-eq--1a1ce774e8bb817dca30ade0.md) | 161 | `result-track:1a1ce774e8bb817dca30ade0d3e675d1efd18035bc7d04788bc7275be1291a56` |
| 21 | `theorem` | [getKeyD_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getkeyd-eq--4ab03bf8df801d6dd9e73adb.md) | 168 | `result-track:4ab03bf8df801d6dd9e73adb900457dbe7b266f56da290abfd76b1e623315039` |
| 22 | `theorem` | [getKey!_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/getkey-eq--15f5942b5fc6d1420b217a5e.md) | 175 | `result-track:15f5942b5fc6d1420b217a5e5069998b515a8823cc338ca2edb6d1280eca9b71` |
| 23 | `theorem` | [toList_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-replace--fde9eb8cea77717194158be5.md) | 182 | `result-track:fde9eb8cea77717194158be534ffd91caafd8fcef68bba8a8e1a0b9f682af70a` |
| 24 | `theorem` | [toList_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-erase--fe8729e7e0eab88e6cc8d023.md) | 189 | `result-track:fe8729e7e0eab88e6cc8d023edad461d43e9fe9d0bc62453016d4f953ec1d8d2` |
| 25 | `theorem` | [toList_filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-filtermap--8010470a7f7985828b2ec507.md) | 195 | `result-track:8010470a7f7985828b2ec507d0c6a2fbfe839caeedeed1e2d29b5bd3f9c1275d` |
| 26 | `theorem` | [toList_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-map--98a026fa062b0a22c22aad1f.md) | 213 | `result-track:98a026fa062b0a22c22aad1f76246c340c0d70b2240795828a2c14f3a5157823` |
| 27 | `theorem` | [toList_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-filter--19fb3a9cb28e17ee7101bbc6.md) | 227 | `result-track:19fb3a9cb28e17ee7101bbc63bb9c6ca01d0eed4fabddd3899b171d84ebed100` |
| 28 | `theorem` | [filterMap_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/filtermap-eq-map--65e60f4ad37d2baf9f779a99.md) | 242 | `result-track:65e60f4ad37d2baf9f779a994d811ab243637d7dc7342921189e68badb6d1631` |
| 29 | `theorem` | [filterMap_eq_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/filtermap-eq-filter--9f45a4fa4f1ee463d9bf68ad.md) | 250 | `result-track:9f45a4fa4f1ee463d9bf68ad7a0bc311444df5feec70a8d839134574fbde7dec` |
| 30 | `theorem` | [toList_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-alter--5dcd9dd09db761c8dabac44b.md) | 260 | `result-track:5dcd9dd09db761c8dabac44bccd3c82d6bc61f96e09b911292c7ac934b25601b` |
| 31 | `theorem` | [modify_eq_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/modify-eq-alter--0d0b5e82dd96afa4962565ba.md) | 271 | `result-track:0d0b5e82dd96afa4962565ba79a97da2c99d5c95d0643e03a7f83164dc5fd7c9` |
| 32 | `theorem` | [toList_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/tolist-alter--5c9eb775f0fb227029861566.md) | 281 | `result-track:5c9eb775f0fb2270298615668b5400ac91edceb92a096cc7550cacf4133fc9af` |
| 33 | `theorem` | [modify_eq_alter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/modify-eq-alter--c70fd46a6e93f6b4c2aaf6c7.md) | 291 | `result-track:c70fd46a6e93f6b4c2aaf6c7896589502ccad364f54f47eec8a9bf769f4abe9f` |
| 34 | `theorem` | [foldl_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/foldl-apply--6579d5eb75d298f572945e6e.md) | 299 | `result-track:6579d5eb75d298f572945e6e034236356d271a55c47de79479e2cf772f589a2e` |
| 35 | `theorem` | [foldr_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/foldr-apply--e7013a125176eb04507fd3de.md) | 304 | `result-track:e7013a125176eb04507fd3deffcfccf8a65415bbaec238f9d1b46c82e499e806` |
| 36 | `theorem` | [foldl_push_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant239c91f849bf969dc9ceec00d35a53a29b5026d4bdf9c4f20e37528aec38f972.lean/declarations/foldl-push-apply--81ca35659368ecdee5039d9a.md) | 309 | `result-track:81ca35659368ecdee5039d9a8b273fd9e7035b01d52890aa8de4e3eb6a77da1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

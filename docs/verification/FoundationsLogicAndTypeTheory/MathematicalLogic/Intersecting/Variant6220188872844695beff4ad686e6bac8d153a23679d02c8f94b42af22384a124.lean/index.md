# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Intersecting.Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8cb2bb188c95ac201a2b1decef094662749d36",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8cb2bb188c95ac201a2b1decef094662749d36`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Intersecting](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting--3190c4c832335daf40d7f353.md) | 48 | `declaration-track:3190c4c832335daf40d7f35358e4758feb5f6e0399abaec0076a0274e077df37` |
| 2 | `theorem` | [Intersecting.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-mono--77523412ac22673fc7087d49.md) | 52 | `result-track:77523412ac22673fc7087d4994d40ae0c0db5682cf657c6e024dc5fd90cec461` |
| 3 | `theorem` | [Intersecting.bot_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-bot-notmem--72301409c4d37dc2f36b075b.md) | 55 | `result-track:72301409c4d37dc2f36b075b31051866cef6f837abf0f503099bc1ebbfc6a663` |
| 4 | `theorem` | [Intersecting.ne_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-ne-bot--ab2ce9cc0b38686694bc5195.md) | 60 | `result-track:ab2ce9cc0b38686694bc519535a856cb66449b49b06a02f2fb9f124b3991b1a9` |
| 5 | `theorem` | [intersecting_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-empty--29b14ea2674ab7cfa65f01c1.md) | 63 | `result-track:29b14ea2674ab7cfa65f01c13e0521f004b5604eb4313afb85ea0e4480b8bbc2` |
| 6 | `theorem` | [intersecting_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-singleton--6ba968485a7f833624815279.md) | 66 | `result-track:6ba968485a7f8336248152793705624f48a483d4b84604007026c4fc8323a106` |
| 7 | `theorem` | [Intersecting.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-insert--0a264d966e5752f33e677b07.md) | 68 | `result-track:0a264d966e5752f33e677b07eb87d4a869d3c1e68112cca3f2aa6578ed191527` |
| 8 | `theorem` | [intersecting_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-insert--18674940a3067837409c036b.md) | 76 | `result-track:18674940a3067837409c036b64022489984e85330985656689075884709c80f8` |
| 9 | `theorem` | [intersecting_iff_pairwise_not_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-iff-pairwise-not-disjoint--a59f6c1af4e425f55c8cf39a.md) | 83 | `result-track:a59f6c1af4e425f55c8cf39adb739eb9ca82913f5f1f15ddc15e2569ea1a66ab` |
| 10 | `theorem` | [Subsingleton.intersecting](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/subsingleton-intersecting--14f21e1f965c40f499ab42ac.md) | 96 | `result-track:14f21e1f965c40f499ab42aca68137e908623ef897e3e079eac50232521e697f` |
| 11 | `theorem` | [intersecting_iff_eq_empty_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-iff-eq-empty-of-subsingleton--50cfd01446b6f159f1e82d51.md) | 99 | `result-track:50cfd01446b6f159f1e82d51de8e9d4265e4acd1dc7912877be476598e094b86` |
| 12 | `theorem` | [Intersecting.isUpperSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-isupperset--f43a1343551543429d53493c.md) | 110 | `result-track:f43a1343551543429d53493c34a985a402155ebf5a3334cae5fd0a16104218fc` |
| 13 | `theorem` | [Intersecting.isUpperSet'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-isupperset--13bd7a1bac983849209b51d4.md) | 120 | `result-track:13bd7a1bac983849209b51d4f8cb224544dbc838960a8b982d3732e1039184d2` |
| 14 | `theorem` | [Intersecting.exists_mem_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-exists-mem-set--9ff347e4f738aa44120e8b57.md) | 132 | `result-track:9ff347e4f738aa44120e8b57d140a502e320bc055b747fa28f832bafcaf4dd5c` |
| 15 | `theorem` | [Intersecting.exists_mem_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-exists-mem-finset--bd38b0c18d2e8f88dc467418.md) | 136 | `result-track:bd38b0c18d2e8f88dc46741817e490481d71c03eeb0375410781e8d457d0dd47` |
| 16 | `theorem` | [Intersecting.compl_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-compl-notmem--03c32c39aaa607ed81a78b12.md) | 142 | `result-track:03c32c39aaa607ed81a78b12a4f11bfc5e8227959a43b7429f20dcc58a3dd514` |
| 17 | `theorem` | [Intersecting.notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-notmem--2673932065c3b36206da041a.md) | 148 | `result-track:2673932065c3b36206da041a95669f614d8c7a52716a6db61d65ea67bcacc481` |
| 18 | `theorem` | [Intersecting.disjoint_map_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-disjoint-map-compl--81849c79bf505cf6922abe9f.md) | 153 | `result-track:81849c79bf505cf6922abe9fbe70e9f69148df8c6f8f40d8db010fa34eda18c7` |
| 19 | `theorem` | [Intersecting.card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-card-le--b72b79432acd5552e84d1eb7.md) | 160 | `result-track:b72b79432acd5552e84d1eb75e4ceaecfa3312d3cc117b8c3d182922bc9edda7` |
| 20 | `theorem` | [Intersecting.is_max_iff_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-is-max-iff-card-eq--4fe2c2f4b005e6fcfc8ca28b.md) | 169 | `result-track:4fe2c2f4b005e6fcfc8ca28bc33e49e613d3fc62f0626e94fa33d48a80858038` |
| 21 | `theorem` | [Intersecting.exists_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variant6220188872844695beff4ad686e6bac8d153a23679d02c8f94b42af22384a124.lean/declarations/intersecting-exists-card-eq--10ce4ec40d12e68740712ee9.md) | 190 | `result-track:10ce4ec40d12e68740712ee9e1306743f57f7c66d9e2c53357d31cd465dc5241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

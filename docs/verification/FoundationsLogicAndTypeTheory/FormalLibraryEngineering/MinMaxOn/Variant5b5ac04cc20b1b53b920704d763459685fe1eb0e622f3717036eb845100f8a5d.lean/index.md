# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MinMaxOn.Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b816077f04ff6676d13c0cd4d3e94096e2ce9155",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b816077f04ff6676d13c0cd4d3e94096e2ce9155`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Order.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon--d81bdd61b9fcaa1049256324.md) | 22 | `declaration-track:d81bdd61b9fcaa1049256324c6091f7b814cfab33931e9c47ef2a271ac0759a2` |
| 2 | `def` | [maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon--2aa1dd39d1a30945a29c370f.md) | 30 | `declaration-track:2aa1dd39d1a30945a29c370ff06a485547ba469dabddf0fee44aaa7564c0f78e` |
| 3 | `theorem` | [minOn_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-id--fcc5c27bf4dbd04d8b8d0720.md) | 36 | `result-track:fcc5c27bf4dbd04d8b8d07207c19f698f24d6fef5be512675d0746a501e15623` |
| 4 | `theorem` | [maxOn_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-id--6a92c339519519a04bbf6292.md) | 40 | `result-track:6a92c339519519a04bbf62923c885f1ab8b9f8d4943c15aaeb45c3554ee1f5ad` |
| 5 | `theorem` | [minOn_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-or--4aeeed2157be2664d05ed46d.md) | 46 | `result-track:4aeeed2157be2664d05ed46d84c46613f066414cd84c1a22026dce04126498ae` |
| 6 | `theorem` | [minOn_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-self--71351cb457e4ef16c1fee7b1.md) | 54 | `result-track:71351cb457e4ef16c1fee7b183daea4bc2014a4e94f18efd30f6875431053555` |
| 7 | `theorem` | [minOn_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-left--82d2acc03f6cbd8a5b2b407c.md) | 58 | `result-track:82d2acc03f6cbd8a5b2b407c2f11b6652cdc952a71cbabadd7a25f1de070546a` |
| 8 | `theorem` | [minOn_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-right--2da1ca026a368093412b3832.md) | 62 | `result-track:2da1ca026a368093412b38322f309f69d9ff93a878fec09a5ac0048dc635a01f` |
| 9 | `theorem` | [minOn_eq_right_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-right-of-lt--03d85023b28cc628709938ef.md) | 66 | `result-track:03d85023b28cc628709938ef7ee11568e82be46cedbd7285e71ec6762003dd4a` |
| 10 | `theorem` | [apply_minOn_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/apply-minon-le-left--dc8b7a64c2bf43a8cd07aa66.md) | 73 | `result-track:dc8b7a64c2bf43a8cd07aa66b5cd85ebd9ccb19c35401a7eabffdbae5ea0a577` |
| 11 | `theorem` | [apply_minOn_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/apply-minon-le-right--45acee023596d52a5e0185de.md) | 80 | `result-track:45acee023596d52a5e0185de6b959a34d83166b6b1a73e596d61784a0b00a192` |
| 12 | `theorem` | [le_apply_minOn_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/le-apply-minon-iff--df0860ad40d3e80b11c7d93b.md) | 87 | `result-track:df0860ad40d3e80b11c7d93b3d75540b8ef7a1e6fc8cafe24711bb9d2935a5d9` |
| 13 | `theorem` | [minOn_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-assoc--ff055153863d277a3d1545cc.md) | 96 | `result-track:ff055153863d277a3d1545cc598a55a93f5cb7d2cf474a29239a99f4dc3299c2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/instance--dbdf5ac728efe8d43b74902c.md) | 118 | `declaration-track:dbdf5ac728efe8d43b74902c619ee32f5a827404f88087ca368b9da204ddebfc` |
| 15 | `theorem` | [min_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/min-apply--bd34522db87ce20886c5dee0.md) | 122 | `result-track:bd34522db87ce20886c5dee03e3a27096ce935361deac61f848ea3c2acf3ae8f` |
| 16 | `theorem` | [minOn_eq_if](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-if--029389fea1cff77aee3e55c7.md) | 127 | `result-track:029389fea1cff77aee3e55c79774e333dfe2f25906832108a74cc5b98d4ef5d1` |
| 17 | `theorem` | [minOn_eq_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/minon-eq-min--5bac34b6835cf4279c7cbc53.md) | 131 | `result-track:5bac34b6835cf4279c7cbc538659ca0d3bc130625dc3af659939eea3a276d2db` |
| 18 | `theorem` | [min_apply_eq_min](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/min-apply-eq-min--745c18b59ed5b6ee9ef1186f.md) | 136 | `result-track:745c18b59ed5b6ee9ef1186f4b640441f99a6bd88570f950862ee3ccea25e7db` |
| 19 | `theorem` | [maxOn_eq_minOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-minon--fdbc28dfc1140eaf50074f5d.md) | 144 | `result-track:fdbc28dfc1140eaf50074f5d8a1752926706f8f1eadd5f35f2c2d865d7c52151` |
| 20 | `theorem` | [maxOn_eq_or](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-or--5e407e829971c94075e9776d.md) | 148 | `result-track:5e407e829971c94075e9776d06427638113c91bd0c9b47822456e151b7d99b2a` |
| 21 | `theorem` | [maxOn_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-self--a8f19cca47242e421d60dd55.md) | 153 | `result-track:a8f19cca47242e421d60dd5562a12bf5cc4b4b87a8e9a70176db2d6a9b2676ec` |
| 22 | `theorem` | [maxOn_eq_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-left--7851f480d7de12f3e740ece8.md) | 157 | `result-track:7851f480d7de12f3e740ece80e4e538c24a89f283a3cbc4332f08c1704e7baea` |
| 23 | `theorem` | [maxOn_eq_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-right--3630599e2460b5b3ea7aefae.md) | 162 | `result-track:3630599e2460b5b3ea7aefaef12dd7a9caba327c73251374856d7e9ac485b15d` |
| 24 | `theorem` | [maxOn_eq_right_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-right-of-lt--3c2f96c9363f166157967be7.md) | 167 | `result-track:3c2f96c9363f166157967be78ee4773832f332132bfa24342e4b3f62f9ce7996` |
| 25 | `theorem` | [left_le_apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/left-le-apply-maxon--f8aa0d5b818d47910d5ade34.md) | 175 | `result-track:f8aa0d5b818d47910d5ade341516ab946a5733f56c8744773e991cf3a54b1840` |
| 26 | `theorem` | [right_le_apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/right-le-apply-maxon--42deb0ffccb4d3ccfc13a48b.md) | 181 | `result-track:42deb0ffccb4d3ccfc13a48b5acb9b62051a58832349b1432dec7334cbc5c79e` |
| 27 | `theorem` | [apply_maxOn_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/apply-maxon-le-iff--066fd92b55afc3b80b4885c1.md) | 187 | `result-track:066fd92b55afc3b80b4885c1eea64b47a34a00ec722ee6e58836be521ba3ac79` |
| 28 | `theorem` | [maxOn_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-assoc--e64f0fed4125c1864c4be85d.md) | 194 | `result-track:e64f0fed4125c1864c4be85d3e307887967590d9d6caf2115ad609f5e3bf57f9` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/instance--0bb9741a1cf86efd7e3e2f08.md) | 199 | `declaration-track:0bb9741a1cf86efd7e3e2f084c7e3eb5fc45c41ebcc43f01483518af6815ddbe` |
| 30 | `theorem` | [max_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/max-apply--a788cfa7f0cfc880b87774da.md) | 204 | `result-track:a788cfa7f0cfc880b87774da1a5711f62f759a01eb1e6df9cf235b3b27729d89` |
| 31 | `theorem` | [apply_maxOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/apply-maxon--48d35c325f4850adbafc6a2b.md) | 210 | `result-track:48d35c325f4850adbafc6a2bcce08cdea2dcf0c46e99343935608f737a378bb8` |
| 32 | `theorem` | [maxOn_eq_if](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-if--423b153d9c0a0275339bbc4e.md) | 214 | `result-track:423b153d9c0a0275339bbc4e0056b12719fbeecd2e153bb7bafc1fbab82d3a2b` |
| 33 | `theorem` | [maxOn_eq_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/maxon-eq-max--f57ed398b9dc4b51e169ebd3.md) | 218 | `result-track:f57ed398b9dc4b51e169ebd32bf758078f34670b2891ca8ac04b5b7822c964bc` |
| 34 | `theorem` | [max_apply_eq_max](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean/declarations/max-apply-eq-max--94369872e920945ef24f4931.md) | 223 | `result-track:94369872e920945ef24f493124f387f12982f9e32258446f8f2c1e0d1895ba74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3523ed6ccc84fefc5c60123b36f02364023cc522",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3523ed6ccc84fefc5c60123b36f02364023cc522`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Termination` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 18; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildTable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/buildtable--466d49c9225a159091446057.md) | 40 | `declaration-track:466d49c9225a159091446057b4cb484df5938a7425f4edcec4cc36750ccd7e1d` |
| 2 | `theorem` | [getElem_buildTable_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/getelem-buildtable-le--b519dcb27dff5802c2a76222.md) | 78 | `result-track:b519dcb27dff5802c2a762225c8b4e5c49b8d840f9be30a29837ff87092c5169` |
| 3 | `inductive` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RootStringSlicePatternForwardSliceSearcher.Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.String.Slice.Pattern.ForwardSliceSearcher](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-ro--a5aa4d3b5520f26bc8b9615e.md) | 89 | `declaration-track:a5aa4d3b5520f26bc8b9615e87e5fd8d231dec7fd359439dff94105361835356` |
| 4 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/iter--9f632e2484a97fae544bcb78.md) | 98 | `declaration-track:9f632e2484a97fae544bcb78c86650cfc2d5be1f6ef5421bb78f3194db091920` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--f37752aa03af76b81b36fdfa.md) | 105 | `declaration-track:f37752aa03af76b81b36fdfa8ef1eee97b9360fc7c27af9b928302daa7301cc3` |
| 6 | `def` | [toOption](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/tooption--83e95c42e0fe1501fc6a05d7.md) | 228 | `declaration-track:83e95c42e0fe1501fc6a05d7fba295d09c74fea2f04883e5e61ae1924963d8af` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--051c4647dfd4e525318f7e00.md) | 234 | `declaration-track:051c4647dfd4e525318f7e0078cb29c8d2e7b9364103f5b9cae9f4b835dfe6b1` |
| 8 | `def` | [finitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/finitenessrelation--7ef2157b4fd26a55476bb63d.md) | 241 | `declaration-track:7ef2157b4fd26a55476bb63d4f2a62af5270fdbe4a0c8764a907c967fa818ab6` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--85607f7386ed63cf6c8bed65.md) | 269 | `declaration-track:85607f7386ed63cf6c8bed65e8df1d57485d9b2322e03af1b3eb2ed5d20131be` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--8831d80b32d40a6d47dea129.md) | 272 | `declaration-track:8831d80b32d40a6d47dea129004d77b04bf4f5d21b0e69af1f4debbd88467247` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--11004576cad5cbc1a91da339.md) | 275 | `declaration-track:11004576cad5cbc1a91da3396d2d199928c89e7c70ab60716335a4c183dd0a7c` |
| 12 | `def` | [startsWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/startswith--0bd8a2860138ffdc39babea3.md) | 279 | `declaration-track:0bd8a2860138ffdc39babea3861916eb5b7b689390830edf7c0c2dc39d6c2753` |
| 13 | `def` | [skipPrefix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/skipprefix--983e489bda0a5dcade345304.md) | 290 | `declaration-track:983e489bda0a5dcade345304befc842ab64f44aa8c29ff144dbb82f191b3e1db` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--c822e03a81abd2f151a1f2ff.md) | 296 | `declaration-track:c822e03a81abd2f151a1f2ffebf61a0ba240ffdda8fbf26c02c3a042ce3f5769` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--fec4a16ca748ba93d06440e9.md) | 300 | `declaration-track:fec4a16ca748ba93d06440e98ef1c1e1b348c965eed79de16747e75ca1281128` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--2009a8de8d75fd9455812f60.md) | 303 | `declaration-track:2009a8de8d75fd9455812f60c6d35f8ac81d1ac82db20652f6a61ec8f4744352` |
| 17 | `def` | [endsWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/endswith--bd20d16c7443f0ae389c2f3e.md) | 312 | `declaration-track:bd20d16c7443f0ae389c2f3ef0a71b662f26f460526335491e684a6c92cafd73` |
| 18 | `def` | [skipSuffix?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/skipsuffix--b41bd10f5290add453f566c2.md) | 326 | `declaration-track:b41bd10f5290add453f566c21744a6cbbc38c7b01f27dd17ac124c8e41be0d62` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--0767fbec2c9c78b01f85ef58.md) | 332 | `declaration-track:0767fbec2c9c78b01f85ef589d4072cf412f8514b7b32c8a7760b510bd67e5c3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variantcf53ceb05660d0ca3ce30fd11cd35bbcac19e451a06a56bc0881f951eeaa07c3.lean/declarations/instance--b803713a262028c6090a4b86.md) | 336 | `declaration-track:b803713a262028c6090a4b86d04cf75c711fbeddad564e2e737db8d695245b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

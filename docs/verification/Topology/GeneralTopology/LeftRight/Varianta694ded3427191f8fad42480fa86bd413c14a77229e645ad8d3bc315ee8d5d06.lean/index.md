# Verification target: GRWTSK.Topology.GeneralTopology.LeftRight.Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8af96b608a16a2a435f235885a11602a50c1e93",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8af96b608a16a2a435f235885a11602a50c1e93`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frequently_lt_nhds](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/frequently-lt-nhds--f9d9d9f0ab7f7c39889cd5ce.md) | 49 | `result-track:f9d9d9f0ab7f7c39889cd5ceca4f6381fb8815047f7543bbade3ba484bc00a10` |
| 2 | `theorem` | [Filter.Eventually.exists_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/filter-eventually-exists-lt--e760ade82ad275599292dd75.md) | 53 | `result-track:e760ade82ad275599292dd75e276d07f70d4eff0c17266840ca10c1b287ae8c1` |
| 3 | `theorem` | [nhdsWithin_Ici_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithin-ici-nebot--71bcd4b958f7c51c204247c5.md) | 58 | `result-track:71bcd4b958f7c51c204247c519a438ac08fd6ddc10d9b4eddca4c62ced738da9` |
| 4 | `instance` | [nhdsLE_neBot](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdsle-nebot--a70a76a7b62d96c9900534dc.md) | 62 | `declaration-track:a70a76a7b62d96c9900534dc8ab73a2eb2fd530455c1f9f851a019e964aea088` |
| 5 | `theorem` | [nhdsLT_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdslt-le-nhdsne--9a95d451af5306d2bb028904.md) | 65 | `result-track:9a95d451af5306d2bb0289047954915735dc0379abd68d811422e21562c350df` |
| 6 | `lemma` | [IsAntichain.interior_eq_empty](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/isantichain-interior-eq-empty--67bc9ba3fcd99bf5221c8750.md) | 70 | `result-track:67bc9ba3fcd99bf5221c8750166dbac8dda6672d1ac1e338712949ef50054167` |
| 7 | `lemma` | [IsAntichain.interior_eq_empty'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/isantichain-interior-eq-empty--17bee6dc679d8c3a55ce97a6.md) | 77 | `result-track:17bee6dc679d8c3a55ce97a6d97a2ce12732f03c4076ca081c2a110cdc822005` |
| 8 | `theorem` | [continuousWithinAt_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuouswithinat-ioi-iff-ici--e35f91dad0730ca3d1b3cbd7.md) | 89 | `result-track:e35f91dad0730ca3d1b3cbd789fe8867e5f88d4e052c595ea762dae97f4a8d04` |
| 9 | `theorem` | [continuousWithinAt_inter_Ioi_iff_Ici](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuouswithinat-inter-ioi-iff-ici--61e57960bf137e33f52ed99e.md) | 94 | `result-track:61e57960bf137e33f52ed99e74d58cedbeda30d54aee9e61f716e23c96d37565` |
| 10 | `theorem` | [nhdsLE_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdsle-sup-nhdsge--6d0322bd6832d4d4dbbc9550.md) | 105 | `result-track:6d0322bd6832d4d4dbbc9550084d769a0b7d815ad6280f5f38a34c0f0d1b0131` |
| 11 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithinle-sup-nhdswithinge--cbc2cd59b210b191046414d5.md) | 109 | `result-track:cbc2cd59b210b191046414d5b87cd91491f5168805701c6a39bd422e201f102f` |
| 12 | `theorem` | [nhdsLT_sup_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdslt-sup-nhdsge--d8a39720795fd8bf2f0e38bd.md) | 113 | `result-track:d8a39720795fd8bf2f0e38bde4ecefe4ab2d7190cd8272542c22282deed485e5` |
| 13 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithinlt-sup-nhdswithinge--ddc8e71b37c24e8370fad49a.md) | 117 | `result-track:ddc8e71b37c24e8370fad49aa56ba4f3dd585daca92fd50f90efbc6adef4669d` |
| 14 | `theorem` | [nhdsLE_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdsle-sup-nhdsgt--7bad89cb80d76d6940800b44.md) | 121 | `result-track:7bad89cb80d76d6940800b442dadd4abfe875300e3220b026531b4d0adee3ade` |
| 15 | `theorem` | [nhdsWithinLE_sup_nhdsWithinGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithinle-sup-nhdswithingt--c0206a07b0f52137388f075a.md) | 125 | `result-track:c0206a07b0f52137388f075ae57859ff7ac37a710b8be5f3a2725876e89d634c` |
| 16 | `theorem` | [nhdsLT_sup_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdslt-sup-nhdsgt--bffccd72b2e57beb47c3acc8.md) | 129 | `result-track:bffccd72b2e57beb47c3acc85dba7210cd4b857a69abfec3dd513cf5c05dc22c` |
| 17 | `theorem` | [nhdsWithinLT_sup_nhdsWithinGT](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithinlt-sup-nhdswithingt--60e7f4c7023c4c3bc0910478.md) | 133 | `result-track:60e7f4c7023c4c3bc09104788c794e485d75cd32c6b72d71213aa62e8d92ab83` |
| 18 | `lemma` | [nhdsGT_sup_nhdsWithin_singleton](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdsgt-sup-nhdswithin-singleton--34bf320e8663ed8fa3f2e7b5.md) | 139 | `result-track:34bf320e8663ed8fa3f2e7b5b55d4ddad6f39b1a457f31501f1da006ebb4f71b` |
| 19 | `lemma` | [nhdsWithin_uIoo_left_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithin-uioo-left-le-nhdsne--bc5a4b9b630fcfc13aba6484.md) | 143 | `result-track:bc5a4b9b630fcfc13aba648456ef0ad82edbd70ce8368fbcbd0bd573428fc654` |
| 20 | `lemma` | [nhdsWithin_uIoo_right_le_nhdsNE](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/nhdswithin-uioo-right-le-nhdsne--6e084b8e8d21c8540c578a2c.md) | 146 | `result-track:6e084b8e8d21c8540c578a2cc7997bc9e3432505bf455ea46e27745195c2a72b` |
| 21 | `theorem` | [continuousAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuousat-iff-continuous-left-right--db6e8e4a1f0e43262fd031c4.md) | 150 | `result-track:db6e8e4a1f0e43262fd031c4b2f5c2ca39a32718b15c5e4ad25bc281e8aa5ad5` |
| 22 | `theorem` | [continuousAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuousat-iff-continuous-left-right--b11677b040c6bd25bc601a9d.md) | 155 | `result-track:b11677b040c6bd25bc601a9d52a0cbe0f32539f378ecc7ad022b107b6c6e9007` |
| 23 | `theorem` | [continuousWithinAt_iff_continuous_left_right](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuouswithinat-iff-continuous-left-right--498c9d261058169edeac65ab.md) | 161 | `result-track:498c9d261058169edeac65ab779e3d6cbab11d7a990e09e352f3e7a8ac6a2dca` |
| 24 | `theorem` | [continuousWithinAt_iff_continuous_left'_right'](../../../../../mathematics/Topology/GeneralTopology/LeftRight/Varianta694ded3427191f8fad42480fa86bd413c14a77229e645ad8d3bc315ee8d5d06.lean/declarations/continuouswithinat-iff-continuous-left-right--4c2db3e05900de61004deb60.md) | 167 | `result-track:4c2db3e05900de61004deb602428304d094d6a3e3225865923e705f26b3a28b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

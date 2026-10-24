# Verification target: GRWTSK.Topology.GeneralTopology.Bornology.Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76100717905727ec127722a2ca47a59b7803ccd4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76100717905727ec127722a2ca47a59b7803ccd4`.

Source path: `GRWTSK/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/orderbornology--4ac222837b47b6eaa9fc50c2.md) | 37 | `declaration-track:4ac222837b47b6eaa9fc50c277812a4e58b73ae61669e6ffa8bb06e7ef2f8b65` |
| 2 | `lemma` | [orderBornology_isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/orderbornology-isbounded--5749a1b3dbbad763812db279.md) | 44 | `result-track:5749a1b3dbbad763812db279f539b50f4f7149fb91a91292167ad8928058ee65` |
| 3 | `class` | [IsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/isorderbornology--1df89c291002a54b46f52f8b.md) | 54 | `declaration-track:1df89c291002a54b46f52f8b29560962d734943cdad9ec44a4084862bf668bfc` |
| 4 | `lemma` | [isOrderBornology_iff_eq_orderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/isorderbornology-iff-eq-orderbornology--4d973b7ab339a870ec88a751.md) | 57 | `result-track:4d973b7ab339a870ec88a7519a75e76ed057796b826c1bd13fb4420bee21eca0` |
| 5 | `lemma` | [isBounded_iff_bddBelow_bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/isbounded-iff-bddbelow-bddabove--37ed839646fd190e2c68cbb9.md) | 66 | `result-track:37ed839646fd190e2c68cbb967b533a79553a0dc16055a9ca64fbf1c213cb0eb` |
| 6 | `lemma` | [Bornology.IsBounded.bddBelow](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bornology-isbounded-bddbelow--4f327934a2c8dcf4d2d86916.md) | 69 | `result-track:4f327934a2c8dcf4d2d86916183889d44a45b81923d6bd1998cc72e31b4e13c5` |
| 7 | `lemma` | [Bornology.IsBounded.bddAbove](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bornology-isbounded-bddabove--ffaf0e6a8f4a1be733af590f.md) | 72 | `result-track:ffaf0e6a8f4a1be733af590fc93d6f5207943510dd0818c649db1483f56867d1` |
| 8 | `lemma` | [BddBelow.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bddbelow-isbounded--af57f918eaf459f9fe8bf199.md) | 75 | `result-track:af57f918eaf459f9fe8bf199eea8d73f13e12cc923c3cb7be74b2db4e9260123` |
| 9 | `lemma` | [BddAbove.isBounded](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bddabove-isbounded--70d4c35c337d6e1111fcfff3.md) | 78 | `result-track:70d4c35c337d6e1111fcfff3efeffe8d2b99aac4deaa82872d74cf5bccb51082` |
| 10 | `lemma` | [BddBelow.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bddbelow-isbounded-inter--534bf82e35d0aa95e33ef41c.md) | 81 | `result-track:534bf82e35d0aa95e33ef41c60e42a9261e728be8d06c37f33bb5311a4369114` |
| 11 | `lemma` | [BddAbove.isBounded_inter](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bddabove-isbounded-inter--037455c84f4d1c8bf30eb14f.md) | 84 | `result-track:037455c84f4d1c8bf30eb14fb97b689f558bec928b3759eda132802145a2c338` |
| 12 | `instance` | [OrderDual.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/orderdual-instisorderbornology--82eb974546030c43caaff42d.md) | 87 | `declaration-track:82eb974546030c43caaff42d52e241f6402af00e2f39a635648d8e8d7865d27c` |
| 13 | `instance` | [Prod.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/prod-instisorderbornology--0486daf388e25a12a3082131.md) | 92 | `declaration-track:0486daf388e25a12a30821316fccd049042d988f08f6f8b7f0bc726181aebf41` |
| 14 | `instance` | [Pi.instIsOrderBornology](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/pi-instisorderbornology--e57c853d306052c0a5d2966c.md) | 98 | `declaration-track:e57c853d306052c0a5d2966ce4ef46b2ee43f9fc4df0860863840d8822907a6f` |
| 15 | `lemma` | [Bornology.IsBounded.subset_Icc_sInf_sSup](../../../../../mathematics/Topology/GeneralTopology/Bornology/Variantd8d0ae912ec933d2ee3340134e04ea367abb3777e4a1fd86ab3ade42632be002.lean/declarations/bornology-isbounded-subset-icc-sinf-ssup--d99c1c8486bdeb9784aafb82.md) | 109 | `result-track:d99c1c8486bdeb9784aafb82cc21b327b8a7117388c69905e7ed2c5302374684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

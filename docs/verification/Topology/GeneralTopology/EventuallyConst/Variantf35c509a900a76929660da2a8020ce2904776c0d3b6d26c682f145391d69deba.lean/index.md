# Verification target: GRWTSK.Topology.GeneralTopology.EventuallyConst.Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf10f854bfe1b2277653bac8d5fb65cfee518ea5",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf10f854bfe1b2277653bac8d5fb65cfee518ea5`.

Source path: `GRWTSK/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean.json)

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
| 1 | `def` | [EventuallyConst](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst--460fa339883e97c89ae0dfe3.md) | 46 | `declaration-track:460fa339883e97c89ae0dfe3bcef1b6a35d2f8172a5a8e41e9ea622d07d90206` |
| 2 | `theorem` | [HasBasis.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/hasbasis-eventuallyconst-iff--dc4223b1c31f544317ff9fc4.md) | 48 | `result-track:dc4223b1c31f544317ff9fc4a463e760b050d06accf0e142ac71dfe8390ba8f7` |
| 3 | `theorem` | [HasBasis.eventuallyConst_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/hasbasis-eventuallyconst-iff--7de6f42c515dc79c97179d99.md) | 52 | `result-track:7de6f42c515dc79c97179d996843ff72279d6f8b4e573564b037bdc671c4ef77` |
| 4 | `lemma` | [eventuallyConst_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-iff-tendsto--216ef57301927d24e2638e2f.md) | 58 | `result-track:216ef57301927d24e2638e2fa18a15bd21ff7df00f8ca821814aeefde023e549` |
| 5 | `theorem` | [EventuallyConst.of_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-of-tendsto--65cb6f25d966c43f199f16f3.md) | 64 | `result-track:65cb6f25d966c43f199f16f3da7fe2f9f619d90ee2bb1c6c02e0419cdf7af309` |
| 6 | `theorem` | [eventuallyConst_iff_exists_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-iff-exists-eventuallyeq--02e3ea39dd2a056a3d29b3ac.md) | 67 | `result-track:02e3ea39dd2a056a3d29b3ac8236cb7067e302811f7d972d39a85e706f432d74` |
| 7 | `theorem` | [eventuallyConst_pred'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-pred--6464fa27bf2ff58df2f844a2.md) | 73 | `result-track:6464fa27bf2ff58df2f844a2e78435906fb32c1aa7cc521a09c961d247a801ed` |
| 8 | `theorem` | [eventuallyConst_pred](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-pred--c98ee7f8a55cfcf074de01a0.md) | 77 | `result-track:c98ee7f8a55cfcf074de01a046e1dfe0e724da9a0dd59912fc03d3fff1a1a6d7` |
| 9 | `def` | [EventuallyEmptyOrUniv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyemptyoruniv--65d3b40fe6a59a64d69d787b.md) | 85 | `declaration-track:65d3b40fe6a59a64d69d787b9e2f78b52864f2282d1249e05554406c41971582` |
| 10 | `theorem` | [eventuallyEmptyOrUniv_iff'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyemptyoruniv-iff--41835b990f09c4b69c4b0813.md) | 87 | `result-track:41835b990f09c4b69c4b08132b4c0c0083d34d53c74481b49ba97d7a47293665` |
| 11 | `theorem` | [eventuallyConst_set'](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-set--4463ced9c2d03c048094f095.md) | 92 | `result-track:4463ced9c2d03c048094f095385c1ad63fa9fa0d1b4f7a73a48fa0b0adf7aab1` |
| 12 | `theorem` | [eventuallyEmptyOrUniv_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyemptyoruniv-iff--9b5930c47fbe88b8f7b9287f.md) | 96 | `result-track:9b5930c47fbe88b8f7b9287f6eb1e10049e2545cfe1647dd9606d9648950b3ea` |
| 13 | `theorem` | [eventuallyConst_set](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-set--3a283cebf876dd347c8faa60.md) | 101 | `result-track:3a283cebf876dd347c8faa604e8d5cc728313aa745cf6a07fbe30eb8a7114f19` |
| 14 | `theorem` | [eventuallyEmptyOrUniv_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyemptyoruniv-preimage--be59ba40061746e3feb03137.md) | 105 | `result-track:be59ba40061746e3feb031375351364b198bb3675798a8489d3e21d8f63c33b6` |
| 15 | `theorem` | [eventuallyConst_preimage](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-preimage--6a25d1c6b2fedc6ccc64f58a.md) | 110 | `result-track:6a25d1c6b2fedc6ccc64f58a327418febde8f646090deccfb27ca26c6afbbd13` |
| 16 | `theorem` | [EventuallyEq.eventuallyConst_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyeq-eventuallyconst-iff--b78a04bd1263f55d6c422c12.md) | 114 | `result-track:b78a04bd1263f55d6c422c128034313da1c3db8a70825c9f5893e18575c53e60` |
| 17 | `theorem` | [eventuallyConst_id](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-id--d222c8cdc4afa55540e9a94a.md) | 118 | `result-track:d222c8cdc4afa55540e9a94a650d9a9c37123d285162d65e983b2f1d05f77fc3` |
| 18 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/bot--7510a8cabebf18655f045a2c.md) | 122 | `result-track:7510a8cabebf18655f045a2ce7823d40ad43fae5d67c43d01d6f1ba8a71a79ac` |
| 19 | `lemma` | [const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/const--28745a5fe1d6f17f981e19a7.md) | 125 | `result-track:28745a5fe1d6f17f981e19a7594bb52fd31613414a7171cdb84295fb1319bf1f` |
| 20 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/congr--63deb2c8beb7dd96bd4e01db.md) | 128 | `result-track:63deb2c8beb7dd96bd4e01db1d9bb2dbb2a284a5e92550c55a6940bc61520676` |
| 21 | `lemma` | [of_subsingleton_right](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/of-subsingleton-right--0d2379df9c961ab53be1c483.md) | 132 | `result-track:0d2379df9c961ab53be1c483d02497b571cd88d7098b9d128be614b0e501d033` |
| 22 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/anti--59a8c6b49ef14b49254f4142.md) | 134 | `result-track:59a8c6b49ef14b49254f414224d25fbaa5418f3615b6bd9bb0cccc367cea314b` |
| 23 | `lemma` | [of_subsingleton_left](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/of-subsingleton-left--75fa08fa8a8318ccd642dad2.md) | 138 | `result-track:75fa08fa8a8318ccd642dad20c9b1c0bb4d52b9fbeedf38a8f35d4fb0faa0ed2` |
| 24 | `lemma` | [comp](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/comp--f2c7e6e12ea7881248b038ba.md) | 141 | `result-track:f2c7e6e12ea7881248b038ba049fc1e1757162b2add1699977f10a278304be9a` |
| 25 | `lemma` | [inv](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/inv--d5f90f6adfa9d8280a8b4183.md) | 144 | `result-track:d5f90f6adfa9d8280a8b4183dd1791c1b9748d2e8f1bf40858ef9773453719cb` |
| 26 | `lemma` | [comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/comp-tendsto--0f8d586d4b1bf4100903445e.md) | 146 | `result-track:0f8d586d4b1bf4100903445e2526cb193bd65413c46321a194799b3cfabe11cd` |
| 27 | `lemma` | [apply](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/apply--1d77cd0a5a5e306567742fd8.md) | 150 | `result-track:1d77cd0a5a5e306567742fd8943e167f19ad26fd4f68c977ddd02e41540b6abf` |
| 28 | `lemma` | [comp₂](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/comp--5f1c2c0be03606feffd998b7.md) | 154 | `result-track:5f1c2c0be03606feffd998b73484be50864cd750ea2d614fa0df059a51223672` |
| 29 | `lemma` | [prodMk](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/prodmk--b0eb0a4ac858ebfb31d5578e.md) | 159 | `result-track:b0eb0a4ac858ebfb31d5578edb4aac64afd849d86da8789284e599babc033342` |
| 30 | `lemma` | [mul](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mul--5909d0037857f4f4162459c7.md) | 164 | `result-track:5909d0037857f4f4162459c717c5f67b9423eebf890d53e5ed5424cbb53682d0` |
| 31 | `lemma` | [bot](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/bot--3ecbac0d63ab646578dfb19c.md) | 172 | `result-track:3ecbac0d63ab646578dfb19c0dcaafe84c314139e1bff13561cf635cf4f0f065` |
| 32 | `lemma` | [congr](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/congr--209e01f24ff7a67481413824.md) | 175 | `result-track:209e01f24ff7a6748141382414d357d2346efc2817d6c5b0a45df1453d6057a7` |
| 33 | `lemma` | [anti](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/anti--6207651641ae9ff564938204.md) | 179 | `result-track:6207651641ae9ff56493820480145fa1a9201959ac806ddd857da46689c959f0` |
| 34 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/of-mulindicator-const--4326445a770460a969bcd2a6.md) | 186 | `result-track:4326445a770460a969bcd2a6faa0d8dd7c885e2c9b047060f9714416bc8c456f` |
| 35 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const--f3c026b84b1a3790966519d8.md) | 191 | `result-track:f3c026b84b1a3790966519d8b43d6e96578d0b2b9d4245c511ffb7823697d447` |
| 36 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const-iff-of-ne--17a798b03b520aa787bfc2ca.md) | 196 | `result-track:17a798b03b520aa787bfc2cace7be76030375fcdf5e3db403707ce66664fc9ce` |
| 37 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const-iff--76221811ffd07c09c547877a.md) | 201 | `result-track:76221811ffd07c09c547877aa0fda449320194d57c784e7b353aa78f87dc93da` |
| 38 | `lemma` | [of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/of-mulindicator-const--459fa620cf704688b810895d.md) | 213 | `result-track:459fa620cf704688b810895d5a373751fed000893bcddb444d101943e67af359` |
| 39 | `theorem` | [mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const--0c6dfc7145c9e87e91d84382.md) | 219 | `result-track:0c6dfc7145c9e87e91d84382bf65be67d31ada784db01c9b1e0ef94ca3d0f5ce` |
| 40 | `theorem` | [mulIndicator_const_iff_of_ne](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const-iff-of-ne--9d130f0fb5f557f6a9526b17.md) | 225 | `result-track:9d130f0fb5f557f6a9526b172340db60004612b2d7a65d76b103fc3cfbecdd99` |
| 41 | `theorem` | [mulIndicator_const_iff](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/mulindicator-const-iff--fc7afa4883986d45a79721bb.md) | 231 | `result-track:fc7afa4883986d45a79721bb049b99d9acb2c77d52844cfcadc459919e58dfa8` |
| 42 | `lemma` | [eventuallyConst_atTop](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-attop--cc579b2d46e2fa01aaccd442.md) | 237 | `result-track:cc579b2d46e2fa01aaccd442e847acb6facc8d2881c175c31934d3a388123016` |
| 43 | `lemma` | [eventuallyConst_atTop_nat](../../../../../mathematics/Topology/GeneralTopology/EventuallyConst/Variantf35c509a900a76929660da2a8020ce2904776c0d3b6d26c682f145391d69deba.lean/declarations/eventuallyconst-attop-nat--02827cd65cfd838da11feef6.md) | 242 | `result-track:02827cd65cfd838da11feef62834b8eb64753b38845c0900d1cedb42a26d89ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

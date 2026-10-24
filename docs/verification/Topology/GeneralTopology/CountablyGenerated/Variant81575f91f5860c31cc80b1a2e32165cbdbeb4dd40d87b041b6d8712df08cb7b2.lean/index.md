# Verification target: GRWTSK.Topology.GeneralTopology.CountablyGenerated.Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c70e5a942ad8e89fcf7f4271da633bc93b3c0507",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c70e5a942ad8e89fcf7f4271da633bc93b3c0507`.

Source path: `GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/instance--2c8d906fb2dfc88e14585297.md) | 36 | `declaration-track:2c8d906fb2dfc88e1458529768ea674f7c1d938a9386026c45c5503e95632edb` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/instance--017d19bdfd280fc4c56fca38.md) | 40 | `declaration-track:017d19bdfd280fc4c56fca38256ed5eb5812c1f011419a26e883e3c414f4684e` |
| 3 | `instance` | [instIsCountablyGeneratedAtTopProd](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/instiscountablygeneratedattopprod--da2b984590760f5901ecbc4e.md) | 44 | `declaration-track:da2b984590760f5901ecbc4e6fbdd774de8b851768d1f0870afe4222409a3012` |
| 4 | `instance` | [instIsCountablyGeneratedAtBotProd](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/instiscountablygeneratedatbotprod--ab58eb34daffaea9af20a763.md) | 50 | `declaration-track:ab58eb34daffaea9af20a7636a153506eb571b83dbdc9c3aa08fbc89fe0f5ca9` |
| 5 | `instance` | [_root_.GRWTSK.Topology.GeneralTopology.AtTopCountableBasis.Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.OrderDual.instIsCountablyGeneratedAtTop](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/root-grwtsk-topology-generaltopology-attopcountablebasis-variant9edec11b--f0c907486819494228e396d4.md) | 56 | `declaration-track:f0c907486819494228e396d4b6b234d8b3501d196e497d59b80cc2909c18e993` |
| 6 | `instance` | [_root_.GRWTSK.Topology.GeneralTopology.AtTopCountableBasis.Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.OrderDual.instIsCountablyGeneratedAtBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/root-grwtsk-topology-generaltopology-attopcountablebasis-variant9edec11b--cd0a753793ca2ebd9ed62934.md) | 59 | `declaration-track:cd0a753793ca2ebd9ed629348af1b8e573a66fa143e692b5baf59237e2ad9d6f` |
| 7 | `lemma` | [atTop_countable_basis](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/attop-countable-basis--52b252bee95e242475517bb3.md) | 62 | `result-track:52b252bee95e242475517bb3fd01e4655e7cc8d72845eaf69f4368f4161d4390` |
| 8 | `lemma` | [atBot_countable_basis](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/atbot-countable-basis--19c13999cfe1d5923a51d9c0.md) | 66 | `result-track:19c13999cfe1d5923a51d9c0d460a0a1af303c7da6f7ded750f293392b49dae3` |
| 9 | `theorem` | [exists_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/exists-seq-tendsto--baaa744e0dbe70411fe3f64d.md) | 72 | `result-track:baaa744e0dbe70411fe3f64d7f043a845e941334a5e4df4183ba2b5692606d67` |
| 10 | `theorem` | [exists_seq_monotone_tendsto_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/exists-seq-monotone-tendsto-attop-attop--f6f96a383e4ee9968f0e3d7c.md) | 78 | `result-track:f6f96a383e4ee9968f0e3d7c087e202d38120b7e9ba4737fc8ef6c266fb24e96` |
| 11 | `theorem` | [exists_seq_antitone_tendsto_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/exists-seq-antitone-tendsto-attop-atbot--80e9ff45a2a3603cf96bde4a.md) | 93 | `result-track:80e9ff45a2a3603cf96bde4a14b575a653ebcc619a9406babb953a3ffecde2ca` |
| 12 | `theorem` | [tendsto_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/tendsto-iff-seq-tendsto--454116391d8b068f89917b26.md) | 101 | `result-track:454116391d8b068f89917b2661cd751bbbb29fee3d2220cda2b0b6a5447d088a` |
| 13 | `theorem` | [tendsto_of_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/tendsto-of-seq-tendsto--aafef6b470ec6b12affe17eb.md) | 112 | `result-track:aafef6b470ec6b12affe17ebe291ffc8cac759b3dcadb6b157e77e76382ea66d` |
| 14 | `theorem` | [eventually_iff_seq_eventually](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/eventually-iff-seq-eventually--189c9511b40f25899df72e0e.md) | 116 | `result-track:189c9511b40f25899df72e0e1bc2f25ba64fcdc92a19cad901361842a7d2e91c` |
| 15 | `theorem` | [frequently_iff_seq_frequently](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/frequently-iff-seq-frequently--d8cc0b8c33dd5e2ed8637cb1.md) | 121 | `result-track:d8cc0b8c33dd5e2ed8637cb1ea440eaa71ff99fbba9eb1418524db45b9cb267a` |
| 16 | `theorem` | [exists_seq_forall_of_frequently](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/exists-seq-forall-of-frequently--05bde102f3e2631ec8b5990a.md) | 127 | `result-track:05bde102f3e2631ec8b5990a509d974b4797e9b45cc9ac510908c47335a848fe` |
| 17 | `lemma` | [frequently_iff_seq_forall](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/frequently-iff-seq-forall--db52b628ec5480aa1dfd57e6.md) | 135 | `result-track:db52b628ec5480aa1dfd57e666590f385f6a047ebf8ad629ea6427eb819756b2` |
| 18 | `theorem` | [tendsto_of_subseq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/tendsto-of-subseq-tendsto--a49bc30dad25482095ecf07d.md) | 142 | `result-track:a49bc30dad25482095ecf07dbf5706cb50e70419443ecd55956cfd313b4e8155` |
| 19 | `theorem` | [subseq_tendsto_of_neBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant81575f91f5860c31cc80b1a2e32165cbdbeb4dd40d87b041b6d8712df08cb7b2.lean/declarations/subseq-tendsto-of-nebot--1fd760b4731a991e8572b984.md) | 155 | `result-track:1fd760b4731a991e8572b984c59effdec2f96dacdc0d4106a63be9d47c6d6632` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

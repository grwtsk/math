# Verification target: GRWTSK.Topology.GeneralTopology.CountablyGenerated.Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dee22d8610652f104f5b42b7c2b238903abc2763",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dee22d8610652f104f5b42b7c2b238903abc2763`.

Source path: `GRWTSK/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/instance--9d52c4ad6b9df4773178e459.md) | 28 | `declaration-track:9d52c4ad6b9df4773178e4598977b13dfba46bba5770f3127791742849db29ac` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/instance--516cd4ea4b59257bc2764d8b.md) | 32 | `declaration-track:516cd4ea4b59257bc2764d8bd8a8d4578c102d363d7ba658cbca3b17dc10bfef` |
| 3 | `instance` | [instIsCountablyGeneratedAtTopProd](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/instiscountablygeneratedattopprod--ce931a743324c2c5e965ffd1.md) | 36 | `declaration-track:ce931a743324c2c5e965ffd1118143084fcdb0d100437b468baf650ff48df5ae` |
| 4 | `instance` | [instIsCountablyGeneratedAtBotProd](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/instiscountablygeneratedatbotprod--b0d1b78e90be9844f6486acc.md) | 42 | `declaration-track:b0d1b78e90be9844f6486acc5c0d0aef21026d1d1bda52566c2b831662684a54` |
| 5 | `instance` | [_root_.OrderDual.instIsCountablyGeneratedAtTop](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/root-orderdual-instiscountablygeneratedattop--e6ec81e16110b0e8bcfc39fa.md) | 48 | `declaration-track:e6ec81e16110b0e8bcfc39fa64d2dfa312941e945e60ad6f72d97b50fde3ea83` |
| 6 | `instance` | [_root_.OrderDual.instIsCountablyGeneratedAtBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/root-orderdual-instiscountablygeneratedatbot--2e1b7058fbe3af61a6b78492.md) | 51 | `declaration-track:2e1b7058fbe3af61a6b78492a4e666a6883cbdb227e8457abe27e5bb09b87592` |
| 7 | `lemma` | [atTop_countable_basis](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/attop-countable-basis--4b937e76bc91922dbde57512.md) | 54 | `result-track:4b937e76bc91922dbde5751204b54ac274ea0610c37af2b048ad0037d39c7927` |
| 8 | `lemma` | [atBot_countable_basis](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/atbot-countable-basis--b8634fae42c810bba863a296.md) | 58 | `result-track:b8634fae42c810bba863a2961f897b79de570be0f8a088a14933e149d326e9ba` |
| 9 | `theorem` | [exists_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/exists-seq-tendsto--a50cf8df01d9bcad81b2b60c.md) | 64 | `result-track:a50cf8df01d9bcad81b2b60cd4d957aa825cd2ff601a2c5a7cdfdb12d337664a` |
| 10 | `theorem` | [exists_seq_monotone_tendsto_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/exists-seq-monotone-tendsto-attop-attop--a7b6080048108f33b7388ea9.md) | 70 | `result-track:a7b6080048108f33b7388ea9d8dfed59af3e85330a9d395e0bc9726f7c80fcc9` |
| 11 | `theorem` | [exists_seq_antitone_tendsto_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/exists-seq-antitone-tendsto-attop-atbot--7d16bb00b4b60b25a2c61532.md) | 85 | `result-track:7d16bb00b4b60b25a2c615322bb82d460ed1156ef21405b1f15aca7c21c3106c` |
| 12 | `theorem` | [tendsto_iff_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/tendsto-iff-seq-tendsto--3d98c829e80a22b042ddf275.md) | 93 | `result-track:3d98c829e80a22b042ddf27524234e2339ba57bd9f7e7d068f59fbd0093eb7d6` |
| 13 | `theorem` | [tendsto_of_seq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/tendsto-of-seq-tendsto--b16d972b43349c8dbf797f10.md) | 104 | `result-track:b16d972b43349c8dbf797f10d285aa845d6ac2d0284f0ed821aef3eec562f9e4` |
| 14 | `theorem` | [eventually_iff_seq_eventually](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/eventually-iff-seq-eventually--92b3478db738609cbe4d7b05.md) | 108 | `result-track:92b3478db738609cbe4d7b059e4f4deaecd788708d01df942d2a719f8f4ef8f1` |
| 15 | `theorem` | [frequently_iff_seq_frequently](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/frequently-iff-seq-frequently--5c6c0d7eb428a17419005e2e.md) | 113 | `result-track:5c6c0d7eb428a17419005e2e8b1ad3c392e2bd31171b23099ebd967f29db1cc7` |
| 16 | `theorem` | [exists_seq_forall_of_frequently](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/exists-seq-forall-of-frequently--2ce6a780f48ef8eef5524897.md) | 119 | `result-track:2ce6a780f48ef8eef5524897c23e7387b87817f6dc993687d9ff7e5b18b70df5` |
| 17 | `lemma` | [frequently_iff_seq_forall](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/frequently-iff-seq-forall--5f1a0c41fb452b981a47e8e1.md) | 127 | `result-track:5f1a0c41fb452b981a47e8e1f89ede84beef0dde13921d2e3331e9825df54c8d` |
| 18 | `theorem` | [tendsto_of_subseq_tendsto](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/tendsto-of-subseq-tendsto--478c3a0b7eb659fa3282ee8d.md) | 134 | `result-track:478c3a0b7eb659fa3282ee8df61343fc5ff52f758dc87443a9fc5e48846d4575` |
| 19 | `theorem` | [subseq_tendsto_of_neBot](../../../../../mathematics/Topology/GeneralTopology/CountablyGenerated/Variant9edec11be4c85177fadd7a63a2cf60a750536d73b000f644d67116db644dddde.lean/declarations/subseq-tendsto-of-nebot--cc2ae254c4984a7c8b133a07.md) | 147 | `result-track:cc2ae254c4984a7c8b133a07e13a2839f1a45d08a2e96102f4d380e1f5e4156c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

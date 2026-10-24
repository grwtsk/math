# Verification target: GRWTSK.Topology.GeneralTopology.Egorov.Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead207adbc7bf1ed9ddddfb49353d0d93ea8e9df`.

Source path: `GRWTSK/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [notConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/notconvergentseq--649538c68bd02f757ca4a7dc.md) | 49 | `declaration-track:649538c68bd02f757ca4a7dce1ed6e9e8021b2b396ef4e26d1b46c84534ebd24` |
| 2 | `theorem` | [mem_notConvergentSeq_iff](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/mem-notconvergentseq-iff--22d5fc519d49de70dd5ac269.md) | 54 | `result-track:22d5fc519d49de70dd5ac269a93ce26a631f2d18a4bed1ad834395d20e4e7377` |
| 3 | `theorem` | [notConvergentSeq_antitone](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/notconvergentseq-antitone--c9fca67ee88569e63cad42fa.md) | 58 | `result-track:c9fca67ee88569e63cad42fa92935d3c4cf47a31920bf9d5711c74123b22b485` |
| 4 | `theorem` | [measure_inter_notConvergentSeq_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/measure-inter-notconvergentseq-eq-zero--c49997ed0ed25ede39ffb175.md) | 61 | `result-track:c49997ed0ed25ede39ffb175caa94abc013087c58af99607026b6293844f8341` |
| 5 | `theorem` | [notConvergentSeq_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/notconvergentseq-measurableset--6bfd980c1fbfd42d82c7c229.md) | 74 | `result-track:6bfd980c1fbfd42d82c7c229bdd43aada58034d7214e2fe4366f7e8dc3559a3c` |
| 6 | `theorem` | [measure_notConvergentSeq_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/measure-notconvergentseq-tendsto-zero--2cdac8da671320d8ba315a7d.md) | 81 | `result-track:2cdac8da671320d8ba315a7d047bd3917cada222e6f44d2ce4657178fbe59117` |
| 7 | `theorem` | [exists_notConvergentSeq_lt](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/exists-notconvergentseq-lt--e8597325a9ed529e997015dd.md) | 98 | `result-track:e8597325a9ed529e997015dd38123aae77310b794b1eeeb93a7126602af6f0ec` |
| 8 | `def` | [notConvergentSeqLTIndex](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/notconvergentseqltindex--96dc2cf1880a258a1f0988cc.md) | 114 | `declaration-track:96dc2cf1880a258a1f0988cc4a5b0c639b22136ad994c57219f9e25ba8b77df3` |
| 9 | `theorem` | [notConvergentSeqLTIndex_spec](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/notconvergentseqltindex-spec--4752be21d0338c863c82cad7.md) | 119 | `result-track:4752be21d0338c863c82cad704a1fdad6c164e2004651d65c5fed183fe7fbc49` |
| 10 | `def` | [iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/iunionnotconvergentseq--1795456ed2e3283ed5b5a50f.md) | 130 | `declaration-track:1795456ed2e3283ed5b5a50f6b3d232e405566f369747848c3866728db7e1c8e` |
| 11 | `theorem` | [iUnionNotConvergentSeq_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/iunionnotconvergentseq-measurableset--91957dcacc3c20b0358b53f6.md) | 135 | `result-track:91957dcacc3c20b0358b53f61dc1ef64db9089e6ca53108e897616f5c460e024` |
| 12 | `theorem` | [measure_iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/measure-iunionnotconvergentseq--972c78422fadd7fc1b065f21.md) | 141 | `result-track:972c78422fadd7fc1b065f21e1145c134a326d5327c8111217fe1987b4b90e93` |
| 13 | `theorem` | [iUnionNotConvergentSeq_subset](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/iunionnotconvergentseq-subset--c833289ab5527c73d37b429f.md) | 154 | `result-track:c833289ab5527c73d37b429fce13b2a16277160153dd0a756f71636da9502867` |
| 14 | `theorem` | [tendstoUniformlyOn_diff_iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/tendstouniformlyon-diff-iunionnotconvergentseq--f93471909dfb140685a86edf.md) | 161 | `result-track:f93471909dfb140685a86edfee8579558965aa9737cea79fa35177598a0c57c0` |
| 15 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/tendstouniformlyon-of-ae-tendsto--c2f1fbb9535903772dbcdad5.md) | 191 | `result-track:c2f1fbb9535903772dbcdad546f9857d2a8c14a4ad78cd392bdddb8468be6348` |
| 16 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto'](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variantf11c0d7e85424a5f7da59d34d406b55de56fed8217453f3a3d1e8fa235caaa43.lean/declarations/tendstouniformlyon-of-ae-tendsto--e7f78031b358026fd03c2a6f.md) | 202 | `result-track:e7f78031b358026fd03c2a6f2b6c30450177be8e3e34b421ee01354427d6c4cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

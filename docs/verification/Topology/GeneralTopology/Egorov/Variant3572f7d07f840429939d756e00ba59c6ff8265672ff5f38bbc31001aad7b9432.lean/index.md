# Verification target: GRWTSK.Topology.GeneralTopology.Egorov.Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18a08eabc4bc74de47b6094d018671bdb722ea4e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18a08eabc4bc74de47b6094d018671bdb722ea4e`.

Source path: `GRWTSK/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [notConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/notconvergentseq--f938a11da04232517f358f72.md) | 41 | `declaration-track:f938a11da04232517f358f724976bf2f5cf1b029b232fa983d24b73e7777cce2` |
| 2 | `theorem` | [mem_notConvergentSeq_iff](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/mem-notconvergentseq-iff--2df8820527fd2fe3b44aba56.md) | 46 | `result-track:2df8820527fd2fe3b44aba56848a1a8bea09a9b14f89d61d32a4c31601ba290f` |
| 3 | `theorem` | [notConvergentSeq_antitone](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/notconvergentseq-antitone--1325a5f4473ca030b7f65657.md) | 50 | `result-track:1325a5f4473ca030b7f656573fdd6cfce8cd8eee499f32c5d870c9e54f83e290` |
| 4 | `theorem` | [measure_inter_notConvergentSeq_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/measure-inter-notconvergentseq-eq-zero--0e1a121ba9f1da4a38ceed62.md) | 53 | `result-track:0e1a121ba9f1da4a38ceed6209110cb3db58f46ffbe6b5ba33db73e24f91f371` |
| 5 | `theorem` | [notConvergentSeq_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/notconvergentseq-measurableset--ae9fa3ef38e3e4370552c656.md) | 66 | `result-track:ae9fa3ef38e3e4370552c656c5793557f43078aa708cabda8a15f6606752031b` |
| 6 | `theorem` | [measure_notConvergentSeq_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/measure-notconvergentseq-tendsto-zero--b79d7a380e88302da82bc3da.md) | 73 | `result-track:b79d7a380e88302da82bc3da2f75ee958c38797ace3e353efe2433c896377ceb` |
| 7 | `theorem` | [exists_notConvergentSeq_lt](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/exists-notconvergentseq-lt--d56e49a4f0a869d8c2aa1561.md) | 90 | `result-track:d56e49a4f0a869d8c2aa15615a360aab61c6bbe53abd251ff2674351cb24efdf` |
| 8 | `def` | [notConvergentSeqLTIndex](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/notconvergentseqltindex--ba63217a051a6b03d324bc43.md) | 106 | `declaration-track:ba63217a051a6b03d324bc432f245b509afbb308e5d30e8d6064ad5b71ca0ebd` |
| 9 | `theorem` | [notConvergentSeqLTIndex_spec](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/notconvergentseqltindex-spec--2c687d61d06215f5d4d3c500.md) | 111 | `result-track:2c687d61d06215f5d4d3c500f5f532ba4ea593c52ce864a751be5bfc59b6b502` |
| 10 | `def` | [iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/iunionnotconvergentseq--d98683d8f4145d0c79621ffa.md) | 122 | `declaration-track:d98683d8f4145d0c79621ffaaa53b4f34fd14141a397a90ce33105433961587a` |
| 11 | `theorem` | [iUnionNotConvergentSeq_measurableSet](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/iunionnotconvergentseq-measurableset--d43f7328039c0a65cbf42778.md) | 127 | `result-track:d43f7328039c0a65cbf427789c9d81b1e27be050e3d6820bd1578b5f9127df55` |
| 12 | `theorem` | [measure_iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/measure-iunionnotconvergentseq--0ac6923993ffcaab4c701ae6.md) | 133 | `result-track:0ac6923993ffcaab4c701ae69bad584c316169b0bcacf859095c64d2c29a5b87` |
| 13 | `theorem` | [iUnionNotConvergentSeq_subset](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/iunionnotconvergentseq-subset--9f3af93ae6ab0fe441b6e170.md) | 146 | `result-track:9f3af93ae6ab0fe441b6e170424dc8542eff0c80e0a1eb9b07ce42fbe270714e` |
| 14 | `theorem` | [tendstoUniformlyOn_diff_iUnionNotConvergentSeq](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/tendstouniformlyon-diff-iunionnotconvergentseq--d789b1b17bae3f1b4b6a60f9.md) | 153 | `result-track:d789b1b17bae3f1b4b6a60f99cd952ee3fd29b37aaf201c430f6526422a4bdee` |
| 15 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/tendstouniformlyon-of-ae-tendsto--1d0478417aa80a8f2b8835ae.md) | 183 | `result-track:1d0478417aa80a8f2b8835ae67bdd8c3dc62a2691b3704d2f64a43d6e903de5d` |
| 16 | `theorem` | [tendstoUniformlyOn_of_ae_tendsto'](../../../../../mathematics/Topology/GeneralTopology/Egorov/Variant3572f7d07f840429939d756e00ba59c6ff8265672ff5f38bbc31001aad7b9432.lean/declarations/tendstouniformlyon-of-ae-tendsto--e50efac7a6004e1de7bc6656.md) | 194 | `result-track:e50efac7a6004e1de7bc6656483b442c935d4e43688d0a405a0bcdc1ce85ed0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

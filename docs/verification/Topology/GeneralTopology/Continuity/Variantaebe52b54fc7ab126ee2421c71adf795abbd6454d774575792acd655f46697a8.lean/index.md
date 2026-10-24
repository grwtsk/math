# Verification target: GRWTSK.Topology.GeneralTopology.Continuity.Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7621ea0cbd1c55629c3137116a8b39e42899703",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7621ea0cbd1c55629c3137116a8b39e42899703`.

Source path: `GRWTSK/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.AtTopBotIxx` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Directed.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--c9a31c9ced12a81d5bf08b67.md) | 44 | `result-track:c9a31c9ced12a81d5bf08b67e3a5d0b95f7bd3b1190fb382538c01d64c012f4b` |
| 2 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Monotone.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--80032676c3d8a3250d22ab39.md) | 79 | `result-track:80032676c3d8a3250d22ab39ba978e8b707effc366979aa143280c57dfaa2dff` |
| 3 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Antitone.measure_iUnion](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--1de9173fb89e3a9ade8ed26c.md) | 89 | `result-track:1de9173fb89e3a9ade8ed26c9c759e98f9391c51ab58fd8d939fea86aeea6444` |
| 4 | `theorem` | [measure_iUnion_eq_iSup_accumulate](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/measure-iunion-eq-isup-accumulate--0cace62d447596acdf69d880.md) | 96 | `result-track:0cace62d447596acdf69d88063491ecce446723e2820aa9fd0830d6829d8dcaa` |
| 5 | `theorem` | [measure_biUnion_eq_iSup](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/measure-biunion-eq-isup--614aa68cde9f7e39078b2fe4.md) | 102 | `result-track:614aa68cde9f7e39078b2fe4881fda1f71c039a1c84686639c444ce4e44e44c5` |
| 6 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Directed.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--5c32cb773d4c532c939634fa.md) | 110 | `result-track:5c32cb773d4c532c939634fa69e8d9387f3e45e5472f6910884e0363e29854b9` |
| 7 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Monotone.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--e47f4cb7a75ec665790af29b.md) | 131 | `result-track:e47f4cb7a75ec665790af29bbd8afb74b1084d81c58f823a51e7eadb62f54853` |
| 8 | `theorem` | [measure_iInter_of_ae_monotone](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/measure-iinter-of-ae-monotone--a5b024416171f76772294d18.md) | 153 | `result-track:a5b024416171f76772294d1818b73afce47ca04d4ac5f75a7ba81eba31e5f66c` |
| 9 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootDirectedMeasureIUnion.Variant71e65bb1ccc238681d9bee53da18cdaa3c7a6f2ffcdfdda9f30443c277f64ced.Antitone.measure_iInter](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/root-grwtsk-topology-generaltopology-rootdirectedmeasureiunion-variant71--149e8dc9016bc551622434f2.md) | 175 | `result-track:149e8dc9016bc551622434f25d603bbfd99173d774adf9cd3afd8d4d6be8ff39` |
| 10 | `lemma` | [measure_iInter_of_ae_antitone](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/measure-iinter-of-ae-antitone--e47ecfac8b7bded01f1aaaf2.md) | 184 | `result-track:e47ecfac8b7bded01f1aaaf25aeeb67c69221245b14054e0ec8b4e7b235f36f1` |
| 11 | `theorem` | [measure_iInter_eq_iInf_measure_iInter_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/measure-iinter-eq-iinf-measure-iinter-le--6269493c879732965bb9cd83.md) | 193 | `result-track:6269493c879732965bb9cd833b12e096865e08b618ad50b83f2aef9d0d677bf7` |
| 12 | `theorem` | [tendsto_measure_iUnion_atTop](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iunion-attop--3c3d4f2b17f526d0055f96e6.md) | 206 | `result-track:3c3d4f2b17f526d0055f96e69ff87baa95b55d8138d745d6b8171336ce1e9bee` |
| 13 | `theorem` | [tendsto_measure_iUnion_atBot](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iunion-atbot--d020607090e19eadc89b1b89.md) | 213 | `result-track:d020607090e19eadc89b1b89e346dbd301079291d08ea21547420dd6500de2cb` |
| 14 | `theorem` | [tendsto_measure_iUnion_accumulate](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iunion-accumulate--647e582bee31d7e18a240ede.md) | 219 | `result-track:647e582bee31d7e18a240edeb486a0c22feeb47497cd9316fddcab06609822b9` |
| 15 | `theorem` | [tendsto_measure_iInter_atTop](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iinter-attop--4fe50906d03fd59496949156.md) | 228 | `result-track:4fe50906d03fd594969491561ece5b56bb3d81af8fbb2fb4dcd79dab93cc1843` |
| 16 | `theorem` | [tendsto_measure_iInter_atBot](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iinter-atbot--b1ccd42009c0a07747e07ea8.md) | 239 | `result-track:b1ccd42009c0a07747e07ea8ca55fab4668427d09e322207cea40e3979a4a089` |
| 17 | `theorem` | [tendsto_measure_iInter_le](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-iinter-le--f2c81edd81589637b54c54b9.md) | 246 | `result-track:f2c81edd81589637b54c54b9a8f9f76f4b76f0752a758187cf5e16f0002aebf2` |
| 18 | `theorem` | [exists_measure_iInter_lt](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/exists-measure-iinter-lt--848c5d7e89491f4a9941a358.md) | 257 | `result-track:848c5d7e89491f4a9941a358a22e988451591840dde1a32f9bfd0a48df9df8a8` |
| 19 | `theorem` | [tendsto_measure_biInter_gt](../../../../../mathematics/Topology/GeneralTopology/Continuity/Variantaebe52b54fc7ab126ee2421c71adf795abbd6454d774575792acd655f46697a8.lean/declarations/tendsto-measure-biinter-gt--a947085a4f1d43af2870ecc5.md) | 274 | `result-track:a947085a4f1d43af2870ecc5733d18a2cf21af5dafef09c28feadf924b8eb8cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

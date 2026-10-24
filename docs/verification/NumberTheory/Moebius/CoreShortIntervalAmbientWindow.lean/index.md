# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalAmbientWindow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c2d2b57c1dc7513e0e66c3468fc12e12b80f365",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c2d2b57c1dc7513e0e66c3468fc12e12b80f365`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalStartWindowWitness`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalStartWindowWitness.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [harmonicAmbientStartWindow](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicambientstartwindow--1d5b45d9070976bdb49058ad.md) | 21 | `declaration-track:1d5b45d9070976bdb49058ad48643cb869da2c319827c8830b11ba68ba3d9977` |
| 2 | `def` | [ambientMobiusShortIntervalSum](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/ambientmobiusshortintervalsum--e58cda2915171403e343b2c3.md) | 25 | `declaration-track:e58cda2915171403e343b2c330a005f7e2c490ab90f0de6e9f4e062d823586e4` |
| 3 | `def` | [harmonicAmbientShortIntervalL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicambientshortintervall1--9d0a469a0fe6fefcb873832d.md) | 29 | `declaration-track:9d0a469a0fe6fefcb873832ddc88618764bb514a4692cad9c47f80f364ec79f7` |
| 4 | `theorem` | [harmonicShortMobiusSum_eq_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicshortmobiussum-eq-ambient--03a2e160284b031fdff6bcb4.md) | 35 | `result-track:03a2e160284b031fdff6bcb45fce6f6a81a559d8b4f3c27bac3229d7a3e1968b` |
| 5 | `theorem` | [harmonicStartWindow_subset_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicstartwindow-subset-ambient--0a7904b86855792afdfac7d7.md) | 48 | `result-track:0a7904b86855792afdfac7d7ca37ba8f2cfb8fae73465a1ef38a6a1f281878a9` |
| 6 | `theorem` | [harmonicShortIntervalL1_eq_startWindowSum](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicshortintervall1-eq-startwindowsum--38bd792b060ecaba44c9c4a2.md) | 70 | `result-track:38bd792b060ecaba44c9c4a2cc48e962180e6a75e9922807c12c5cf6e53434b7` |
| 7 | `theorem` | [harmonicShortIntervalL1_le_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicshortintervall1-le-ambient--9b76270df3f3bce862600a7f.md) | 88 | `result-track:9b76270df3f3bce862600a7f03a43fc0e82ed17b21ca29ff78cb2b06d1ebdf91` |
| 8 | `def` | [harmonicAmbientTerminalL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicambientterminall1majorant--aa323c8d628d87222c2e5d7b.md) | 101 | `declaration-track:aa323c8d628d87222c2e5d7b2bc69da5ded19f02a577af9ea841e523a793238a` |
| 9 | `def` | [harmonicAmbientLongInteriorL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/harmonicambientlonginteriorl1majorant--d44cc4d330078eeb293a2dca.md) | 110 | `declaration-track:d44cc4d330078eeb293a2dca604b3ddcabf998915faff51579f2160af075a844` |
| 10 | `def` | [coreLongDepthAmbientL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/corelongdepthambientl1majorant--ee629de4c5b03511b7b5632d.md) | 118 | `declaration-track:ee629de4c5b03511b7b5632dad2265377fee2791d42e08261814d74ae7e563f8` |
| 11 | `def` | [coreLongAmbientShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/corelongambientshortintervall1packet--30b8271347dfa77f2c5cc064.md) | 124 | `declaration-track:30b8271347dfa77f2c5cc064ed075f5d6edad6ce7ad15d976559f2d482c4258f` |
| 12 | `theorem` | [coreLongDepthShortIntervalL1Majorant_le_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/corelongdepthshortintervall1majorant-le-ambient--71a8078b38c30920bb66d295.md) | 131 | `result-track:71a8078b38c30920bb66d295aeeacf2bdee8a3a28dfc138fed79de0f115895c6` |
| 13 | `theorem` | [coreLongShortIntervalL1Packet_le_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/corelongshortintervall1packet-le-ambient--04f7ac94d06271a2ae051289.md) | 163 | `result-track:04f7ac94d06271a2ae051289cd8de4eae9bba3943f5701ece8940a4237852856` |
| 14 | `def` | [SubpolynomialCoreLongAmbientShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/subpolynomialcorelongambientshortintervall1packet--5baafe225f9ac84076f5f958.md) | 174 | `declaration-track:5baafe225f9ac84076f5f9588e2a6e1632bcbd44ecfd62531d24ce49fa7ba822` |
| 15 | `theorem` | [subpolynomialCoreLongShortIntervalL1Packet_of_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/subpolynomialcorelongshortintervall1packet-of-ambient--381f44a5b173eaa5dc21932c.md) | 181 | `result-track:381f44a5b173eaa5dc21932c227262114b408a85bb67259ccc907c2d74f86f19` |
| 16 | `theorem` | [riemannHypothesis_of_subpolynomialCoreLongAmbientShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/riemannhypothesis-of-subpolynomialcorelongambientshortintervall1packet--019cde3233887af798d656d5.md) | 191 | `result-track:019cde3233887af798d656d517615e0f8b52d833dbe670dd0b424cbed6f4aa35` |
| 17 | `structure` | [AsymptoticBlockShortIntervalScope](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/asymptoticblockshortintervalscope--13a9fcceffcb76e57b91a45e.md) | 199 | `declaration-track:13a9fcceffcb76e57b91a45e49548c3f72d4ad56f0cd4d8a7a747254b0e21424` |
| 18 | `structure` | [AsymptoticBlockToAmbientL1Adapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/declarations/asymptoticblocktoambientl1adapter--ae68fd79a15d383fdc9c135e.md) | 207 | `declaration-track:ae68fd79a15d383fdc9c135e55537e579bfd9c5d3a1c16ad7ccb4539da68adb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

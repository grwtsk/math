# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecursiveRationalSubdivisionProbe.Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd4f9172b9af1b9b93cd00002415ec2e848de599",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd4f9172b9af1b9b93cd00002415ec2e848de599`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.Bezier.Rational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/unitinterval--ec4fe6b7121e23a1138a15f0.md) | 29 | `declaration-track:ec4fe6b7121e23a1138a15f03e48df2fb74b8d910e329832cc799842665fe31d` |
| 2 | `abbrev` | [ControlRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/controlrow--e3fbf52103371d2520f6147c.md) | 35 | `declaration-track:e3fbf52103371d2520f6147ceb2ef422360fea6217ca5dcd21d73d9a969cdc8b` |
| 3 | `def` | [step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/step--4621f2cc9a3cf9b63d4de011.md) | 38 | `declaration-track:4621f2cc9a3cf9b63d4de011740463cad10cce71dfed6ca388aca15b10229b34` |
| 4 | `def` | [deCasteljau](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau--cb68eb92b86a56b5f7817e74.md) | 42 | `declaration-track:cb68eb92b86a56b5f7817e743372a2355125678163cb48c89ed7d3a8848f2262` |
| 5 | `def` | [rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/rowcombo--5727b9c014e5fa35547a46ba.md) | 47 | `declaration-track:5727b9c014e5fa35547a46ba73acbb5a95e8f6c2d6723a3853e37ed8ad70402a` |
| 6 | `lemma` | [step_rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/step-rowcombo--17e8a5950a4505c1a9d11980.md) | 50 | `result-track:17e8a5950a4505c1a9d11980f49ddb67e6d3c01be52c56b3106f505f4d9bcc11` |
| 7 | `lemma` | [deCasteljau_rowCombo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-rowcombo--77bd5441793cbee47594c369.md) | 56 | `result-track:77bd5441793cbee47594c369fafb536c4a454fa0a3411d35acf7b974284e2150` |
| 8 | `lemma` | [step_eq_rowCombo_self_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/step-eq-rowcombo-self-step--a71ef6469a0206c2987bcf52.md) | 66 | `result-track:a71ef6469a0206c2987bcf528896e9c97aed39de3ae22c604aae6f30d40c97f4` |
| 9 | `def` | [splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitleftrow--94729eea87c504b6bbc40624.md) | 73 | `declaration-track:94729eea87c504b6bbc406241be0b2c2b81552e386b9bdf3c13909397da21f9b` |
| 10 | `lemma` | [step_splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/step-splitleftrow--dcebc1baaf2adc6e9c1bfa5c.md) | 76 | `result-track:dcebc1baaf2adc6e9c1bfa5c6756ef97a5150eb6381d03727ca495b456e55f60` |
| 11 | `lemma` | [deCasteljau_splitLeftRow_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-splitleftrow-mul--00bf89e1d8f8ead62beebf92.md) | 85 | `result-track:00bf89e1d8f8ead62beebf92e205542b55ece974dc3a4fc3091a4afa846e2efd` |
| 12 | `theorem` | [deCasteljau_splitLeftRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-splitleftrow--423da71ddc7ce5dd8dbf7b61.md) | 95 | `result-track:423da71ddc7ce5dd8dbf7b610f604872ee007017cf3b116431471877a1f17c5f` |
| 13 | `lemma` | [deCasteljau_congr_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-congr-prefix--0a24348e190b5fa0ae2c6e57.md) | 101 | `result-track:0a24348e190b5fa0ae2c6e57e4e30de6ca61ae8b799910039616682bf49ae44d` |
| 14 | `def` | [splitRightRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitrightrow--883bfb655cc144ca8685735a.md) | 114 | `declaration-track:883bfb655cc144ca8685735a84347f0dd650cb9e78da2113d2b644da8fd14667` |
| 15 | `lemma` | [step_splitRightRow_prefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/step-splitrightrow-prefix--a14fbd3bd1fe5e4f49634533.md) | 117 | `result-track:a14fbd3bd1fe5e4f49634533b004ebba05f1a7faf86c9e1f9e181cb4e37aa46a` |
| 16 | `theorem` | [deCasteljau_splitRightRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-splitrightrow--a44995e95b978c4947f354c8.md) | 136 | `result-track:a44995e95b978c4947f354c84448ca27da188c153da56b746736f7f9f82a860f` |
| 17 | `structure` | [Segment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/segment--2b7e262736fb81651537d281.md) | 161 | `declaration-track:2b7e262736fb81651537d281b2fa84e2fb7994ef39f60295b4074acf7c237131` |
| 18 | `def` | [homogeneousControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/homogeneouscontrol--54373c4cad9b412a25f4a210.md) | 172 | `declaration-track:54373c4cad9b412a25f4a210d4985ecfca7adad11b3fa8dcdb755aae81da2143` |
| 19 | `def` | [homogeneousRow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/homogeneousrow--0902b034620108760b9d5462.md) | 177 | `declaration-track:0902b034620108760b9d5462f92f1a906c4ba7d1cb1e53c6903eb2e06aa0d79e` |
| 20 | `lemma` | [homogeneousRow_apply_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/homogeneousrow-apply-of-le--e2d274c365acfca39aa013b5.md) | 180 | `result-track:e2d274c365acfca39aa013b54fa22c4e37b416bcd7b90fddcf0cfc720fb8c410` |
| 21 | `def` | [dehomogenize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/dehomogenize--f4b3aa915ad64169dcb8f83c.md) | 186 | `declaration-track:f4b3aa915ad64169dcb8f83cae9e49719462f76cdd75d254f408439ca1468525` |
| 22 | `def` | [numerator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/numerator--d466c2daf4e4cb4a42eb8b65.md) | 190 | `declaration-track:d466c2daf4e4cb4a42eb8b65768d3e9e30d17f7cb8ce5015219d31f5b2a845b7` |
| 23 | `def` | [denominator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/denominator--722810856f472d7482a7c082.md) | 194 | `declaration-track:722810856f472d7482a7c0827112aa8fd0075a304e8e39eb01463d7893610b83` |
| 24 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/eval--6290ba3c541ade7046cc62d1.md) | 198 | `declaration-track:6290ba3c541ade7046cc62d182be53d38ee6e5fff23117544fbc4fdca3325ef1` |
| 25 | `lemma` | [deCasteljau_snd_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/decasteljau-snd-pos--8b7cb65a7876394be3dfc1ce.md) | 201 | `result-track:8b7cb65a7876394be3dfc1cea6781400560bb0611b4dc18c0ccccd9b7e7bf0e9` |
| 26 | `lemma` | [homogeneousEval_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/homogeneouseval-weight-pos--00184436fa093bd1c0d320af.md) | 220 | `result-track:00184436fa093bd1c0d320afcc0a19b2e8dde66fbf301d6b93c3c0cb98c14fea` |
| 27 | `theorem` | [denominator_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/denominator-pos--b9c24eb0020cc61b669624f1.md) | 228 | `result-track:b9c24eb0020cc61b669624f172be2dea5785ee3605bd42afe4dc42a1df264d0b` |
| 28 | `def` | [ofHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/ofhomogeneous--be2bb380dbb60a92876d1fcd.md) | 233 | `declaration-track:be2bb380dbb60a92876d1fcd20afe6256a7b777ea594f7657ff5e2332016c6e3` |
| 29 | `lemma` | [ofHomogeneous_homogeneousControl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/ofhomogeneous-homogeneouscontrol--de0f7eca25e0778c59ee94ec.md) | 241 | `result-track:de0f7eca25e0778c59ee94ecde12f68db330aafe84e032bcbbeb3794d831c3e4` |
| 30 | `def` | [leftHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/lefthomogeneous--05855467b864e0598ad3dbb5.md) | 251 | `declaration-track:05855467b864e0598ad3dbb5e324f4c1703b6af688f86770827656519100eacf` |
| 31 | `lemma` | [leftHomogeneous_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/lefthomogeneous-weight-pos--ad3538a5f87de831ddfe94cc.md) | 255 | `result-track:ad3538a5f87de831ddfe94cc0ec4fd65762b46b9dfc02dfed7f3653ed0c58b50` |
| 32 | `def` | [rightHomogeneous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/righthomogeneous--d19f39e43e576da84a672d0c.md) | 266 | `declaration-track:d19f39e43e576da84a672d0c47a6a4790449c46be067a4f49e47e0b4c471508c` |
| 33 | `lemma` | [rightHomogeneous_weight_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/righthomogeneous-weight-pos--6ef5b417c6824cd00478f706.md) | 270 | `result-track:6ef5b417c6824cd00478f706aa97b0dc6e2c6024016d8351b2c0ba34f2c54065` |
| 34 | `def` | [splitLeftSegment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitleftsegment--b51e5ad5562d0f43547cb981.md) | 281 | `declaration-track:b51e5ad5562d0f43547cb98136d39d03e48206dd24e7eed987b718d32fd2eb11` |
| 35 | `def` | [splitRightSegment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitrightsegment--30d3c90900fceffac38b6bd2.md) | 285 | `declaration-track:30d3c90900fceffac38b6bd2e34f0e550004b5526c1e2e531568d0e605e7fd6b` |
| 36 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitat--b8487912ed3ea97f0e9dfadc.md) | 290 | `declaration-track:b8487912ed3ea97f0e9dfadcfbbb036a8f99a95240c9a79ffdb8543e24afade4` |
| 37 | `lemma` | [splitLeftSegment_row_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitleftsegment-row-eq--e8ff6e7cb88524f5a96f800c.md) | 294 | `result-track:e8ff6e7cb88524f5a96f800ca0b786b5d497e18e17c4dc1501d6988459df437e` |
| 38 | `lemma` | [splitRightSegment_row_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/splitrightsegment-row-eq--3d85e42f22caa16a5b699854.md) | 306 | `result-track:3d85e42f22caa16a5b699854a52f9b13a5dc56fb7c26653bb3fbbd7eefbb5e63` |
| 39 | `def` | [leftParameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/leftparameter--d9dcb0850b362d69eef61dfc.md) | 319 | `declaration-track:d9dcb0850b362d69eef61dfc7821ae158fcd04b78b74576b66f6bc4ef7fd1986` |
| 40 | `def` | [rightParameter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/rightparameter--1f04368f7fa0fe3c8f5e8789.md) | 325 | `declaration-track:1f04368f7fa0fe3c8f5e8789d3190dc7091f54361368aad834eabdee5a250b2f` |
| 41 | `theorem` | [eval_split_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/eval-split-left--eec88a60bfdfd21a47e2fca7.md) | 330 | `result-track:eec88a60bfdfd21a47e2fca74d8e3c9839c1d79c440d330bf24e5e977b81eac6` |
| 42 | `theorem` | [eval_split_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursiveRationalSubdivisionProbe/Variant1664f724db1f0528d1017132bb7de9c54963b3a35893bf69dab88553dad16ee1.lean/declarations/eval-split-right--6f82878d81ff5a37bae227a5.md) | 347 | `result-track:6f82878d81ff5a37bae227a55334980385115edf8000037bbe5a0c0cc23d5cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

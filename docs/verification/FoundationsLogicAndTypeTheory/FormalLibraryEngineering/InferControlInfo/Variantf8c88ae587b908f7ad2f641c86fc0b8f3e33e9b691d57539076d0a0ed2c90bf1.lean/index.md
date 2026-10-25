# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferControlInfo.Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d06dbca32b3b707b65279072f738744e0e907c7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d06dbca32b3b707b65279072f738744e0e907c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.PatternVar` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControlInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfo--5bfbaf5b5fe41f4352eb9b17.md) | 47 | `declaration-track:5bfbaf5b5fe41f4352eb9b173d91df48b49aef20c1e659ff8ff78c938a97cbfd` |
| 2 | `def` | [ControlInfo.pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfo-pure--9e1cb8f623c22b583bf97655.md) | 72 | `declaration-track:9e1cb8f623c22b583bf9765507fd6064864f953b99b64a4a4ffeba0f4bc25de2` |
| 3 | `def` | [ControlInfo.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfo-empty--3f9ed227a2a50f7d24812f03.md) | 78 | `declaration-track:3f9ed227a2a50f7d24812f034ef81135b1dd7d1e7f0c2f932f17613cfb63e4b0` |
| 4 | `def` | [ControlInfo.sequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfo-sequence--9585dfc653875d12d1e0cb7d.md) | 84 | `declaration-track:9585dfc653875d12d1e0cb7d435e7ca937cec148296ead17cca5c0a9439494de` |
| 5 | `def` | [ControlInfo.alternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfo-alternative--ad101ebcd48fd3431a05d5dd.md) | 101 | `declaration-track:ad101ebcd48fd3431a05d5dd7c3f707ff27a961ed9fbf01b2e7d7aadfb6cebb3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/instance--55a05047efbedcc1d8491e1b.md) | 111 | `declaration-track:55a05047efbedcc1d8491e1b8bf8262ceccfd99c19d41dc09053fb79f94d3595` |
| 7 | `abbrev` | [ControlInfoHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/controlinfohandler--a2d0bf0b09a8fc101b86ae86.md) | 117 | `declaration-track:a2d0bf0b09a8fc101b86ae864a961654e7f537527b3a69c9274e49b70bcfa134` |
| 8 | `def` | [mkControlInfoElemAttributeUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/mkcontrolinfoelemattributeunsafe--7f196e4442e4595c3b0b5287.md) | 119 | `declaration-track:7f196e4442e4595c3b0b52876aa0115214b970a4c8bf318649cf7e71b94f5544` |
| 9 | `opaque` | [mkControlInfoElemAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/mkcontrolinfoelemattribute--c7dd81cb03eec078feb5e935.md) | 124 | `declaration-track:c7dd81cb03eec078feb5e93562c9e4d5adcd76954fcbf37ed869d5b4e356dbcc` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/builtin-initialize--64a6fb3a6134b29f67629c34.md) | 133 | `declaration-track:64a6fb3a6134b29f67629c34946a2b4e9c92f58fe2906c5c9d69011ff9af6001` |
| 11 | `def` | [ofElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/ofelem--1bcf7016eee27a549f11c004.md) | 141 | `declaration-track:1bcf7016eee27a549f11c0046cd27d049d116c1dac392bfda0ab6d21033f9d2b` |
| 12 | `def` | [ofLetOrReassignArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/ofletorreassignarrow--44b59b052ef16fe87660372a.md) | 261 | `declaration-track:44b59b052ef16fe87660372a8630078fcea7bd8f16fde959564d7be111530729` |
| 13 | `def` | [ofLetOrReassign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/ofletorreassign--7189fecbdc289ad79ef5007b.md) | 271 | `declaration-track:7189fecbdc289ad79ef5007b1579b6cc845cc030227de6a30b9649854beb4455` |
| 14 | `def` | [ofSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/ofseq--51aae5caca3eabc5013bf32b.md) | 280 | `declaration-track:51aae5caca3eabc5013bf32b54e593241b5557617fbcef569f650eba4b388089` |
| 15 | `def` | [ofOptionSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/ofoptionseq--f3c3bb98982e4e3c349fcea6.md) | 286 | `declaration-track:f3c3bb98982e4e3c349fcea630c05c186b41bab06b57dd11df451ac0fe1253c4` |
| 16 | `def` | [inferControlInfoSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/infercontrolinfoseq--a76b8edcb2430d205d625d5c.md) | 294 | `declaration-track:a76b8edcb2430d205d625d5cc307c63e90ac63403c5b5dbd209967bba4ddec4c` |
| 17 | `def` | [inferControlInfoElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variantf8c88ae587b908f7ad2f641c86fc0b8f3e33e9b691d57539076d0a0ed2c90bf1.lean/declarations/infercontrolinfoelem--f1b90b780455224d2596d84d.md) | 298 | `declaration-track:f1b90b780455224d2596d84d055bcc23d972d5250a0efca0f8ec38ce5ada5977` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

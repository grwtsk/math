# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InferControlInfo.Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95a73b1bf28eedcd687850d390aab8746894329b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95a73b1bf28eedcd687850d390aab8746894329b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Do.PatternVar` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControlInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfo--c14ae46d131b7f28cc278590.md) | 39 | `declaration-track:c14ae46d131b7f28cc278590ca2e8dddfb36996d7a2813bf929f1b26e2c2ae38` |
| 2 | `def` | [ControlInfo.pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfo-pure--3e62d97815866ab5df0b1344.md) | 64 | `declaration-track:3e62d97815866ab5df0b1344b273a759767e048bbb4c73cc49fb09c11086076d` |
| 3 | `def` | [ControlInfo.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfo-empty--4994c7c9d747ea9d386ee25e.md) | 70 | `declaration-track:4994c7c9d747ea9d386ee25eeeffe693ccbff246fd81e5d30a22f8d4d23d327a` |
| 4 | `def` | [ControlInfo.sequence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfo-sequence--c39d49c406eebc8a40217f36.md) | 76 | `declaration-track:c39d49c406eebc8a40217f36dbc8ae7fa8fde186fa9f3d42a1290db46849ae18` |
| 5 | `def` | [ControlInfo.alternative](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfo-alternative--713ec728a63ae40f9ba42788.md) | 93 | `declaration-track:713ec728a63ae40f9ba42788915dc9d04afe98e8cca196512cabddb3d3a81382` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/instance--d746245a85dff8a45dd9649b.md) | 103 | `declaration-track:d746245a85dff8a45dd9649b846716786698ab337bc57d4fe2bc2e9ec7025efe` |
| 7 | `abbrev` | [ControlInfoHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/controlinfohandler--4ad61e3dca3eb528fad18354.md) | 109 | `declaration-track:4ad61e3dca3eb528fad1835422313f2935f368fa66b6168b17b24e932f43f0b0` |
| 8 | `def` | [mkControlInfoElemAttributeUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/mkcontrolinfoelemattributeunsafe--bf7c5c89a3ea8a038d8d4f46.md) | 111 | `declaration-track:bf7c5c89a3ea8a038d8d4f46591d5ce8cf83f6d12a69e7ed73ee54fe262e758b` |
| 9 | `opaque` | [mkControlInfoElemAttribute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/mkcontrolinfoelemattribute--ce0ccd59fb00334f2dc765ee.md) | 116 | `declaration-track:ce0ccd59fb00334f2dc765eeda13791412c9f66c30f7d64e2cbf20dfa8c4f0e4` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/builtin-initialize--0cf9926bdaf373549ffa4331.md) | 125 | `declaration-track:0cf9926bdaf373549ffa43316ba6705970c5cfc9a6d9c56196f54f1d4e65382f` |
| 11 | `def` | [ofElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/ofelem--9a1037c2d8e8062f401b53b5.md) | 133 | `declaration-track:9a1037c2d8e8062f401b53b55455f4533bb817717566da201f1ddd20baa5c8de` |
| 12 | `def` | [ofLetOrReassignArrow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/ofletorreassignarrow--b7dfdad816d4cb4dbe6d04d7.md) | 253 | `declaration-track:b7dfdad816d4cb4dbe6d04d7563a9ec02b1404f15a032330db5fb95fe76177ec` |
| 13 | `def` | [ofLetOrReassign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/ofletorreassign--2000ef34ebaa25512c7edd16.md) | 263 | `declaration-track:2000ef34ebaa25512c7edd16d303edf48d87113446063b8fbdb915d07f01931d` |
| 14 | `def` | [ofSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/ofseq--38c2b4bb26bf7abc44b1c707.md) | 272 | `declaration-track:38c2b4bb26bf7abc44b1c70708083708db008ea50dff3af0767657558ff7e9f2` |
| 15 | `def` | [ofOptionSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/ofoptionseq--72169c07b6c62b68ac41ca2a.md) | 278 | `declaration-track:72169c07b6c62b68ac41ca2afa09a12f1e0eaffe4c5985ed85c02c694ca28acf` |
| 16 | `def` | [inferControlInfoSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/infercontrolinfoseq--14d5cca5b7a3eef9e68cbdb5.md) | 286 | `declaration-track:14d5cca5b7a3eef9e68cbdb559c1a91ee4b11e5b2183e79ad730a1903f42d054` |
| 17 | `def` | [inferControlInfoElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferControlInfo/Variant64761c95033a8863b1974de8904c2780a7930e874bdb69a168ebf3f1d57b9a76.lean/declarations/infercontrolinfoelem--7d4556b9db4dd45b8af43f56.md) | 290 | `declaration-track:7d4556b9db4dd45b8af43f564592c848b8cd8f57feee209d6a3f625133afea0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

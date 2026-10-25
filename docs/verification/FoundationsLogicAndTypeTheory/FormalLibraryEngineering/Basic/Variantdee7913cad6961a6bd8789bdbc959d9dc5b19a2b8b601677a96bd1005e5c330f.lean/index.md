# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c06cec4f426ff14663eebc4801ebc298acaa4e70",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c06cec4f426ff14663eebc4801ebc298acaa4e70`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Format.Macro` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Stream` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Task` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Syntax` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialContextInfo.mergeIntoOuter?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/partialcontextinfo-mergeintoouter--f185f434fe4791f6676a26af.md) | 30 | `declaration-track:f185f434fe4791f6676a26afcf605a8fb3c677e588b1b545e8c9a1a0fcf7879a` |
| 2 | `def` | [CompletionInfo.stx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/completioninfo-stx--10808205bfc56eb5a7507ea8.md) | 45 | `declaration-track:10808205bfc56eb5a7507ea8bc341aa7e102129cd8168a4560e72af1e31852d1` |
| 3 | `def` | [CompletionInfo.lctx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/completioninfo-lctx--727aaba7ab9458d8f77c8abd.md) | 60 | `declaration-track:727aaba7ab9458d8f77c8abdd9f9450fa163902fa0cd7e5b491d53d004960ea6` |
| 4 | `def` | [InfoTree.findInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/infotree-findinfo--f9b1c5031725cf702b2c3917.md) | 67 | `declaration-track:f9b1c5031725cf702b2c3917cc594abd982f154745ae73cc6f9c550693dd7029` |
| 5 | `def` | [InfoTree.substitute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/infotree-substitute--74980eb4c067ddd4e1a118a0.md) | 79 | `declaration-track:74980eb4c067ddd4e1a118a0eeb96c8a4eb18b063e10744fd58efaa896ff2607` |
| 6 | `def` | [InfoState.substituteLazy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/infostate-substitutelazy--bfb55adc7dfd44a8114cf6e6.md) | 88 | `declaration-track:bfb55adc7dfd44a8114cf6e69f58b45e4c29b2f97cc2a22f1bea2fae5e37484b` |
| 7 | `def` | [Info.toElabInfo?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/info-toelabinfo--671ea31bf0243e68026cfa9e.md) | 94 | `declaration-track:671ea31bf0243e68026cfa9ee6ad68faeb2cb3281edf38c13005d3c00a200487` |
| 8 | `def` | [Info.updateContext?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/info-updatecontext--4a56be135dd18146db982981.md) | 127 | `declaration-track:4a56be135dd18146db98298175a07e1756cdac8d011c0bf83cd960598190cdda` |
| 9 | `def` | [Info.stx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/info-stx--b3f22011572aeb4bc7f18065.md) | 131 | `declaration-track:b3f22011572aeb4bc7f180657d8889cacface430daba954779999fbc80167e77` |
| 10 | `def` | [CompletionInfo.setStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/completioninfo-setstx--64059518d64f876e35a98af8.md) | 150 | `declaration-track:64059518d64f876e35a98af86286551f92729d7b692600c4df4961e4bccf1649` |
| 11 | `def` | [Info.setStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/info-setstx--89a99102f7fbe4267b232a41.md) | 161 | `declaration-track:89a99102f7fbe4267b232a417fed0cd11ae3fa946d5b46b614607bf56e2aa243` |
| 12 | `def` | [InfoTree.addTrailing?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/infotree-addtrailing--82b6596399942182d863f74a.md) | 184 | `declaration-track:82b6596399942182d863f74a699703bf0de16ba3f24d8363404baeb5ecd776f0` |
| 13 | `def` | [InfoTree.addTrailing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdee7913cad6961a6bd8789bdbc959d9dc5b19a2b8b601677a96bd1005e5c330f.lean/declarations/infotree-addtrailing--211b2e726d3c4a85f23f5851.md) | 206 | `declaration-track:211b2e726d3c4a85f23f5851eafc129901afc3a0e8cbc9fddbc54e0fedb70570` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

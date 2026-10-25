# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FloatLetIn.Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "013948b5a8cb5b416d5313dfed644a12fd718598",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `013948b5a8cb5b416d5313dfed644a12fd718598`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.PhaseExt` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Decision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/decision--4ea82a4a71936c769f27d991.md) | 22 | `declaration-track:4ea82a4a71936c769f27d99109bb71edae5ac4ea70190036fe97f542f0b7af08` |
| 2 | `def` | [Decision.ofAlt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/decision-ofalt--e6d53c440eeffe38828a9953.md) | 41 | `declaration-track:e6d53c440eeffe38828a9953135559fff5d6bcc5f6b99235b751e0792f84d4f6` |
| 3 | `structure` | [BaseFloatContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/basefloatcontext--9cb373a3d3d0defd0b71c785.md) | 48 | `declaration-track:9cb373a3d3d0defd0b71c78567f4dee4f0f9f28cb49014109975d0bf85440d9f` |
| 4 | `structure` | [FloatState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/floatstate--e4827a8748e3e2ac4c04abec.md) | 58 | `declaration-track:e4827a8748e3e2ac4c04abec83eddbac5ee6605b1f2bdecf0325b0a32b558b07` |
| 5 | `abbrev` | [BaseFloatM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/basefloatm--7adc67189f7c8cb5bef03f0e.md) | 75 | `declaration-track:7adc67189f7c8cb5bef03f0e0f66b16f1c6da644219430369f26edf9ff20fd30` |
| 6 | `abbrev` | [FloatM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/floatm--71087d69dfd70f03c11d87d0.md) | 80 | `declaration-track:71087d69dfd70f03c11d87d0bef228e2b2223175cc02a1d1f6d63d6b538b4890` |
| 7 | `def` | [withNewCandidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/withnewcandidate--74000cfa7aa7d6ae329cb002.md) | 85 | `declaration-track:74000cfa7aa7d6ae329cb0024197c6c4a6f66025b8e034a2f2f6322ce1b803cb` |
| 8 | `def` | [withNewScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/withnewscope--e1beed8474cd1e46488fb185.md) | 92 | `declaration-track:e1beed8474cd1e46488fb185567712191d36b45ed41bbfbb6d239c203ebeaded` |
| 9 | `def` | [ignore?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/ignore--a4a4d49caa2f3ba36a95e2c3.md) | 101 | `declaration-track:a4a4d49caa2f3ba36a95e2c34aa840a9099007165ab605c9e32a8dc7e613f8e8` |
| 10 | `def` | [initialDecisions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/initialdecisions--69954226a025dcbc3c6f8c99.md) | 120 | `declaration-track:69954226a025dcbc3c6f8c994dc56f6bafa4b4aa8479b4d61ef157993c964aee` |
| 11 | `def` | [initialNewArms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/initialnewarms--e4b3d84ffcc6828847082938.md) | 185 | `declaration-track:e4b3d84ffcc68288470829385b29e8403bfdd9ebcee4cfe5dcf42d8e1def2cc2` |
| 12 | `def` | [dontFloat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/dontfloat--f65f855f1eee3b1fb894140c.md) | 206 | `declaration-track:f65f855f1eee3b1fb894140c6c6e8d5ddebf93f12df63d86b0c1284b4e4a38e8` |
| 13 | `def` | [float](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/float--a0c81ab983be0663fdf88c35.md) | 260 | `declaration-track:a0c81ab983be0663fdf88c35f25ba481cb00ecc7160b74d2c73ee4bf54072a36` |
| 14 | `def` | [floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/floatletin--ed1131a1e033e5286fc5bd46.md) | 276 | `declaration-track:ed1131a1e033e5286fc5bd4679bc544e93514e71acc1022f60480a928d08c5c2` |
| 15 | `def` | [Decl.floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/decl-floatletin--7a5b2f9f654767005285995f.md) | 337 | `declaration-track:7a5b2f9f654767005285995f7332749601fa729a9056b14df8936c89d8185118` |
| 16 | `def` | [floatLetIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/floatletin--093ca21c51da7b34d03b265a.md) | 340 | `declaration-track:093ca21c51da7b34d03b265a5ad1c1dad94def55ac6d43f9e59ef9365b696985` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FloatLetIn/Variant5810c993a94e1309448773fec877a3571bdbd387da62e407e4e3919941d0bddf.lean/declarations/builtin-initialize--9fb1660496f880e6edc286a3.md) | 344 | `declaration-track:9fb1660496f880e6edc286a342b717b87a4cd59bb1d3b3f946be7832c004a002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

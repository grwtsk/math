# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PredTrans.Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e6393841c2ee3f3cafe0bd255e07302f93cee08",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e6393841c2ee3f3cafe0bd255e07302f93cee08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PredTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans--a8d10090f59a11732ec2cc95.md) | 44 | `declaration-track:a8d10090f59a11732ec2cc957b00f7fc7f8de13ee8691a0eeb570bd35eaf7fcf` |
| 2 | `theorem` | [PredTrans.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-ext--f85d55be795e7d8310035f59.md) | 49 | `result-track:f85d55be795e7d8310035f59775f4b81e4cd8dbc681a338459c1802a1d63d4b4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--cf1b02446b4a9047bad02af8.md) | 54 | `declaration-track:cf1b02446b4a9047bad02af8529106e34f44126a6d46fe994c5688dea18725e2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--1acd43b93ae20ab6def51919.md) | 62 | `declaration-track:1acd43b93ae20ab6def51919b986f1bf97790ea8aef01aecb5449503c4a031fb` |
| 5 | `instance` | [instMonadPredTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instmonadpredtrans--e63e0b3768824b765dc39a1a.md) | 79 | `declaration-track:e63e0b3768824b765dc39a1ae963f6f487ed36a190882f41a51c8def83ae2f4d` |
| 6 | `instance` | [instLawfulMonadPredTrans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instlawfulmonadpredtrans--3dec6164b15ee0817122d572.md) | 84 | `declaration-track:3dec6164b15ee0817122d5724b32bd04585b6470fa3caa8b395b4803791deb6c` |
| 7 | `def` | [PredTrans.monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-monotone--1415da768a2e792a34b34a1e.md) | 97 | `declaration-track:1415da768a2e792a34b34a1ea817a405e0f4757965415c487a3cf58ef9f3748f` |
| 8 | `theorem` | [PredTrans.apply_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-pure--823257d309fed8710a577494.md) | 108 | `result-track:823257d309fed8710a5774948555dbf00414dfc695ce5a81c9c687ff6171514d` |
| 9 | `theorem` | [PredTrans.apply_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-bind--a4a4518e0d7d401cfca4d15d.md) | 114 | `result-track:a4a4518e0d7d401cfca4d15d516ce340f33820b05dcff0ba3745e6173c3981bf` |
| 10 | `theorem` | [PredTrans.apply_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-map--8655f86b3d54159530daf7ef.md) | 121 | `result-track:8655f86b3d54159530daf7ef3e574d86d265adb0ca8504cced9e94c0b05fcfa1` |
| 11 | `theorem` | [PredTrans.apply_seq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-seq--887328ff608bfcb8522c7b66.md) | 127 | `result-track:887328ff608bfcb8522c7b665ce1ee1c11fd5e0547bdb41a050d353e1ddfcad1` |
| 12 | `theorem` | [PredTrans.apply_dite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-dite--a9ffa6a65e410fc138e1598e.md) | 135 | `result-track:a9ffa6a65e410fc138e1598ecf88555ca03dd589d50f26aa8d63ca86b0b06670` |
| 13 | `theorem` | [PredTrans.apply_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-ite--48abf0fe93aacc652c770ca5.md) | 145 | `result-track:48abf0fe93aacc652c770ca58765f4bda5aa7afd72f5cbb5e09deba8099463e8` |
| 14 | `abbrev` | [EPost.Cons.pushExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/epost-cons-pushexcept--c63626ba4977b174ec0b8e2b.md) | 162 | `declaration-track:c63626ba4977b174ec0b8e2bcdcc6a21682538e4ad4cdad4af522f11e7260283` |
| 15 | `def` | [PredTrans.pushExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-pushexcept--86fc944a84597e4245aeeed6.md) | 173 | `declaration-track:86fc944a84597e4245aeeed6ee5d124d186ee7dc6e2d9509a4d8ca05cb3ab3a3` |
| 16 | `abbrev` | [EPost.Cons.pushOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/epost-cons-pushoption--2459011f1fc4bf9be9108df1.md) | 180 | `declaration-track:2459011f1fc4bf9be9108df17d6509cc518ad62f45167e5af5c44bc868b22a09` |
| 17 | `def` | [PredTrans.pushOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-pushoption--941d492257ae4ff4ec2ed680.md) | 189 | `declaration-track:941d492257ae4ff4ec2ed680e5942a5eb6e45ee2c0ac42048be6bcafafc42d1f` |
| 18 | `theorem` | [PredTrans.apply_pushOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-pushoption--0a9a88d9fe5c46613cf2548a.md) | 195 | `result-track:0a9a88d9fe5c46613cf2548a849aac9b614478dac5c3d7fc604c2a495764da15` |
| 19 | `def` | [pushArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/pusharg--cf77dd043d2c5ab1c162f486.md) | 210 | `declaration-track:cf77dd043d2c5ab1c162f486e89b354e9de30132b61c2126873a047b80d8375a` |
| 20 | `theorem` | [PredTrans.apply_pushArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/predtrans-apply-pusharg--3983d9b5c26251e5a85c89fc.md) | 216 | `result-track:3983d9b5c26251e5a85c89fcd5ec96c7e0ca1177d76ddc04702d83202a0823f9` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--5550e7e6488c7f4802853bb0.md) | 221 | `declaration-track:5550e7e6488c7f4802853bb0496fa3a48a13df2da9e5dc65d794c18dd0539dbe` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--8ed2452eb5d0ae9788761756.md) | 226 | `declaration-track:8ed2452eb5d0ae97887617561a44dc1e6ca8b89917589d26914dd6a0351ed695` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--91fb74139c81c6b9c0c80e76.md) | 238 | `declaration-track:91fb74139c81c6b9c0c80e7601f8698936e6e0c42b9bd1459676edb24f1e62b3` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--7a0a14ee181f3f1ffbd98299.md) | 245 | `declaration-track:7a0a14ee181f3f1ffbd98299a5616355a4537669814de5a6a8511705c2d1f585` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--9562735d54584797b7b51c2c.md) | 251 | `declaration-track:9562735d54584797b7b51c2cf4caa0504ca2ca6a940ba4968a74d7a894f4a877` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--288191559a23ecdef3f453b9.md) | 258 | `declaration-track:288191559a23ecdef3f453b9b102b54cb03f411544d03cc312586045663c25de` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PredTrans/Variantc808a8f55db0be03a9dea990f8170f9a0c246297220c6741a457f70565b841ba.lean/declarations/instance--bca4e3856d729d197338b902.md) | 271 | `declaration-track:bca4e3856d729d197338b902a75f5db23834894c93f8789d1a4a3a45b5ba165e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

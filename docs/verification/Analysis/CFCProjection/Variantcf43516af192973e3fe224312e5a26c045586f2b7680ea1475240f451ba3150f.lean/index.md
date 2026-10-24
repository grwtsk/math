# Verification target: GRWTSK.Analysis.CFCProjection.Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b276c3cdd7836a22127d8d8edf3183e368736ba5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/index.md) · [Full source](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b276c3cdd7836a22127d8d8edf3183e368736ba5`.

Source path: `GRWTSK/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralCharacteristic](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/spectralcharacteristic--f8342cc6f2851eb5ef51be3d.md) | 62 | `declaration-track:f8342cc6f2851eb5ef51be3dced8dde99fe1a0d3fc22358c739e40f081fadc84` |
| 2 | `theorem` | [spectralCharacteristic_mul_self](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/spectralcharacteristic-mul-self--888e0f65d3367fbe78c2f11e.md) | 69 | `result-track:888e0f65d3367fbe78c2f11eeb4cd05d700653f95961f13b5289157b378d1c22` |
| 3 | `def` | [cfcSpectralProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/cfcspectralprojection--d3e98c3d996a1c1bf1d4368c.md) | 88 | `declaration-track:d3e98c3d996a1c1bf1d4368c117e9d297cfa5b59f2b14d12b1da15ca5118cecd` |
| 4 | `theorem` | [cfcSpectralProjection_mem_elemental](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/cfcspectralprojection-mem-elemental--19b876858b8d4af1d143fe23.md) | 98 | `result-track:19b876858b8d4af1d143fe237360d480d23f27e44c98113d4998f58eaa735197` |
| 5 | `theorem` | [cfcSpectralProjection_isIdempotentElem](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/cfcspectralprojection-isidempotentelem--28f196147ac5d0247541ce1f.md) | 106 | `result-track:28f196147ac5d0247541ce1fde3758a1218e033c60933b629b4d20e39489e0ab` |
| 6 | `theorem` | [cfcSpectralProjection_isStarProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/cfcspectralprojection-isstarprojection--4d340957468825096682bffe.md) | 121 | `result-track:4d340957468825096682bffe159b3d791e13df2b50648ee652e75f60d418fe9d` |
| 7 | `def` | [spectralSingleton](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/spectralsingleton--d2b404972bdbc1d2dbb5e121.md) | 133 | `declaration-track:d2b404972bdbc1d2dbb5e1218cf9a2f998ef2cd8c69dd4b0cb4f7cbbcdcd91ca` |
| 8 | `theorem` | [spectralSingleton_isClopen_of_gap](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/spectralsingleton-isclopen-of-gap--df91ceb1bd3743842d516d21.md) | 146 | `result-track:df91ceb1bd3743842d516d218d1544be6f9c33706bafdfd2747250f53d4d7ab5` |
| 9 | `def` | [isolatedSpectralProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/isolatedspectralprojection--256a59068ab71c80d62bb1a9.md) | 179 | `declaration-track:256a59068ab71c80d62bb1a9d4f93467ad67207d1675cf119b24266c87296832` |
| 10 | `theorem` | [isolatedSpectralProjection_isStarProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/isolatedspectralprojection-isstarprojection--e33aed2ebce586c772468e92.md) | 189 | `result-track:e33aed2ebce586c772468e92e6730dda1f96e9903c7742ce440a89ab1a75f093` |
| 11 | `def` | [selfAdjointSpectralProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/selfadjointspectralprojection--1ff12b890359112b6e6fe9c5.md) | 202 | `declaration-track:1ff12b890359112b6e6fe9c5434dded540cf536b57ed356ff5592b5ff593c959` |
| 12 | `theorem` | [selfAdjointSpectralProjection_isStarProjection](../../../../mathematics/Analysis/CFCProjection/Variantcf43516af192973e3fe224312e5a26c045586f2b7680ea1475240f451ba3150f.lean/declarations/selfadjointspectralprojection-isstarprojection--a1ed99619b67010a3f415a92.md) | 209 | `result-track:a1ed99619b67010a3f415a92cf1f7a5e027be860fb1c26cede725f9072c01f3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

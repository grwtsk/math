# Verification target: GRWTSK.Topology.GeneralTopology.Flow.Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00260a5d2d2df205f5c41684b465a2f918f8694e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00260a5d2d2df205f5c41684b465a2f918f8694e`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isinvariant--112d1451ae65b636f1c3044c.md) | 42 | `declaration-track:112d1451ae65b636f1c3044c8175efc56795a7ed5046bb6c2ebd69d8d9a65d83` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isinvariant-iff-image--103b6482b031d11a8b433bbb.md) | 47 | `result-track:103b6482b031d11a8b433bbb1a42619d9cf1d6a4a568c3772fc607beb786b8fc` |
| 3 | `def` | [IsFwInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isfwinvariant--75f35e8fd5988645fc185a78.md) | 52 | `declaration-track:75f35e8fd5988645fc185a7869d31880d895dca73af800ec5b9ff8fd29757253` |
| 4 | `theorem` | [IsInvariant.isFwInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isinvariant-isfwinvariant--1527fba951361f28a4a0e3cb.md) | 55 | `result-track:1527fba951361f28a4a0e3cbae2ed91967ff2beab991699ab4d5236a915bba23` |
| 5 | `theorem` | [IsFwInvariant.isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isfwinvariant-isinvariant--7ed82630534d763921181b62.md) | 60 | `result-track:7ed82630534d763921181b62b3feddf0b7553281dc91b498d4ead66ba9366d1d` |
| 6 | `theorem` | [isFwInvariant_iff_isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isfwinvariant-iff-isinvariant--3eef8c483bc1988c4fbe5dc5.md) | 66 | `result-track:3eef8c483bc1988c4fbe5dc5d7588243987b347cecd4c55e76d9927a4173a951` |
| 7 | `structure` | [Flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/flow--71ed3b8a0da809a8dac8f4fa.md) | 79 | `declaration-track:71ed3b8a0da809a8dac8f4faa90d3f126305d708256f53362af4e8926ec8d392` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/instance--55fe96f2102f9053332d6498.md) | 92 | `declaration-track:55fe96f2102f9053332d64983fa4630bfde60bcc38d6478a42145aba2683df46` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/instance--a613719221085e239d963ad1.md) | 98 | `declaration-track:a613719221085e239d963ad186281862cff238a3d9457b8fe93a8a045291fe9e` |
| 10 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/ext--0dbef5e6bbf16cbee07443b3.md) | 101 | `result-track:0dbef5e6bbf16cbee07443b3b6660636c0182d094797587a6d6002440dc49c6e` |
| 11 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/continuous--c9858ca565696b637bd2e60a.md) | 108 | `result-track:c9858ca565696b637bd2e60aa92e231661aafbe39fea1b83118ce455d5b1becf` |
| 12 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/map-add--c22277c6ee9d9cbfaaf9de58.md) | 114 | `result-track:c22277c6ee9d9cbfaaf9de58a2c17f112a044c86ae19f29e0c3cb4699bce80f0` |
| 13 | `theorem` | [map_zero](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/map-zero--8a35f51527609e6f6e17a709.md) | 117 | `result-track:8a35f51527609e6f6e17a7091efbfb70fcf9e02bd9501d748f6edaa55ccf22b0` |
| 14 | `theorem` | [map_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/map-zero-apply--ad6c3ecc317ec7af58b1ae9c.md) | 119 | `result-track:ad6c3ecc317ec7af58b1ae9c9e1bb6519a2a2d2ad6749a2b536f224ef4e262b1` |
| 15 | `def` | [fromIter](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/fromiter--de7170b4aa07e1690d24c094.md) | 123 | `declaration-track:de7170b4aa07e1690d24c09458a4443edbf2938195b2a9cf3ef4f2925d65e79e` |
| 16 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/restrict--12efd3b9a27ff704ffdadb84.md) | 130 | `declaration-track:12efd3b9a27ff704ffdadb8410f96eb131d4304f49602be25493dc9050138c46` |
| 17 | `theorem` | [isInvariant_iff_image_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/isinvariant-iff-image-eq--1f076b5d0a3b6e4943d0874c.md) | 143 | `result-track:1f076b5d0a3b6e4943d0874cd725e3f00b504477c49cfc3fc2df5634173a096e` |
| 18 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/reverse--fce139d35b0b71c764b23dd4.md) | 151 | `declaration-track:fce139d35b0b71c764b23dd404d9af513f696c0b512f139b1526c2a755eba7a6` |
| 19 | `theorem` | [continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/continuous-tofun--3e23993d7b49d39a98e72391.md) | 158 | `result-track:3e23993d7b49d39a98e723913c8092d82f0ebafdc5786e426fb5323afb586669` |
| 20 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/tohomeomorph--a9db2ceea321fb7f7b1d9e33.md) | 162 | `declaration-track:a9db2ceea321fb7f7b1d9e33a047c4484da798d8cb41449dc403f8d7e8440e17` |
| 21 | `theorem` | [image_eq_preimage](../../../../../mathematics/Topology/GeneralTopology/Flow/Varianta66c5ab7c25374f3f2dbb892e2fce30f85080408dc0f32b0f25b4891231a4b8c.lean/declarations/image-eq-preimage--d57b698ee607a07ad4785daf.md) | 168 | `result-track:d57b698ee607a07ad4785daf70fa4ed023ee1ac07fdb739109f944a2acee57e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

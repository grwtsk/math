# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrismCarrier.Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14691a283f95e33b7dc03acf3d0a99fc62996f1e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14691a283f95e33b7dc03acf3d0a99fc62996f1e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GeometricPrismCarrier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/geometricprismcarrier--995ab8f138ef413e66fe9beb.md) | 26 | `declaration-track:995ab8f138ef413e66fe9beb2c14c0a1ca4e001305ecbe8c9292bfd3be34e37d` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/instance--da1188678d16cebfc7722624.md) | 47 | `declaration-track:da1188678d16cebfc7722624d8b4b336755ee3e7484f0d106ac6861d8b136da2` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/instance--a605e2c1984480e384bc78d5.md) | 50 | `declaration-track:a605e2c1984480e384bc78d5366d371065cc3aaacd13dc9d35825a8ad2bad19d` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/instance--2c4b1456c56830a0dbad4890.md) | 53 | `declaration-track:2c4b1456c56830a0dbad4890862ce5b261264dbc81d8e15a36251093d60752ba` |
| 5 | `abbrev` | [CarrierPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/carrierpoint--3a7c964f5b6673c166e80256.md) | 57 | `declaration-track:3a7c964f5b6673c166e802561b462d44b42ff6cc47cbc072585f484caafb33a4` |
| 6 | `def` | [cellPoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/cellpoint--b9fc0047ebb686222e9d05e8.md) | 61 | `declaration-track:b9fc0047ebb686222e9d05e81d7c6852df218cf9250c1de43046bcdbe6b48ae2` |
| 7 | `theorem` | [exists_cell](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrismCarrier/Variantdd20874a0f671ae71027f4afd7bc597be515873fb752dc61e08a11822f03cfbd.lean/declarations/exists-cell--09e8aab4552ac8ba011dcd03.md) | 70 | `result-track:09e8aab4552ac8ba011dcd0314929aeff0ddc405d5a520aef1b08b2a6345bb39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

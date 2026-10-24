# Verification target: GRWTSK.Algebra.BaseChange.Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d926efa904cb03156f0b95a8bc966035081007e1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/index.md) · [Full source](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d926efa904cb03156f0b95a8bc966035081007e1`.

Source path: `GRWTSK/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean.json)

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
| 1 | `def` | [tensorCotangentSpace](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorcotangentspace--333c2d6ca6bc8e28ef20f330.md) | 48 | `declaration-track:333c2d6ca6bc8e28ef20f330243a68d9ec9cf848e5f71b5d02f7aab3c04bd3ce` |
| 2 | `lemma` | [tensorCotangentSpace_tmul_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorcotangentspace-tmul-tmul--b1313339e8bc3a839a88f6ce.md) | 72 | `result-track:b1313339e8bc3a839a88f6ce60be1ff9186f1e0019ca32195775f03470b37d36` |
| 3 | `lemma` | [tensorCotangentSpace_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorcotangentspace-tmul--20861296c85b7e318b7c2843.md) | 95 | `result-track:20861296c85b7e318b7c284307e2f3e697d03e100cb09fb193a3635ad839ead3` |
| 4 | `def` | [tensorCotangentOfFlat](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorcotangentofflat--2b70705061d572235f657ea1.md) | 107 | `declaration-track:2b70705061d572235f657ea17574f820d0429e4962ee4932cfb638d1b8b23a20` |
| 5 | `lemma` | [tensorCotangentOfFlat_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorcotangentofflat-tmul--a639a82031a6f8ac7c995d34.md) | 117 | `result-track:a639a82031a6f8ac7c995d348e9cc6d49f028dc08a87bf6183011d7b4d092d35` |
| 6 | `def` | [tensorToH1Cotangent](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensortoh1cotangent--2b88a1c8d22c1656eb303fde.md) | 129 | `declaration-track:2b88a1c8d22c1656eb303fde0990e1e3106f4ef167af4f4d0716cc3b5b606ed6` |
| 7 | `lemma` | [tensorToH1Cotangent_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensortoh1cotangent-tmul--c27acc53dc09c8f276841db5.md) | 136 | `result-track:c27acc53dc09c8f276841db5a83270748f5d9a860efb56f6c37a8dcf0d07616e` |
| 8 | `lemma` | [tensorToH1Cotangent_bijective_of_flat](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensortoh1cotangent-bijective-of-flat--1de862fc115b8306ec86fdee.md) | 143 | `result-track:1de862fc115b8306ec86fdeec23e5f387f768ee2cc53b1420ade39838aec0271` |
| 9 | `def` | [tensorH1CotangentOfFlat](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorh1cotangentofflat--65a5d4c23a3cd99dadcbce7b.md) | 186 | `declaration-track:65a5d4c23a3cd99dadcbce7b2ac24515b97b4d19ce76e93e0b3d97f5cea50805` |
| 10 | `lemma` | [tensorH1CotangentOfFlat_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorh1cotangentofflat-tmul--064996a6b0ed28e6ab79be65.md) | 192 | `result-track:064996a6b0ed28e6ab79be653ca51ef56571166f377f0814a3547105ac205b12` |
| 11 | `def` | [tensorH1CotangentOfFlat](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorh1cotangentofflat--32fcbcd8247602b086bccd52.md) | 199 | `declaration-track:32fcbcd8247602b086bccd52a74096009e08bb4f8c9ad9ea283873790ab49f90` |
| 12 | `lemma` | [tensorH1CotangentOfFlat_tmul](../../../../mathematics/Algebra/BaseChange/Variantbc1d39c4982b5ec865321917e5b781782dc5e9b1f7f9f626fc3005985a24e807.lean/declarations/tensorh1cotangentofflat-tmul--6dc3d2ab7bd4f22debb96f94.md) | 208 | `result-track:6dc3d2ab7bd4f22debb96f948fbfaf94133825256bc4f444afbbe472ad91e8a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Topology.GeneralTopology.Oscillation.Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8742b162cd95ea64975d01991e225082f4786617",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8742b162cd95ea64975d01991e225082f4786617`.

Source path: `GRWTSK/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean.json)

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
| 1 | `def` | [oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillation--a60aca47f688fa2c531038e5.md) | 48 | `declaration-track:a60aca47f688fa2c531038e567024a333bcfe812421b71553f62644e851c7840` |
| 2 | `def` | [oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillationwithin--fb3511363bfeb5bae867a60d.md) | 52 | `declaration-track:fb3511363bfeb5bae867a60db3d681b5d271acbe22e46e355564df28bfed498d` |
| 3 | `theorem` | [oscillationWithin_nhds_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillationwithin-nhds-eq-oscillation--d733a2d64481c2c52387eece.md) | 57 | `result-track:d733a2d64481c2c52387eece53d816e2e40a66cd0a37a7aec9cf50c40ee3a364` |
| 4 | `theorem` | [oscillationWithin_univ_eq_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillationwithin-univ-eq-oscillation--4590a6271e10a9b958e6b651.md) | 62 | `result-track:4590a6271e10a9b958e6b651eb2c5c8b34f43ba068b2e571332b03b4c01c4a51` |
| 5 | `theorem` | [oscillationWithin_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillationwithin-eq-zero--584da2c0bd2e53f2a489a02b.md) | 68 | `result-track:584da2c0bd2e53f2a489a02bb71e567fb54a13fef8d58fca7e176de7f41e8370` |
| 6 | `theorem` | [oscillation_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/oscillation-eq-zero--37a4765ac66392c9a69c2410.md) | 82 | `result-track:37a4765ac66392c9a69c2410e37c1309289ffe5ac7802c484e03ae3827575249` |
| 7 | `theorem` | [eq_zero_iff_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/eq-zero-iff-continuouswithinat--093788e2afc040e91e37a4f5.md) | 92 | `result-track:093788e2afc040e91e37a4f5b2fe1e04fcd30df1e43667abb673ce0fa1a95aac` |
| 8 | `theorem` | [eq_zero_iff_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/eq-zero-iff-continuousat--20c8e3eb757dd6cd1cb90e28.md) | 105 | `result-track:20c8e3eb757dd6cd1cb90e2810afb990e4ba7b61e87fe55d4f32c0024dd77684` |
| 9 | `theorem` | [uniform_oscillationWithin](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/uniform-oscillationwithin--1ba8d7b9258917e98dcc5aa8.md) | 119 | `result-track:1ba8d7b9258917e98dcc5aa8703e052a4f3ce97f2d546914448bdca14c440fa3` |
| 10 | `theorem` | [uniform_oscillation](../../../../../mathematics/Topology/GeneralTopology/Oscillation/Variantd8a6edb34e3b50c49061ed41fc202aaffbe3ed454b04bd9aa9aa3a599ca8c0b6.lean/declarations/uniform-oscillation--f9eae9d870c64db1d1bc28ea.md) | 166 | `result-track:f9eae9d870c64db1d1bc28ea21af6b9bb02965be0c75748f9be12be75d66e747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

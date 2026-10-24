# Verification target: GRWTSK.Algebra.Groebner.Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbde1e40ab04d6b09aa95d4c81c7a5c46be46ef9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/index.md) · [Full source](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbde1e40ab04d6b09aa95d4c81c7a5c46be46ef9`.

Source path: `GRWTSK/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean.json)

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
| 1 | `def` | [subLTerm](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/sublterm--3865b222a213580b1226e2c7.md) | 61 | `declaration-track:3865b222a213580b1226e2c7b75ceb1862fd228eac968fbc3816df875926f5f6` |
| 2 | `theorem` | [degree_sub_LTerm_le](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/degree-sub-lterm-le--a4b8b957146562b98a014dd5.md) | 64 | `result-track:a4b8b957146562b98a014dd541de70c2642be77e5c297bd7b6811783881b06a8` |
| 3 | `theorem` | [degree_sub_LTerm_lt](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/degree-sub-lterm-lt--3cf143a34cafb6262975583b.md) | 70 | `result-track:3cf143a34cafb6262975583b1d6f7873569455728c33e5b7c7e2dd11f3e009e5` |
| 4 | `def` | [reduce](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/reduce--b16b28d498ea208f6041008c.md) | 88 | `declaration-track:b16b28d498ea208f6041008cb2eff4b06b26fbaeb42643316e94d7a83f820445` |
| 5 | `theorem` | [degree_reduce_lt](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/degree-reduce-lt--1d970eed898750746f686cef.md) | 92 | `result-track:1d970eed898750746f686cefdc48b171b41b40d0fff21fd42ed616a7c29f9a9d` |
| 6 | `theorem` | [div](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/div--8aba843415ca452925502839.md) | 128 | `result-track:8aba843415ca452925502839069aa0d658096bd1c02ba701c0e2b32691191740` |
| 7 | `theorem` | [div_set](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/div-set--686599a5616065add2dd0d95.md) | 231 | `result-track:686599a5616065add2dd0d9567047c6a0652a6b5354fd6c20dad1cada8dd8bfe` |
| 8 | `theorem` | [div_single](../../../../mathematics/Algebra/Groebner/Variant9ccb4504df8c81e3658f0e250cbac0143f45352b0f6a7dcea9499fbf806f5f9b.lean/declarations/div-single--64e22c54dcec0b073a957946.md) | 242 | `result-track:64e22c54dcec0b073a957946eae74934f3527b29debd2d102d324b1712249aa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

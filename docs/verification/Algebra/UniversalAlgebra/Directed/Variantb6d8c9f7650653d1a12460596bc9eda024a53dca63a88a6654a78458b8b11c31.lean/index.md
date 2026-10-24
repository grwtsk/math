# Verification target: GRWTSK.Algebra.UniversalAlgebra.Directed.Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f7129dabe3f2b7c4ea97c64debf926ef739898d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f7129dabe3f2b7c4ea97c64debf926ef739898d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean.json)

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
| 1 | `theorem` | [coe_iSup_of_directed](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/coe-isup-of-directed--2e64528769a17277cdaba677.md) | 32 | `result-track:2e64528769a17277cdaba67736a2e0e23fc531622cb28a1f10d61ff3401217e5` |
| 2 | `theorem` | [isMulCommutative_iSup](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/ismulcommutative-isup--b25f67e4a4959530dc65cc1b.md) | 41 | `result-track:b25f67e4a4959530dc65cc1b40a8901e18fc5a17d61d12f4d8aaeb29340f294d` |
| 3 | `instance` | [instIsMulCommutative_iSup](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/instismulcommutative-isup--dac4baec52e6635da0d911cc.md) | 47 | `declaration-track:dac4baec52e6635da0d911cc2684c3076253232df3447927fa92eaaab23eaf3b` |
| 4 | `def` | [iSupLift](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/isuplift--927f80ecb302dfede056698d.md) | 56 | `declaration-track:927f80ecb302dfede056698df999d8d92e0baf6c533f39e9c37d03d239e7a674` |
| 5 | `theorem` | [iSupLift_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/isuplift-inclusion--313f68d7cd28bfc8c68c5130.md) | 92 | `result-track:313f68d7cd28bfc8c68c5130869563b9c6599ef26e46858adc4820f790c5c025` |
| 6 | `theorem` | [iSupLift_comp_inclusion](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/isuplift-comp-inclusion--dd2054baf5464fa047487a57.md) | 101 | `result-track:dd2054baf5464fa047487a57c8e0499050bd1340ea11f7afcfb4dc44ca64c62b` |
| 7 | `theorem` | [iSupLift_mk](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/isuplift-mk--f58e2c441583d95ef915b527.md) | 107 | `result-track:f58e2c441583d95ef915b5273bcd15a5d1f843c338a8b681606427fa90264898` |
| 8 | `theorem` | [iSupLift_of_mem](../../../../../mathematics/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/declarations/isuplift-of-mem--e1b3b715824fdc68a7fe89f9.md) | 114 | `result-track:e1b3b715824fdc68a7fe89f956dc3d989fb2fb9516f3230cd446c3b8afcfd3a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

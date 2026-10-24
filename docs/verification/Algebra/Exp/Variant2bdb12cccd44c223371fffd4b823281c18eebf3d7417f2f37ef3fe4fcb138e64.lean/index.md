# Verification target: GRWTSK.Algebra.Exp.Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec0df2033222548ef12d0ff90b4567f0453958c0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/index.md) · [Full source](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec0df2033222548ef12d0ff90b4567f0453958c0`.

Source path: `GRWTSK/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean.json)

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
| 1 | `def` | [exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp--248303b59bc99d2908e586ee.md) | 57 | `declaration-track:248303b59bc99d2908e586eef08f6d588e91a07b15b73645bc9bfdfe259ed783` |
| 2 | `theorem` | [coeff_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/coeff-exp--fcbcf43ae0099654b27a9a10.md) | 63 | `result-track:fcbcf43ae0099654b27a9a104ca145268012747e413306738dc97bd2e02d0ffa` |
| 3 | `theorem` | [constantCoeff_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/constantcoeff-exp--c8b76e8b33fc86b68de85d26.md) | 67 | `result-track:c8b76e8b33fc86b68de85d26d03ac477892fd7b90a51f2320ac5e49b89355e81` |
| 4 | `theorem` | [map_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/map-exp--b3c00337d9da5718387d2ff4.md) | 72 | `result-track:b3c00337d9da5718387d2ff470974ddc929e6de4a09e0505d4624328f36649f7` |
| 5 | `theorem` | [derivative_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/derivative-exp--48a528c36e4f5db59309ced0.md) | 78 | `result-track:48a528c36e4f5db59309ced0e2d42a7c7bea8cc23c68547a21d1a83a1f41302e` |
| 6 | `theorem` | [exp_unique_of_derivative_eq_self](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp-unique-of-derivative-eq-self--62a54504cbbb853f047ab263.md) | 96 | `result-track:62a54504cbbb853f047ab263b2b6f2212a66476d60556e95986a21a5ac77f709` |
| 7 | `theorem` | [isUnit_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/isunit-exp--dec520e4980473c4563a506f.md) | 116 | `result-track:dec520e4980473c4563a506f08d3afbf6713d9f21c4c6d69433fe811c3893808` |
| 8 | `theorem` | [order_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/order-exp--2994f9cfe5f7135ec42870e6.md) | 120 | `result-track:2994f9cfe5f7135ec42870e6269e978e161e6e69107c6f5846a1192f0c5455da` |
| 9 | `theorem` | [exp_mul_exp_eq_exp_add](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp-mul-exp-eq-exp-add--f24d0461c5baa443fd899bbf.md) | 131 | `result-track:f24d0461c5baa443fd899bbf4188eee89f7e5db111f90c73e6f62fb662fa725f` |
| 10 | `theorem` | [exp_mul_exp_neg_eq_one](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp-mul-exp-neg-eq-one--ad46cdfbdf95eceba674fb80.md) | 158 | `result-track:ad46cdfbdf95eceba674fb8044fdacdfa5abb95f6ae6d1aa08200d365b196c6d` |
| 11 | `theorem` | [exp_pow_eq_rescale_exp](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp-pow-eq-rescale-exp--7993fd34e7382e6fe97cc635.md) | 162 | `result-track:7993fd34e7382e6fe97cc6359c461af27f92b376e7e6d3779634eb5a88f26040` |
| 12 | `theorem` | [exp_pow_sum](../../../../mathematics/Algebra/Exp/Variant2bdb12cccd44c223371fffd4b823281c18eebf3d7417f2f37ef3fe4fcb138e64.lean/declarations/exp-pow-sum--1dd83397875ed1283ba826ae.md) | 173 | `result-track:1dd83397875ed1283ba826ae7e51f9393b848e8e96b24e143a32c821a01da6da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

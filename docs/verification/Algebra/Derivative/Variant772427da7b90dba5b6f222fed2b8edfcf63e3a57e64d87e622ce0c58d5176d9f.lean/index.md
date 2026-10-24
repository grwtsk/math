# Verification target: GRWTSK.Algebra.Derivative.Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "249c0316e681afa432d7115d7e136f83c002d858",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `249c0316e681afa432d7115d7e136f83c002d858`.

Source path: `GRWTSK/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Trunc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Inverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivativeFun](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun--5cd1765083ad90b96514df5e.md) | 47 | `declaration-track:5cd1765083ad90b96514df5ed40422d89b9706f92a49eaf9edeb3d458bb370be` |
| 2 | `theorem` | [coeff_derivativeFun](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/coeff-derivativefun--732eb582efa07c1e40748432.md) | 49 | `result-track:732eb582efa07c1e40748432824b856b0bb91b849bd149afa4cddd715d4a6162` |
| 3 | `theorem` | [derivativeFun_coe](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-coe--4dd5f3e5d300d116362ec01a.md) | 53 | `result-track:4dd5f3e5d300d116362ec01a73961511501e742a595db759f91dbd1165145a31` |
| 4 | `theorem` | [derivativeFun_add](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-add--d0b3532f7dd8c3ed65ab1322.md) | 57 | `result-track:d0b3532f7dd8c3ed65ab132291bfd479894d0db34f028b81bea583ff55475e8d` |
| 5 | `theorem` | [derivativeFun_C](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-c--7acf9a6310020aa06786a549.md) | 63 | `result-track:7acf9a6310020aa06786a54999b61b5b9e2a619e443a3ce72ae1d857b6653590` |
| 6 | `theorem` | [trunc_derivativeFun](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/trunc-derivativefun--af2da32864d862cc2d3623b7.md) | 68 | `result-track:af2da32864d862cc2d3623b7199f8a9f5f391cdab45bf4815d4c87f5d8f1c03d` |
| 7 | `theorem` | [derivativeFun_coe_mul_coe](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-coe-mul-coe--3245d402ce8753c1ebd36d88.md) | 79 | `result-track:3245d402ce8753c1ebd36d8818ada33053b170392c76e418168459912198ffbd` |
| 8 | `theorem` | [derivativeFun_mul](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-mul--9bf1e804c0c77a9b0598b150.md) | 85 | `result-track:9bf1e804c0c77a9b0598b150ade34be245804f882a921ca1a33415bf0a40ed7d` |
| 9 | `theorem` | [derivativeFun_one](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-one--c6e97ce77bb3473eb096a0a5.md) | 95 | `result-track:c6e97ce77bb3473eb096a0a5e94a66b290f28d9be3506c88ba1651b80be280f0` |
| 10 | `theorem` | [derivativeFun_smul](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivativefun-smul--3d4e105538b03f22892f4bb3.md) | 98 | `result-track:3d4e105538b03f22892f4bb3b675ff4730806596622d5f6453e53ad4b666d504` |
| 11 | `def` | [derivative](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative--203693fbf7d05e3895268cd0.md) | 105 | `declaration-track:203693fbf7d05e3895268cd0b8dc5ce2ed48db18543dfa0de97cfe0a555ebc5f` |
| 12 | `theorem` | [derivative_C](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-c--491377c6900cf6efe1b7d156.md) | 116 | `result-track:491377c6900cf6efe1b7d156e5bdeda3d20087ab74800c79a2eff4e5d7416358` |
| 13 | `theorem` | [coeff_derivative](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/coeff-derivative--07140e4119b20f14558b9971.md) | 118 | `result-track:07140e4119b20f14558b997159f621d9fcc6723a66b4f11c5f8187e3807ee6ab` |
| 14 | `theorem` | [derivative_coe](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-coe--84b10cb7c4d596396920f79b.md) | 121 | `result-track:84b10cb7c4d596396920f79b908d5288d468d9a5ebab63c5f1d9239269945265` |
| 15 | `theorem` | [derivative_X](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-x--63249a72956dc90e7a662d65.md) | 123 | `result-track:63249a72956dc90e7a662d65833df3d0ec5889fcfa169f170fb2ccfb3c252d3a` |
| 16 | `theorem` | [trunc_derivative](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/trunc-derivative--e993f581754193c85d000274.md) | 131 | `result-track:e993f581754193c85d00027443b27fdd7ce278f61f13bfc0646eaff90709769b` |
| 17 | `theorem` | [trunc_derivative'](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/trunc-derivative--46c0819d3f2b5f4d5d1f66e8.md) | 135 | `result-track:46c0819d3f2b5f4d5d1f66e8d7ff9e5dbaf2f18acd2af1aa40050955acf35826` |
| 18 | `theorem` | [derivative.ext](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-ext--e22c201ed61f66f679440ca7.md) | 150 | `result-track:e22c201ed61f66f679440ca7af7723ac967b0b9b11ef37ab1c343d20a6811873` |
| 19 | `theorem` | [derivative_inv](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-inv--fd89579c775ec072a9624f13.md) | 161 | `result-track:fd89579c775ec072a9624f1310164df1b2144fc5799f89a38fe57bba0e32c210` |
| 20 | `theorem` | [derivative_invOf](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-invof--ff7d2dfd5daceb75286066a8.md) | 166 | `result-track:ff7d2dfd5daceb75286066a8958aeacb5ac78788e1130829e94d8bc747cae00e` |
| 21 | `theorem` | [derivative_inv'](../../../../mathematics/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/declarations/derivative-inv--b1c07e62e4e09c08ce46697b.md) | 174 | `result-track:b1c07e62e4e09c08ce46697b0fed35fc5102df2ffdf88ae35846b76f857127f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

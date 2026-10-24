# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e2afd059e30e294f0b18a63d69ca1c1f74ca23",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e2afd059e30e294f0b18a63d69ca1c1f74ca23`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.VerifiedRationalNewtonCenter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/VerifiedRationalNewtonCenter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixLength](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/prefixlength--c5bda8db4c6f681ae50fcc95.md) | 30 | `declaration-track:c5bda8db4c6f681ae50fcc956e04b95359c19f69bc21046e279ab898b7ec80c1` |
| 2 | `def` | [center](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/center--e1b573dd50222ef09bb94cf0.md) | 32 | `declaration-track:e1b573dd50222ef09bb94cf034702fa68ded09ba08d1371b618bf33172d7622b` |
| 3 | `def` | [logExponent](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/logexponent--3eb83ef27cec2a4a436ed74c.md) | 36 | `declaration-track:3eb83ef27cec2a4a436ed74ce992317bc3e8b6b3004a64a7e83e10f3bbdadefe` |
| 4 | `def` | [schedule](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/schedule--f3c1ea29392a89859eb5b4ac.md) | 40 | `declaration-track:f3c1ea29392a89859eb5b4ac3f4f1f69e7c20a97b755410b0cdce69ff8186193` |
| 5 | `def` | [plan](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/plan--2da957f625265209197420a6.md) | 47 | `declaration-track:2da957f625265209197420a613b36c57de73d92f0b3f8892a1cc8b2c01cf1875` |
| 6 | `def` | [claimed](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/claimed--0b3a58dd21a5c2709a8137f7.md) | 55 | `declaration-track:0b3a58dd21a5c2709a8137f771baca9ff3243a6648a12a8b0f57156b5955fe02` |
| 7 | `def` | [valueTolerance](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/valuetolerance--e578d21320fb2c859d804342.md) | 65 | `declaration-track:e578d21320fb2c859d804342c4b224cfebb71845234d03471a85852d8e8bc681` |
| 8 | `def` | [slopeTolerance](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/slopetolerance--3ae6ce4676d4aa5fd8f10755.md) | 66 | `declaration-track:3ae6ce4676d4aa5fd8f10755d79fff99e9a560588166ef3f7ef1e0340efdea5b` |
| 9 | `def` | [newtonRadius](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/newtonradius--b8f8211b98be6aa4f13adbfd.md) | 67 | `declaration-track:b8f8211b98be6aa4f13adbfddf6c2a17f2edfdec13175e1fb2ffd0571a1baa27` |
| 10 | `def` | [inverse](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/inverse--3643ef80114cebd458ca1d65.md) | 68 | `declaration-track:3643ef80114cebd458ca1d6517ad358169aecf415c97ed3c437b53d5218022bf` |
| 11 | `def` | [chart](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/chart--8b3babc7c48ad158392becf5.md) | 69 | `declaration-track:8b3babc7c48ad158392becf5d868705eb2d7bd5babefe3972d569a1cf7145426` |
| 12 | `def` | [newtonData](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/newtondata--fae291f4b704a656cbe520ed.md) | 72 | `declaration-track:fae291f4b704a656cbe520eda0e1aec4deb7d44d4df9559a9758d65ceb0ed4e2` |
| 13 | `def` | [SourceAcceptance](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/sourceacceptance--4ff65fc6a8716990d552c0dc.md) | 77 | `declaration-track:4ff65fc6a8716990d552c0dc3b0e7a33186e938efd9e2c5685b138acd1409319` |
| 14 | `theorem` | [declared_errors_meet_targets](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/declared-errors-meet-targets--66ed40be5b2be8d730bd9c74.md) | 82 | `result-track:66ed40be5b2be8d730bd9c7444f35cb4636f3dd4089a89f9b6f0661ecd1ca568` |
| 15 | `theorem` | [newton_admissible](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/newton-admissible--91be60cef818b9259d64f8be.md) | 87 | `result-track:91be60cef818b9259d64f8bee1fb4ba3bed87880d60e2ab2b24e7956a08d2dc6` |
| 16 | `theorem` | [newton_accepts](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/newton-accepts--ba29ebc2cdf5e7d03bae4b2c.md) | 95 | `result-track:ba29ebc2cdf5e7d03bae4b2cef6f0afd5c09a8e50961d6033a8d0599699d0eb0` |
| 17 | `theorem` | [residual_budget_lt](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/residual-budget-lt--a29059338c0adf0ed7db435f.md) | 98 | `result-track:a29059338c0adf0ed7db435fc411de9fbc4490ef2c8004ff9ef04325efed6050` |
| 18 | `theorem` | [contraction_budget_lt_third](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/contraction-budget-lt-third--15474deafc7af85bdb606ef0.md) | 102 | `result-track:15474deafc7af85bdb606ef00d8e7b4d9a5c56404eeecf951e3755657ca0efbc` |
| 19 | `theorem` | [self_map_slack_gt](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/self-map-slack-gt--23e12905d9a628d256942683.md) | 109 | `result-track:23e12905d9a628d256942683972d850e494ba1403eaf372ea988ab923f3a1cc5` |
| 20 | `theorem` | [combined_acceptance_of_source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/combined-acceptance-of-source--d9daf08817bf7435898a6b65.md) | 118 | `result-track:d9daf08817bf7435898a6b65d0cb4f314edbb4dcecef6fdd60ac70e702c48f81` |
| 21 | `theorem` | [local_zero_of_source_acceptance](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/declarations/local-zero-of-source-acceptance--2d338278bd67cd23bb4a554e.md) | 125 | `result-track:2d338278bd67cd23bb4a554e1d675de213f2fa9eefaaab1a6829a6166e7efa29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

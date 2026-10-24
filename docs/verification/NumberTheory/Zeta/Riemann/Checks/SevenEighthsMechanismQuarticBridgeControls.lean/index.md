# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SevenEighthsMechanismQuarticBridgeControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c286602d5abd4312afeafc2a1ad631cbcf8ac2",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c286602d5abd4312afeafc2a1ad631cbcf8ac2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismTrace`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/SevenEighthsMechanismTrace.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeTwo](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/primetwo--27445e58556e957aabdaea8d.md) | 30 | `declaration-track:27445e58556e957aabdaea8dfed43d1c92845b16e3e2579e1eb2dd5b876c469b` |
| 2 | `def` | [primeThree](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/primethree--07d0fcd7f9c4efb60121db18.md) | 32 | `declaration-track:07d0fcd7f9c4efb60121db18cb0165930c5a38f93ceb5411be303bd1da24df53` |
| 3 | `theorem` | [two_coordinate_recovers_two_primary](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/two-coordinate-recovers-two-primary--a6ef8ff3016a7497e1058456.md) | 35 | `result-track:a6ef8ff3016a7497e10584563d33648dec832614f2f94456776e4e0ee06afdf7` |
| 4 | `theorem` | [two_coordinate_annihilates_three_primary](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/two-coordinate-annihilates-three-primary--8aab1e136fd5e6dd055f4de7.md) | 40 | `result-track:8aab1e136fd5e6dd055f4de79f9364c78569fc65f83f84253192c6b8430b1858` |
| 5 | `theorem` | [all_prime_scale_map_is_bijective](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/all-prime-scale-map-is-bijective--a389e9487053cc78714a52da.md) | 46 | `result-track:a389e9487053cc78714a52da69507af588c97b88c47481230f8f7746e7fb151a` |
| 6 | `def` | [standardOneWayTransport](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/standardonewaytransport--423b72a2d386e6439db49928.md) | 53 | `declaration-track:423b72a2d386e6439db49928fe95690c3bf88f983149ab036e657aca5c9ba818` |
| 7 | `theorem` | [one_way_transport_requires_no_bijection](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/one-way-transport-requires-no-bijection--27e7673f8e14f0ee9ba6f52c.md) | 58 | `result-track:27e7673f8e14f0ee9ba6f52cd6ed5d2e538b55a47930083018db6bdc29899ee2` |
| 8 | `theorem` | [terminal_endpoint_does_not_recover_arbitrary_internal_evidence](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/terminal-endpoint-does-not-recover-arbitrary-internal-evidence--7d981006ef6a54a81561db46.md) | 65 | `result-track:7d981006ef6a54a81561db46e7231ee34df47516cf3b3ab3442a17be107eff7c` |
| 9 | `theorem` | [pinned_terminal_review_remains_blocked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/pinned-terminal-review-remains-blocked--9d9c7e9776819dba92b7ca26.md) | 72 | `result-track:9d9c7e9776819dba92b7ca26aeff50a411f853efc0569c7c65d582fca723a99d` |
| 10 | `theorem` | [pinned_mechanism_review_remains_blocked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/pinned-mechanism-review-remains-blocked--ad7c9ec2f5e71efd2f1f7529.md) | 77 | `result-track:ad7c9ec2f5e71efd2f1f7529d160ee3a0d373ed62f176a6a056ba2f4ece42fbb` |
| 11 | `theorem` | [mechanism_chain_uses_specialization](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/mechanism-chain-uses-specialization--aca1744c06fe9224735d7e5d.md) | 83 | `result-track:aca1744c06fe9224735d7e5dbdec2962aaa13cc3d3c12bba2512d47e6b583c61` |
| 12 | `theorem` | [source_bound_mechanism_uses_pinned_record](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/source-bound-mechanism-uses-pinned-record--6ef1a9c3e2b503f8bffb1ae2.md) | 90 | `result-track:6ef1a9c3e2b503f8bffb1ae26e054ae6dfab56aebe67c970c9810c5e3f164a52` |
| 13 | `theorem` | [source_bound_trace_terminal_agreement](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/source-bound-trace-terminal-agreement--48c55ae4817a49fbf4752295.md) | 97 | `result-track:48c55ae4817a49fbf475229561cd322bacf4847176a147c68164123de015779c` |
| 14 | `def` | [source_bound_trace_bridge_consumes_complete_trace](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/source-bound-trace-bridge-consumes-complete-trace--f15673de7686db63d683cc31.md) | 104 | `declaration-track:f15673de7686db63d683cc318a98d0000d53a51255a3eb8abadf4c567873e4ee` |
| 15 | `def` | [ToyZeroSet](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/toyzeroset--562d5614baccd6911e0ec045.md) | 113 | `declaration-track:562d5614baccd6911e0ec0455e858f55f88ef5fde014f4e7121a0a2ccf92b42e` |
| 16 | `def` | [ToyZeroFreeRightHalfPlane](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/toyzerofreerighthalfplane--73a07bd5c567f0b61b21fc99.md) | 117 | `declaration-track:73a07bd5c567f0b61b21fc99854e8c889dcb9cc9c17d2ef878bfd481c7ba3c19` |
| 17 | `theorem` | [toy_sevenEighths_zeroFree](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/toy-seveneighths-zerofree--5a1020631f56880dbd3f2b96.md) | 121 | `result-track:5a1020631f56880dbd3f2b96eff705a1ba6199157a27fedf4c6d163c7ddb6001` |
| 18 | `theorem` | [toy_half_not_zeroFree](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/toy-half-not-zerofree--183a919721faf5bd33d1e589.md) | 130 | `result-track:183a919721faf5bd33d1e589442027f58ab666867b952fcb385ff74ceb434152` |
| 19 | `theorem` | [quartic_nonnegative_forces_center](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/quartic-nonnegative-forces-center--016fe26b4bdf492db41a7a37.md) | 137 | `result-track:016fe26b4bdf492db41a7a37c1536c996354199935fe7627cf8158ba3051aa65` |
| 20 | `theorem` | [quartic_off_center_is_negative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/quartic-off-center-is-negative--b9f2824ffe52aa09862c9164.md) | 143 | `result-track:b9f2824ffe52aa09862c9164315ac99487e4e5c4e4372402486de9b93c06417f` |
| 21 | `def` | [accepted_terminal_stays_port_gate](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/accepted-terminal-stays-port-gate--5018f691a0dd7c422f671c9e.md) | 149 | `declaration-track:5018f691a0dd7c422f671c9e7bf1d6d170d4c4177a0b3b0b14ad3e22d4eb13d4` |
| 22 | `theorem` | [direct_quartic_closure_is_conditional](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/direct-quartic-closure-is-conditional--95c8ecb57f11bcb18884fa50.md) | 155 | `result-track:95c8ecb57f11bcb18884fa504dc56837396717307ee9e22e2b025d3f4e12e4a4` |
| 23 | `theorem` | [cofinal_descent_closure_is_conditional](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SevenEighthsMechanismQuarticBridgeControls.lean/declarations/cofinal-descent-closure-is-conditional--253850f731f2484bbbaaf4e8.md) | 161 | `result-track:253850f731f2484bbbaaf4e860a0d2fcff656871b9e571f344ca1f8d8ee3b53f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

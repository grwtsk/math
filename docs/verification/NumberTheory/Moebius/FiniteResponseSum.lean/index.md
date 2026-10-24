# Verification target: GRWTSK.NumberTheory.Moebius.FiniteResponseSum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6c4b01e48f5cf6e779023aac9098fc0801127d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6c4b01e48f5cf6e779023aac9098fc0801127d`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteResponseSum.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteResponseSum.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.PrimitiveRegularity`](../../../../mathematics/NumberTheory/Moebius/PrimitiveRegularity.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pickupAtomVelocity](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupatomvelocity--2d3b3d90866e85666d9661fd.md) | 27 | `declaration-track:2d3b3d90866e85666d9661fdbf4eeffdd9b2841f136b7f56f9098af11e9bcddd` |
| 2 | `theorem` | [pickup_log_le_iff_closed_cutoff](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickup-log-le-iff-closed-cutoff--0737e29a82d02ebdf65ee558.md) | 30 | `result-track:0737e29a82d02ebdf65ee55832df8873527508e91e31c5db0cac5cbd3f4fba16` |
| 3 | `theorem` | [mertensPrefix_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/mertensprefix-fixed-inventory--eadb98d40719d0388d287178.md) | 36 | `result-track:eadb98d40719d0388d287178a56a33ae9c3e747f1e7d197263daa5004f6e3ab7` |
| 4 | `theorem` | [pickupVelocity_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupvelocity-fixed-inventory--f5a8f52771b149df63bded7d.md) | 63 | `result-track:f5a8f52771b149df63bded7d3db3a18095cf19b7041c0b5474e75a4c34776897` |
| 5 | `theorem` | [pickupAtomVelocity_measurable](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupatomvelocity-measurable--cfc712cb838dddb368780c0e.md) | 71 | `result-track:cfc712cb838dddb368780c0ecc75553f5994e83a2045185a7fd468dbedd1a980` |
| 6 | `theorem` | [pickupAtomVelocity_intervalIntegrable](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupatomvelocity-intervalintegrable--8f93eea41b8764f4ac015b65.md) | 76 | `result-track:8f93eea41b8764f4ac015b652f539c9a34d62149244d98085122cc130fe9454f` |
| 7 | `theorem` | [wholePickup_finite_atom_integrals](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-finite-atom-integrals--a6952bb828e6a7c71ace57b7.md) | 86 | `result-track:a6952bb828e6a7c71ace57b72a57f5f055078fe60cb00a78b8661afefd687615` |
| 8 | `theorem` | [pickup_negative_half_integral](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickup-negative-half-integral--2140c590877d761e460daa24.md) | 106 | `result-track:2140c590877d761e460daa2496f7d1d1131a5923020e969f3de6248e7eed0b55` |
| 9 | `theorem` | [pickup_exp_negative_log_half](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickup-exp-negative-log-half--2e83122abe82ba25e62458dd.md) | 121 | `result-track:2e83122abe82ba25e62458dd6448df6bd05bfdf690bf7381738efa49a4a9b4bc` |
| 10 | `theorem` | [pickupAtomVelocity_integral](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupatomvelocity-integral--3dedcdae96552ec288fbfbad.md) | 133 | `result-track:3dedcdae96552ec288fbfbad8d8036a830a8af3267722efd9ae42ff2a652153c` |
| 11 | `theorem` | [wholePickup_closed_prefix](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix--f0473f4c7025fccd72f524dd.md) | 159 | `result-track:f0473f4c7025fccd72f524ddbf66eb4680f705a94d86ca2957aa44cc8fd5a718` |
| 12 | `theorem` | [wholePickup_response_sum](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-response-sum--ab59e14c7d3d80656bfcd039.md) | 170 | `result-track:ab59e14c7d3d80656bfcd039b1294714021ec0c7aebe5674cce9cde50853487c` |
| 13 | `theorem` | [pickup_inverse_sqrt_eq_negative_half](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickup-inverse-sqrt-eq-negative-half--4c7da74ae2ff157e30bcc8cd.md) | 181 | `result-track:4c7da74ae2ff157e30bcc8cd816b3953a6370c4203fb0679f11416874a6ebb0c` |
| 14 | `theorem` | [wholePickup_closed_prefix_rpow](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix-rpow--ea728ed806bf66b46047a96f.md) | 186 | `result-track:ea728ed806bf66b46047a96f1fef8bb33b700220403660c774279c49e1903063` |
| 15 | `theorem` | [wholePickup_closed_prefix_flux](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-closed-prefix-flux--7d21a98d4a2457c885d482fb.md) | 192 | `result-track:7d21a98d4a2457c885d482fba38ef2b315e59092534fb7ffbce4109409d51f61` |
| 16 | `theorem` | [pickupResponse_at_event](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupresponse-at-event--21d3dc7a806a67292f3fe66c.md) | 200 | `result-track:21d3dc7a806a67292f3fe66c8bab860a59553f4436f56cf82c9e330d4f6d02e8` |
| 17 | `theorem` | [wholePickup_fixed_inventory](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/wholepickup-fixed-inventory--04204091e328deb361b41b0c.md) | 205 | `result-track:04204091e328deb361b41b0ccbd305d763c479401b4461c7d5f809dee01e2a95` |
| 18 | `theorem` | [pickupResponse_continuous](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupresponse-continuous--65a397f5308c18fbb61b73aa.md) | 223 | `result-track:65a397f5308c18fbb61b73aa1a46cd7eb70413f94d9ed951f18c06b6a2f7796c` |
| 19 | `theorem` | [pickupResponse_product_intervalIntegrable](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupresponse-product-intervalintegrable--34ac0e8d8a8e7717f6fd6b8f.md) | 235 | `result-track:34ac0e8d8a8e7717f6fd6b8fc7d45e8a8af74454d12960d071c9804221c201f3` |
| 20 | `theorem` | [pickupEnergy_eq_full_gram](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupenergy-eq-full-gram--4f6ea17da20644b6a8c057e2.md) | 241 | `result-track:4f6ea17da20644b6a8c057e2a124600182cc40d3fad95fb091ec002c90b65b80` |
| 21 | `theorem` | [pickupEnergy_eq_diagonal_add_cross](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/declarations/pickupenergy-eq-diagonal-add-cross--2efd3b1126cd87c22cf6acd9.md) | 279 | `result-track:2efd3b1126cd87c22cf6acd9b7ae53d096fe7576839be3e1f582a6eba278e551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CheckedJetControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc62a5bc19fd3ecb3afe798faead828ad96dfaa",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc62a5bc19fd3ecb3afe798faead828ad96dfaa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenCheckedJets`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenCheckedJets.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [poleParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/poleparameters--b166bdec61c034f8965a711b.md) | 20 | `declaration-track:b166bdec61c034f8965a711b605981b78a5f80a3341222c5cf7837c7ffbc682a` |
| 2 | `def` | [polePacket](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/polepacket--075a7c60069c6a75a388e5e0.md) | 22 | `declaration-track:075a7c60069c6a75a388e5e0de7fcf70b15464852514af1c579add65c001ee5a` |
| 3 | `theorem` | [complete_finite_jet](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/complete-finite-jet--f8d5b2b6205f89fa32ed058e.md) | 24 | `result-track:f8d5b2b6205f89fa32ed058e157250ea64a320f3f13a4f90908b82d49afa7629` |
| 4 | `theorem` | [complete_source_patch](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/complete-source-patch--d6f1c8ba7d3ca6526d951777.md) | 28 | `result-track:d6f1c8ba7d3ca6526d951777c6d1a27853c37556ac3a19da70814878963f6a39` |
| 5 | `theorem` | [missing_and_extra_bases](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/missing-and-extra-bases--498e44a86c3912c8ac386588.md) | 31 | `result-track:498e44a86c3912c8ac386588b9872764bfaa48f697a2f6ac5459a197e7793fe7` |
| 6 | `theorem` | [extra_inner_state](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/extra-inner-state--20ea42a3e014db7f36f0291c.md) | 36 | `result-track:20ea42a3e014db7f36f0291cf4987b7372a3ed7cb877f15dfa99365a39f9c216` |
| 7 | `theorem` | [invalid_cutoff_and_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/invalid-cutoff-and-source--3bdef15f68fe4952200a7a25.md) | 39 | `result-track:3bdef15f68fe4952200a7a25c98074fc71ba241908c8aee528a81a30db5cf3e7` |
| 8 | `theorem` | [equality_and_outer_disk_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/equality-and-outer-disk-reject--daf679415fe78dfd526089fa.md) | 43 | `result-track:daf679415fe78dfd526089fa862e85656b1727d2bf32015448bd26a26c63ab60` |
| 9 | `def` | [twoParameters](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/twoparameters--de9eda6c870706bc7bc08632.md) | 47 | `declaration-track:de9eda6c870706bc7bc08632929fa5fb3404a87dc67164fb96018b9205d57561` |
| 10 | `def` | [twoPacket](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/twopacket--05ec23952a52f72ec31e124f.md) | 49 | `declaration-track:05ec23952a52f72ec31e124f9d7dbd67f36758a02b849286fcfaed2e548bba31` |
| 11 | `theorem` | [two_bases_complete](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/two-bases-complete--8b212f49e14a817faf98091d.md) | 52 | `result-track:8b212f49e14a817faf98091d5f3c06254166c70c221c600288bd1df108fb984c` |
| 12 | `theorem` | [reorder_and_duplicate_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/reorder-and-duplicate-reject--49c1bd2a3869ec8ad0cc839f.md) | 55 | `result-track:49c1bd2a3869ec8ad0cc839f3aeea84cf3af232e8d56414acac15b52e72506b8` |
| 13 | `theorem` | [wrong_terminal_error_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/wrong-terminal-error-reject--9da36c621cd62392de0ff08b.md) | 59 | `result-track:9da36c621cd62392de0ff08bfa305737b4439314e0ce666a5f7e7c12a14eb68d` |
| 14 | `def` | [smallDomain](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/smalldomain--00804ed3ddad311f3f31069b.md) | 62 | `declaration-track:00804ed3ddad311f3f31069bfdf3e60d22d03731e55ebe45d77b45352d6ec147` |
| 15 | `def` | [smallPlans](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/smallplans--c864045246a58f4611f5f7d3.md) | 65 | `declaration-track:c864045246a58f4611f5f7d311cfc76ad5d8666a46676fcfa7310be541ca93ed` |
| 16 | `def` | [smallImage](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/smallimage--e200c38c7d1cbd909cf84377.md) | 68 | `declaration-track:e200c38c7d1cbd909cf843778fdfecd675d1a63a3f73f5315044e30855523b4d` |
| 17 | `def` | [smallPackets](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/smallpackets--4ca6db17ba0c88083f035f3d.md) | 70 | `declaration-track:4ca6db17ba0c88083f035f3d9990a7570f961620c0a0331586315ed975fb973c` |
| 18 | `theorem` | [complete_small_square](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/complete-small-square--b58a41ecd40893740b09c038.md) | 73 | `result-track:b58a41ecd40893740b09c038cfc3d9ecefb498bcacfd7c06cfa3cd98e00db49e` |
| 19 | `theorem` | [missing_and_extra_plan_packets](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/missing-and-extra-plan-packets--4ddddbfceaae86dc04b41c65.md) | 76 | `result-track:4ddddbfceaae86dc04b41c652c6b92740fadc98f7e8378222e8be2b64a6628ef` |
| 20 | `theorem` | [bad_final_packet_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/bad-final-packet-reject--75c93eb9b92f260dd3a77d19.md) | 80 | `result-track:75c93eb9b92f260dd3a77d19b2f1a180953589ed1cb6d7c4b4fd9bbb7c584747` |
| 21 | `theorem` | [zero_shared_vertex_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/zero-shared-vertex-reject--0382ef18ec8d36651ce96a0a.md) | 84 | `result-track:0382ef18ec8d36651ce96a0ab4b98ef15204caf366ff12bee7883ba9737ce9a5` |
| 22 | `theorem` | [global_closure_reject](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/CheckedJetControls.lean/declarations/global-closure-reject--235ccfd81dfcb229a91dd75d.md) | 87 | `result-track:235ccfd81dfcb229a91dd75d751e702b496a24588c401e91ab9eea170e4cff6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.GroupTheory.CyclicStream.Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a1cd880ff1a1d35b5c60d87f00671d55c6671c5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a1cd880ff1a1d35b5c60d87f00671d55c6671c5`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestepstream--dee5e498ab4462b1afe491a3.md) | 52 | `declaration-track:dee5e498ab4462b1afe491a3c159ac0552b610415ba29225576dd636191fcd92` |
| 2 | `def` | [indexedStepStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/indexedstepstream--6138909b60fb4e62c546d4fa.md) | 63 | `declaration-track:6138909b60fb4e62c546d4faf23aa5d5c942980a014430b77d1de596b70600b4` |
| 3 | `abbrev` | [braidedStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/braidedstream--0b4fc4be2ea46ca1f91eaf8c.md) | 76 | `declaration-track:0b4fc4be2ea46ca1f91eaf8c0a4e68c415e74fc7ae2f609faf54901bb2703a3e` |
| 4 | `theorem` | [braidedStream_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/braidedstream-apply--d47d33cea8445de4af223b9c.md) | 84 | `result-track:d47d33cea8445de4af223b9c3af53c78e52cfe772fc41fda6e8830b2a1356ff9` |
| 5 | `theorem` | [braidedStream_mod_cycle_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/braidedstream-mod-cycle-apply--8871b542381edf9097208d47.md) | 94 | `result-track:8871b542381edf9097208d47b224aac50479cd21e4e076656f6db621252ac05c` |
| 6 | `def` | [shiftPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftphasestream--f4af24b3296b1ea7cfc956b4.md) | 106 | `declaration-track:f4af24b3296b1ea7cfc956b47679ccafa2451bb6b20fcc42d26b039790a28795` |
| 7 | `def` | [shiftInput](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftinput--467ce48e215f0723b1893e46.md) | 112 | `declaration-track:467ce48e215f0723b1893e46d97397b6c7a45492c0211378d75fc9c36f485756` |
| 8 | `def` | [phaseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport--ae97d44a2b6bc5ed9dd3fb32.md) | 121 | `declaration-track:ae97d44a2b6bc5ed9dd3fb32dcfeba49743224c2ed15b2b501463a91ed64b9ca` |
| 9 | `def` | [streamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport--bbbce72ae6843be42bb017bd.md) | 135 | `declaration-track:bbbce72ae6843be42bb017bd6a3e524e82fb034e105d623f9be575d7ef15fed8` |
| 10 | `theorem` | [phaseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-zero--462e8e588f4d86271328628c.md) | 141 | `result-track:462e8e588f4d86271328628c9306d092498c424cf5cadac659918933fc7c8064` |
| 11 | `theorem` | [phaseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-succ--2fbdcaaf3580a74e70fcc945.md) | 147 | `result-track:2fbdcaaf3580a74e70fcc94571b0e7230a59e5e0b7c55daf277fd424b5ae8465` |
| 12 | `theorem` | [streamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-zero--3fc1a7cd6fb8c113232cb50c.md) | 155 | `result-track:3fc1a7cd6fb8c113232cb50ce4962aabc123289eb4d43932c0dcb1f58ba9601f` |
| 13 | `theorem` | [streamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-succ--2bb809756ac738bae0566678.md) | 161 | `result-track:2bb809756ac738bae0566678d80d532960b46958a0f77566205070605a2d9759` |
| 14 | `theorem` | [streamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-two-apply--6f7ea1e2a74cf00d52fbb82e.md) | 173 | `result-track:6f7ea1e2a74cf00d52fbb82e5fedef47ac17db6437357b545ed3e6e35813ec0e` |
| 15 | `def` | [reverseStreamTransport](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/reversestreamtransport--62cbd22967932d1a291e0f90.md) | 188 | `declaration-track:62cbd22967932d1a291e0f9075e4b03fd87708ad622367b817161b13a42d9d93` |
| 16 | `theorem` | [reverseStreamTransport_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/reversestreamtransport-zero--0fed57e77e68490c402a54a6.md) | 197 | `result-track:0fed57e77e68490c402a54a68bb913fd589b5c9ac2e16e180e79a6f020ade8e1` |
| 17 | `theorem` | [reverseStreamTransport_succ](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/reversestreamtransport-succ--228f1ab0ae87c08537dd1976.md) | 204 | `result-track:228f1ab0ae87c08537dd197623a21c84bc4740d9c53408f454ebe0a6a9b94189` |
| 18 | `theorem` | [reverseStreamTransport_two_apply](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/reversestreamtransport-two-apply--e4f31fba21cd95a525df804a.md) | 216 | `result-track:e4f31fba21cd95a525df804a27afd88a8e765fb042d4fadb025e4d3de3ad0209` |
| 19 | `theorem` | [shiftPhaseStream_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftphasestream-zero--f11c2b9dff83fe655159684f.md) | 224 | `result-track:f11c2b9dff83fe655159684fce491e8c18dd1bd4c9ec2ceaaad7eb67b5e9591f` |
| 20 | `theorem` | [shiftPhaseStream_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftphasestream-add--60f192a6d4c4d5334603a4b2.md) | 230 | `result-track:60f192a6d4c4d5334603a4b268579fa06ae96dd360ca4be0cdd4207eff5d1c51` |
| 21 | `theorem` | [shiftInput_zero](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftinput-zero--4cdaa76088c26cdee1b56e4a.md) | 237 | `result-track:4cdaa76088c26cdee1b56e4a42555bc0368c6967bf75cc2776431f3926913fba` |
| 22 | `theorem` | [shiftInput_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/shiftinput-add--6e9970c1637899d3b5502c70.md) | 243 | `result-track:6e9970c1637899d3b5502c70a66614c2279c405d4da2e28e22f78435d90eb52e` |
| 23 | `theorem` | [phaseStreamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-add--439ea8ca11586f613e385956.md) | 250 | `result-track:439ea8ca11586f613e385956c66e2d08f4a8134170c4911ee175758b36b2ed73` |
| 24 | `theorem` | [streamTransport_add](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-add--5a36541a2c5b02b49df0d3b9.md) | 268 | `result-track:5a36541a2c5b02b49df0d3b9ce20bca484a5447ed9baeebd6dc3a16d096ccd13` |
| 25 | `def` | [successorPhaseStream](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/successorphasestream--31c599afceba04c8394d0abc.md) | 286 | `declaration-track:31c599afceba04c8394d0abcc80b4ca55620cc79e95f65cf7da509bd853ee7d5` |
| 26 | `theorem` | [phaseStreamTransport_successor_eq_forwardProduct](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-successor-eq-forwardproduct--46d7f29a2ae6bf577f3df2f8.md) | 296 | `result-track:46d7f29a2ae6bf577f3df2f801ea977ed562f276a6a5eaedc77264bc87ac0088` |
| 27 | `theorem` | [phaseStreamTransport_successor_cycle_eq_monodromy](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-successor-cycle-eq-monodromy--a47a0e2030b1d82a8dd3bf8f.md) | 319 | `result-track:a47a0e2030b1d82a8dd3bf8f2f59f4474f791985ed4eee32c4f5fc0637eea66e` |
| 28 | `theorem` | [streamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-bijective--907b922c5d0e7e3937847244.md) | 329 | `result-track:907b922c5d0e7e39378472445f1fcb2abc520725602b9b1c8c7a69aa040197f9` |
| 29 | `theorem` | [phaseStreamTransport_bijective](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransport-bijective--73a327fb657b46a77797876a.md) | 336 | `result-track:73a327fb657b46a77797876aba7be6e083303f3739ace5d591ffe44066ffe9f0` |
| 30 | `def` | [StreamInSubgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streaminsubgroup--2afd92965bd13be93fc32533.md) | 343 | `declaration-track:2afd92965bd13be93fc32533455f3a994bd17101c6d979fcba0973211b789a41` |
| 31 | `theorem` | [streamTransport_mem_subgroup](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-mem-subgroup--bc32dcf6b157b797904aaf48.md) | 350 | `result-track:bc32dcf6b157b797904aaf48d19630c6c5fa0b129e2f5b0f7c03a9fd472be34a` |
| 32 | `theorem` | [streamTransport_mem_subgroup_of_phasewise](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransport-mem-subgroup-of-phasewise--92071dc202152030239cf511.md) | 367 | `result-track:92071dc202152030239cf511f3018caa1a0c3ee9aea2e2a0b9d00dc30e405229` |
| 33 | `def` | [phaseStreamTransportWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransportwithpayload--1d05da51fe1cc0ea37ef83a7.md) | 386 | `declaration-track:1d05da51fe1cc0ea37ef83a763cd266f91d24d376be24c8aaea412adf6a344ab` |
| 34 | `def` | [streamTransportWithPayload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransportwithpayload--d2d1b2434a80f0eb2c9e9ef3.md) | 395 | `declaration-track:d2d1b2434a80f0eb2c9e9ef32a5bf6768f3636336f8f8923db4eadf5c858ad4f` |
| 35 | `theorem` | [phaseStreamTransportWithPayload_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/phasestreamtransportwithpayload-preserves-payload--d1527d0b4ec501a1ddb72cee.md) | 403 | `result-track:d1527d0b4ec501a1ddb72ceeecff5b6da5ef5cc6b792f83aae9d51021b7a9d5f` |
| 36 | `theorem` | [streamTransportWithPayload_preserves_payload](../../../../../mathematics/Algebra/GroupTheory/CyclicStream/Variant9790c4c72b5cbb9eab7890c58f64efb177637f2e6150a5d5c37952e844fb61cb.lean/declarations/streamtransportwithpayload-preserves-payload--1226d3755636cd67eecdd627.md) | 411 | `result-track:1226d3755636cd67eecdd6271e9c02b4bd2be5c8abeec96d4f5f3a38812eb435` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

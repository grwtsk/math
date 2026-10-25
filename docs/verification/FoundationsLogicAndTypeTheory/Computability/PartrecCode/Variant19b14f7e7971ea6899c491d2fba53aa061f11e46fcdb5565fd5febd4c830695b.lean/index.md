# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.PartrecCode.Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1555850f895dc321c487421e9df6bc4780e2215",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1555850f895dc321c487421e9df6bc4780e2215`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Partrec` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/rfind--c38832c8ff8868a812a9fa32.md) | 58 | `result-track:c38832c8ff8868a812a9fa325a341354cdb629b049d1c29aa53fecc860fa6082` |
| 2 | `inductive` | [Code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/code--088b2a2add9361176d36dfc5.md) | 84 | `declaration-track:088b2a2add9361176d36dfc5194aed79bad2fca44c5b0914a2056572b998b877` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/instinhabited--8afdd3c59f2a7432bca5f67f.md) | 106 | `declaration-track:8afdd3c59f2a7432bca5f67fb67edce85b4ae63df2f926872d66e7ce377d087f` |
| 4 | `def` | [const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/const--800de16bec0ee31f323738f0.md) | 111 | `declaration-track:800de16bec0ee31f323738f072e4f40ac7a65d5a6b9397db5cab97d256f4224a` |
| 5 | `theorem` | [const_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/const-inj--f305235f7ef046728a9f9032.md) | 116 | `result-track:f305235f7ef046728a9f90327a68796ab2c75d3ff8c88d42248f3b220364bd4e` |
| 6 | `def` | [id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/id--94089309d72fa353052b05cb.md) | 125 | `declaration-track:94089309d72fa353052b05cbf671017baf8ec5ae3eb8573c1cfdc4b5eb19b935` |
| 7 | `def` | [curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/curry--de0f9504dcbb67afa25c0dd8.md) | 131 | `declaration-track:de0f9504dcbb67afa25c0dd8dc6089969c2df32fe7b1f08ff1f03ab07b5aa40b` |
| 8 | `def` | [encodeCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encodecode--e3faac9cb8c272a82a9288f6.md) | 137 | `declaration-track:e3faac9cb8c272a82a9288f610b25dce2842bf0d1b5ab5d5c973936d0be04af5` |
| 9 | `def` | [ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/ofnatcode--cb0bcc2d733ce1722c9d53e3.md) | 151 | `declaration-track:cb0bcc2d733ce1722c9d53e3b8fa0227767f22c71d298ab0b353ebc4d5d0514c` |
| 10 | `theorem` | [encode_ofNatCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encode-ofnatcode--4d3f7919c524d601233b8e59.md) | 173 | `result-track:4d3f7919c524d601233b8e59740970f63144da6b673adbde82872ffe7585c846` |
| 11 | `instance` | [instDenumerable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/instdenumerable--0636f0044aa3254ce22b6be5.md) | 195 | `declaration-track:0636f0044aa3254ce22b6be5306c01f8e8df47feae6ba4372c6b07cdb141e13d` |
| 12 | `theorem` | [encodeCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encodecode-eq--1ea2124d75002e3ec4090671.md) | 202 | `result-track:1ea2124d75002e3ec4090671654c436712c782306a2af24596ffc0b8230d1e57` |
| 13 | `theorem` | [ofNatCode_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/ofnatcode-eq--d078454d13b6cb0ad2eae362.md) | 206 | `result-track:d078454d13b6cb0ad2eae362f909521a99614be9b03cac17922b845b0fd80827` |
| 14 | `theorem` | [encode_lt_pair](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encode-lt-pair--2b044b6bf1c1ae0ab3e8a602.md) | 210 | `result-track:2b044b6bf1c1ae0ab3e8a6028e3194c1bf39c9742eab33eea098b4883580a31a` |
| 15 | `theorem` | [encode_lt_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encode-lt-comp--841e64cb6afe20748b101dd2.md) | 219 | `result-track:841e64cb6afe20748b101dd27d5ceb969779210367606042800b4b3ddcf11160` |
| 16 | `theorem` | [encode_lt_prec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encode-lt-prec--c27d0b5ccefaf02a9952aaaa.md) | 225 | `result-track:c27d0b5ccefaf02a9952aaaacf16fd747cf715ac21642181a602212602e9c37d` |
| 17 | `theorem` | [encode_lt_rfind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/encode-lt-rfind--aca7ee47486ae8820c5e0e05.md) | 231 | `result-track:aca7ee47486ae8820c5e0e05ba258f821b11cbd147d27a3006a5036598fc0ec3` |
| 18 | `theorem` | [pair_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/pair-prim--72ea9994ca5ae78641c511f6.md) | 242 | `result-track:72ea9994ca5ae78641c511f65bab452d8859194d326e6fb2fe078947fb6c2fc5` |
| 19 | `theorem` | [comp_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/comp-prim--494fdc9c739d555a1f97cf2e.md) | 253 | `result-track:494fdc9c739d555a1f97cf2e3ee7da8cf4342d34240c79cfddf06fca7c64f133` |
| 20 | `theorem` | [prec_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/prec-prim--dad8f7f97786ad6438d82599.md) | 264 | `result-track:dad8f7f97786ad6438d82599bd952468f0b746fef10b6473d223e713e5b3a6c3` |
| 21 | `theorem` | [rfind_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/rfind-prim--788fdc4464b7ab578c914b39.md) | 275 | `result-track:788fdc4464b7ab578c914b3996472495b8f33f133048d64376e5f364133f072a` |
| 22 | `theorem` | [rec_prim'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/rec-prim--cc5625000252ba493b2b2b9c.md) | 284 | `result-track:cc5625000252ba493b2b2b9c027e82f5a36550f0d3103a720441feada67e5cb8` |
| 23 | `theorem` | [rec_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/rec-prim--eecfdb48d63b2837db0e21c5.md) | 394 | `result-track:eecfdb48d63b2837db0e21c5e1961258f3283907504dc4a07f99b34905760cbe` |
| 24 | `theorem` | [rec_computable](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/rec-computable--e3045f169874487c44bcc059.md) | 507 | `result-track:e3045f169874487c44bcc0591050056babe515945d0941488ec83a9ee56ddc86` |
| 25 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval--52441e073a21f6b07667c6e3.md) | 628 | `declaration-track:52441e073a21f6b07667c6e33bb6aa7438aca626527fb822d9592bf5e1240bb5` |
| 26 | `theorem` | [eval_prec_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-prec-zero--12d30bc77478ee759e867b78.md) | 647 | `result-track:12d30bc77478ee759e867b78a279349e6dc79c5f6671f9081a5b3759a9c02195` |
| 27 | `theorem` | [eval_prec_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-prec-succ--d3ed98af27259feafb0b10b8.md) | 654 | `result-track:d3ed98af27259feafb0b10b8581f163c78cf79d553cac9cbabe638a31786f8f9` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/instance--2a37c78e954b4e6364f37a52.md) | 661 | `declaration-track:2a37c78e954b4e6364f37a527487be6950e6c9e5f927233d4c07bd62f83f83b6` |
| 29 | `theorem` | [eval_const](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-const--41029e359b6fc1c3e412458e.md) | 665 | `result-track:41029e359b6fc1c3e412458e7a97400e04adc8a128f56df6dc13ddf4789668d9` |
| 30 | `theorem` | [eval_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-id--21e886fbbb0eb88415b49347.md) | 671 | `result-track:21e886fbbb0eb88415b493473bde6ed129ecb67ff8e7f5b4bb88c60363b7aff2` |
| 31 | `theorem` | [eval_curry](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-curry--850af0ff5861588d7667916a.md) | 675 | `result-track:850af0ff5861588d7667916a6e939eafccc06ef395d0c282fa05a665d361094b` |
| 32 | `theorem` | [const_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/const-prim--6dca77372c825e37b0863d30.md) | 678 | `result-track:6dca77372c825e37b0863d30005a033611c3caa09d0e840a0b37656bebec5ecd` |
| 33 | `theorem` | [curry_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/curry-prim--321f36864e71807c3d719c30.md) | 685 | `result-track:321f36864e71807c3d719c30e79102eaa5b92f819a6e130de700b2e0aacd3907` |
| 34 | `theorem` | [curry_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/curry-inj--0ea1523542676c4120a7fece.md) | 690 | `result-track:0ea1523542676c4120a7fece34a874b2406c22d545e6982e38ab6f338b32314a` |
| 35 | `theorem` | [smn](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/smn--0db05b925832c93b4fbfbe34.md) | 701 | `result-track:0db05b925832c93b4fbfbe340ca26699d7c0a9c9df5ae1cd82b6ae551d318567` |
| 36 | `theorem` | [exists_code](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/exists-code--2edd121ba93dfed4473831e1.md) | 707 | `result-track:2edd121ba93dfed4473831e178e378a5cca7af8f3bfd3b5f487f65081e92fc4a` |
| 37 | `def` | [evaln](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln--7980a10f14db322a3a399c54.md) | 744 | `declaration-track:7980a10f14db322a3a399c541500d5bbe3f3bdfd5ef7eaafb6b81a8c03579db9` |
| 38 | `theorem` | [evaln_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-bound--f2e116811769dd9b5aee8d93.md) | 783 | `result-track:f2e116811769dd9b5aee8d933c6329dc53c3b6a570e0c6a750cceb645ef36db9` |
| 39 | `theorem` | [evaln_mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-mono--f28d8259727974ba502704a4.md) | 791 | `result-track:f28d8259727974ba502704a4f7b9d2ffaf7425006cba29e379c6ed4071c53cc3` |
| 40 | `theorem` | [evaln_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-sound--1d3607b02ead8802f7195086.md) | 825 | `result-track:1d3607b02ead8802f719508693cc9c4bed096687d3e2108a8c5efddf18c54766` |
| 41 | `theorem` | [evaln_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-complete--0af96074bfba36c739ee19ff.md) | 865 | `result-track:0af96074bfba36c739ee19ff4ff059cc7fdc76c7ac443f9fa89c0997e9c2bd03` |
| 42 | `def` | [lup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/lup--a3e622ca8ff47121903573bd.md) | 937 | `declaration-track:a3e622ca8ff47121903573bdec7490f97dbb47c55610b09b2aa7908d42cb6e99` |
| 43 | `theorem` | [hlup](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/hlup--4d41448190daba805df59fc4.md) | 942 | `result-track:4d41448190daba805df59fc4b2536db85e194b817a9f65b91e69646c1f23d958` |
| 44 | `def` | [G](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/g--ba0c090f0f0a48610d8c1818.md) | 948 | `declaration-track:ba0c090f0f0a48610d8c1818090a6f9b48e17f21435a4688ed27b7a42a27d9a0` |
| 45 | `theorem` | [hG](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/hg--378b0700b5254e8a520e1493.md) | 979 | `result-track:378b0700b5254e8a520e149397e5f916029f4b0f27d78c2c129befc0216b2283` |
| 46 | `theorem` | [evaln_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-map--4bdd2970866cb1361b72d773.md) | 1081 | `result-track:4bdd2970866cb1361b72d773776e0b865a8b2d11c5bdaeff581f3efece60adf7` |
| 47 | `theorem` | [evaln_prim](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/evaln-prim--555c6b24bf5aac388509e2b6.md) | 1092 | `result-track:555c6b24bf5aac388509e2b66595e266249e4f841fe244557339d08ee3e68f23` |
| 48 | `theorem` | [eval_eq_rfindOpt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-eq-rfindopt--9ed972310541b8ff1cadc11b.md) | 1160 | `result-track:9ed972310541b8ff1cadc11bab0ca1c33159aafd0d60da7143189733e740dd85` |
| 49 | `theorem` | [eval_part](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/eval-part--6006795cac8af5a4d0c3c9a4.md) | 1166 | `result-track:6006795cac8af5a4d0c3c9a48dd3c82db952d7d69b9fbc5f826eaaf2c722a5ca` |
| 50 | `theorem` | [fixed_point](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/fixed-point--e9ffd6100defc8089a409b59.md) | 1176 | `result-track:e9ffd6100defc8089a409b592d688351e65d8fee91c5975d84a215ee92ebfb4c` |
| 51 | `theorem` | [fixed_point₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/declarations/fixed-point--479b3849dfc16044a7871f83.md) | 1194 | `result-track:479b3849dfc16044a7871f83b68acaa81ac66a354bebe2aafd58626fdd90cd0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

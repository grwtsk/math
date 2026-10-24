# Verification target: GRWTSK.Algebra.Semiring.Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6c5dd8cac28be3654734c1769d7b71804bac51e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6c5dd8cac28be3654734c1769d7b71804bac51e`.

Source path: `GRWTSK/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Kleene` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SetSemiring](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/setsemiring--1707a293d96a88d6fa558d41.md) | 29 | `declaration-track:1707a293d96a88d6fa558d415a22e2cdcadadee5a7df0d64ec059df644ac30a6` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--9a48934ca663fc62db234d93.md) | 33 | `declaration-track:9a48934ca663fc62db234d93f99090b1593c4ea0432c686a122b252c0ceffd73` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--3569dce36884bf534f47c0fb.md) | 36 | `declaration-track:3569dce36884bf534f47c0fb58a4d491f903765b144cec38809c88d129f685bb` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--7e1b6a848b482ff705c73379.md) | 39 | `declaration-track:7e1b6a848b482ff705c7337925c319b64c381accc03d1019a3ba736837c69547` |
| 5 | `def` | [Set.up](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/set-up--98014ac6d2778f67b440dc49.md) | 43 | `declaration-track:98014ac6d2778f67b440dc49a27ca98a29fb45568b34a4ef4249fbb5317829b0` |
| 6 | `def` | [down](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down--85b477b974a9dabb80c8572e.md) | 50 | `declaration-track:85b477b974a9dabb80c8572e0df104ec5ecb64f1a8957e3ca3b2083324323b92` |
| 7 | `theorem` | [down_up](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-up--f08be494b6dd8784999f097e.md) | 60 | `result-track:f08be494b6dd8784999f097e4351511bef88cfe1c858321562d7b7a74ce3f4d8` |
| 8 | `theorem` | [up_down](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/up-down--72d78cfc2821de48b6caa601.md) | 66 | `result-track:72d78cfc2821de48b6caa60106d9bf644840f917cdbf32b81c81fe9a94e917aa` |
| 9 | `theorem` | [up_le_up](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/up-le-up--fce01ede0ccc830ecfbed5ac.md) | 72 | `result-track:fce01ede0ccc830ecfbed5ac7680682c1d1e53d28e90830ae909d99f6a800ce4` |
| 10 | `theorem` | [up_lt_up](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/up-lt-up--e17230b3d29df73fab214599.md) | 77 | `result-track:e17230b3d29df73fab21459902782bf5b107c4162595edaffc999cd5311008fa` |
| 11 | `theorem` | [down_subset_down](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-subset-down--48b8112d77761f20724360ef.md) | 83 | `result-track:48b8112d77761f20724360ef5d5702e4af9375266953fa06903686b6cc8f8258` |
| 12 | `theorem` | [down_ssubset_down](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-ssubset-down--dc17f91f640fed681235ed19.md) | 89 | `result-track:dc17f91f640fed681235ed194b3092be969e03ce13075b890008c0e0d65033c2` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--da3ec5dcc4a3f26ffd5656e3.md) | 94 | `declaration-track:da3ec5dcc4a3f26ffd5656e35a1e10572c9063deb433358967e5f20e20f46f6b` |
| 14 | `theorem` | [zero_def](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/zero-def--cb1385a325d6ea1421ecd827.md) | 102 | `result-track:cb1385a325d6ea1421ecd827d0927c34102ae60e3b6daa1cdd1337ce3dd71f78` |
| 15 | `theorem` | [down_zero](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-zero--f224c9a95c5aad9725e4ff93.md) | 107 | `result-track:f224c9a95c5aad9725e4ff9301db5cf4bd1de58c3e455b1a5b8f026eff3fd240` |
| 16 | `theorem` | [_root_.Set.up_empty](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/root-set-up-empty--40fd1b90cfd526332bef45e4.md) | 112 | `result-track:40fd1b90cfd526332bef45e4c6f6449c23b5268b60f574a396be5e55eeba4776` |
| 17 | `theorem` | [add_def](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/add-def--c0d7ea2e1e9f772eb784745d.md) | 116 | `result-track:c0d7ea2e1e9f772eb784745d3535d486d5e480b57faf434e17e583d5c05e0457` |
| 18 | `theorem` | [down_add](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-add--b45aeb74faa4a47aef4f05da.md) | 121 | `result-track:b45aeb74faa4a47aef4f05da52f05b767dd53c1b7ee2a94f8ad5c0484894e00a` |
| 19 | `theorem` | [_root_.Set.up_union](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/root-set-up-union--23745ebad921c5087b83a760.md) | 126 | `result-track:23745ebad921c5087b83a76064c71fd327f1ae5f71192a62aa9a36286d4f3081` |
| 20 | `instance` | [covariantClass_add](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/covariantclass-add--3f33dde4ab627e559e72f58d.md) | 132 | `declaration-track:3f33dde4ab627e559e72f58de2c9a9ea517447ba39c872e4fe14151ab97e2dcf` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--9c419043978c29e927316435.md) | 141 | `declaration-track:9c419043978c29e9273164350ae6d5514f4be9ce2f3823b8bbd687fb852fc0a8` |
| 22 | `theorem` | [mul_def](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/mul-def--ba03cc1c3496137efd90bf2e.md) | 150 | `result-track:ba03cc1c3496137efd90bf2e96b4e60c85c11a90b0d88d1a274f5dc911293e13` |
| 23 | `theorem` | [down_mul](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-mul--567a47fa9c41c0e4af3e3b4f.md) | 155 | `result-track:567a47fa9c41c0e4af3e3b4f9016401b8f1946fad125356ae9ccab536e474527` |
| 24 | `theorem` | [_root_.Set.up_mul](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/root-set-up-mul--5fe503c7caef2c5a82eeb9bd.md) | 160 | `result-track:5fe503c7caef2c5a82eeb9bd1ec019ab005d362864be069f6e996206511b8885` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--fd193d85a4c51713682d05f9.md) | 164 | `declaration-track:fd193d85a4c51713682d05f9f60a9919f81bd537c52c1ae5cb18c9be855ff1c7` |
| 26 | `instance` | [covariantClass_mul_left](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/covariantclass-mul-left--319571d454b96de76da83c9f.md) | 170 | `declaration-track:319571d454b96de76da83c9f8c01a785725a8c34b2e1970b6b7bbcbf5dc76790` |
| 27 | `instance` | [covariantClass_mul_right](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/covariantclass-mul-right--858e39ff2d3d158ccb3613b3.md) | 175 | `declaration-track:858e39ff2d3d158ccb3613b37075b1cbf68b739d8747bfb0d084797128f1f5cf` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--c69495075440a763ccd8d0a0.md) | 187 | `declaration-track:c69495075440a763ccd8d0a01429b8b1b9aaea591745648e0d2559709f7d3cef` |
| 29 | `theorem` | [one_def](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/one-def--8c9c0eea54dbee691ea5f1c7.md) | 189 | `result-track:8c9c0eea54dbee691ea5f1c79fc85933e97d14350e73a9853660d1047a098f19` |
| 30 | `theorem` | [down_one](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-one--19268adb048cc5e49b4c45e8.md) | 194 | `result-track:19268adb048cc5e49b4c45e839dc5ea33d1c8b3b2ffc67df318a7bfbf23a016d` |
| 31 | `theorem` | [_root_.Set.up_one](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/root-set-up-one--ff7c46c6042d8bf1b3b8235c.md) | 199 | `result-track:ff7c46c6042d8bf1b3b8235c552d05a698a046fc3806f5fc04c1f4ea554c0495` |
| 32 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--f4b35c89592ec627d1fb9672.md) | 205 | `declaration-track:f4b35c89592ec627d1fb9672eb726bb194c8adf90295919822cebe3dc85c5268` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--915b33f1e227382e0f7ef7d3.md) | 211 | `declaration-track:915b33f1e227382e0f7ef7d37fc17c096e0a0720798d453c680a03d207736737` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--c8f0987f4793d8ca96317159.md) | 214 | `declaration-track:c8f0987f4793d8ca96317159c3ad345ddf790df78340e17f76b1a67adbdc69c6` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--e7f38138e59d8247b0a41cf4.md) | 219 | `declaration-track:e7f38138e59d8247b0a41cf4108d796cd598e61828a2be0c8bd2f04bb0383cfc` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--22347020e9faeb0b3454fd09.md) | 222 | `declaration-track:22347020e9faeb0b3454fd0988935cfe78ec71c8640fdbdc70d41636b9fef2c6` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--fda3aee0d0ef4424aaec5eb9.md) | 226 | `declaration-track:fda3aee0d0ef4424aaec5eb9306a90a5b17c96f33e1edbbdbd68641f317727c5` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/instance--8425534ea1954ad66343e3da.md) | 229 | `declaration-track:8425534ea1954ad66343e3da1774e6add60a460406e86c37d339bc68487318d1` |
| 39 | `def` | [imageHom](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/imagehom--7f0e208ae7ad61d918b50198.md) | 239 | `declaration-track:7f0e208ae7ad61d918b50198a41ad4d9977d45ba3546411ca48dc685b6c8e7ae` |
| 40 | `lemma` | [imageHom_def](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/imagehom-def--d921b4bb046d01648f477815.md) | 250 | `result-track:d921b4bb046d01648f47781580e127db7d4376d5e437d205053ac3641f982f88` |
| 41 | `lemma` | [down_imageHom](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/down-imagehom--889b2a949169c16ae091c7c1.md) | 256 | `result-track:889b2a949169c16ae091c7c10cf2103b497237f01f86eeff5cc6168cc6817d3c` |
| 42 | `lemma` | [_root_.Set.up_image](../../../../mathematics/Algebra/Semiring/Variant8f1647897dd383cd6ea75056d3c19292fd00a71631410f7dced528ea6dd46ea9.lean/declarations/root-set-up-image--cdc3e5fa4b356cb802fdec60.md) | 262 | `result-track:cdc3e5fa4b356cb802fdec6057fac8fb372c87d62483696ecf04c1ff01271ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

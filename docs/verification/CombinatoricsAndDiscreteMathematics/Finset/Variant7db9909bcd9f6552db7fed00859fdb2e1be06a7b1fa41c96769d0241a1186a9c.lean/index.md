# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32f6dd04abdc431a03d2c6bf2ff756f3e6bbad62",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32f6dd04abdc431a03d2c6bf2ff756f3e6bbad62`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Pointwise.Finset` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smulZeroClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smulzeroclass--0af8ce2cc5d9e3ce24e78398.md) | 27 | `declaration-track:0af8ce2cc5d9e3ce24e78398b5fa7fd467d257e654f50c8ac02c12ffc1813f4a` |
| 2 | `def` | [distribSMul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/distribsmul--c345c4ffe2900d4a95425730.md) | 32 | `declaration-track:c345c4ffe2900d4a954257307492e855132f26b6f5c4fab87516bde26b79e339` |
| 3 | `def` | [distribMulAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/distribmulaction--c041dbf91f105548d20caafa.md) | 38 | `declaration-track:c041dbf91f105548d20caafa96662fb1da9cb5542c9da968b72557bea77d444d` |
| 4 | `def` | [mulDistribMulAction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/muldistribmulaction--75a594f4ebf00cf809802add.md) | 43 | `declaration-track:75a594f4ebf00cf809802add92f2a9e6febc764284442f1fe63cb53ad2fc0147` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/instance--9652742437a914286b064447.md) | 50 | `declaration-track:9652742437a914286b06444751be5ca2f881bad60dfcd23888052f3601a68e9a` |
| 6 | `instance` | [noZeroSMulDivisors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/nozerosmuldivisors--07bb3fc6773d33f4831f58f2.md) | 53 | `declaration-track:07bb3fc6773d33f4831f58f2672b12dce8f561b455a8aa359973dd48667ac90a` |
| 7 | `instance` | [noZeroSMulDivisors_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/nozerosmuldivisors-finset--11d16b48ead0c130ed99fe20.md) | 58 | `declaration-track:11d16b48ead0c130ed99fe20dd3c692f21c452df9fb9246aa6204f31acc5c9b7` |
| 8 | `lemma` | [smul_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-zero-subset--725a9c158a48ec8894de0570.md) | 65 | `result-track:725a9c158a48ec8894de0570849be98243ee9768d173c80457d5215cab3fe567` |
| 9 | `lemma` | [Nonempty.smul_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/nonempty-smul-zero--0cb00f78602cedef4def7cff.md) | 67 | `result-track:0cb00f78602cedef4def7cff5608a68b5682c89c82556c7cbbcb6242f87b7c58` |
| 10 | `lemma` | [zero_mem_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-mem-smul-finset--28857b66cf5ae03fb9202fe3.md) | 70 | `result-track:28857b66cf5ae03fb9202fe313a91caaf829a6c19b59a042dd371fbd821041a9` |
| 11 | `lemma` | [zero_mem_smul_finset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-mem-smul-finset-iff--ee0ba03cd62a1c15c554691e.md) | 75 | `result-track:ee0ba03cd62a1c15c554691ea9b82a3d36e63bbc4322ffe733512779572c1ef6` |
| 12 | `lemma` | [zero_smul_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-smul-subset--5c3de31280ed8e918f615bbc.md) | 88 | `result-track:5c3de31280ed8e918f615bbc5c67542e7cbf91eb79b30e27d2e6e6c83ff87130` |
| 13 | `lemma` | [Nonempty.zero_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/nonempty-zero-smul--905e4cd53d73fdc00a3c0877.md) | 90 | `result-track:905e4cd53d73fdc00a3c087717ff401298d2d83aa4129c0c4669d96431eac9fe` |
| 14 | `lemma` | [zero_smul_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-smul-finset--f4ef5bd8b81ae69e4499482c.md) | 94 | `result-track:f4ef5bd8b81ae69e4499482c7821f411ffdfbbc5e0805f34c9ece384fab302b0` |
| 15 | `lemma` | [zero_smul_finset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-smul-finset-subset--1cca2d2e483a1daa00fcf416.md) | 97 | `result-track:1cca2d2e483a1daa00fcf416cde21d57430fb3b487731f1a7684b1a0e99d6117` |
| 16 | `lemma` | [zero_mem_smul_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/zero-mem-smul-iff--dc43d02dcae1e4eb17baf697.md) | 102 | `result-track:dc43d02dcae1e4eb17baf697c1d5fc92af1dcac0ac7cb08af35ad1655099dbd2` |
| 17 | `lemma` | [smul_mem_smul_finset_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-mem-smul-finset-iff--a46cd71d459772fc5ebb1df4.md) | 114 | `result-track:a46cd71d459772fc5ebb1df4cefa62fe6e65d9d86bbb33f90bbc855edf7924ba` |
| 18 | `lemma` | [inv_smul_mem_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/inv-smul-mem-iff--76635dd46e458f0eb9f0b29b.md) | 117 | `result-track:76635dd46e458f0eb9f0b29bbd4850751143fff366c8669f2491e401816e70b9` |
| 19 | `lemma` | [mem_inv_smul_finset_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/mem-inv-smul-finset-iff--91d1686f37c9984fbe7c389c.md) | 120 | `result-track:91d1686f37c9984fbe7c389c6841da2f9610626c2f06d0223914ab0a840ff9fc` |
| 20 | `lemma` | [smul_finset_subset_smul_finset_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-subset-smul-finset-iff--56ed81351039c686e62a8108.md) | 124 | `result-track:56ed81351039c686e62a8108876fe26096b75110fa4937488c14e57b2a35bf97` |
| 21 | `lemma` | [smul_finset_subset_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-subset-iff--8c4be767ec306be6b301479a.md) | 127 | `result-track:8c4be767ec306be6b301479a64f1d731b1d782db08b7dee7ba58f52ea64935db` |
| 22 | `lemma` | [subset_smul_finset_iff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/subset-smul-finset-iff--f50e3b60cb3ff80368d385ab.md) | 130 | `result-track:f50e3b60cb3ff80368d385ab271397bc736d3b9f8ed6e3f120301410d167a76a` |
| 23 | `lemma` | [smul_finset_inter₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-inter--56f218b67b76e4d139dda15d.md) | 133 | `result-track:56f218b67b76e4d139dda15ddce3e314e4a8f8079c673bff4dc05b2727d9afa9` |
| 24 | `lemma` | [smul_finset_sdiff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-sdiff--7586218821dee17853a45cec.md) | 136 | `result-track:7586218821dee17853a45cecaff8c87941ecb0e504d08f308e018d35d58506a2` |
| 25 | `lemma` | [smul_finset_symmDiff₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-symmdiff--cd435d21a57cdca271c5a0b8.md) | 140 | `result-track:cd435d21a57cdca271c5a0b81e3114ce290ff16a644865fef48adc01b6401801` |
| 26 | `lemma` | [smul_finset_univ₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-univ--d8e8d9d01c97fd853d5df57b.md) | 143 | `result-track:d8e8d9d01c97fd853d5df57b6ceadac7d27753239c7a45e6f5ff3d85b29f3851` |
| 27 | `lemma` | [smul_univ₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-univ--b333488eadecbf9aee3a411a.md) | 146 | `result-track:b333488eadecbf9aee3a411a119dbc6bf158ac385e0c9cd0355cdb6ff40cc427` |
| 28 | `lemma` | [smul_univ₀'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-univ--016b1b64e7d8db890907f469.md) | 152 | `result-track:016b1b64e7d8db890907f469de0e959259909a7b4f25c126c984f7c2a812b94e` |
| 29 | `lemma` | [inv_smul_finset_distrib₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/inv-smul-finset-distrib--55fb02672485d440d745fb1d.md) | 161 | `result-track:55fb02672485d440d745fb1decce6b1a99b81ba7e2fdbab87e06ef5f1f27decc` |
| 30 | `lemma` | [inv_op_smul_finset_distrib₀](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/inv-op-smul-finset-distrib--c2250e3381f6458570c01230.md) | 169 | `result-track:c2250e3381f6458570c01230667e6e0a199d8e6fa7daeace0aa72c0c2554b4f0` |
| 31 | `lemma` | [smul_finset_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-finset-neg--2bbe0e9eec0bc4d1c034412d.md) | 183 | `result-track:2bbe0e9eec0bc4d1c034412d88e90317819afc960a9204ca68031aa24202d430` |
| 32 | `lemma` | [smul_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant7db9909bcd9f6552db7fed00859fdb2e1be06a7b1fa41c96769d0241a1186a9c.lean/declarations/smul-neg--81e77d873424cb4e888db665.md) | 187 | `result-track:81e77d873424cb4e888db665c4b65e37ec536f07eb78089698e22155b569f8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

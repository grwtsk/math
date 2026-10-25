# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Regular.Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1989f75b93cb1cd413982e5d06dc82afccbd2bcd",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1989f75b93cb1cd413982e5d06dc82afccbd2bcd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Cofinality` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.FixedPoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular--e9f551b7758dd668f37ae06d.md) | 37 | `declaration-track:e9f551b7758dd668f37ae06d887e166444611b6a88534c437524e211756beba3` |
| 2 | `theorem` | [IsRegular.aleph0_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-aleph0-le--e291be3e6a028cb5323240a5.md) | 40 | `result-track:e291be3e6a028cb5323240a52c54d545e744bb3d7507f5a5b992019c032396e4` |
| 3 | `theorem` | [IsRegular.cof_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-cof-eq--eaab693c0604e0a2b22d2956.md) | 43 | `result-track:eaab693c0604e0a2b22d29567f2274036e948a02c16bfdf546bad1fa0255c659` |
| 4 | `theorem` | [IsRegular.cof_omega_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-cof-omega-eq--4005035c9a96d32db9bea2a8.md) | 46 | `result-track:4005035c9a96d32db9bea2a879e3a4d9574d6b68a922202a3c40470723b6b8fb` |
| 5 | `theorem` | [IsRegular.pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-pos--14d56d4dcc3fc3230e0fe7bf.md) | 49 | `result-track:14d56d4dcc3fc3230e0fe7bfcab3ea765e33bafc44936a6d3806dd1889adc5bd` |
| 6 | `theorem` | [IsRegular.nat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-nat-lt--c58f5aff6a70940f0825a3c8.md) | 52 | `result-track:c58f5aff6a70940f0825a3c810493c69cec314eee28070fa64105278f9d34a6b` |
| 7 | `theorem` | [IsRegular.ord_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-ord-pos--55603c9413d2ca1751dbb6e8.md) | 55 | `result-track:55603c9413d2ca1751dbb6e87a3281dcf5bd7e9207ae60195e227ba33e9240e2` |
| 8 | `theorem` | [isRegular_cof](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-cof--e7e9d79d665b8876856a9fdc.md) | 59 | `result-track:e7e9d79d665b8876856a9fdcf48d58b74e60c9e9ebdbeff42e5228884159b979` |
| 9 | `lemma` | [IsRegular.ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-ne-zero--246c5e0d8b3e9afcffdd0e54.md) | 63 | `result-track:246c5e0d8b3e9afcffdd0e54944417a7e0ad7889a49c8bd53e2877cf5fe1f688` |
| 10 | `theorem` | [isRegular_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-aleph0--bb0637f49e9f459440854baa.md) | 66 | `result-track:bb0637f49e9f459440854baa42441b306ebea2f13f95fd46ce5d321f090a3738` |
| 11 | `lemma` | [fact_isRegular_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/fact-isregular-aleph0--1a8486edf9131474632987a2.md) | 69 | `result-track:1a8486edf9131474632987a21d0b71c7504e1b346a34cbcdfa135beadacbe834` |
| 12 | `theorem` | [isRegular_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-succ--19be4d518c115c3ff5befd47.md) | 72 | `result-track:19be4d518c115c3ff5befd471bc2b03efee4fa4ea5828146ad94bb9037473516` |
| 13 | `theorem` | [isRegular_aleph_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-aleph-one--e2de6fde7e54ef452e080297.md) | 94 | `result-track:e2de6fde7e54ef452e08029752a3743ae7f9c8a7eb844bdb19dc7e0cd114ccba` |
| 14 | `theorem` | [isRegular_preAleph_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-prealeph-succ--3bf31c53e810e11db4cdb0a9.md) | 98 | `result-track:3bf31c53e810e11db4cdb0a984f7398cda49db2dacab66af8517ff69ef44e07d` |
| 15 | `theorem` | [isRegular_aleph_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isregular-aleph-succ--36aae2ff42dfe29e42a0f674.md) | 102 | `result-track:36aae2ff42dfe29e42a0f674d8c59a97e9fa3b2a805b026352e733b9deab2ec8` |
| 16 | `theorem` | [lsub_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/lsub-lt-ord-lift-of-isregular--0645254bb4552b0c04fa1090.md) | 106 | `result-track:0645254bb4552b0c04fa10908af6f4faf372ddd81313576043f99e08f4294301` |
| 17 | `theorem` | [lsub_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/lsub-lt-ord-of-isregular--c7263fcd8857fe34956d0c76.md) | 110 | `result-track:c7263fcd8857fe34956d0c7609e09b148f06365bfe18bd1376175a5e839c5aaf` |
| 18 | `theorem` | [iSup_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isup-lt-ord-lift-of-isregular--3826c3c4ed50a37e4fd31177.md) | 114 | `result-track:3826c3c4ed50a37e4fd31177fe7981e78e4ad2b598c5c9649a5a1832edfecc88` |
| 19 | `theorem` | [iSup_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isup-lt-ord-of-isregular--20f7bac01f6530ee0fca6508.md) | 118 | `result-track:20f7bac01f6530ee0fca6508178921dfa3ea3fc26ddcf19e1bf1c5be79bb6eda` |
| 20 | `theorem` | [blsub_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/blsub-lt-ord-lift-of-isregular--7c4632d3e06894bb59408e10.md) | 122 | `result-track:7c4632d3e06894bb59408e10a4fc29089c0a04afffcf4e7be54c50d18111dd22` |
| 21 | `theorem` | [blsub_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/blsub-lt-ord-of-isregular--037ed4342f5a3e203ba052ca.md) | 127 | `result-track:037ed4342f5a3e203ba052caba661276c2f10ca91c8f0f6a74a5b2a760afb623` |
| 22 | `theorem` | [bsup_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/bsup-lt-ord-lift-of-isregular--07aeb933f35747469b49e96e.md) | 131 | `result-track:07aeb933f35747469b49e96ee4ab9bde9b9a35cf4e15bfb82ba161a0bdf65abb` |
| 23 | `theorem` | [bsup_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/bsup-lt-ord-of-isregular--10b182041035155de75eecf6.md) | 136 | `result-track:10b182041035155de75eecf6697a0b66970e12e3b4e68b4f33d2e3a70c78b859` |
| 24 | `theorem` | [iSup_lt_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isup-lt-lift-of-isregular--e0e9c983e6c3a3c4835840c2.md) | 140 | `result-track:e0e9c983e6c3a3c4835840c23692fc3a5e56ef5f27452c3ccf496a3f3f6b7459` |
| 25 | `theorem` | [iSup_lt_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isup-lt-of-isregular--06d71a26821562846966992e.md) | 144 | `result-track:06d71a26821562846966992e6c0fab91d463496fe5823ba9a77c0234ab1f02fc` |
| 26 | `theorem` | [sum_lt_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/sum-lt-lift-of-isregular--ceb315aa39ff12bde10cc125.md) | 148 | `result-track:ceb315aa39ff12bde10cc125c06e9322061a65d74cde266b30048258046f203d` |
| 27 | `theorem` | [sum_lt_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/sum-lt-of-isregular--a3cbd8f40e0cf0166e5a407b.md) | 152 | `result-track:a3cbd8f40e0cf0166e5a407b3a76e0fc1b92bd5d4cce993f507e4ef3a6286afb` |
| 28 | `theorem` | [card_lt_of_card_iUnion_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/card-lt-of-card-iunion-lt--922a4f127a665b8966122279.md) | 157 | `result-track:922a4f127a665b8966122279a48bac8f01030a5f1a6c89d8dde961ac0cb2c9e1` |
| 29 | `theorem` | [card_iUnion_lt_iff_forall_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/card-iunion-lt-iff-forall-of-isregular--960aa02826009a8e80e4180b.md) | 162 | `result-track:960aa02826009a8e80e4180b061b941987d438226e2762c0b9693089e9b3dfb8` |
| 30 | `theorem` | [card_lt_of_card_biUnion_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/card-lt-of-card-biunion-lt--83203c931c5973ecf15b9197.md) | 171 | `result-track:83203c931c5973ecf15b919776a8c55871c00d98af86d64551c8c10d4f208150` |
| 31 | `theorem` | [card_biUnion_lt_iff_forall_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/card-biunion-lt-iff-forall-of-isregular--98104ddf5afa411538ea55ea.md) | 177 | `result-track:98104ddf5afa411538ea55ea8e762ea42ef117315be3ad3df59645913b571639` |
| 32 | `theorem` | [nfpFamily_lt_ord_lift_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/nfpfamily-lt-ord-lift-of-isregular--f09ea7acdd6d376665d3bc35.md) | 182 | `result-track:f09ea7acdd6d376665d3bc35e9bc53035f67a0624a30dcc8a19dc5bdec2853c4` |
| 33 | `theorem` | [nfpFamily_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/nfpfamily-lt-ord-of-isregular--b8be4e90a7d8351cf7fe285d.md) | 189 | `result-track:b8be4e90a7d8351cf7fe285d13e9753faf9f224acdc347cbb01f968a9428b8a4` |
| 34 | `theorem` | [nfp_lt_ord_of_isRegular](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/nfp-lt-ord-of-isregular--8764093e170f762b3fb20698.md) | 194 | `result-track:8764093e170f762b3fb20698580c209cd99a3dfaa0aef47ceeb81330dff303b1` |
| 35 | `theorem` | [derivFamily_lt_ord_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/derivfamily-lt-ord-lift--5acc6916ab2f5c0dcc2cff41.md) | 198 | `result-track:5acc6916ab2f5c0dcc2cff4197dda69773acfae5f465d1999f843087e5dd5261` |
| 36 | `theorem` | [derivFamily_lt_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/derivfamily-lt-ord--e631f4bbcb4617eb6eb37287.md) | 224 | `result-track:e631f4bbcb4617eb6eb372876c78405aa81737fbc66cab504227d4018378e36a` |
| 37 | `theorem` | [deriv_lt_ord](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/deriv-lt-ord--fbbb51648979950a6df89ac2.md) | 229 | `result-track:fbbb51648979950a6df89ac2b11c6a1c8d766357987ae1cea7bd95d15ec42390` |
| 38 | `def` | [IsInaccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isinaccessible--1cb45b75022c3d8c7ad17a8b.md) | 237 | `declaration-track:1cb45b75022c3d8c7ad17a8b5abb3cb275fabf206c837638d5322399c5cd2db3` |
| 39 | `theorem` | [IsInaccessible.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isinaccessible-mk--715312f3406a67972c552336.md) | 240 | `result-track:715312f3406a67972c55233664a068e73daa804228333c56efecfbdc4e69a4ab` |
| 40 | `theorem` | [univ_inaccessible](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/univ-inaccessible--f217e29a450a212cf119c4de.md) | 245 | `result-track:f217e29a450a212cf119c4de6033b5aaca447e2be1f726249a6594f108c7dd7f` |
| 41 | `lemma` | [iSup_sequence_lt_omega1](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Regular/Variant7dbd822e4866fd81a992a608b296c1a300b313249d028439825c0cb4ab24636b.lean/declarations/isup-sequence-lt-omega1--97d82f5454f6e31894a93b66.md) | 264 | `result-track:97d82f5454f6e31894a93b66899b6b806459f64362cbbce318286e3e67877d07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.StrongRankCondition.Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e612be22f5f7394aa07d0c3f388790d19d4ae00",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e612be22f5f7394aa07d0c3f388790d19d4ae00`.

Source path: `GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.Submodule` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Finrank` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.InvariantBasisNumber` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mk_eq_mk_of_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/mk-eq-mk-of-basis--f08a66e1fe4a9b6c0334dbec.md) | 63 | `result-track:f08a66e1fe4a9b6c0334dbec04f7a88d2f7374e0df6e689043a2395fefcb4bc1` |
| 2 | `def` | [Basis.indexEquiv](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-indexequiv--0c8b2dff58b78000804211d0.md) | 92 | `declaration-track:0c8b2dff58b78000804211d007fa85576c9ea8aa9970aad464e5dd159fd52482` |
| 3 | `theorem` | [mk_eq_mk_of_basis'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/mk-eq-mk-of-basis--3990b160a5091996f0d758d9.md) | 95 | `result-track:3990b160a5091996f0d758d993329afe62c829ae6ebfd34768fb2b3c82d1d2be` |
| 4 | `theorem` | [Basis.le_span''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-le-span--653732cbd919d2975f5c3d2a.md) | 111 | `result-track:653732cbd919d2975f5c3d2a72603b5866118acf7a971c972007f92afde82cfc` |
| 5 | `theorem` | [basis_le_span'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-le-span--6c327e42b63c2b5bdad35adf.md) | 126 | `result-track:6c327e42b63c2b5bdad35adf542d4dbdbdec6af80ad4673ddee91c094c4c4410` |
| 6 | `theorem` | [Basis.le_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-le-span--1cd13c043478c944fa05d680.md) | 140 | `result-track:1cd13c043478c944fa05d6801e245f72f80faabe7ecb0b7ef4049cec5408660e` |
| 7 | `theorem` | [linearIndependent_le_span_aux'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-span-aux--5ec886f3ad396c028e15f361.md) | 176 | `result-track:5ec886f3ad396c028e15f361d2c7db9333966c44423a7b0dba6c635d86a9def1` |
| 8 | `lemma` | [LinearIndependent.finite_of_le_span_finite](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-finite-of-le-span-finite--2523275f0845db0b5617ce79.md) | 197 | `result-track:2523275f0845db0b5617ce79f89c1b1ee4639eec2b51601b6b66346dc963a146` |
| 9 | `theorem` | [linearIndependent_le_span'](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-span--0e2f9f3b1fc79a7ed791a241.md) | 211 | `result-track:0e2f9f3b1fc79a7ed791a241d28dd6bb23957e3199cb80c541ec663a9ef36a48` |
| 10 | `theorem` | [linearIndependent_le_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-span--0f8e4bc9cb3f032823d7db11.md) | 224 | `result-track:0f8e4bc9cb3f032823d7db1171fea7af28c2acf258d21971814c9d485103d663` |
| 11 | `theorem` | [linearIndependent_le_span_finset](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-span-finset--eaafab72305508a8c3290985.md) | 231 | `result-track:eaafab72305508a8c3290985a38fa8e472c3c14fb498658d8cc78e8db50450c8` |
| 12 | `theorem` | [linearIndependent_le_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-infinite-basis--e8901f5fc7d2b65384cec7cf.md) | 238 | `result-track:e8901f5fc7d2b65384cec7cf4d6a0bd5ad011c24b6709964c6795b3d838c2478` |
| 13 | `theorem` | [linearIndependent_le_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-basis--dd0f400bc5a66d7f68a580cd.md) | 259 | `result-track:dd0f400bc5a66d7f68a580cdd10be4670c1eedb328c24ba160f20a3ce2449fd2` |
| 14 | `theorem` | [card_le_of_injective''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/card-le-of-injective--56de78905960e9ce1569563f.md) | 274 | `result-track:56de78905960e9ce1569563f95064f327291e7e4675dcb074d7eaaf527edcd37` |
| 15 | `theorem` | [linearIndependent_le_span''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearindependent-le-span--c311ef2ac933b2a4673f1324.md) | 285 | `result-track:c311ef2ac933b2a4673f13240144859dd8e3ccf9ac141684d2e0052fbd521e66` |
| 16 | `theorem` | [Basis.card_le_card_of_linearIndependent_aux](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-card-le-card-of-linearindependent-aux--ad50bb81a2c9a4bcbe104aef.md) | 298 | `result-track:ad50bb81a2c9a4bcbe104aef22f149bb1bf7af7d48a3eff098c39c146e2867e1` |
| 17 | `theorem` | [maximal_linearIndependent_eq_infinite_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/maximal-linearindependent-eq-infinite-basis--107da4c368b4c0fccb21285e.md) | 310 | `result-track:107da4c368b4c0fccb21285e7452555d5a162ae298166a5c6a88443bbc622e0a` |
| 18 | `theorem` | [Basis.mk_eq_rank''](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-mk-eq-rank--d4bd06bc0d308d769c830064.md) | 317 | `result-track:d4bd06bc0d308d769c83006446243233a92c280d156300e2b6b7ff49a182907c` |
| 19 | `theorem` | [Basis.mk_range_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-mk-range-eq-rank--7837a843fca390d904c0ed33.md) | 334 | `result-track:7837a843fca390d904c0ed33aa494e6150cb21d92d8288d11b80ab365326d571` |
| 20 | `theorem` | [rank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/rank-eq-card-basis--28fd1c595e500ae46fa3366b.md) | 339 | `result-track:28fd1c595e500ae46fa3366b3d129767fc6037f77360b55bf45e9abef12bb6c3` |
| 21 | `theorem` | [Basis.card_le_card_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-card-le-card-of-linearindependent--be492f57c34db94f65557768.md) | 345 | `result-track:be492f57c34db94f65557768b1560b0c0cdb62897886bbdc2bafe0a83a4a88fe` |
| 22 | `theorem` | [Basis.card_le_card_of_submodule](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-card-le-card-of-submodule--4366f1e5d7ea155b15e1bc05.md) | 351 | `result-track:4366f1e5d7ea155b15e1bc05f5dd5ff9af1c1f9d79917df6976495caf1123956` |
| 23 | `theorem` | [Basis.card_le_card_of_le](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-card-le-card-of-le--07acbe67e06cc589a56bc81d.md) | 356 | `result-track:07acbe67e06cc589a56bc81d4e47078da7725cde1ec863387d90165b8f6c6f1e` |
| 24 | `theorem` | [Basis.mk_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-mk-eq-rank--da50815f1f3f0386e1fb0704.md) | 361 | `result-track:da50815f1f3f0386e1fb07043f8573f622b16aff74d47f9c1d9e71bee937b716` |
| 25 | `theorem` | [Basis.mk_eq_rank'.](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/basis-mk-eq-rank--b6bb00022cd02a01199d8d59.md) | 366 | `result-track:b6bb00022cd02a01199d8d598950dc06c20728399e16999e5ae9e9ea893957e4` |
| 26 | `theorem` | [rank_span](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/rank-span--f8944772db0c1a3e5c9fe040.md) | 370 | `result-track:f8944772db0c1a3e5c9fe040dd9ed9e3a89afea716bbe53f0236a485a2cb6d14` |
| 27 | `theorem` | [rank_span_set](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/rank-span-set--447d332b42ced71837564c47.md) | 376 | `result-track:447d332b42ced71837564c4772c86842e538779dd4695ea28ec186286fba62fe` |
| 28 | `theorem` | [toENat_rank_span_set](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/toenat-rank-span-set--272dce89f54006772c7721dc.md) | 380 | `result-track:272dce89f54006772c7721dc3b48736d4f6ede7ce1a5eaf1ea242411f1c999bc` |
| 29 | `def` | [Submodule.inductionOnRank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/submodule-inductiononrank--f14eababd0c11e57a7555bc2.md) | 389 | `declaration-track:f14eababd0c11e57a7555bc27a2629ecf2fff9f5f67c41faa144af520c97e104` |
| 30 | `theorem` | [Ideal.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/ideal-rank-eq--b2feccf9c41f213964e2e788.md) | 400 | `result-track:b2feccf9c41f213964e2e7880b51c7a798dd092a173a188cb363bc18e5ecbc6e` |
| 31 | `theorem` | [finrank_eq_nat_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/finrank-eq-nat-card-basis--96f61d535286a706090a18d1.md) | 418 | `result-track:96f61d535286a706090a18d1fe7056927825be449f3b92e0748a6d8470f37d38` |
| 32 | `theorem` | [finrank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/finrank-eq-card-basis--9b9ee17127b0f9f247bb9804.md) | 424 | `result-track:9b9ee17127b0f9f247bb9804783b2b84ae780658bbf73aa2cdc2b6e4f45ed598` |
| 33 | `theorem` | [mk_finrank_eq_card_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/mk-finrank-eq-card-basis--3e9229dfc5da9bcb2abba29d.md) | 430 | `result-track:3e9229dfc5da9bcb2abba29d846ec64c51e523a6a12e442316d74703b2ca7bc6` |
| 34 | `theorem` | [finrank_eq_card_finset_basis](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/finrank-eq-card-finset-basis--d70c6d9559c57e35b54bb692.md) | 437 | `result-track:d70c6d9559c57e35b54bb692c30598c1b363b85fc5a447ba57b05967b518e82b` |
| 35 | `theorem` | [rank_self](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/rank-self--b621a3c26d90ce903fd1a3aa.md) | 443 | `result-track:b621a3c26d90ce903fd1a3aab4f7e3973c69fe3034c3e602d7f2b92b667bbaf8` |
| 36 | `theorem` | [finrank_self](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/finrank-self--54e5f3f44cf7d9bb020f5318.md) | 449 | `result-track:54e5f3f44cf7d9bb020f53184d09ba9bd7dbb91f76c8c1f79c6d2b365ca851b4` |
| 37 | `def` | [_root_.Basis.unique](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/root-basis-unique--043d2de5d2345ef4c60d4b47.md) | 453 | `declaration-track:043d2de5d2345ef4c60d4b4765de662d2fd615438560b42c1ca87f425b5e111b` |
| 38 | `theorem` | [rank_lt_aleph0](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/rank-lt-aleph0--a1a1c15b49e66b07e49fe6a7.md) | 461 | `result-track:a1a1c15b49e66b07e49fe6a74199db0d08112b3a59b601b3d8d68fa2043a6f45` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/instance--700b82a2adf5491a8d991251.md) | 467 | `declaration-track:700b82a2adf5491a8d991251db6119ca210bb2272bc2199fea7362fd743669a2` |
| 40 | `theorem` | [finrank_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/finrank-eq-rank--a67682401a7c935f29f30174.md) | 477 | `result-track:a67682401a7c935f29f30174a96617b59203fec2a9a2e5f178813b54e5a5ee8b` |
| 41 | `theorem` | [_root_.Submodule.finrank_eq_rank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/root-submodule-finrank-eq-rank--9856f3914cfb1c3f5e2a85c3.md) | 482 | `result-track:9856f3914cfb1c3f5e2a85c3fd04913237623a6f077a02d4d42fa95722c92504` |
| 42 | `theorem` | [LinearMap.finrank_le_finrank_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearmap-finrank-le-finrank-of-injective--7fac4926b3fa4c800240c8c0.md) | 491 | `result-track:7fac4926b3fa4c800240c8c0bd5f6bfb6f4cdde35142e31fd6f130ce4fccde94` |
| 43 | `theorem` | [LinearMap.finrank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearmap-finrank-range-le--b1aef90af4f400fccd6d3ff4.md) | 495 | `result-track:b1aef90af4f400fccd6d3ff406ad242b402257cfad12013cbc50268a2a1ed76a` |
| 44 | `theorem` | [LinearMap.finrank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/linearmap-finrank-le-of-issmulregular--afc8740094ee873fc08f58fd.md) | 499 | `result-track:afc8740094ee873fc08f58fd9693d6abab9f8507cb6bf3a109c55a7cacda9a62` |
| 45 | `lemma` | [Module.finrank_top_le_finrank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/module-finrank-top-le-finrank-of-isscalartower--2bcb82bcbd20dbf0f3e77d1c.md) | 510 | `result-track:2bcb82bcbd20dbf0f3e77d1c0e2454fed04db6c0e958af12bf2c090837a1f6af` |
| 46 | `lemma` | [Module.finrank_bot_le_finrank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/module-finrank-bot-le-finrank-of-isscalartower--ae7e49c92cf5dbf76c08b62e.md) | 521 | `result-track:ae7e49c92cf5dbf76c08b62e48bf3e1e0fc30d317dab8adceb132db857a4d43e` |
| 47 | `theorem` | [exists_finset_span_eq_linearIndepOn](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/exists-finset-span-eq-linearindepon--59e30361a402e48a6eaea6d1.md) | 541 | `result-track:59e30361a402e48a6eaea6d1c24dbd79e42b8705c52c8a133f0f67dd40341c18` |
| 48 | `theorem` | [exists_fun_fin_finrank_span_eq](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/exists-fun-fin-finrank-span-eq--ae5bd1b75f78176152e70ece.md) | 550 | `result-track:ae5bd1b75f78176152e70ecea051529e8e6bbbd3f94ba646f73a77a82d2dafe8` |
| 49 | `theorem` | [mem_span_set_iff_exists_finsupp_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/mem-span-set-iff-exists-finsupp-le-finrank--13e531ae2023ecee1245f5ea.md) | 558 | `result-track:13e531ae2023ecee1245f5ea1d1eb806e3ba074c66a8a015b2ce3910a6ad8f35` |
| 50 | `class` | [IsQuadraticExtension](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/isquadraticextension--5c5a06403470e59a6be43ec4.md) | 578 | `declaration-track:5c5a06403470e59a6be43ec4101d76acf585b00d2118981d83ee44683e858709` |
| 51 | `theorem` | [IsQuadraticExtension.finrank_eq_two](../../../../../mathematics/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/declarations/isquadraticextension-finrank-eq-two--870b8a7e3aaa2b0f3b3b762a.md) | 582 | `result-track:870b8a7e3aaa2b0f3b3b762a9c4c41a64828d63c06629acc0ca905a1c0c0444d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

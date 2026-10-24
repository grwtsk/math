# Verification target: GRWTSK.Algebra.LinearAlgebra.Noetherian.Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8104f0b9179239996850f9821a09badf80961fd",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8104f0b9179239996850f9821a09badf80961fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Idempotents` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian--32e8b283a9fe26bca18e2e0c.md) | 68 | `declaration-track:32e8b283a9fe26bca18e2e0c1ac2fb0db047696ec8b6d9aed09488ff73c007d4` |
| 2 | `theorem` | [isNoetherian_def](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-def--c6763abf823bfb3bae3991dc.md) | 85 | `result-track:c6763abf823bfb3bae3991dcbcd1bb58bc9b9564fe516a2994322bcda4b5b66d` |
| 3 | `theorem` | [isNoetherian_submodule](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-submodule--2d3e97db8a33a9b0561ea2cb.md) | 89 | `result-track:2d3e97db8a33a9b0561ea2cb800c9d49650fd6d38e7178bef7cd839aff3fc4cb` |
| 4 | `theorem` | [isNoetherian_submodule_left](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-submodule-left--053e14f07a36d6b2e340af67.md) | 102 | `result-track:053e14f07a36d6b2e340af67e73b94a0502f45350be1ad7749dfd4a934e72a07` |
| 5 | `theorem` | [isNoetherian_submodule_right](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-submodule-right--7f21cfd69ea3cdb8eee52c9c.md) | 107 | `result-track:7f21cfd69ea3cdb8eee52c9c4c206ba5dc3ff7bfa3210a5e8b33323196c5cbd2` |
| 6 | `instance` | [isNoetherian_submodule'](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-submodule--5cde20889c97486b79e03da1.md) | 112 | `declaration-track:5cde20889c97486b79e03da1d0c4abc0981eb065cb2161936ffcd34c99ea5da1` |
| 7 | `theorem` | [isNoetherian_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-le--cb5592614e6adac93a10db31.md) | 116 | `result-track:cb5592614e6adac93a10db31c50b14bb4730b15d31f4e00bec98ee54e6885b1c` |
| 8 | `theorem` | [isNoetherian_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-surjective--1ed193c601155e934d4fda33.md) | 123 | `result-track:1ed193c601155e934d4fda33fa8fb6fad07ad75f9b23a22ef4ca6b9f23be89c1` |
| 9 | `theorem` | [isNoetherian_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-linearequiv--6da53ef4a59580508ad003f5.md) | 132 | `result-track:6da53ef4a59580508ad003f5abdbaaae9bd566508251783a2fd21544d9cef13e` |
| 10 | `theorem` | [isNoetherian_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-top-iff--d48662a5e345d47183139dca.md) | 136 | `result-track:d48662a5e345d47183139dcac2cee64e93ebd350b85ecd99c7c5455972d47f25` |
| 11 | `theorem` | [isNoetherian_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-injective--26b333643cb276b9d780a593.md) | 142 | `result-track:26b333643cb276b9d780a593609de4c70af1f2280ed7b5707e580361950d02b3` |
| 12 | `theorem` | [fg_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/fg-of-injective--41a371863f6167e3d4bac7e3.md) | 147 | `result-track:41a371863f6167e3d4bac7e35da88dc48326c880faed5991d041aafd25df974d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/instance--f6c9a659914e56c81838d0cc.md) | 164 | `declaration-track:f6c9a659914e56c81838d0cc545384f9ee9d9406eed47da47eec22244f7d3f18` |
| 14 | `theorem` | [Finite.of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/finite-of-injective--6bd27da699ce780b5a40c64e.md) | 170 | `result-track:6bd27da699ce780b5a40c64e99397a54a9c8b86a4240ab5ffc7a9600b167075e` |
| 15 | `theorem` | [isNoetherian_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-ker-bot--952fd6b8ab46d5d71f327b94.md) | 187 | `result-track:952fd6b8ab46d5d71f327b941df03cb3374e19439940bee5f9e0dbf78c786d19` |
| 16 | `theorem` | [fg_of_ker_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/fg-of-ker-bot--43de85dadff14f0cde50506f.md) | 192 | `result-track:43de85dadff14f0cde50506f4a51b6d6892a382e4ab7ef389ec139e88955e596` |
| 17 | `instance` | [isNoetherian_prod](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-prod--28f66ce572662e90bc3e4607.md) | 198 | `declaration-track:28f66ce572662e90bc3e46073bf8fc92fb60096b34f9b51b38619885edd9ec9e` |
| 18 | `instance` | [isNoetherian_pi](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-pi--0f443ce8a6d687ca49105cce.md) | 206 | `declaration-track:0f443ce8a6d687ca49105ccef9f56802baf3e9cec0153fd3f6f635591f969118` |
| 19 | `instance` | [isNoetherian_pi'](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-pi--015b50e2748d0276410c5d85.md) | 282 | `declaration-track:015b50e2748d0276410c5d85d7c7dd93ac65d2e8585872af42db01e6248e6313` |
| 20 | `theorem` | [isNoetherian_iff_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-iff-wellfounded--b14ac7348fb14ffba9223687.md) | 298 | `result-track:b14ac7348fb14ffba9223687e03e33346206c7c1889ed9781e85e397a668b43f` |
| 21 | `theorem` | [isNoetherian_iff_fg_wellFounded](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-iff-fg-wellfounded--037a3f3360e5f9788a9014ee.md) | 308 | `result-track:037a3f3360e5f9788a9014eea4ff2e1a62ed46b5293f4271933c51d098be99e2` |
| 22 | `theorem` | [wellFounded_submodule_gt](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/wellfounded-submodule-gt--287ab663047966ab43452447.md) | 335 | `result-track:287ab663047966ab4345244726be866f33a4de660dff19621457f35e4d74a4c6` |
| 23 | `theorem` | [set_has_maximal_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/set-has-maximal-iff-noetherian--fa94d845a77919fb3f74e016.md) | 344 | `result-track:fa94d845a77919fb3f74e01602ea39569c584d4925a6440e16158d74a0803f27` |
| 24 | `theorem` | [monotone_stabilizes_iff_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/monotone-stabilizes-iff-noetherian--350362d58903af74ba337f9e.md) | 350 | `result-track:350362d58903af74ba337f9e9f313f249439b1e8d44577049f48b4c98ab6b6df` |
| 25 | `theorem` | [IsNoetherian.induction](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-induction--ad1545b9e67a21d655fd5abc.md) | 356 | `result-track:ad1545b9e67a21d655fd5abc4d3c4a9dc515ccaf17452c00d4f21882ab77b8fe` |
| 26 | `theorem` | [finite_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/finite-of-linearindependent--aa6b0858634a7d38a534f56d.md) | 370 | `result-track:aa6b0858634a7d38a534f56d2e1910128373f19e4d007142f242825dea7bcf5a` |
| 27 | `theorem` | [isNoetherian_of_range_eq_ker](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-range-eq-ker--6112ff9a90e72a0f6a0f9e3a.md) | 395 | `result-track:6112ff9a90e72a0f6a0f9e3abf0c08d39d784ee4d46b18ec223856fccb8e20ca` |
| 28 | `theorem` | [IsNoetherian.exists_endomorphism_iterate_ker_inf_range_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-exists-endomorphism-iterate-ker-inf-range-eq-bot--35ef0ee1442743740a814b8e.md) | 409 | `result-track:35ef0ee1442743740a814b8ea6d588a3990905e79f99b02c1c57bd1477542fc0` |
| 29 | `theorem` | [IsNoetherian.injective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-injective-of-surjective-endomorphism--b68fda86c48bc057a7de15d9.md) | 429 | `result-track:b68fda86c48bc057a7de15d97456ae184c29fddfd999fd7a9864d98a8d27307b` |
| 30 | `theorem` | [IsNoetherian.bijective_of_surjective_endomorphism](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-bijective-of-surjective-endomorphism--0e55135400d1a28443118470.md) | 438 | `result-track:0e55135400d1a2844311847042e305bf2c12451d9bdae053246eac8a935975e3` |
| 31 | `theorem` | [IsNoetherian.disjoint_partialSups_eventually_bot](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-disjoint-partialsups-eventually-bot--8d180836e4a9a539274ae8a7.md) | 447 | `result-track:8d180836e4a9a539274ae8a7a1a5cd726702139bfdabbcea1d73c2cb564aaf4b` |
| 32 | `def` | [IsNoetherian.equivPUnitOfProdInjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-equivpunitofprodinjective--57ed76efe87b0afb5a0e0a38.md) | 466 | `declaration-track:57ed76efe87b0afb5a0e0a384318a11def5011258385977016794042f0eaa375` |
| 33 | `def` | [IsNoetherianRing](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring--666ddc5330fadc0eb2d4f3dc.md) | 485 | `declaration-track:666ddc5330fadc0eb2d4f3dc1e56eefb3908c21a637bfbf72046e066d450b5a5` |
| 34 | `theorem` | [isNoetherianRing_iff](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-iff--d7d31a0096dd9357538db14f.md) | 489 | `result-track:d7d31a0096dd9357538db14f5834fccc835583e3af58a75deff6a198f34efeb4` |
| 35 | `theorem` | [isNoetherianRing_iff_ideal_fg](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-iff-ideal-fg--568f5859352419a1ddbf3c8e.md) | 494 | `result-track:568f5859352419a1ddbf3c8e4779cbbb4cb5945a9edfe3b1d18d20c2f0034dca` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/instance--7e0d4314f90d0bcc5f7fff72.md) | 500 | `declaration-track:7e0d4314f90d0bcc5f7fff72a344cb3205da447d6a4f1056a353dec4766e8ba9` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/instance--3de3f558acd1e34da036d918.md) | 507 | `declaration-track:3de3f558acd1e34da036d918d3344db4f6817692a62a309f74efd9e3d74a331e` |
| 38 | `theorem` | [isNoetherian_of_submodule_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-submodule-of-noetherian--323bac82a619f159c985a787.md) | 513 | `result-track:323bac82a619f159c985a78781d57dc68461fb2188b08bd6dadc66215566fa7d` |
| 39 | `instance` | [Submodule.Quotient.isNoetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/submodule-quotient-isnoetherian--96a97b3048160b0f02cb00f7.md) | 519 | `declaration-track:96a97b3048160b0f02cb00f79f5431e661a354843f2fd3fe9f720d8084644d93` |
| 40 | `theorem` | [isNoetherian_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-tower--82d0e2f732e1391c89ba83f3.md) | 527 | `result-track:82d0e2f732e1391c89ba83f38a6bd15993848ea2a4470b321a4e20d0a1d4ca7f` |
| 41 | `theorem` | [isNoetherian_of_fg_of_noetherian](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-fg-of-noetherian--8217936af5b9ab9b079c62b1.md) | 533 | `result-track:8217936af5b9ab9b079c62b1cbc96289f4d27270824427a8490d405647549372` |
| 42 | `theorem` | [isNoetherian_of_isNoetherianRing_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-of-isnoetherianring-of-finite--2de4eef0f3b385d1c1884bd3.md) | 570 | `result-track:2de4eef0f3b385d1c1884bd36a6df369280e0c611c589af47bff99f636e4c248` |
| 43 | `theorem` | [isNoetherian_span_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherian-span-of-finite--5b454a1aa160ec5d841af789.md) | 580 | `result-track:5b454a1aa160ec5d841af789d6048ab513d75c842996662ea57499f52b028157` |
| 44 | `theorem` | [isNoetherianRing_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-of-surjective--20f19aba8a7b30fa4bb9cf88.md) | 585 | `result-track:20f19aba8a7b30fa4bb9cf889d3c1b1a35539a5827ff09a8d6b2e6f4ef61837e` |
| 45 | `instance` | [isNoetherianRing_range](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-range--50bd97564090f0c7f7671e27.md) | 591 | `declaration-track:50bd97564090f0c7f7671e271e8975c6f5d20a120895e040bbfb563a2a4abeeb` |
| 46 | `theorem` | [isNoetherianRing_of_ringEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-of-ringequiv--600f2131776f0156b26cebd6.md) | 596 | `result-track:600f2131776f0156b26cebd62dd0a2365dd4b8d9e6a54763b464c8b7e6e8fb73` |
| 47 | `theorem` | [IsNoetherianRing.isNilpotent_nilradical](../../../../../mathematics/Algebra/LinearAlgebra/Noetherian/Variant0f383d4a1ba75442542f49b7fb6b9870ebac6f329f668b1ddfa4eef40ece391d.lean/declarations/isnoetherianring-isnilpotent-nilradical--33f56701bdf597f91eb3df77.md) | 601 | `result-track:33f56701bdf597f91eb3df77e699e7fd4cc5ad9caf95bec0578f647832784663` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

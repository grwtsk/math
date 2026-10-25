# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Archimedean.Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd1dfc6934599b13c1edfd27be3ecb0ee67b2833",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd1dfc6934599b13c1edfd27be3ecb0ee67b2833`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.LeastGreatest` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Power` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean--7604759958991b27c3844997.md) | 47 | `declaration-track:7604759958991b27c3844997680c5d66eea8ea933d86ebd191fc60fb01f9b95e` |
| 2 | `instance` | [OrderDual.archimedean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/orderdual-archimedean--461caeb8e0803bf7f040f312.md) | 53 | `declaration-track:461caeb8e0803bf7f040f3129d28892883c502b911baa2135798f91d3c7b4a72` |
| 3 | `theorem` | [exists_lt_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-lt-nsmul--8401b4c72eda11d517653684.md) | 59 | `result-track:8401b4c72eda11d517653684592fea611f8a93aeeabb1f8ce84320509d98f833` |
| 4 | `theorem` | [existsUnique_zsmul_near_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-zsmul-near-of-pos--f6e79d79821289f959187b20.md) | 70 | `result-track:f6e79d79821289f959187b20eb915e8b2029fd02c88a19a9fc5fd2e23217ecd7` |
| 5 | `theorem` | [existsUnique_zsmul_near_of_pos'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-zsmul-near-of-pos--e88c5c04159a8e27974619b5.md) | 90 | `result-track:e88c5c04159a8e27974619b537cbbd2ed845077015113722b25ffe7614a24024` |
| 6 | `theorem` | [existsUnique_sub_zsmul_mem_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-sub-zsmul-mem-ico--aa412d64e0f49ad2857204b3.md) | 96 | `result-track:aa412d64e0f49ad2857204b3fb89226d9bd8d0689b73d9de230f7ea925e28a9d` |
| 7 | `theorem` | [existsUnique_add_zsmul_mem_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-add-zsmul-mem-ico--b370541d248cdd9218d3b77d.md) | 102 | `result-track:b370541d248cdd9218d3b77da978e1ad8c5620276fde3de12fb58935c7e5159e` |
| 8 | `theorem` | [existsUnique_add_zsmul_mem_Ioc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-add-zsmul-mem-ioc--75ccaaac5c6fcd53333c5469.md) | 109 | `result-track:75ccaaac5c6fcd53333c5469acb36c63380814151c603ec0a618859ba2757c8d` |
| 9 | `theorem` | [existsUnique_sub_zsmul_mem_Ioc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/existsunique-sub-zsmul-mem-ioc--90dad3424a7523ad0e34ddac.md) | 117 | `result-track:90dad3424a7523ad0e34ddacf2e0b7f76559a1c17ea8d6978ee03628b7f6e8df` |
| 10 | `theorem` | [exists_nat_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-nat-gt--4e31ac1de5e22e02ef5556a8.md) | 126 | `result-track:4e31ac1de5e22e02ef5556a80e74579e0bb89ef0101749b6fe0dfd3907fe3efc` |
| 11 | `theorem` | [exists_nat_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-nat-ge--819edb25f7fb1591c62bbcea.md) | 130 | `result-track:819edb25f7fb1591c62bbcead8fc93ad2ebefd14121428a19b991b1af6083414` |
| 12 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/add-one-pow-unbounded-of-pos--532471d61263225b18de5d1f.md) | 135 | `result-track:532471d61263225b18de5d1f15ac6b263ba031b98042d3b2354aceae082a85db` |
| 13 | `theorem` | [pow_unbounded_of_one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/pow-unbounded-of-one-lt--49b61cb7611dabc2794e756a.md) | 153 | `result-track:49b61cb7611dabc2794e756ada3ff2a2a7da645708fb2e83ec6852c63123f89d` |
| 14 | `theorem` | [exists_int_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-int-gt--d4458472b85d334e457a903d.md) | 157 | `result-track:d4458472b85d334e457a903d79ee5e295a104e4de8963179654bd72bda2b0e4f` |
| 15 | `theorem` | [exists_int_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-int-lt--5e085deaf55c05dd3573fbcf.md) | 162 | `result-track:5e085deaf55c05dd3573fbcfa16ec28ae40f0483f4f1379130169aecfe7c3b47` |
| 16 | `theorem` | [exists_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-floor--5a87c7c89bb2dac753338a27.md) | 167 | `result-track:5a87c7c89bb2dac753338a272cc901631473c5cf578332a4025b62ccd38ee7ea` |
| 17 | `theorem` | [exists_nat_pow_near](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-nat-pow-near--61f5bf7915e33e1b203d5d7a.md) | 188 | `result-track:61f5bf7915e33e1b203d5d7af5ac5dbd0bae11196ccd2efc4649e10f0a5a9c1c` |
| 18 | `theorem` | [exists_mem_Ico_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-mem-ico-zpow--7a08fc46a748f6b64730adb3.md) | 210 | `result-track:7a08fc46a748f6b64730adb3757a8f552b41631d0617b2d4b6945c228dd1a8b2` |
| 19 | `theorem` | [exists_mem_Ioc_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-mem-ioc-zpow--26b699e42dcd9b031475f0f6.md) | 232 | `result-track:26b699e42dcd9b031475f0f6f383ec42fa306c4f4d274414dc6958a60294fb2a` |
| 20 | `theorem` | [exists_pow_lt_of_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-pow-lt-of-lt-one--487d737786b23aab759758de.md) | 240 | `result-track:487d737786b23aab759758ded5a131213138efca89f2104b691b3aeb31e5991c` |
| 21 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-nat-pow-near-of-lt-one--cca71e18a8b08b5f8029afc0.md) | 252 | `result-track:cca71e18a8b08b5f8029afc01aeb29f4671a88b9bb251e5b608723b3dcb39da1` |
| 22 | `theorem` | [exists_rat_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-rat-gt--3078cfe440249a27d69e8675.md) | 261 | `result-track:3078cfe440249a27d69e8675f4826126608115b940ead889a5b3e63e40e9ab81` |
| 23 | `theorem` | [exists_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-rat-lt--fb1ffb915cbd6f1abfed33e2.md) | 266 | `result-track:fb1ffb915cbd6f1abfed33e2568a59f16e8c9ca682669813ba0e9fc84f820b21` |
| 24 | `theorem` | [exists_rat_btwn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-rat-btwn--c2e7d5a3ae4c6f7342c09150.md) | 271 | `result-track:c2e7d5a3ae4c6f7342c091503eb9cfa172ea966df4178d1c0b22042231ad20ec` |
| 25 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/le-of-forall-rat-lt-imp-le--e578afe38595c075e2806789.md) | 292 | `result-track:e578afe38595c075e280678977d100b3b9e50d60fb71d6d12d778ac44ebe3c04` |
| 26 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/le-of-forall-lt-rat-imp-le--84218672734b6509faa5decb.md) | 298 | `result-track:84218672734b6509faa5decb2f8e32a50a5dac53e9d5cddc89d339ceecacada7` |
| 27 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/le-iff-forall-rat-lt-imp-le--dee7f46f2174629ad86f1a94.md) | 304 | `result-track:dee7f46f2174629ad86f1a94431353aa650dc00f9ea6091f39ad06b76aeea215` |
| 28 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/le-iff-forall-lt-rat-imp-le--5be3afe6ac73c55a701bf4a3.md) | 307 | `result-track:5be3afe6ac73c55a701bf4a3388a05159a38c4c67f7270a1bffbffbacd9ac9c0` |
| 29 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/eq-of-forall-rat-lt-iff-lt--e5acad3e19c6dba81a9520be.md) | 310 | `result-track:e5acad3e19c6dba81a9520be05cf3706c69a6243a624bd0f8013dd8cb664f869` |
| 30 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/eq-of-forall-lt-rat-iff-lt--7ec955af0b51ed92ccf5e383.md) | 315 | `result-track:7ec955af0b51ed92ccf5e383a23c14e60cd3d10d68094c02f67a2f29c48ca944` |
| 31 | `theorem` | [exists_nat_one_div_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-nat-one-div-lt--b97906f0d9e988caa3796949.md) | 320 | `result-track:b97906f0d9e988caa3796949cd4b82d0a23235588273d35759339fdcdaed77de` |
| 32 | `theorem` | [exists_pos_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-pos-rat-lt--10a35a10b7cff548a110e9e2.md) | 329 | `result-track:10a35a10b7cff548a110e9e2b64eef5551d7f14b5ce11f1a7ff4e87185508873` |
| 33 | `theorem` | [exists_rat_near](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/exists-rat-near--56130b75dcd9082f38cac095.md) | 333 | `result-track:56130b75dcd9082f38cac095299029eecadc5948eaee71f6ebea6057375b1b31` |
| 34 | `theorem` | [archimedean_iff_nat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-nat-lt--04923925eeb7f7ec3fb798e4.md) | 345 | `result-track:04923925eeb7f7ec3fb798e48a60dbfafb7fc5b039d092d8dac7928e4f031435` |
| 35 | `theorem` | [archimedean_iff_nat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-nat-le--31cb71867677e3f29e5885b1.md) | 351 | `result-track:31cb71867677e3f29e5885b152442c13f5a8063d34f882405b9b51d2fa97a3ff` |
| 36 | `theorem` | [archimedean_iff_int_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-int-lt--e5660b7a0c0d2b7a3dadfc75.md) | 358 | `result-track:e5660b7a0c0d2b7a3dadfc7517ae9ce195652ae8eab8b231f0cca83f187a9d68` |
| 37 | `theorem` | [archimedean_iff_int_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-int-le--20456c1d92cca795ee35d19f.md) | 367 | `result-track:20456c1d92cca795ee35d19f261b49d1e46508720680da4106d60cd4c4bde912` |
| 38 | `theorem` | [archimedean_iff_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-rat-lt--1b9585c5074e41f7ae64d438.md) | 374 | `result-track:1b9585c5074e41f7ae64d438169ed743373478ef9fdbbab331ff0b58c48a1a24` |
| 39 | `theorem` | [archimedean_iff_rat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-iff-rat-le--4b3a2257385f17e0af66c654.md) | 383 | `result-track:4b3a2257385f17e0af66c654f74e54305aea72178ab925d7965829887c20ebf4` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/instance--b28fd03a4191a64f4762c622.md) | 392 | `declaration-track:b28fd03a4191a64f4762c6226dcfd82f66439de1b5efdd376a88ded68a360174` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/instance--12fc67afcfa3bc6988eb048d.md) | 397 | `declaration-track:12fc67afcfa3bc6988eb048d7ba8af259e99080fe3d8e561c8c570f2c3f4d786` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/instance--cf6844c1ecfe5f3662ec3a69.md) | 404 | `declaration-track:cf6844c1ecfe5f3662ec3a6990c910688e61513eaf5c0c507a6135ec3f5ec23a` |
| 43 | `def` | [Archimedean.floorRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/archimedean-floorring--c2fa75682f4dbd0f75e17737.md) | 409 | `declaration-track:c2fa75682f4dbd0f75e177370da5495e8ba4a6903fad83bb51e8477045cb1a85` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variant8fa8eaefdecac182cb08263579db3009dbe2428222834e65b9ee467e74c2790d.lean/declarations/instance--dddba94525980250e2e8c010.md) | 416 | `declaration-track:dddba94525980250e2e8c010490b37e794694587296a1c87275829c8164142ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

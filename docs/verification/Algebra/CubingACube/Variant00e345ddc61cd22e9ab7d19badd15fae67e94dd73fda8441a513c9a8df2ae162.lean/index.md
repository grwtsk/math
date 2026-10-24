# Verification target: GRWTSK.Algebra.CubingACube.Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfceb266043fe08b1c284f313ffd529fdd6a6fc3",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/index.md) · [Full source](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfceb266043fe08b1c284f313ffd529fdd6a6fc3`.

Source path: `GRWTSK/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_lemma](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/ico-lemma--c52dc4bdbadf0d7d25f08889.md) | 35 | `result-track:c52dc4bdbadf0d7d25f08889b630a02ff48a7419c40d6ff8b0d0c6822438a544` |
| 2 | `structure` | [Cube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/cube--cac93d54bd2f791e19a71681.md) | 47 | `declaration-track:cac93d54bd2f791e19a71681b25b2204c59c599b726747966e64a7a8f8f9c5a7` |
| 3 | `theorem` | [hw'](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/hw--7ea6065bb611d2c108344cd1.md) | 54 | `result-track:7ea6065bb611d2c108344cd170145ef121abd31286ee153ca24a35861708bac7` |
| 4 | `def` | [side](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/side--cdee5855c03fccdc95de080a.md) | 58 | `declaration-track:cdee5855c03fccdc95de080aec9ccb39300cda44c942b560c3aceaf7f2131d51` |
| 5 | `theorem` | [b_mem_side](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-mem-side--5b50367b7a63b7639ccb2096.md) | 62 | `result-track:5b50367b7a63b7639ccb20962d472070ecc600d31c91ad9d11414ea24f75c03c` |
| 6 | `def` | [toSet](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/toset--c0b12cc55a23fe9f7c045b48.md) | 64 | `declaration-track:c0b12cc55a23fe9f7c045b48086b310238af0e71d5d8a9057ff3c340e84d4dad` |
| 7 | `theorem` | [side_nonempty](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/side-nonempty--af7e7cf4e5f8f3feb9fb31a2.md) | 67 | `result-track:af7e7cf4e5f8f3feb9fb31a2182cb9226ec13f19d5ad61fddf43b2b42e03381a` |
| 8 | `theorem` | [univ_pi_side](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/univ-pi-side--9e803bf1bb055dd6d1f18d6e.md) | 69 | `result-track:9e803bf1bb055dd6d1f18d6e49cada6b94f60880696cc64de2396a4598a9173e` |
| 9 | `theorem` | [toSet_subset](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/toset-subset--454b67fd57637d68503f776c.md) | 72 | `result-track:454b67fd57637d68503f776c9b5996de5619b5a1503f7a6595bcb31826229e29` |
| 10 | `theorem` | [toSet_disjoint](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/toset-disjoint--0852900c7deae46029762749.md) | 76 | `result-track:0852900c7deae4602976274956c40e75c1f73b4c7f10115e9f57731101455fcf` |
| 11 | `theorem` | [b_mem_toSet](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-mem-toset--b1b20100d5c702ae43206828.md) | 80 | `result-track:b1b20100d5c702ae43206828c438100a7f332e64e078cf650efc9c62e1ac3c16` |
| 12 | `def` | [tail](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/tail--c61fe1bb4554df68e822bea0.md) | 82 | `declaration-track:c61fe1bb4554df68e822bea0ea4ed39e75585f653c6389b3f3512dc6d92c21dc` |
| 13 | `theorem` | [side_tail](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/side-tail--be00f76973c46c694fc1c16c.md) | 85 | `result-track:be00f76973c46c694fc1c16ce80ed6b0629e6c408cb1614ce5bba1f99e09c858` |
| 14 | `def` | [bottom](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/bottom--d1ef5a18a1ebb21974003439.md) | 88 | `declaration-track:d1ef5a18a1ebb219740034391b1c80d02da35c48c6b6d717e5868a42df9f2af9` |
| 15 | `theorem` | [b_mem_bottom](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-mem-bottom--c5148e00025896573e035ea4.md) | 91 | `result-track:c5148e00025896573e035ea4d1de705e7d6e47c948cf6090a662729ff328db7a` |
| 16 | `def` | [xm](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/xm--2cf8839bdb19f869fdad03fb.md) | 94 | `declaration-track:2cf8839bdb19f869fdad03fb5d195ef6dfaa1303eeccbd54e19f361914ea1297` |
| 17 | `theorem` | [b_lt_xm](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-lt-xm--d7d1803f38f4bc75e473baeb.md) | 97 | `result-track:d7d1803f38f4bc75e473baeb8df04e3df0b25c28cd9dcfbfdea1e18346283879` |
| 18 | `theorem` | [b_ne_xm](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-ne-xm--75b334344272e4786e2d3765.md) | 99 | `result-track:75b334344272e4786e2d3765877cd777bb8db3efb448664815f29410ecba4872` |
| 19 | `def` | [shiftUp](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/shiftup--eb5aca14e8c9982b9cad582e.md) | 102 | `declaration-track:eb5aca14e8c9982b9cad582e038406fb0183425a344cce2eff12f06f65c09be9` |
| 20 | `theorem` | [tail_shiftUp](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/tail-shiftup--e269579d07521c3746ecb1ba.md) | 106 | `result-track:e269579d07521c3746ecb1badab154a1e3b5809bbdc81766664c8f0a08b35b8d` |
| 21 | `theorem` | [head_shiftUp](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/head-shiftup--c847d407a7101b96a227a22d.md) | 109 | `result-track:c847d407a7101b96a227a22d862f2833578c2a0782b9f264844f7592ff9eca2a` |
| 22 | `def` | [unitCube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/unitcube--5ae9db35ed11333c84b29683.md) | 112 | `declaration-track:5ae9db35ed11333c84b29683eafa2ae60f80d17adc983dbdd33042dc51f7f267` |
| 23 | `theorem` | [side_unitCube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/side-unitcube--c0dd6f94c3e04f7e9baa9eab.md) | 116 | `result-track:c0dd6f94c3e04f7e9baa9eabdf5c0e028aa69aae694d6da4244db1d3d867c285` |
| 24 | `structure` | [Correct](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/correct--4ee456a64e2b16ce317ef496.md) | 126 | `declaration-track:4ee456a64e2b16ce317ef496988538faf90fe89456c96f29b5c1d4c9de50dbf8` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/toset-subset-unitcube--122daa2149577a124339f43d.md) | 137 | `result-track:122daa2149577a124339f43d2b89e9d5bc9c4c93059de928fb4480cbcd8cfa49` |
| 26 | `theorem` | [side_subset](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/side-subset--b9a907a91307f1ba21bec212.md) | 140 | `result-track:b9a907a91307f1ba21bec212fcf4a2ad5e6d91be7aa8e4aeee547f7856e642fb` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/zero-le-of-mem-side--591e42b6f908adc39dda7abe.md) | 143 | `result-track:591e42b6f908adc39dda7abed9b42438e4760834aba2a1b875168759dbf58eb4` |
| 28 | `theorem` | [zero_le_of_mem](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/zero-le-of-mem--7e9a2755de77c9d2e2e46522.md) | 146 | `result-track:7e9a2755de77c9d2e2e46522704875d3fd391d23e2c533ca551161c203b1073c` |
| 29 | `theorem` | [zero_le_b](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/zero-le-b--b73059ce1f83cadf38a9eb72.md) | 149 | `result-track:b73059ce1f83cadf38a9eb722af424d3f96a8bac84869393df2f8462b0600737` |
| 30 | `theorem` | [b_add_w_le_one](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-add-w-le-one--f7f7f5b0cd7a0fb50f7c1ad4.md) | 152 | `result-track:f7f7f5b0cd7a0fb50f7c1ad4227a5990472d18cf1269666d1843c59a3566224c` |
| 31 | `theorem` | [nontrivial_fin](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/nontrivial-fin--4a43d6304fce92fae52b5114.md) | 158 | `result-track:4a43d6304fce92fae52b511447a1475c2ed1977afc6197a42043f8c908c28282` |
| 32 | `theorem` | [w_ne_one](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/w-ne-one--85c3be5c2b7c9120d289748a.md) | 162 | `result-track:85c3be5c2b7c9120d289748a16c1dea9c99e290ba6b9c5956dea5fa77845d71b` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/shiftup-bottom-subset-bottoms--d34acca37d1904a974717877.md) | 180 | `result-track:d34acca37d1904a9747178779d9fde42078036ba6ebd531920b269931db7ae37` |
| 34 | `def` | [Valley](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/valley--122c9b83f3350c591c9c5028.md) | 212 | `declaration-track:122c9b83f3350c591c9c50280e58d7ccc9012eee2f3d86221519c4c55a7d6868` |
| 35 | `theorem` | [valley_unitCube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/valley-unitcube--ce4b179e388054b22d5130ef.md) | 221 | `result-track:ce4b179e388054b22d5130ef6cdbf3b87b168c73a8fa6704b126b95c997373fd` |
| 36 | `def` | [bcubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/bcubes--05af8d0601335acb9474a474.md) | 242 | `declaration-track:05af8d0601335acb9474a474956346eb80c1f50897ad95b851b72809faf7ac3c` |
| 37 | `def` | [OnBoundary](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/onboundary--782c2a27e67860ed6735a0ac.md) | 246 | `declaration-track:782c2a27e67860ed6735a0ac2f3e0750a1e2c1929b67eb11b01a6c0fc85ec96e` |
| 38 | `theorem` | [tail_sub](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/tail-sub--e5c21fa9b1c870da5b2cab45.md) | 249 | `result-track:e5c21fa9b1c870da5b2cab458868c8aeb8da432c1053296856c427e5e22b66fb` |
| 39 | `theorem` | [bottom_mem_side](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/bottom-mem-side--b0a6bd79dfc93c7c4612917c.md) | 252 | `result-track:b0a6bd79dfc93c7c4612917ccb37624ef4bd2a7de679bb4934079a768c7a5816` |
| 40 | `theorem` | [b_le_b](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/b-le-b--d818c56cfdb6a1d1c43bd59b.md) | 255 | `result-track:d818c56cfdb6a1d1c43bd59bea7edfc7753bbb77ecf7d791c2ece3dae4429627` |
| 41 | `theorem` | [t_le_t](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/t-le-t--9a27c6cd7e80ae25cc7d2347.md) | 258 | `result-track:9a27c6cd7e80ae25cc7d23470240062440c7dca8b8646f913f3bbe9a22b126e5` |
| 42 | `theorem` | [w_lt_w](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/w-lt-w--a5d1da5f55acff5439b6e85a.md) | 268 | `result-track:a5d1da5f55acff5439b6e85a008ae2b9dbe06249b8cd7ef46fc8d830bc0cfdf8` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/nontrivial-bcubes--6aca366ee717ead6a8d0a738.md) | 275 | `result-track:6aca366ee717ead6a8d0a73890916a1af390642e10e0b6114c6da59cc0c8b28f` |
| 44 | `theorem` | [nonempty_bcubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/nonempty-bcubes--085260e5ddf19eb395a4c86f.md) | 300 | `result-track:085260e5ddf19eb395a4c86fea31767ae290806a889f13cdc8b4e737a4c171f9` |
| 45 | `theorem` | [exists_mi](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/exists-mi--c8e6b7d5c36712c6507f9cc9.md) | 306 | `result-track:c8e6b7d5c36712c6507f9cc952b02d91e4918f9f331fea4304cbbe3f633bbc9c` |
| 46 | `def` | [mi](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi--2a14db68b858f4a78f0ec98d.md) | 310 | `declaration-track:2a14db68b858f4a78f0ec98d963b115b20db9318ea5e5439639272a3b0c83c5f` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-mem-bcubes--ec905f214620f08913564d65.md) | 315 | `result-track:ec905f214620f08913564d6525c045c32cfeff816eac4768e1fa025e5cb24229` |
| 48 | `theorem` | [mi_minimal](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-minimal--fed1a755aeee5b352a96a213.md) | 318 | `result-track:fed1a755aeee5b352a96a213eafa78f233ad0573a9638f1a89087f23d8a1d705` |
| 49 | `theorem` | [mi_strict_minimal](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-strict-minimal--1a22f97ad33b57c6724a60c2.md) | 321 | `result-track:1a22f97ad33b57c6724a60c2b910df3021fdbd02dbd260f547c2ad5b793ab9ba` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-xm-ne-one--5b049ea68f29aa1276dda014.md) | 326 | `result-track:5b049ea68f29aa1276dda014bcfb60273bf36843aee88260a2b31e2319c6dc98` |
| 51 | `theorem` | [smallest_onBoundary](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/smallest-onboundary--8b495312ae2011b7f5f1ecb2.md) | 339 | `result-track:8b495312ae2011b7f5f1ecb2242ead78a4444baf4c6a6755b054b35be1cc0425` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-not-onboundary--c59c607c6330f84ab1a24f1c.md) | 377 | `result-track:c59c607c6330f84ab1a24f1c78ae0ffa65b5b0c79337dda69945ab6b814918e3` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/mi-not-onboundary--1148a7bafa403a5ff39b4347.md) | 434 | `result-track:1148a7bafa403a5ff39b43477d2f82715b1150f1653b2c5b1b573a2877245cfa` |
| 54 | `theorem` | [valley_mi](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/valley-mi--ea06c8ec6292a1987a936612.md) | 447 | `result-track:ea06c8ec6292a1987a936612dc255ddf698d9798632bdb7145829d148605aeaa` |
| 55 | `def` | [sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/sequenceofcubes--fa735825d4ba07ba8452785e.md) | 504 | `declaration-track:fa735825d4ba07ba8452785ed3055750ec610c46f6ceab9c72b3f93c65b3941c` |
| 56 | `def` | [decreasingSequence](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/decreasingsequence--10c77f8849398bfc4cc675f9.md) | 512 | `declaration-track:10c77f8849398bfc4cc675f95c08a76bce070b4d128cb16f0d6f16edc6b31122` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/strictanti-sequenceofcubes--c98726386c5fd6c7c994d462.md) | 520 | `result-track:c98726386c5fd6c7c994d462787d7d07b255f3c7c826845dd5b641098208807d` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/injective-sequenceofcubes--02ab701c73dfe3c6b6476e3a.md) | 525 | `result-track:02ab701c73dfe3c6b6476e3a77c1e8625f8eb11e8575fb96b714d6bb19313eff` |
| 59 | `theorem` | [not_correct](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/not-correct--63391bae2aa8eeda54e3d18f.md) | 530 | `result-track:63391bae2aa8eeda54e3d18f81c2069169976020b62d99f8d9c3b3cb72eb934c` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../mathematics/Algebra/CubingACube/Variant00e345ddc61cd22e9ab7d19badd15fae67e94dd73fda8441a513c9a8df2ae162.lean/declarations/cannot-cube-a-cube--b9deac3cd26290e38658623f.md) | 534 | `result-track:b9deac3cd26290e38658623fdf57d2954a1e75e5ff2330c35db7fed6774c5593` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.EGauge.Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177952f4fcc3a90b1074413d7f3d324a64e92b40",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177952f4fcc3a90b1074413d7f3d324a64e92b40`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Seminorm` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Pointwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [egauge](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge--660c21a068fc07ecde268467.md) | 51 | `declaration-track:660c21a068fc07ecde268467dd7aec695c27227af847d3169e9987b09998b163` |
| 2 | `lemma` | [Set.MapsTo.egauge_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/set-mapsto-egauge-le--7b2d1c348f1eff5103a928aa.md) | 56 | `result-track:7b2d1c348f1eff5103a928aab308d77b96fe2a08f7978ab1f255dfe23898da2c` |
| 3 | `lemma` | [egauge_anti](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-anti--0ec7cbb0c7350e25c454378c.md) | 61 | `result-track:0ec7cbb0c7350e25c454378c8b3ed0c316e1daa69583b28cd18483905597d32d` |
| 4 | `lemma` | [egauge_empty](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-empty--94b0299b02e33b39a001eb73.md) | 64 | `result-track:94b0299b02e33b39a001eb732d08cc790ab0447ed7725c9367b6613d105834a7` |
| 5 | `lemma` | [egauge_le_of_mem_smul](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-le-of-mem-smul--e61a8402309a83be2479f30b.md) | 68 | `result-track:e61a8402309a83be2479f30b78563fd45cb28e056875625df43520a4432f4221` |
| 6 | `lemma` | [le_egauge_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-iff--ea03f96970d784c8e99d7334.md) | 70 | `result-track:ea03f96970d784c8e99d7334f35d751e79ec8cf8e395b15f8a46c61c51b7507e` |
| 7 | `lemma` | [egauge_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-eq-top--799d2079a24cadc556052c3b.md) | 72 | `result-track:799d2079a24cadc556052c3bfc23f10883979d6493b1ad6855e930491bfdae0c` |
| 8 | `lemma` | [egauge_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-lt-iff--6fefa0c5db1cbf6966bc37be.md) | 74 | `result-track:6fefa0c5db1cbf6966bc37bedff9a93064324038374a770916f7b595811ac75c` |
| 9 | `lemma` | [egauge_union](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-union--f79af23c0e27b2c0a67a564d.md) | 77 | `result-track:f79af23c0e27b2c0a67a564d391773b907c966bb69f64fc54bf148d46ce70148` |
| 10 | `lemma` | [le_egauge_inter](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-inter--cd801c5839d9ec5bbac11181.md) | 81 | `result-track:cd801c5839d9ec5bbac11181c64e09ed45d309b90184848f6d2f089b9fff92e7` |
| 11 | `lemma` | [le_egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-pi--a964cf7c106d585b91259067.md) | 85 | `result-track:a964cf7c106d585b91259067f245682ade16d368dfa50fcb2e3397b3d276433b` |
| 12 | `lemma` | [le_egauge_prod](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-prod--24c108b42b8ecf176c076bae.md) | 92 | `result-track:24c108b42b8ecf176c076bae8d05287b0b17c42fc7baa20e694afc595fb6261f` |
| 13 | `lemma` | [egauge_zero_left_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-zero-left-eq-top--555f23b6bf6020cf7abf6a1c.md) | 103 | `result-track:555f23b6bf6020cf7abf6a1c67984848ab3fff4b8cd2a5b2d3fc5747d510d854` |
| 14 | `lemma` | [egauge_le_of_smul_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-le-of-smul-mem-of-ne--a3959f6848cc82feaf706651.md) | 118 | `result-track:a3959f6848cc82feaf70665158dc11863ef133353a16c9f77ce1d38b4ce42a2a` |
| 15 | `lemma` | [egauge_le_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-le-of-smul-mem--3e52df697db4762f5373e83f.md) | 125 | `result-track:3e52df697db4762f5373e83f009a12d5600afc9e049d23432ba21807d6934bdb` |
| 16 | `lemma` | [mem_smul_of_egauge_lt](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/mem-smul-of-egauge-lt--cdcd7468549a28f860863bda.md) | 130 | `result-track:cdcd7468549a28f860863bda42c619277d98411284734629295e717ceb45c8d8` |
| 17 | `lemma` | [mem_of_egauge_lt_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/mem-of-egauge-lt-one--8bcc83595ea1a0909d2ac873.md) | 134 | `result-track:8bcc83595ea1a0909d2ac873d982f39e08e10a7c80ec776684e88797ce96cc2f` |
| 18 | `lemma` | [egauge_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-eq-zero-iff--3539b7b1271ab0b3c6f576ec.md) | 137 | `result-track:3539b7b1271ab0b3c6f576ec2613cf9168e01fbe1a6ae56194578f0b9e127c5a` |
| 19 | `lemma` | [egauge_univ](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-univ--3baf5d9de4cb61a943fba04e.md) | 143 | `result-track:3baf5d9de4cb61a943fba04ef80c29c26179fecea30914e3b21410f43d96673a` |
| 20 | `lemma` | [egauge_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-zero-right--ee0a91006d32799d91c808b7.md) | 151 | `result-track:ee0a91006d32799d91c808b7218ed7c2a2fe7ded2c4535703f353d7809f3366e` |
| 21 | `lemma` | [egauge_zero_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-zero-zero--1acc17cbd0cf24cf8bb307c0.md) | 155 | `result-track:1acc17cbd0cf24cf8bb307c04a0d35832cdb689fed47ad4c5d8c5e5ef7b3e58b` |
| 22 | `lemma` | [egauge_le_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-le-one--5440f21d92bfc8375bf9661c.md) | 157 | `result-track:5440f21d92bfc8375bf9661c4edcadda4e4c0eb4a5c5e8e4dc9417ab36725f62` |
| 23 | `lemma` | [le_egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-smul-left--32427db5167384170b6fb7ff.md) | 163 | `result-track:32427db5167384170b6fb7ffd88295682efb946019ffcf3a6a026de6fe8322e9` |
| 24 | `lemma` | [egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-smul-left--923344347ef5e2c45f372064.md) | 171 | `result-track:923344347ef5e2c45f3720641cdf4f7919e1ee9c5cada1f8f4b9b75900326355` |
| 25 | `lemma` | [le_egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-smul-right--6a21e394b4749097be4e9c26.md) | 181 | `result-track:6a21e394b4749097be4e9c2637d74f4f84ca69a0166b13ee78d5338fd51be0ac` |
| 26 | `lemma` | [egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-smul-right--dc9863848ea20441f69c679c.md) | 192 | `result-track:dc9863848ea20441f69c679c0f4ce6a1708df661dec243217115c44d1b9690b7` |
| 27 | `theorem` | [egauge_prod_mk](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-prod-mk--8c7ec93aba6f675a4f7c9ef4.md) | 206 | `result-track:8c7ec93aba6f675a4f7c9ef4da53d4a9291aa233cd71443d3258e1e1e74abb32` |
| 28 | `theorem` | [egauge_add_add_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-add-add-le--bdff903919bde42f85860001.md) | 216 | `result-track:bdff903919bde42f85860001ae65dc8f41fe2927ff9a74c59b4233ddbc271214` |
| 29 | `theorem` | [egauge_pi'](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-pi--6d73bccfb79339b9fdd13c30.md) | 239 | `result-track:6d73bccfb79339b9fdd13c3088c0cfea681735e721d9620b5135b61d37637bd1` |
| 30 | `theorem` | [egauge_univ_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-univ-pi--cb243ce49f676578e9979870.md) | 279 | `result-track:cb243ce49f676578e99798709c0b55bc4dec4ee61ed8d4acc3f1608ca1a37108` |
| 31 | `theorem` | [egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-pi--e9529296b65449aa0fd6bb20.md) | 293 | `result-track:e9529296b65449aa0fd6bb207bc8e9b6e7cfd9436de4a215c6498654b5d15db6` |
| 32 | `lemma` | [div_le_egauge_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/div-le-egauge-closedball--a7199883c7a75941ec2ea41d.md) | 304 | `result-track:a7199883c7a75941ec2ea41d32c789c88fb639750a1c7b132cf08df4e79f3f15` |
| 33 | `lemma` | [le_egauge_closedBall_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-closedball-one--4e25ee772b1321c193c95d7d.md) | 313 | `result-track:4e25ee772b1321c193c95d7d0bed90559df2946e17d367e8d0e444ba6846783a` |
| 34 | `lemma` | [div_le_egauge_ball](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/div-le-egauge-ball--16a57dded0085710fece6e7e.md) | 316 | `result-track:16a57dded0085710fece6e7eccc05f3195e4e98563227d059bc18aa9e00e8332` |
| 35 | `lemma` | [le_egauge_ball_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/le-egauge-ball-one--564555895ecfbd3111ddf89c.md) | 319 | `result-track:564555895ecfbd3111ddf89c763fe0869ace5ec26a7d8c48fea416982a95cd4d` |
| 36 | `lemma` | [egauge_ball_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-ball-le-of-one-lt-norm--22386103dbf671f5a24d0ce1.md) | 325 | `result-track:22386103dbf671f5a24d0ce171e4323a6bf93b6d8fbff6dbcc323b5bd5a98582` |
| 37 | `lemma` | [egauge_ball_one_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/declarations/egauge-ball-one-le-of-one-lt-norm--63467a61bf581a3d9576107c.md) | 345 | `result-track:63467a61bf581a3d9576107caf7beb02e05d9056df21d82110ac7f2e4d82bd9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.LinearAlgebra.SurfaceTransport.Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "701f8920c676a3e4c1085cca1531e9a38e0bc7f3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `701f8920c676a3e4c1085cca1531e9a38e0bc7f3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Angle.Unoriented.CrossProduct` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Normalize` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Space](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/space--46d5670f7d8230b5e8583a65.md) | 21 | `declaration-track:46d5670f7d8230b5e8583a65e96aa51a39aa4f33ee675433e492eb54a788b507` |
| 2 | `abbrev` | [Deformation](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/deformation--08e3e5b619df486353fbe216.md) | 24 | `declaration-track:08e3e5b619df486353fbe2164bf6e5a3a382b5a02dd59d734d40d0718f3ae6af` |
| 3 | `def` | [act](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act--273cab5080e237fe1fa37ff7.md) | 27 | `declaration-track:273cab5080e237fe1fa37ff7d4712605323f86685a8eb8cbdd2aaa180e478585` |
| 4 | `def` | [cross](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cross--b482d4218ee6b999d8be734b.md) | 31 | `declaration-track:b482d4218ee6b999d8be734b8fb9fd8d6686d7f302760645c36e9c58a3eef05d` |
| 5 | `def` | [cofactor](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cofactor--c56208c348179ee84a3964ee.md) | 35 | `declaration-track:c56208c348179ee84a3964eee28c51b83e8fbfac924c19b09defc83e918c60ac` |
| 6 | `def` | [tangentArea](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/tangentarea--505c81d087ab1b286ed21803.md) | 38 | `declaration-track:505c81d087ab1b286ed218030526364b866a58af0419c9f98f1df49815e16df5` |
| 7 | `def` | [localAreaStretch](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/localareastretch--9420bffb2501ce7c308fa667.md) | 41 | `declaration-track:9420bffb2501ce7c308fa66700b3d24a81e38acd88bee992a5d79454baf24365` |
| 8 | `theorem` | [tangentArea_eq_norm_mul_sin](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/tangentarea-eq-norm-mul-sin--f072d46e4f212f289ec510bf.md) | 45 | `result-track:f072d46e4f212f289ec510bfbd14351e137b4121a14515fc61a8ee9b9c476256` |
| 9 | `theorem` | [tangentArea_eq_one_of_unit_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/tangentarea-eq-one-of-unit-orthogonal--c7ae5fc723e03e73250dce87.md) | 50 | `result-track:c7ae5fc723e03e73250dce87ea39433d21085a41ff8d016d027808fa2535e07b` |
| 10 | `theorem` | [cross_act](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cross-act--433acdab030d8671733adb50.md) | 58 | `result-track:433acdab030d8671733adb50c007da2edd454dad063476a128bf15a383111c9a` |
| 11 | `theorem` | [cofactor_eq_inverse_transpose_of_det_one](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cofactor-eq-inverse-transpose-of-det-one--75254064ae53a8a9dec33fde.md) | 67 | `result-track:75254064ae53a8a9dec33fde1e22a37c6a167ae94db787eb00e9b63c26394faf` |
| 12 | `theorem` | [localAreaStretch_eq_inverse_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/localareastretch-eq-inverse-transpose--5dded5d4a0ca6906e80c004f.md) | 72 | `result-track:5dded5d4a0ca6906e80c004f9fe0af30807c210bd622cbaa6e1dde979e0f82b7` |
| 13 | `theorem` | [act_smul](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act-smul--3d64aae0ac8db46b05f82b9c.md) | 82 | `result-track:3d64aae0ac8db46b05f82b9cfd4c78676d30067ca20424eeefbeccb4c39c0392` |
| 14 | `theorem` | [localAreaStretch_eq_normalized_inverse_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/localareastretch-eq-normalized-inverse-transpose--7e61b6d711397d03db31f28f.md) | 87 | `result-track:7e61b6d711397d03db31f28fa21a5a242754985cef0a399d6dfbcaed902a4f2b` |
| 15 | `theorem` | [tangentArea_act_eq_normalized_inverse_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/tangentarea-act-eq-normalized-inverse-transpose--9de19343a051217da14d2020.md) | 98 | `result-track:9de19343a051217da14d2020bba39056187deaac014c5c59dd38f24a24fbd248` |
| 16 | `theorem` | [act_one](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act-one--5a2e6f62c26d363dc2055b0f.md) | 110 | `result-track:5a2e6f62c26d363dc2055b0f95a1b8065c2897c0e1bf984f75cc750b14eb66b6` |
| 17 | `theorem` | [act_zero](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act-zero--e324537fbd369e81ec281c94.md) | 114 | `result-track:e324537fbd369e81ec281c94628f13ccbedc3f9acfe76af95ccd998d1db6e216` |
| 18 | `theorem` | [act_mul](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act-mul--3c1326448ba87b9212631e74.md) | 118 | `result-track:3c1326448ba87b9212631e74deffe7aeb6a8ad425a06dff2a67f23d99571e76a` |
| 19 | `theorem` | [act_cofactor_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/act-cofactor-ne-zero--89c1c40794871a8cd33740fd.md) | 123 | `result-track:89c1c40794871a8cd33740fd3e9a720698152c13d44ae27529137693d75b4462` |
| 20 | `theorem` | [cross_act_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cross-act-ne-zero--98e04902447b88588df8719c.md) | 136 | `result-track:98e04902447b88588df8719c5602267cd29116d18c04e4660f9821d25ff3ae83` |
| 21 | `theorem` | [localAreaStretch_pos](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/localareastretch-pos--f45512c65362d4ea14931867.md) | 142 | `result-track:f45512c65362d4ea14931867a8f6a60efa6654aa73b4aec9f0006e3aed2971ff` |
| 22 | `def` | [transportedNormal](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/transportednormal--06d49c7604ef90878cd0681f.md) | 148 | `declaration-track:06d49c7604ef90878cd0681fc70bf9b499db8449af181cb438eb42ce07a8cdec` |
| 23 | `theorem` | [transportedNormal_norm](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/transportednormal-norm--c076db3c304063e6c158140e.md) | 152 | `result-track:c076db3c304063e6c158140e8eade0fbec2fb7236ca50b3a4d034ca2be665f60` |
| 24 | `theorem` | [transportedNormal_eq_inverse_transpose](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/transportednormal-eq-inverse-transpose--019f92639ba529c1af5c7c04.md) | 157 | `result-track:019f92639ba529c1af5c7c047c7663dec1a6ba50f4cd3ddecd7568d44db2f3df` |
| 25 | `def` | [axis](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/axis--e599e40122706727f77b9d3f.md) | 164 | `declaration-track:e599e40122706727f77b9d3f0d35aa8db49689c00883f4b59f1c866bb43e609d` |
| 26 | `theorem` | [axis_norm](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/axis-norm--f91ed077f0e399622f3c838e.md) | 167 | `result-track:f91ed077f0e399622f3c838eb203cde00926aeba8fa643053be408f8d3959747` |
| 27 | `theorem` | [cross_axis_two_zero](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cross-axis-two-zero--c8a1167aa9196191fc495d5b.md) | 171 | `result-track:c8a1167aa9196191fc495d5b43e1e2c5892c0790e35d9d8752a17ee94ba16ce1` |
| 28 | `theorem` | [axis_two_zero_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/axis-two-zero-orthogonal--f34939f74f99775ab85bb97e.md) | 179 | `result-track:f34939f74f99775ab85bb97e8c70ddc51ac264f3344310fc63c15ee9156f4154` |
| 29 | `def` | [diagonalStretch](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/diagonalstretch--7d566711d4bca3d7ded7eb35.md) | 183 | `declaration-track:7d566711d4bca3d7ded7eb35bf71f4b53c272c9b0f06e94667342f89c65f7b24` |
| 30 | `theorem` | [diagonalStretch_det](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/diagonalstretch-det--0edca1fbecc2c411364b0d93.md) | 187 | `result-track:0edca1fbecc2c411364b0d93e6a77de52f3936fd36fd6eb08c30d41e07b4be2c` |
| 31 | `theorem` | [diagonalStretch_act_axis_two](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/diagonalstretch-act-axis-two--52031fb80256c678bd008cd3.md) | 191 | `result-track:52031fb80256c678bd008cd34319411cdbb7eb818d9ff061cb435c9cabae5483` |
| 32 | `theorem` | [diagonalStretch_act_axis_zero](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/diagonalstretch-act-axis-zero--6b5387f7ca293a6d9309bc5d.md) | 198 | `result-track:6b5387f7ca293a6d9309bc5d74d97f98a6302b802102c4b390ec3421b7810cea` |
| 33 | `theorem` | [cross_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/cross-smul-right--a78cfd25a67e7ebb011e46fb.md) | 206 | `result-track:a78cfd25a67e7ebb011e46fb43dccac60878af63fd6640f6a14bfa2410cb9bdf` |
| 34 | `theorem` | [diagonalStretch_localAreaStretch](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/diagonalstretch-localareastretch--f5d46784de8b43cbc25a1859.md) | 210 | `result-track:f5d46784de8b43cbc25a1859032f7fcf52d89957fbda5a345bd145551b55e821` |
| 35 | `theorem` | [identity_localAreaStretch](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/identity-localareastretch--363a77df820fb2a53e94b5e1.md) | 218 | `result-track:363a77df820fb2a53e94b5e187ba68b948a80b74943f3e03f88698eb7dadbfc5` |
| 36 | `def` | [determinantAreaObstruction](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/determinantareaobstruction--803dbd03f212a79c0821951b.md) | 222 | `declaration-track:803dbd03f212a79c0821951b5ed3c39508ea93b691f446083884c180b71109f6` |
| 37 | `theorem` | [localAreaStretch_not_determined_by_determinant](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/localareastretch-not-determined-by-determinant--d95c1a96374bf50239ab3135.md) | 233 | `result-track:d95c1a96374bf50239ab313597ea65b7561929de09f794431ad8266081fd4342` |
| 38 | `theorem` | [no_determinant_area_decoder](../../../../../mathematics/Algebra/LinearAlgebra/SurfaceTransport/Variant7d8971703c709132d249db657d804c9c9c0e75b50d4be8d4795cf4b2b5a48c8f.lean/declarations/no-determinant-area-decoder--a1212714289d3f80cc1a3440.md) | 239 | `result-track:a1212714289d3f80cc1a3440cf48534370ce2b20cbf2bb352344eaf8e8d9cf8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

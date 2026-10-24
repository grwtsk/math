# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67dd52eb843d47b38007a135f73dc570641932d6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67dd52eb843d47b38007a135f73dc570641932d6`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Oriented.RightAngle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Circumcenter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq--81480479ac7dc6670eaf0a9b.md) | 30 | `result-track:81480479ac7dc6670eaf0a9b12b585a40cf858d4e9b48db43437e61d4d7cb876` |
| 2 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq-real--4ff1e57fdf2209fc7697c14b.md) | 50 | `result-track:4ff1e57fdf2209fc7697c14b1d474667bbefef907e566dced6000b053831cc87` |
| 3 | `theorem` | [two_zsmul_oangle_sub_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/two-zsmul-oangle-sub-eq-two-zsmul-oangle-sub-of-norm-eq--49cb6243811dc8dd73707f71.md) | 58 | `result-track:49cb6243811dc8dd73707f71c59f3be78070cadc87313a9ae7afc80077dd1854` |
| 4 | `theorem` | [oangle_center_eq_two_zsmul_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/oangle-center-eq-two-zsmul-oangle--0f54e62b3d499cc54ce8538f.md) | 77 | `result-track:0f54e62b3d499cc54ce8538f2b51c4a41d943cabe07de1aa7d3a10a7af9c9210` |
| 5 | `theorem` | [two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/two-zsmul-oangle-eq--84c15440545dac049638a76b.md) | 87 | `result-track:84c15440545dac049638a76bdf9b48c5eb119e443f7b588f9ee5e0008cbc6d60` |
| 6 | `theorem` | [Cospherical.two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/cospherical-two-zsmul-oangle-eq--096aa4a73d8b3961b5379d30.md) | 101 | `result-track:096aa4a73d8b3961b5379d30d5de54943d44a9c90eedc315e8fd3a9a06908443` |
| 7 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-left--14900a5051a1f8c631fa6ff2.md) | 112 | `result-track:14900a5051a1f8c631fa6ff2f8d76a82b20580a178296435af780af12511efa1` |
| 8 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-right--24a0ffa311776bd4b9f64449.md) | 119 | `result-track:24a0ffa311776bd4b9f64449ce0cc10c5f63db1d776c4ea29a97ed20f346e17d` |
| 9 | `theorem` | [two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/two-zsmul-oangle-center-add-two-zsmul-oangle-eq-pi--9644b4d4a9c52fb08106a82d.md) | 126 | `result-track:9644b4d4a9c52fb08106a82dfa593f977ef516c90b317056bf3a36cf3a2ec9fd` |
| 10 | `theorem` | [abs_oangle_center_left_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/abs-oangle-center-left-toreal-lt-pi-div-two--ffbca47d7965b1aa9a35e1a2.md) | 133 | `result-track:ffbca47d7965b1aa9a35e1a242cb2ff26af39c0aa73267263cf3e303818ddabe` |
| 11 | `theorem` | [abs_oangle_center_right_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/abs-oangle-center-right-toreal-lt-pi-div-two--0e5ee22735617f8e28157218.md) | 139 | `result-track:0e5ee22735617f8e28157218c197805b1df9d0aa149f29c62d60c5f52db39d47` |
| 12 | `theorem` | [tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--5afb0fd497a4ac48bec95ccb.md) | 148 | `result-track:5afb0fd497a4ac48bec95ccb74a04f8eac18ccb6418846ac66f0cfa88138fcd3` |
| 13 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--21be6263d8e3d603cf01ff1b.md) | 163 | `result-track:21be6263d8e3d603cf01ff1bc6b7d10ae3047c404ba7f392c3380e348f1b534c` |
| 14 | `theorem` | [dist_div_cos_oangle_center_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-cos-oangle-center-div-two-eq-radius--f717d357985c8ec41f592a56.md) | 176 | `result-track:f717d357985c8ec41f592a56a6d0b58674256c7c5e9f4fa6272dbd093e76ad84` |
| 15 | `theorem` | [dist_div_cos_oangle_center_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-cos-oangle-center-eq-two-mul-radius--932bdf5fb4520a0a0e26d829.md) | 201 | `result-track:932bdf5fb4520a0a0e26d829bf5e79aaded08dc7dcdf4a826700dceadc6cc962` |
| 16 | `theorem` | [dist_div_sin_oangle_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-sin-oangle-div-two-eq-radius--565b6906970a96e573e58e92.md) | 209 | `result-track:565b6906970a96e573e58e920e6231fa792159d8d3b42eaf417d846346c8551d` |
| 17 | `theorem` | [dist_div_sin_oangle_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-sin-oangle-eq-two-mul-radius--4070b9cb842e65252f428f4c.md) | 221 | `result-track:4070b9cb842e65252f428f4c5e2455334acf13cbf189946559734bcb44285a2d` |
| 18 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-circumcenter--d7752c99cd59dca94a0cd31d.md) | 245 | `result-track:d7752c99cd59dca94a0cd31d0234795ba047d4ba7d638787e409c13a65d8e6cd` |
| 19 | `theorem` | [dist_div_sin_oangle_div_two_eq_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-sin-oangle-div-two-eq-circumradius--ab781062ecdb18b3344846fb.md) | 257 | `result-track:ab781062ecdb18b3344846fb9747fcb03360e3a9ca4d127c9ac314af591a1e92` |
| 20 | `theorem` | [dist_div_sin_oangle_eq_two_mul_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/dist-div-sin-oangle-eq-two-mul-circumradius--65f8c5917df1b42bb6248a25.md) | 267 | `result-track:65f8c5917df1b42bb6248a258127237fb67447231a7e38673c3ea3069376b8bf` |
| 21 | `theorem` | [circumsphere_eq_of_dist_of_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/circumsphere-eq-of-dist-of-oangle--1227b0554c828bcfddda150a.md) | 276 | `result-track:1227b0554c828bcfddda150a954d342e29c8611e83a16ff59dce269f138c3e63` |
| 22 | `theorem` | [circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/circumsphere-eq-circumsphere-of-eq-of-eq-of-two-zsmul-oangle-eq--f7900ff4ffafddf7c715ba83.md) | 288 | `result-track:f7900ff4ffafddf7c715ba83bb888c3fd1820b4b944336b9237233c87f3c8090` |
| 23 | `theorem` | [mem_circumsphere_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/mem-circumsphere-of-two-zsmul-oangle-eq--3f4ac6197244bd638702acc6.md) | 302 | `result-track:3f4ac6197244bd638702acc64fc8378767b723ea59c45cf04387387c1312245e` |
| 24 | `theorem` | [cospherical_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/cospherical-of-two-zsmul-oangle-eq-of-not-collinear--3830cda498af6bbce1c84d02.md) | 338 | `result-track:3830cda498af6bbce1c84d02ad63bf0b3cb3435bbda8a630cbb0684e57d9127e` |
| 25 | `theorem` | [concyclic_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/concyclic-of-two-zsmul-oangle-eq-of-not-collinear--3ec2eee5e79ba465d1c72877.md) | 356 | `result-track:3ec2eee5e79ba465d1c72877a5b4206b4204c69a9315aaf177bb08dbc59386b5` |
| 26 | `theorem` | [cospherical_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/cospherical-or-collinear-of-two-zsmul-oangle-eq--21602d4b1a4b2caccec569f3.md) | 363 | `result-track:21602d4b1a4b2caccec569f355c373c09f70860282518bc0074e187d2731e18a` |
| 27 | `theorem` | [concyclic_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variantf89049341d7536928e909fbce7ce466fe59afb225b1a8c4317f3471ce3283d3c.lean/declarations/concyclic-or-collinear-of-two-zsmul-oangle-eq--6112097ead8ca660359b2e80.md) | 387 | `result-track:6112097ead8ca660359b2e80dfa5aee6e86fea45e7876e45e3f2b49a6a42407e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

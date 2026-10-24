# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dafb3b8aaf0c97e2bc06dcf1f3be2ce44ed9af01`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean.json)

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
| 1 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq--85b0880a3ab92f4fb5143ef2.md) | 33 | `result-track:85b0880a3ab92f4fb5143ef2d5b65a4afb06d8e926e75a07b8f3fea93d28d807` |
| 2 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq-real--177a7e4d04810f4c00f0c313.md) | 54 | `result-track:177a7e4d04810f4c00f0c31381f3019af7669b020e395843f3844e3dec6f5a5b` |
| 3 | `theorem` | [two_zsmul_oangle_sub_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/two-zsmul-oangle-sub-eq-two-zsmul-oangle-sub-of-norm-eq--9c0f61a79753cd861b3eec01.md) | 63 | `result-track:9c0f61a79753cd861b3eec01359102ecf8162a621338eeea3689be6639358b50` |
| 4 | `theorem` | [oangle_center_eq_two_zsmul_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/oangle-center-eq-two-zsmul-oangle--0f9e617385e04bef28a199a9.md) | 83 | `result-track:0f9e617385e04bef28a199a9ce4c98766a0182d00454730f3d54f17864f370e7` |
| 5 | `theorem` | [two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/two-zsmul-oangle-eq--78ab03a7180a462fdb772005.md) | 94 | `result-track:78ab03a7180a462fdb77200516839b450622dc035baf91ebae70f7ae6da9372c` |
| 6 | `theorem` | [Cospherical.two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/cospherical-two-zsmul-oangle-eq--a604b20c3e2a4654cc829cc0.md) | 109 | `result-track:a604b20c3e2a4654cc829cc0a98210f6a42f3b344b41b6679e86fac87ceb5408` |
| 7 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-left--e41d01c28492a5712970a440.md) | 121 | `result-track:e41d01c28492a5712970a440ed7716cc0304c0cca4f31bcb39ff79ecb7ceb0ff` |
| 8 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-right--74c14bf0af27e97dc556020e.md) | 129 | `result-track:74c14bf0af27e97dc556020ec35a8662d871da0e270c7e68ebb114db89ab5c4a` |
| 9 | `theorem` | [two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/two-zsmul-oangle-center-add-two-zsmul-oangle-eq-pi--cd50ffbbcfcd07c50b7717e4.md) | 137 | `result-track:cd50ffbbcfcd07c50b7717e49e4ec10f40c6586b2ef58f3b352a4188714af151` |
| 10 | `theorem` | [abs_oangle_center_left_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/abs-oangle-center-left-toreal-lt-pi-div-two--012e99da3e185e7b3ff292dc.md) | 145 | `result-track:012e99da3e185e7b3ff292dc6e2c7680c647da5727b060950d28aee6ab4ba6e1` |
| 11 | `theorem` | [abs_oangle_center_right_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/abs-oangle-center-right-toreal-lt-pi-div-two--73ec20ba3d7c73d69968e92b.md) | 152 | `result-track:73ec20ba3d7c73d69968e92bcf4e326012f4941e647f5b3ee5214be3bb3b96b2` |
| 12 | `theorem` | [tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--470dfc3649554ad85ec8d41d.md) | 162 | `result-track:470dfc3649554ad85ec8d41d17e5b489e3c37badf817f7ca81ded53f82a402ff` |
| 13 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--a184e30c60ab947601b5b102.md) | 178 | `result-track:a184e30c60ab947601b5b1028b22b7806d2abb04478959f05225d4e8ae575e67` |
| 14 | `theorem` | [dist_div_cos_oangle_center_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-cos-oangle-center-div-two-eq-radius--f332becc1f6db2780d920903.md) | 192 | `result-track:f332becc1f6db2780d9209038068bfff43bf8a43de02d20bf4aae8ea07727684` |
| 15 | `theorem` | [dist_div_cos_oangle_center_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-cos-oangle-center-eq-two-mul-radius--30b89b9c1b6eece15fc5c65a.md) | 219 | `result-track:30b89b9c1b6eece15fc5c65a6aeac2123e95511c6fcf9a2502f9418a1ba5ec5f` |
| 16 | `theorem` | [dist_div_sin_oangle_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-sin-oangle-div-two-eq-radius--a0939a628cdac84a2fc84633.md) | 228 | `result-track:a0939a628cdac84a2fc84633b0b596cf73bb9f3c400d0a45f1b376d274644720` |
| 17 | `theorem` | [dist_div_sin_oangle_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-sin-oangle-eq-two-mul-radius--7ac25be758810623c907412d.md) | 241 | `result-track:7ac25be758810623c907412df10b0564b67c372e1bef46ee64eeabb8f4642913` |
| 18 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-circumcenter--7a854b29f904461a92455084.md) | 266 | `result-track:7a854b29f904461a9245508444d793283134ce3983a1f59173a144bb68ae83f3` |
| 19 | `theorem` | [dist_div_sin_oangle_div_two_eq_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-sin-oangle-div-two-eq-circumradius--07beeac9f6039b75e3d9c9a6.md) | 279 | `result-track:07beeac9f6039b75e3d9c9a6426bce9901f99a12096ab7a713c4d4faf02447ea` |
| 20 | `theorem` | [dist_div_sin_oangle_eq_two_mul_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/dist-div-sin-oangle-eq-two-mul-circumradius--522add50b5a2bc49c08d557d.md) | 290 | `result-track:522add50b5a2bc49c08d557d39d454e9d8ed7114dbf05299a2e8d125db6b4977` |
| 21 | `theorem` | [circumsphere_eq_of_dist_of_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/circumsphere-eq-of-dist-of-oangle--f6575a66a9ac2c3e36647365.md) | 300 | `result-track:f6575a66a9ac2c3e366473653d644dcfb50e0c11520be1445905dc9eb086f3cc` |
| 22 | `theorem` | [circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/circumsphere-eq-circumsphere-of-eq-of-eq-of-two-zsmul-oangle-eq--9af2dec0b8639056be8aeae8.md) | 313 | `result-track:9af2dec0b8639056be8aeae8079d6e0e37e06963ca907c50b59d4ef8eafe1d1f` |
| 23 | `theorem` | [mem_circumsphere_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/mem-circumsphere-of-two-zsmul-oangle-eq--46482d09f1b4d5007ecb5f1c.md) | 328 | `result-track:46482d09f1b4d5007ecb5f1c5dc46330bfa87a96d6a02989b8fe5bab126c2026` |
| 24 | `theorem` | [cospherical_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/cospherical-of-two-zsmul-oangle-eq-of-not-collinear--9fc19f9ff488b271e8bc7820.md) | 365 | `result-track:9fc19f9ff488b271e8bc78205037911ec53818c12db09c6a44df437300d82d05` |
| 25 | `theorem` | [concyclic_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/concyclic-of-two-zsmul-oangle-eq-of-not-collinear--af2ade1997f4d9001a96ed9e.md) | 384 | `result-track:af2ade1997f4d9001a96ed9eedd9e16bea56cee211aadc0d30aaea171179970c` |
| 26 | `theorem` | [cospherical_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/cospherical-or-collinear-of-two-zsmul-oangle-eq--f14aa21590c38ba522869c05.md) | 392 | `result-track:f14aa21590c38ba522869c05cc1aa6049a1cc84692716b3e623569ee55620237` |
| 27 | `theorem` | [concyclic_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant631df8ef2a70b7c591c3de2fcda0ee3c480b2b9be5ea974f785e881beddfeffe.lean/declarations/concyclic-or-collinear-of-two-zsmul-oangle-eq--e7bfad0ebdde4400ec11b1bb.md) | 417 | `result-track:e7bfad0ebdde4400ec11b1bb0b394199a51074d2146d5c2930852e8bb94fbe01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

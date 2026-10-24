# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e3d1fab0a3bdb8ba96c07eb8402cae6c20879bb",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e3d1fab0a3bdb8ba96c07eb8402cae6c20879bb`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Angle.Oriented.RightAngle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Euclidean.Circumcenter` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq--3a35aa4b162f40fb9b197d58.md) | 38 | `result-track:3a35aa4b162f40fb9b197d58b8544871d17af019b84ab0042ad2d689b0523cbf` |
| 2 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq-real--5f4c2b913f1bb0737733c3a8.md) | 58 | `result-track:5f4c2b913f1bb0737733c3a8b1b167f5479a50c61dfecbbbae6c23bcc93ec7cc` |
| 3 | `theorem` | [two_zsmul_oangle_sub_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/two-zsmul-oangle-sub-eq-two-zsmul-oangle-sub-of-norm-eq--678dfcb1be5c914f4d1c4fec.md) | 66 | `result-track:678dfcb1be5c914f4d1c4fec40b87429856edff1f944385b43e5ee49511f2efa` |
| 4 | `theorem` | [oangle_center_eq_two_zsmul_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/oangle-center-eq-two-zsmul-oangle--5df7ffbfe41b4d85532c851a.md) | 85 | `result-track:5df7ffbfe41b4d85532c851a5abe6fb3b38aaa5c690fb54dd80dbc77c82a49f6` |
| 5 | `theorem` | [two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/two-zsmul-oangle-eq--3e8c87c92674e386bfec31c6.md) | 95 | `result-track:3e8c87c92674e386bfec31c6e1848d2609c113d3ffe87cc70841f3cf4c04f5d7` |
| 6 | `theorem` | [Cospherical.two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/cospherical-two-zsmul-oangle-eq--99a0ca03a24bc7b7c0d22775.md) | 109 | `result-track:99a0ca03a24bc7b7c0d22775d9e87bd66b605e55b95a227b0e35104e07757802` |
| 7 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-left--749ba32e87e22c33dd8e8019.md) | 120 | `result-track:749ba32e87e22c33dd8e801972b325a5efc30e1b55c33743989d8e7f14a50aee` |
| 8 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-right--4f91bd99b37fae19c71e483a.md) | 127 | `result-track:4f91bd99b37fae19c71e483a866d84947ff9e29f9070873e22f988dacaef4d04` |
| 9 | `theorem` | [two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/two-zsmul-oangle-center-add-two-zsmul-oangle-eq-pi--d5fca6a1796dde421122f5cf.md) | 134 | `result-track:d5fca6a1796dde421122f5cfdbac21daad3913453f0c11f38c088df26d06b3ca` |
| 10 | `theorem` | [abs_oangle_center_left_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/abs-oangle-center-left-toreal-lt-pi-div-two--694e451a651245ef240e7a00.md) | 141 | `result-track:694e451a651245ef240e7a00752265cc18611458f277cc285e3232d8481ae51e` |
| 11 | `theorem` | [abs_oangle_center_right_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/abs-oangle-center-right-toreal-lt-pi-div-two--b86f06adb0a3258967c3c559.md) | 147 | `result-track:b86f06adb0a3258967c3c559c1eeed955452b11d54bfae561783435a563975c4` |
| 12 | `theorem` | [tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--b7840e114419915ec633c6ca.md) | 156 | `result-track:b7840e114419915ec633c6cac7e0f8dd9d643e010953325454b5b088ea8555a5` |
| 13 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--fa232e5b43a42bef077282c7.md) | 171 | `result-track:fa232e5b43a42bef077282c73b6d11a4e93228ee664f8acd2d7bf38e1b672f20` |
| 14 | `theorem` | [dist_div_cos_oangle_center_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-cos-oangle-center-div-two-eq-radius--62628920c3d76f234b0a9ddb.md) | 184 | `result-track:62628920c3d76f234b0a9ddb19dc00034228ab00c0153b184f0d79b88bf68b81` |
| 15 | `theorem` | [dist_div_cos_oangle_center_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-cos-oangle-center-eq-two-mul-radius--94157fab2ddb3122cd405e3b.md) | 209 | `result-track:94157fab2ddb3122cd405e3b8b87ac04abef454ea873a88ebdb1b182b71f829f` |
| 16 | `theorem` | [dist_div_sin_oangle_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-sin-oangle-div-two-eq-radius--f857630078a2d36e27fbb507.md) | 217 | `result-track:f857630078a2d36e27fbb50794075b5f414c2d8bb0a25746f46658eadd2963a0` |
| 17 | `theorem` | [dist_div_sin_oangle_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-sin-oangle-eq-two-mul-radius--b585f6f13f21c1ad1a1e41a7.md) | 229 | `result-track:b585f6f13f21c1ad1a1e41a7bc4760f1e9abc9b28359c50af3b4dc052d88f781` |
| 18 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-circumcenter--290a9509b0ec643ff750dc52.md) | 253 | `result-track:290a9509b0ec643ff750dc5250d7feb325dc212aa528c791fd7d8a886d3b79f4` |
| 19 | `theorem` | [dist_div_sin_oangle_div_two_eq_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-sin-oangle-div-two-eq-circumradius--ea7aae32b097850587000d43.md) | 265 | `result-track:ea7aae32b097850587000d439dfeabbafd28b0d606e3c5685ea9e254889a2948` |
| 20 | `theorem` | [dist_div_sin_oangle_eq_two_mul_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/dist-div-sin-oangle-eq-two-mul-circumradius--366239095beeb29e7addafe7.md) | 275 | `result-track:366239095beeb29e7addafe7f9036cc45bcb371d07dad83474b7fc2972c3b95a` |
| 21 | `theorem` | [circumsphere_eq_of_dist_of_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/circumsphere-eq-of-dist-of-oangle--b27b09c4092370ba31c946eb.md) | 284 | `result-track:b27b09c4092370ba31c946ebedeb59b5c7364a1b83b4a0a3baf0b10f682c553b` |
| 22 | `theorem` | [circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/circumsphere-eq-circumsphere-of-eq-of-eq-of-two-zsmul-oangle-eq--94831b96a0afc3d6a352b1d6.md) | 296 | `result-track:94831b96a0afc3d6a352b1d66e79285a5c9b4901ee3c73f0f077e1ff6f8efeeb` |
| 23 | `theorem` | [mem_circumsphere_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/mem-circumsphere-of-two-zsmul-oangle-eq--b2155239c16b0c4d6a14c9f4.md) | 310 | `result-track:b2155239c16b0c4d6a14c9f45386ae751f59ca51cc9293d6d7358742ba6a6309` |
| 24 | `theorem` | [cospherical_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/cospherical-of-two-zsmul-oangle-eq-of-not-collinear--dc372bcefe666faec1976235.md) | 346 | `result-track:dc372bcefe666faec1976235edf4964fa67d0bec5ae884b4d5da4fec53016da1` |
| 25 | `theorem` | [concyclic_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/concyclic-of-two-zsmul-oangle-eq-of-not-collinear--350bbe13669221de8c89efe5.md) | 364 | `result-track:350bbe13669221de8c89efe5446523bc122b0120771e2906b0cf44888aef5494` |
| 26 | `theorem` | [cospherical_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/cospherical-or-collinear-of-two-zsmul-oangle-eq--46e27577180ca85124758da2.md) | 371 | `result-track:46e27577180ca85124758da2d7dbd32a4fab784f8af23c3602bfe1c629e3587e` |
| 27 | `theorem` | [concyclic_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant3add6a28e0b0d2de595c63d812518697f689d157d4831ad25b68c09962a98777.lean/declarations/concyclic-or-collinear-of-two-zsmul-oangle-eq--5d7e8bd5a05d3a04ebbab366.md) | 395 | `result-track:5d7e8bd5a05d3a04ebbab3664f17dacc77c0d0f2cfbf150ae9ad177556bb2c05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

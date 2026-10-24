# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Sphere.Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e49b87fdba5fec3456568da4a5d389d609eded",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e49b87fdba5fec3456568da4a5d389d609eded`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean.json)

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
| 1 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq--96326d7c9dc6eee883ad57e0.md) | 41 | `result-track:96326d7c9dc6eee883ad57e0a534f292a8bfbd0a7ff57fc2971f20c0f81223b9` |
| 2 | `theorem` | [oangle_eq_two_zsmul_oangle_sub_of_norm_eq_real](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/oangle-eq-two-zsmul-oangle-sub-of-norm-eq-real--3759afa44ccaa42b171bc721.md) | 62 | `result-track:3759afa44ccaa42b171bc721b1562b2c398056c77f5e6ce42376bf9831d57750` |
| 3 | `theorem` | [two_zsmul_oangle_sub_eq_two_zsmul_oangle_sub_of_norm_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/two-zsmul-oangle-sub-eq-two-zsmul-oangle-sub-of-norm-eq--e91dcdf07c0f7a43d5d4e568.md) | 71 | `result-track:e91dcdf07c0f7a43d5d4e5689d02299483fdf071d46b45e1c18fd05853ab4e2e` |
| 4 | `theorem` | [oangle_center_eq_two_zsmul_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/oangle-center-eq-two-zsmul-oangle--90b9bcc35d9f81d7cf09f9e9.md) | 91 | `result-track:90b9bcc35d9f81d7cf09f9e9bc8348e1a417d67e1da0f44ad4858fac327135c6` |
| 5 | `theorem` | [two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/two-zsmul-oangle-eq--8c287b3954f6d4ed95a33806.md) | 102 | `result-track:8c287b3954f6d4ed95a33806d738c85838d009a6e80dbefe5684b914c6607fb8` |
| 6 | `theorem` | [Cospherical.two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/cospherical-two-zsmul-oangle-eq--6a0298c7034e0818b74ce280.md) | 117 | `result-track:6a0298c7034e0818b74ce28013e71ff3090a98bd38ceb8d912be88ed03c19976` |
| 7 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_left](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-left--64ee248702aade55caec17f9.md) | 129 | `result-track:64ee248702aade55caec17f9de60d0c51b9a8db67ef668425b234f187f2e78b2` |
| 8 | `theorem` | [oangle_eq_pi_sub_two_zsmul_oangle_center_right](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/oangle-eq-pi-sub-two-zsmul-oangle-center-right--323a0334144ed9545e1d849b.md) | 137 | `result-track:323a0334144ed9545e1d849be44ee624a5c344f5c229f3297373839fdddc85b8` |
| 9 | `theorem` | [two_zsmul_oangle_center_add_two_zsmul_oangle_eq_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/two-zsmul-oangle-center-add-two-zsmul-oangle-eq-pi--6196043af572ab04517ad583.md) | 145 | `result-track:6196043af572ab04517ad58361740481e25d2eb6ece20bdf0ff8871f036cbfa2` |
| 10 | `theorem` | [abs_oangle_center_left_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/abs-oangle-center-left-toreal-lt-pi-div-two--8f6ec3a8666b5598d2b89745.md) | 153 | `result-track:8f6ec3a8666b5598d2b897452d23a5b272236d23c775020d180e74b71a0b329e` |
| 11 | `theorem` | [abs_oangle_center_right_toReal_lt_pi_div_two](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/abs-oangle-center-right-toreal-lt-pi-div-two--eb128fbca67b81180d24c066.md) | 160 | `result-track:eb128fbca67b81180d24c066b8abf38b815ae0086c00fb2795ba62eb0aa70f57` |
| 12 | `theorem` | [tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--c225274665cd7d5cc8d70362.md) | 170 | `result-track:c225274665cd7d5cc8d70362c4c58cd2e4c5b48eb12c12cd1fbc9e47223474e9` |
| 13 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_center](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-center--ed7ae0176c67d14cb0ad6ad9.md) | 186 | `result-track:ed7ae0176c67d14cb0ad6ad9b1439e4e300dbb508be6599a968d4f48723f24c5` |
| 14 | `theorem` | [dist_div_cos_oangle_center_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-cos-oangle-center-div-two-eq-radius--6a9a4920a530eec30a0eef3b.md) | 200 | `result-track:6a9a4920a530eec30a0eef3bed6532526708742c8eeddc92c6cdfcbb1c9df98b` |
| 15 | `theorem` | [dist_div_cos_oangle_center_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-cos-oangle-center-eq-two-mul-radius--43dd3cb81fdfe6b4f03106cb.md) | 227 | `result-track:43dd3cb81fdfe6b4f03106cbca244dbba2a5284fba6deff4e089444758c197b7` |
| 16 | `theorem` | [dist_div_sin_oangle_div_two_eq_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-sin-oangle-div-two-eq-radius--7b273e103ab60aee66d53684.md) | 236 | `result-track:7b273e103ab60aee66d536847a33b8c327c59d0b494fde4fc5c4826b53d5f773` |
| 17 | `theorem` | [dist_div_sin_oangle_eq_two_mul_radius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-sin-oangle-eq-two-mul-radius--e6efb386b3ac327703f7b74a.md) | 249 | `result-track:e6efb386b3ac327703f7b74abdcf285dacf5b61ba1f4e654a9f6c7d36c0829b6` |
| 18 | `theorem` | [inv_tan_div_two_smul_rotation_pi_div_two_vadd_midpoint_eq_circumcenter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/inv-tan-div-two-smul-rotation-pi-div-two-vadd-midpoint-eq-circumcenter--c4030101338836d588c8f047.md) | 274 | `result-track:c4030101338836d588c8f047f58a74722539be333f377a0c155df5a6e6488b42` |
| 19 | `theorem` | [dist_div_sin_oangle_div_two_eq_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-sin-oangle-div-two-eq-circumradius--c0eb960c1d852bbb6d7d7625.md) | 287 | `result-track:c0eb960c1d852bbb6d7d7625c5e3eb0c0ba3d65403dbf0d8728c43fa2dffa222` |
| 20 | `theorem` | [dist_div_sin_oangle_eq_two_mul_circumradius](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/dist-div-sin-oangle-eq-two-mul-circumradius--f127c212686e0a73fb0614d8.md) | 298 | `result-track:f127c212686e0a73fb0614d8e7d9ab2e3db956e7a51494439ed2ade8f5e8e41d` |
| 21 | `theorem` | [circumsphere_eq_of_dist_of_oangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/circumsphere-eq-of-dist-of-oangle--cd1dffe2ebf022b9fee5a98c.md) | 308 | `result-track:cd1dffe2ebf022b9fee5a98c4cb5d9e9cdfe066ec1cbdbfadb9ad54ed83fae4a` |
| 22 | `theorem` | [circumsphere_eq_circumsphere_of_eq_of_eq_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/circumsphere-eq-circumsphere-of-eq-of-eq-of-two-zsmul-oangle-eq--9d13d852f2eb800124f448b5.md) | 321 | `result-track:9d13d852f2eb800124f448b5722b66956fed2385dfb945d6c4fa253605be2d53` |
| 23 | `theorem` | [mem_circumsphere_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/mem-circumsphere-of-two-zsmul-oangle-eq--1c477ef15d984b13540d89fe.md) | 336 | `result-track:1c477ef15d984b13540d89fef02647178ecd1513228b743865376b6c9fa022cb` |
| 24 | `theorem` | [cospherical_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/cospherical-of-two-zsmul-oangle-eq-of-not-collinear--f6e467473d6be32e403decce.md) | 373 | `result-track:f6e467473d6be32e403decce86a305589760125c53b250da1c971c1b9d932d04` |
| 25 | `theorem` | [concyclic_of_two_zsmul_oangle_eq_of_not_collinear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/concyclic-of-two-zsmul-oangle-eq-of-not-collinear--cd6d92d5ec770823f47c501d.md) | 392 | `result-track:cd6d92d5ec770823f47c501dbf1643f8acb7c41775fb50840e868eec11a4abea` |
| 26 | `theorem` | [cospherical_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/cospherical-or-collinear-of-two-zsmul-oangle-eq--edbe76c32e0f1f40cc53be06.md) | 400 | `result-track:edbe76c32e0f1f40cc53be06874fd216e11c76a4ac0e604c1944a52a70497c68` |
| 27 | `theorem` | [concyclic_or_collinear_of_two_zsmul_oangle_eq](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Sphere/Variant309ea45dd8a9aae52dabea3225c7cd776eeebeb6585c0550ff3aa88d098aadcf.lean/declarations/concyclic-or-collinear-of-two-zsmul-oangle-eq--e69faa4273be8d5516b163d4.md) | 425 | `result-track:e69faa4273be8d5516b163d47938e57cf6c8f79c44ef99579393fbfa715d2408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

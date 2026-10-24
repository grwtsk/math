# Verification target: GRWTSK.Geometry.DifferentialGeometry.Smooth.Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7a734338d129567490c08cca6c4bd49fc532d17",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7a734338d129567490c08cca6c4bd49fc532d17`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Whiskering` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.SmoothFunctions` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Sheaf.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothSheaf](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf--e343b771fcaf736a243d1182.md) | 86 | `declaration-track:e343b771fcaf736a243d118296bee5334b0ada73de0967e3913ad2207ea3d954` |
| 2 | `instance` | [smoothSheaf.coeFun](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-coefun--93163bd596bfd4020de516bc.md) | 91 | `declaration-track:93163bd596bfd4020de516bc1d7fcf32f564af9f9dfb74d923d0cdffb7d358ce` |
| 3 | `lemma` | [smoothSheaf.obj_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-obj-eq--773dc4abc48cea9bbb8eb566.md) | 99 | `result-track:773dc4abc48cea9bbb8eb566a07f61ff18c1eccc591f0eb97842e938ec69b8bb` |
| 4 | `def` | [smoothSheaf.eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-eval--fa76ceb6483d10f1250ee022.md) | 104 | `declaration-track:fa76ceb6483d10f1250ee022dee5d4c1bd06d49092025e9e1c89af1486f9f028` |
| 5 | `def` | [smoothSheaf.evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-evalhom--eadf8bb99b1f66e60d2a87a9.md) | 109 | `declaration-track:eadf8bb99b1f66e60d2a87a94691195de1c3c48ef760e7a10c49e258bf05cf3c` |
| 6 | `def` | [smoothSheaf.evalAt](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-evalat--05d4e6cc9f25ff9a22c32bab.md) | 116 | `declaration-track:05d4e6cc9f25ff9a22c32bab8c3246e6d1772ab1935ef71e03df518cad8338e2` |
| 7 | `lemma` | [smoothSheaf.ι_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-evalhom--529bd4693ae598eac144e004.md) | 120 | `result-track:529bd4693ae598eac144e004599580b4ad99b2e1b2489d7b71f9a06b3bd7798a` |
| 8 | `lemma` | [smoothSheaf.eval_surjective](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-eval-surjective--114f97797cf25468b1124f83.md) | 127 | `result-track:114f97797cf25468b1124f8334bc3abe38d31939bd901b885dbc30ef88053fa2` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--f78d259226fa28ae2d7025fb.md) | 132 | `declaration-track:f78d259226fa28ae2d7025fbe56a263d11cc328e428c08cdc81d7a2c95c1a1eb` |
| 10 | `lemma` | [smoothSheaf.eval_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-eval-germ--85d4d7c2cec6bece876e8aae.md) | 137 | `result-track:85d4d7c2cec6bece876e8aae74c9f69e8095c7bce04272adf03832e1c8f440e2` |
| 11 | `lemma` | [smoothSheaf.contMDiff_section](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheaf-contmdiff-section--da6c81555232ab60895f0524.md) | 142 | `result-track:da6c81555232ab60895f052435fbdb6d8dd69d40d0128ac9b3ddbcaf9f14140e` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--304278e06be3e8360be026ec.md) | 157 | `declaration-track:304278e06be3e8360be026ec07c31b06a6b48f819853658b4178adee8dc09675` |
| 13 | `def` | [smoothPresheafGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothpresheafgroup--aeb143a2a773025356b92196.md) | 165 | `declaration-track:aeb143a2a773025356b92196601ec73d1abf9a39cadc58331d7b80b4e3baad67` |
| 14 | `def` | [smoothSheafGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafgroup--e38b39467f79ff6bd4eae5c0.md) | 176 | `declaration-track:e38b39467f79ff6bd4eae5c0b686b2c7346eb02ae34d1b407aedc2f877d9ef1b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--6eaa79809485f08c7f1a1539.md) | 188 | `declaration-track:6eaa79809485f08c7f1a1539dd0f7f59ca145bf798b028abb7151bb8b1da5508` |
| 16 | `def` | [smoothPresheafCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothpresheafcommgroup--aed4e377f08c8d99a83a2658.md) | 196 | `declaration-track:aed4e377f08c8d99a83a2658894f5c709eab60e6c9be4e9cb1a4dc5d32c21080` |
| 17 | `def` | [smoothSheafCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommgroup--c01d8535db9303a0602d7c64.md) | 207 | `declaration-track:c01d8535db9303a0602d7c64e82a9c2e46c3d1d6c4f2d81009a3f3698a7f84ad` |
| 18 | `def` | [smoothSheafCommGroup.compLeft](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommgroup-compleft--ce78b79436ae43411538ac04.md) | 220 | `declaration-track:ce78b79436ae43411538ac04584e70f19ec26d5ec97d1fb2ee7452f0af707b39` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--2dd633cd094b44eb2584e2b9.md) | 232 | `declaration-track:2dd633cd094b44eb2584e2b96c085954f77211daccef3d1610d7ef4a40bb15e8` |
| 20 | `def` | [smoothPresheafRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothpresheafring--6d5d23f0b93ccf376f576298.md) | 237 | `declaration-track:6d5d23f0b93ccf376f576298773fb528e83513d3a0aeec98c4d41848920b9b4e` |
| 21 | `def` | [smoothSheafRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafring--3f6df0c6a5cab07c5d5ecc58.md) | 246 | `declaration-track:3f6df0c6a5cab07c5d5ecc58fc94012ce89f851dd18b936e636385c622a9c211` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--f4d2192fed77f0531a41fc35.md) | 258 | `declaration-track:f4d2192fed77f0531a41fc356547694dac1e78cd9e2740ca52022ad5144c5de0` |
| 23 | `def` | [smoothPresheafCommRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothpresheafcommring--8564d60645f672ab630c25bd.md) | 263 | `declaration-track:8564d60645f672ab630c25bdc08fd9d9d1365df80a35399c04c09bcd2e663cf0` |
| 24 | `def` | [smoothSheafCommRing](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring--2540a8a4ace156f4763acc05.md) | 272 | `declaration-track:2540a8a4ace156f4763acc0545036f0d53752858c90e9ed09af803c6ab278dc5` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/example--19b3fc5275d8722c0d643726.md) | 281 | `declaration-track:19b3fc5275d8722c0d6437268b439530c17f6cdc19e10fa636970d3e8b5f96b9` |
| 26 | `instance` | [smoothSheafCommRing.coeFun](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-coefun--c90af5f330012bdf3bfe1b28.md) | 284 | `declaration-track:c90af5f330012bdf3bfe1b28de868f6b23df2bd825c9fbbca62b57c6063840ec` |
| 27 | `def` | [smoothSheafCommRing.forgetStalk](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-forgetstalk--143266cd2668e2afe4787755.md) | 292 | `declaration-track:143266cd2668e2afe47877552b3a378a10444a7ad4b6ccf9ce0652ca34e073a9` |
| 28 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_hom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-forgetstalk-hom--91e2d248a90d29417ec98062.md) | 297 | `result-track:91e2d248a90d29417ec98062de5c9214de989df2d06e71700b365118d2cc48c7` |
| 29 | `lemma` | [smoothSheafCommRing.ι_forgetStalk_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-forgetstalk-inv--2a086358925feea779b5ca72.md) | 308 | `result-track:2a086358925feea779b5ca72d4834f59ff11d8e120ebbbecf362c7a44e1cd78a` |
| 30 | `def` | [smoothSheafCommRing.evalAt](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-evalat--3f00104e88d0687c21dac845.md) | 317 | `declaration-track:3f00104e88d0687c21dac8452b367d38161373116545f44e51fd8cfb39f55e52` |
| 31 | `def` | [smoothSheafCommRing.evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-evalhom--3e1a0572e5bccc301686b09e.md) | 324 | `declaration-track:3e1a0572e5bccc301686b09ecc409b1765d35222e4b39ca8d17a4fae198d9949` |
| 32 | `def` | [smoothSheafCommRing.eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-eval--4576b6131b249202ed4c4349.md) | 332 | `declaration-track:4576b6131b249202ed4c43499bc512e171c75a556f11186c67e057c4f1b29afd` |
| 33 | `lemma` | [smoothSheafCommRing.ι_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-evalhom--1819e03692fae05643424064.md) | 335 | `result-track:1819e03692fae056434240641a59211d6601ae66f7c7b170bb191a96d84bcc27` |
| 34 | `lemma` | [smoothSheafCommRing.evalHom_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-evalhom-germ--277a016db43b2e1578792496.md) | 340 | `result-track:277a016db43b2e15787924966da2b1372690a151b06f225ccb32f74ba8090679` |
| 35 | `lemma` | [smoothSheafCommRing.forgetStalk_inv_comp_eval](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-forgetstalk-inv-comp-eval--05cd03209cd2afe6042bb7e3.md) | 347 | `result-track:05cd03209cd2afe6042bb7e3554660649495849ed9eaa06e7a1ed63c080e7b75` |
| 36 | `lemma` | [smoothSheafCommRing.forgetStalk_hom_comp_evalHom](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-forgetstalk-hom-comp-evalhom--f499883557aa32df98cfcc34.md) | 359 | `result-track:f499883557aa32df98cfcc34b9742e24ba480079a4712211d5e5ff132596623f` |
| 37 | `lemma` | [smoothSheafCommRing.eval_surjective](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-eval-surjective--6dbb54d229f072451a815965.md) | 366 | `result-track:6dbb54d229f072451a815965c2fba087b44f89b9162a7c235736798df0ae2048` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/instance--68c98b05c260191f59d12577.md) | 373 | `declaration-track:68c98b05c260191f59d12577821ebd80046503ab647f367fe47d45f39f5cff70` |
| 39 | `lemma` | [smoothSheafCommRing.eval_germ](../../../../../mathematics/Geometry/DifferentialGeometry/Smooth/Variant2ffb4335c97c63f92a5974c81b28bcf61f3ab56f83cc64be21bbe265490116a1.lean/declarations/smoothsheafcommring-eval-germ--cc7e706edc11e797c3c6eaac.md) | 378 | `result-track:cc7e706edc11e797c3c6eaacb2059d873a8a3c5f5d45ec9e9bab54c95fe9254f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Algebra.Inverse.Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e915230237cbc851b25ec13cee2259d2b257bfb",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/index.md) · [Full source](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e915230237cbc851b25ec13cee2259d2b257bfb`.

Source path: `GRWTSK/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.NoZeroDivisors` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/inv-aux--c45e2b49f124d78ae2d11a92.md) | 62 | `declaration-track:c45e2b49f124d78ae2d11a9216d8679f4eacc72f6376a09d69a4b7722b98e4b2` |
| 2 | `theorem` | [coeff_inv_aux](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/coeff-inv-aux--9ab0293c9ea5f076e1b2b9b3.md) | 71 | `result-track:9ab0293c9ea5f076e1b2b9b3587c448315ccfcfd434d914cced76390f6358b59` |
| 3 | `def` | [invOfUnit](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/invofunit--0a2a005beba256d80247cee0.md) | 83 | `declaration-track:0a2a005beba256d80247cee03234efd1c5d4ade4b4a1f66adacb4f95a49f6bfd` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/coeff-invofunit--f20e182eab45b85c5a9f364d.md) | 86 | `result-track:f20e182eab45b85c5a9f364de2e3cb38ad4fb5ddedfd73559d3ed005e8f0820f` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/constantcoeff-invofunit--bc88bacb9ebc4fda7768fc3b.md) | 96 | `result-track:bc88bacb9ebc4fda7768fc3bddb414f1253218983d0b8a58bc4b6558ba648e8f` |
| 6 | `theorem` | [mul_invOfUnit](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/mul-invofunit--9de4bac55f20f883938c7850.md) | 102 | `result-track:9de4bac55f20f883938c7850794719f7d853735fa68606f0f0d809bc8b63860f` |
| 7 | `theorem` | [invOfUnit_mul](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/invofunit-mul--1454d5567ef04e902b7dd2a6.md) | 136 | `result-track:1454d5567ef04e902b7dd2a61bae074f2f38134b3bd0a798f55c1753923255ca` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/isunit-iff-constantcoeff--7dd41227750c9cdd4a5c2f83.md) | 143 | `result-track:7dd41227750c9cdd4a5c2f8340f7b08073e9cbe73ee8b91c0228f69d42a658bb` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/instance--d667ca4c96b32c381886417a.md) | 157 | `declaration-track:d667ca4c96b32c381886417acc80eeab04c2f05065403acfd95b46a8b6b3863a` |
| 10 | `theorem` | [map.isLocalHom](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/map-islocalhom--d1f6e05f253820340c67a3f6.md) | 177 | `result-track:d1f6e05f253820340c67a3f60e830a025e2bfd86e1f0200309dbcac99e167fa4` |
| 11 | `def` | [inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/inv--be6ee0ad79a3d0effaf106a1.md) | 196 | `declaration-track:be6ee0ad79a3d0effaf106a14ac8e03452ae0fad33fda0e8df6b2ed040354f7b` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/instance--7d6d71ad35b6c8011efc30e8.md) | 199 | `declaration-track:7d6d71ad35b6c8011efc30e87a53c36c62e4a93f5aa4063108de406def2d40b5` |
| 13 | `theorem` | [coeff_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/coeff-inv--d3ccabd64d78f47ce47a08eb.md) | 202 | `result-track:d3ccabd64d78f47ce47a08ebb9855d72de81f0384e8570aff3a21b2f4dfdec10` |
| 14 | `theorem` | [constantCoeff_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/constantcoeff-inv--b4fcc08eea2fb9c1c789d21c.md) | 211 | `result-track:b4fcc08eea2fb9c1c789d21ca50eff11080fb48b296b1c399fa4a457f9c8ec8f` |
| 15 | `theorem` | [inv_eq_zero](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/inv-eq-zero--c74c4c0927137ca5f22b2f28.md) | 216 | `result-track:c74c4c0927137ca5f22b2f284d1eef10ddcc55b5c6ee24661f15a37f85cf7073` |
| 16 | `theorem` | [zero_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/zero-inv--7377e23acd2ddb1c30f02be7.md) | 225 | `result-track:7377e23acd2ddb1c30f02be7dc264995d776c7a850664dd6de2aee8503c35965` |
| 17 | `theorem` | [invOfUnit_eq](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/invofunit-eq--2b18ef5b9195fa462fdf742c.md) | 229 | `result-track:2b18ef5b9195fa462fdf742c93fe2aec3a17a63124eaba4e26fc922e96340b5c` |
| 18 | `theorem` | [invOfUnit_eq'](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/invofunit-eq--1ba991ce95c70da641cbefd4.md) | 234 | `result-track:1ba991ce95c70da641cbefd441846bf24e1a742dd541de8ac8e1010352be8f56` |
| 19 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/mul-inv-cancel--bc048e747cdd82a984f2d545.md) | 242 | `result-track:bc048e747cdd82a984f2d545132e5fce7ae02022e88d464ed2b76be8ccf227f9` |
| 20 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/inv-mul-cancel--ec6ea19fda8872bac43b5223.md) | 246 | `result-track:ec6ea19fda8872bac43b5223087a3b0e6eee728b54f4e34aa46e8e75cdbbe9a2` |
| 21 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/eq-mul-inv-iff-mul-eq--39f365d7052b14d113c7f3b5.md) | 249 | `result-track:39f365d7052b14d113c7f3b55b4db993cb381113899abd581932b92573e36762` |
| 22 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/eq-inv-iff-mul-eq-one--eddebdc48257af695e227ae3.md) | 254 | `result-track:eddebdc48257af695e227ae3115db2f6d89ab477747f3bb4f407d7cb9bc39b40` |
| 23 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/inv-eq-iff-mul-eq-one--76e7abf02bf37bf27da242e6.md) | 257 | `result-track:76e7abf02bf37bf27da242e6ddae598cbc7b5fb4d37bc8203cf067f87e602c81` |
| 24 | `theorem` | [mul_inv_rev](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/mul-inv-rev--8c3417cba81d61b9e958b70c.md) | 261 | `result-track:8c3417cba81d61b9e958b70c5756a0a243ce2b4811fc69e6ad434498d108feb6` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/instance--068c4912444be7d7702bcdbd.md) | 273 | `declaration-track:068c4912444be7d7702bcdbd6008b1d378c904371897a27d5ace1efc62d4fd61` |
| 26 | `theorem` | [C_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/c-inv--c862b9f6a9ad1b8f8ee01648.md) | 281 | `result-track:c862b9f6a9ad1b8f8ee0164814e29854713131b01f2cb8836f92eaf0a4b78f3c` |
| 27 | `theorem` | [X_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/x-inv--dbe1b3cd844a4d62338c6ec9.md) | 288 | `result-track:dbe1b3cd844a4d62338c6ec9f1610632e5045c6b546ae0c47e9c4626773ca4b4` |
| 28 | `theorem` | [smul_inv](../../../../mathematics/Algebra/Inverse/Variant0863bfa75b91acca4b89a4bc6caa300addf2a3f4ad127e1533edc6ffd4dcb51c.lean/declarations/smul-inv--e293fc1be4652e312a9e4c41.md) | 292 | `result-track:e293fc1be4652e312a9e4c418b5b0a5f724d7fd6ada0d1473592299f1c8ee6ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

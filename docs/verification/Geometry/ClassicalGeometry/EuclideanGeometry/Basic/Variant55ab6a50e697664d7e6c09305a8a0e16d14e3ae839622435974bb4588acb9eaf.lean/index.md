# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea3935cd2a550f00810d825125b1a1ab5db534e6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea3935cd2a550f00810d825125b1a1ab5db534e6`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle--7ebd980d7024272246984d75.md) | 39 | `declaration-track:7ebd980d7024272246984d75e7db128416f1b803e729a05d7816360aded2310d` |
| 2 | `def` | [Triangle.mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-mk--6b4b5745e39ae6c75b9b28a1.md) | 59 | `declaration-track:6b4b5745e39ae6c75b9b28a148ac3188eb1cab0c82624036ca749a8dce6f48b5` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/instance--368628c69b518a6d3b7c55a5.md) | 73 | `declaration-track:368628c69b518a6d3b7c55a50b7a5fa16ef0007785b79707e451e8b8c996f340` |
| 4 | `def` | [contractibleTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/contractibletriangle--b7f683969e14f535c77fc1c9.md) | 79 | `declaration-track:b7f683969e14f535c77fc1c900e301691e9d92ad6461066c9d3805835441a073` |
| 5 | `structure` | [TriangleMorphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/trianglemorphism--4e2464f667683a39a76e34b5.md) | 99 | `declaration-track:4e2464f667683a39a76e34b5f799eb1d8623d02bf0e341297c14a1f2d03e41dd` |
| 6 | `def` | [triangleMorphismId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/trianglemorphismid--c4fbcf4ae435c4e14bbf9f6b.md) | 119 | `declaration-track:c4fbcf4ae435c4e14bbf9f6b5830940fa738d6fa05040c5ca990237b14eac4ca` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/instance--1041eb0218c893bd9d96d487.md) | 124 | `declaration-track:1041eb0218c893bd9d96d4874acb560c2a2f79cc91a24d1a301cf0b33434daec` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/trianglemorphism-comp--b657ba7ba5a2afb5900d4379.md) | 132 | `declaration-track:b657ba7ba5a2afb5900d43799d92db4e982e75ba27a1320603c766751491b195` |
| 9 | `instance` | [triangleCategory](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/trianglecategory--7644de951538210a945da39a.md) | 141 | `declaration-track:7644de951538210a945da39a248bcbaed5d9b90a121967dd6577ea8afd8a3bcd` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-hom-ext--2bbdbc5d7e9593dd3063dcdb.md) | 147 | `result-track:2bbdbc5d7e9593dd3063dcdb25ab6c1c94645aedff9a7470138b4b3d57f5cccc` |
| 11 | `lemma` | [id_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/id-hom--1d0c80c8d17ebb06682e285c.md) | 152 | `result-track:1d0c80c8d17ebb06682e285c5cf341dad6f048cf11dc4498c1148e9a12c47eab` |
| 12 | `lemma` | [id_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/id-hom--e5c7fe45a47f15ede482a83d.md) | 154 | `result-track:e5c7fe45a47f15ede482a83dfb6ea476c94fb29cea43ba151b71e510e441d975` |
| 13 | `lemma` | [id_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/id-hom--dfe19fc43bb7cc372207edc8.md) | 156 | `result-track:dfe19fc43bb7cc372207edc89c92670cdc2b066122becbbaead01cc27a38b449` |
| 14 | `lemma` | [comp_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/comp-hom--cf4e258578776f422a09ea0e.md) | 159 | `result-track:cf4e258578776f422a09ea0e3092f92724de31b3fac9ef0b3d116164f650485c` |
| 15 | `lemma` | [comp_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/comp-hom--f4c4657f245e1b85c3f28267.md) | 162 | `result-track:f4c4657f245e1b85c3f28267983cfbf8e06beebb0b3a246c2d6b577513a5784d` |
| 16 | `lemma` | [comp_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/comp-hom--04ef07d8b1e34002335a0025.md) | 165 | `result-track:04ef07d8b1e34002335a00253dc35bf190e63ca399aa7e7f6befcb325ee0ed91` |
| 17 | `def` | [Triangle.homMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-hommk--b3859369ef0037dc2573f5bf.md) | 170 | `declaration-track:b3859369ef0037dc2573f5bfc304007d2f7ca670a59bbeb62a4a0edc16bf4b1c` |
| 18 | `def` | [Triangle.isoMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-isomk--6c843e3bdd29833482e2151a.md) | 185 | `declaration-track:6c843e3bdd29833482e2151a4584f6b6ce629f178c3b4a8a10a009cabc1bc49a` |
| 19 | `lemma` | [Triangle.isIso_of_isIsos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-isiso-of-isisos--3755c2a559adc103f9bac9f7.md) | 200 | `result-track:3755c2a559adc103f9bac9f70a010171f3a9b13eed518370dd67f0dd619b68a0` |
| 20 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom--1a8b1510880e7247279e9756.md) | 207 | `result-track:1a8b1510880e7247279e9756def39b9e566bde35539d4fad4d2ecb1ccf1a3698` |
| 21 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom--f79e41c89a2e3a4d6d665211.md) | 210 | `result-track:f79e41c89a2e3a4d6d665211ef7f5adc37f1d6debe4e847c78df4a9c4c37785e` |
| 22 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom--fb72444021567dd48cc49ea2.md) | 213 | `result-track:fb72444021567dd48cc49ea20403f6b2f1af06043cf29289d0eba98dc16aba69` |
| 23 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom--bc6f5a78b88b02bbff6c6e96.md) | 217 | `result-track:bc6f5a78b88b02bbff6c6e9608040e6e49a8d7c4867ec2cbd2558989c7f0f5a5` |
| 24 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom--b6d8262c5f74542e3771ff57.md) | 220 | `result-track:b6d8262c5f74542e3771ff577e492dea57db4a62929583c1f4e943fb04d5906c` |
| 25 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom--9e79f9cb5c2892336124e6a6.md) | 223 | `result-track:9e79f9cb5c2892336124e6a6a1fb608280e43f74dd8e27d598a70461979d3dd1` |
| 26 | `lemma` | [Triangle.eqToHom_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-eqtohom-hom--99165d0690de9ec07d6cd5fb.md) | 226 | `result-track:99165d0690de9ec07d6cd5fb47d0dc3e4a1167973dbf7ea32bae972ca9995e05` |
| 27 | `lemma` | [Triangle.eqToHom_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-eqtohom-hom--c7706b3360b779b77e49a484.md) | 228 | `result-track:c7706b3360b779b77e49a484efb7158148ec3bd8221045eee681d9919c77bc08` |
| 28 | `lemma` | [Triangle.eqToHom_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/triangle-eqtohom-hom--3ead0cd32164b64e2393317f.md) | 230 | `result-track:3ead0cd32164b64e2393317fe69ef816f00f481b90884b6bf30f633a161fded0` |
| 29 | `def` | [binaryBiproductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/binarybiproducttriangle--7f079107fd4e9bbe6fb21f98.md) | 235 | `declaration-track:7f079107fd4e9bbe6fb21f98c4286bfdb32db7bdd5af245a267360f8e51da827` |
| 30 | `def` | [binaryProductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/binaryproducttriangle--ad7cfec3d89d242611dfa073.md) | 241 | `declaration-track:ad7cfec3d89d242611dfa0730821fbfefe75b6e26b480a4ac5009636fd8bdd4c` |
| 31 | `def` | [binaryProductTriangleIsoBinaryBiproductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/binaryproducttriangleisobinarybiproducttriangle--78c3916ad8969db552794353.md) | 248 | `declaration-track:78c3916ad8969db552794353229dc4f5b744069bf6bd261c158daa4c30752ae5` |
| 32 | `def` | [productTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle--1040ba3379c0fca0c53ee1e2.md) | 262 | `declaration-track:1040ba3379c0fca0c53ee1e2698dab447606fa4670058a86da3d890b490d2edc` |
| 33 | `def` | [productTriangle.π](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle--12d93fee560a4d3c97e6f602.md) | 269 | `declaration-track:12d93fee560a4d3c97e6f602e2e99ddfac1d824935e8f38089bcf409cd36721e` |
| 34 | `def` | [productTriangle.fan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle-fan--0625a85f3d44abb222931da2.md) | 281 | `declaration-track:0625a85f3d44abb222931da2da8595b2fcd87efcf6c9d8a4af8deeb021276fa8` |
| 35 | `def` | [productTriangle.lift](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle-lift--e386ad1c5292c2f0285c59fc.md) | 285 | `declaration-track:e386ad1c5292c2f0285c59fc312d20f7d094ca56c8f3ed508ecddfba43979cc6` |
| 36 | `def` | [productTriangle.isLimitFan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle-islimitfan--b9cbee0377272ec34e0c6a37.md) | 297 | `declaration-track:b9cbee0377272ec34e0c6a37e5a47504c41b25135bab7ae36317fed7cd2ada89` |
| 37 | `lemma` | [productTriangle.zero₃₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/producttriangle-zero--8a1cbf3d3ebc102b18cfa1a3.md) | 304 | `result-track:8a1cbf3d3ebc102b18cfa1a30fa09afc01ba1eed7e50cf083b13c0b011665dc2` |
| 38 | `def` | [contractibleTriangleFunctor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/contractibletrianglefunctor--4e8c77a7d335a87d26eeb173.md) | 323 | `declaration-track:4e8c77a7d335a87d26eeb17396aaf0fd86c24d42750e8a7db29b1ba7da605417` |
| 39 | `def` | [π₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/anonymous--4880b8b13bbea1b3c6d7408e.md) | 334 | `declaration-track:4880b8b13bbea1b3c6d7408e1e90b60132af534f0635781f366026038de49d6a` |
| 40 | `def` | [π₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/anonymous--2f0c8a9cac2ae61b51a78836.md) | 340 | `declaration-track:2f0c8a9cac2ae61b51a788365492a64642a7b3236be291b1f419c9ecafe8c126` |
| 41 | `def` | [π₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/anonymous--fb1cf5642108906667311f8d.md) | 346 | `declaration-track:fb1cf5642108906667311f8d6d08fffdda575cfef0222abc89bf43fc1b87609c` |
| 42 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/instance--76aade8ccf3f398b337c2ca1.md) | 354 | `declaration-track:76aade8ccf3f398b337c2ca1b9c61accf1b96e97fa2e21f9f9fe6d573be4299a` |
| 43 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/instance--4508d5aaf6205e65dee8047e.md) | 355 | `declaration-track:4508d5aaf6205e65dee8047e366ca4703a953a4f842b8e212a8d4ef34d666077` |
| 44 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.lean/declarations/instance--c7c1d989b620319b7107c59f.md) | 356 | `declaration-track:c7c1d989b620319b7107c59f21ba10620a3056b69aeeb725e0ecd6cece33a41c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Basic.Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a9a241743823006fe0b6e753b2705fa9aa9cb83",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a9a241743823006fe0b6e753b2705fa9aa9cb83`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle--e69cce7d9273dccfca492805.md) | 47 | `declaration-track:e69cce7d9273dccfca492805a15a7f5dd474e18dcdf18f738277f99c34257a5e` |
| 2 | `def` | [Triangle.mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-mk--2e97602ff99a64cd9126cb4a.md) | 67 | `declaration-track:2e97602ff99a64cd9126cb4a93c50b60e69c1e1120d480394bb201e6af250c75` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/instance--f6657856032dc5695cf2a2c9.md) | 81 | `declaration-track:f6657856032dc5695cf2a2c9676b561c027195484a03868f26c8a6fbe0086479` |
| 4 | `def` | [contractibleTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/contractibletriangle--fda8468f015965b9250026f9.md) | 87 | `declaration-track:fda8468f015965b9250026f947dbd5bd122c5e3a0764f10b3fd7fb4d6b3a0033` |
| 5 | `structure` | [TriangleMorphism](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/trianglemorphism--c0d4ec96d1f7a6c01862a79e.md) | 107 | `declaration-track:c0d4ec96d1f7a6c01862a79eec1c8064481e0ede9bc46776c93f78074c124f05` |
| 6 | `def` | [triangleMorphismId](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/trianglemorphismid--2c5d3254c3a6627f63d9afbc.md) | 127 | `declaration-track:2c5d3254c3a6627f63d9afbccd46deb4a8ab4f076dab462f88cf0093e7cf98d1` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/instance--cd3ff32baf76aa2c6efdb938.md) | 132 | `declaration-track:cd3ff32baf76aa2c6efdb9385a8fa7bb673a9279b35a7d39d2862f545bed2488` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/trianglemorphism-comp--66fa8919068cacac76a554be.md) | 140 | `declaration-track:66fa8919068cacac76a554be7c04935577d962ddd6799540473956ee005e5e88` |
| 9 | `instance` | [triangleCategory](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/trianglecategory--e888c3f15ea4a9b292bc05c8.md) | 149 | `declaration-track:e888c3f15ea4a9b292bc05c811ba6c627880d4b300e0897f2173df117850ce9b` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-hom-ext--db06e8ff6c236bae32f0f5a8.md) | 155 | `result-track:db06e8ff6c236bae32f0f5a8c3fefb4e8dd6bc53a8ce8d6e197d182d5fc2997c` |
| 11 | `lemma` | [id_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/id-hom--3740a9dc7856e7f7368f176b.md) | 160 | `result-track:3740a9dc7856e7f7368f176bf86e64a28a0bc1e417c649f6f03a8770774d3c12` |
| 12 | `lemma` | [id_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/id-hom--3e457dafc5d104365010fa13.md) | 162 | `result-track:3e457dafc5d104365010fa1398e72973a48f0344b411145e0c64d099f5711aee` |
| 13 | `lemma` | [id_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/id-hom--8f7e9e378ee2da62f0463051.md) | 164 | `result-track:8f7e9e378ee2da62f04630515fe2e75be88e8d2e2f6f386aaa82c435e46f53a1` |
| 14 | `lemma` | [comp_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/comp-hom--363346941f00f6c7a8f791ce.md) | 167 | `result-track:363346941f00f6c7a8f791ce3459d24b6d06e72f528b967fcf60929bbad587a0` |
| 15 | `lemma` | [comp_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/comp-hom--44ebd278fd164189b70f74c2.md) | 170 | `result-track:44ebd278fd164189b70f74c29d61899b4edc2ce1e09e509bf12e89992538d381` |
| 16 | `lemma` | [comp_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/comp-hom--7d31f3cb8c00fa23f1a2301d.md) | 173 | `result-track:7d31f3cb8c00fa23f1a2301d561f86c53d3fad96946a21e9018cd79575aa4e33` |
| 17 | `def` | [Triangle.homMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-hommk--f40bdebaaca270c138519f45.md) | 178 | `declaration-track:f40bdebaaca270c138519f45f2a8dc01924b24970dd0a0842ae8409faf53f887` |
| 18 | `def` | [Triangle.isoMk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-isomk--5d70516444c99b37fc7d0efc.md) | 193 | `declaration-track:5d70516444c99b37fc7d0efca8e5c5c5dcfa07816866eb311e00e4d18ed4e54f` |
| 19 | `lemma` | [Triangle.isIso_of_isIsos](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-isiso-of-isisos--b4c498e6d8e57be3452bf2c6.md) | 208 | `result-track:b4c498e6d8e57be3452bf2c6997604dd2d42d7791af0872f5abe6f21205309be` |
| 20 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--4ce49775bdf549951c531927.md) | 215 | `result-track:4ce49775bdf549951c5319278aa62fe2544bbf412eacd68443eaa5c19aacf09a` |
| 21 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--d0ad2bd117e9d803d98e0b8c.md) | 218 | `result-track:d0ad2bd117e9d803d98e0b8c972e293a2a7e27e139d6c25de6f4c691e277001e` |
| 22 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.hom_inv_id_triangle_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--f861a532a6e0cf20084a645e.md) | 221 | `result-track:f861a532a6e0cf20084a645e27e659b150a1e9780b96d37bae10524b4f7ce89d` |
| 23 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.inv_hom_id_triangle_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--8acca373e16e029ffbbf6247.md) | 225 | `result-track:8acca373e16e029ffbbf624780af49b57c3828755e38e3477822040ab1c6023a` |
| 24 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.inv_hom_id_triangle_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--b4b39f4faef6c8a050ebf9ff.md) | 228 | `result-track:b4b39f4faef6c8a050ebf9ff4049f44b468732de4f3f9b57168e1a3f5a35b686` |
| 25 | `lemma` | [_root_.GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Triangle.Variant55ab6a50e697664d7e6c09305a8a0e16d14e3ae839622435974bb4588acb9eaf.CategoryTheory.Iso.inv_hom_id_triangle_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian--d8abfac7ab4969fe0da82fd7.md) | 231 | `result-track:d8abfac7ab4969fe0da82fd729ea7bb89d85d4fddec477b715f9c6df2c110bca` |
| 26 | `lemma` | [Triangle.eqToHom_hom₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-eqtohom-hom--0133ee6236b8f373f9177a46.md) | 234 | `result-track:0133ee6236b8f373f9177a461642658fe2fc7b96676f1c218dd3ede33822dacf` |
| 27 | `lemma` | [Triangle.eqToHom_hom₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-eqtohom-hom--f5c74f16a4b941547df56a23.md) | 236 | `result-track:f5c74f16a4b941547df56a239a6acd5300854464e08caa5c5864dc2cc17ad6de` |
| 28 | `lemma` | [Triangle.eqToHom_hom₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/triangle-eqtohom-hom--284c8cb2ddae0a27ddf80ca0.md) | 238 | `result-track:284c8cb2ddae0a27ddf80ca0ce944cf6f92c79d40071ad95701d22fcaf4c96bc` |
| 29 | `def` | [binaryBiproductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/binarybiproducttriangle--412c70898aeff6627a635e95.md) | 243 | `declaration-track:412c70898aeff6627a635e954a6bacc50d3fbc142964d29370f45d5fe87eb3b1` |
| 30 | `def` | [binaryProductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/binaryproducttriangle--cadf991414a4e0fb38bdf446.md) | 249 | `declaration-track:cadf991414a4e0fb38bdf44680ed2cc4a93981d4dea9279a74768d785d455803` |
| 31 | `def` | [binaryProductTriangleIsoBinaryBiproductTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/binaryproducttriangleisobinarybiproducttriangle--8a2e3944ea4279b1036ae11c.md) | 256 | `declaration-track:8a2e3944ea4279b1036ae11c1d3dd8f49ec33f9470b2ee13b410ae2542b31ee2` |
| 32 | `def` | [productTriangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle--1c03b5e651358fb89a7d9830.md) | 270 | `declaration-track:1c03b5e651358fb89a7d98302e576d0b0ca891c3b8d613efa3504da2a76afce4` |
| 33 | `def` | [productTriangle.π](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle--33cb02247ed998891a607862.md) | 277 | `declaration-track:33cb02247ed998891a6078623e5f695d0125cc6a221027545b05ab970c0cbfec` |
| 34 | `def` | [productTriangle.fan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle-fan--79f6ff0dd857135ddcd1d0f1.md) | 289 | `declaration-track:79f6ff0dd857135ddcd1d0f19c3ac8d3c2394204547c07f0228a942845ccb9ef` |
| 35 | `def` | [productTriangle.lift](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle-lift--afdb49c36d560a1dc2c19ab8.md) | 293 | `declaration-track:afdb49c36d560a1dc2c19ab81df322e901f241b498570447001f72b5d217cd9a` |
| 36 | `def` | [productTriangle.isLimitFan](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle-islimitfan--ff0d027de79717de9708812e.md) | 305 | `declaration-track:ff0d027de79717de9708812e76c2aee076fa0f4c02c66e56e96881303b61250a` |
| 37 | `lemma` | [productTriangle.zero₃₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/producttriangle-zero--64f69da4cc564e4806f3b627.md) | 312 | `result-track:64f69da4cc564e4806f3b627e7b7306ac4cd3c7b4cc219630f97e2e546f84de9` |
| 38 | `def` | [contractibleTriangleFunctor](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/contractibletrianglefunctor--85167db5d47ecaa439ec0f95.md) | 331 | `declaration-track:85167db5d47ecaa439ec0f95e359f3bc6bb0331677ab72ea96fe3c089a8cb9ee` |
| 39 | `def` | [π₁](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/anonymous--1f5748efba0b37d3619031c0.md) | 342 | `declaration-track:1f5748efba0b37d3619031c0ed9b564d8e3c14c0b76d1d4a01da74cd1d394463` |
| 40 | `def` | [π₂](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/anonymous--2b38d0be260c084e2ece0d2a.md) | 348 | `declaration-track:2b38d0be260c084e2ece0d2acaa0c1b974f10cc72150c1d77787473e3e14eade` |
| 41 | `def` | [π₃](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/anonymous--49fc55653e196bdb6f4a08bc.md) | 354 | `declaration-track:49fc55653e196bdb6f4a08bc12fabed186fb6c2fd1d1774fd365d220217970a3` |
| 42 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/instance--5b11e72cef4f84ce89368eb8.md) | 362 | `declaration-track:5b11e72cef4f84ce89368eb81bc15c0254d7f5adb5525ca857625fb478aff7e1` |
| 43 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/instance--6289016cfa3c91956c005a75.md) | 363 | `declaration-track:6289016cfa3c91956c005a759541f08e1fa0f66f453fef97b2e26409f52347b4` |
| 44 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean/declarations/instance--9175ec74290e9beec2cb1e5f.md) | 364 | `declaration-track:9175ec74290e9beec2cb1e5f7b3c5ff20bdf46368eb9bea77b9147149acde142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Geometry.AlgebraicGeometry.AffineSpace.Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f6ef5202481ccce3fcc32a26d9f464b4c6dde646",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f6ef5202481ccce3fcc32a26d9f464b4c6dde646`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MvPolynomial.Monad` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Polynomial` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/affinespace--ea477836752d3e79ebfb68ab.md) | 50 | `declaration-track:ea477836752d3e79ebfb68ab303fd91d1ba772cb259a56a293449e3a259c18e5` |
| 2 | `lemma` | [of_mvPolynomial_int_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/of-mvpolynomial-int-ext--e9d7e7957b8c506533ec2adc.md) | 59 | `result-track:e9d7e7957b8c506533ec2adcbb150934f33e57fd34ef07345c604308bc32f413` |
| 3 | `instance` | [over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/over--c3794f949bd424c19adc92ba.md) | 72 | `declaration-track:c3794f949bd424c19adc92ba0889278fefb02b269914b4f44912381ddd11e199` |
| 4 | `def` | [toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/tospecmvpoly--aee28c07cf33de506ba577af.md) | 76 | `declaration-track:aee28c07cf33de506ba577af8872937397b369caab1598998e34ab4dab2b6706` |
| 5 | `def` | [toSpecMvPolyIntEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/tospecmvpolyintequiv--8dad0e5a367634a1096ebdbd.md) | 85 | `declaration-track:8dad0e5a367634a1096ebdbd4b1dd962d9a502f5dc4b74573279479a0233f03f` |
| 6 | `lemma` | [toSpecMvPolyIntEquiv_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/tospecmvpolyintequiv-comp--a06766421ffeff0ffabeb646.md) | 112 | `result-track:a06766421ffeff0ffabeb646fc5339191a71d1aa7cf7d4996a44bc3493644047` |
| 7 | `def` | [coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/coord--782e809a9e7a78051c2ae138.md) | 117 | `declaration-track:782e809a9e7a78051c2ae1386c088526867ddf8e6e05dde165602b046c53991b` |
| 8 | `def` | [homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/homofvector--247dbbaced239001e2721560.md) | 124 | `declaration-track:247dbbaced239001e2721560939556c704135ded89b0cb14a4bd5e3224fc2a15` |
| 9 | `lemma` | [homOfVector_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/homofvector-over--b422907c19e4160ca38557e9.md) | 130 | `result-track:b422907c19e4160ca38557e9f0ab4dc0f84c9b0853041cf3f47a1fa19d375f88` |
| 10 | `lemma` | [homOfVector_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/homofvector-tospecmvpoly--ef0601072892fed65e7254a9.md) | 134 | `result-track:ef0601072892fed65e7254a932a332f5111f49f0f1bd8f5b1a781efb7c1e16f5` |
| 11 | `lemma` | [homOfVector_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/homofvector-apptop-coord--6d0113e9f56475ee3937ff8e.md) | 139 | `result-track:6d0113e9f56475ee3937ff8e582bdde1c827a6e7f94c59030725e7371f6fe403` |
| 12 | `lemma` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/hom-ext--0d9af1f91c83114c62e12f85.md) | 145 | `result-track:0d9af1f91c83114c62e12f855197c04057749dcc66c98c7733e7f6703606d691` |
| 13 | `lemma` | [comp_homOfVector](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/comp-homofvector--88bab526ac7d2f27754f2936.md) | 156 | `result-track:88bab526ac7d2f27754f2936440f63ab88d1bef39f2db3549a5b7cad2425576a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--765be3f4fc19b41711ffb1f9.md) | 166 | `declaration-track:765be3f4fc19b41711ffb1f9df13a4b43bc4deb5bd12e77ba55eae8411551d06` |
| 15 | `def` | [homOverEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/homoverequiv--a109c6346c105f955ca017d6.md) | 170 | `declaration-track:a109c6346c105f955ca017d610240ffed4f81203e89bf10aa81fd73e94a75086` |
| 16 | `def` | [isoOfIsAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isoofisaffine--5834d1e8b3e4b953109e3d54.md) | 185 | `declaration-track:5834d1e8b3e4b953109e3d54172c7bf1ce376b38b4d70b57536ed8e4a4e8c62d` |
| 17 | `lemma` | [isoOfIsAffine_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isoofisaffine-hom-apptop--47a9ecd4da0a8087b463d5c1.md) | 228 | `result-track:47a9ecd4da0a8087b463d5c1d46f01c86257026987baa11daa3128e55fc7078e` |
| 18 | `lemma` | [isoOfIsAffine_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isoofisaffine-inv-apptop-coord--47d02d01bb7340d30bbe8238.md) | 235 | `result-track:47d02d01bb7340d30bbe8238cb2bf05ced7cd52fbfa5dc356f9b84c069993864` |
| 19 | `lemma` | [isoOfIsAffine_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isoofisaffine-inv-over--cb7039c2cf1da54685836d02.md) | 240 | `result-track:cb7039c2cf1da54685836d0252616894c76746b2a839ca50239fa8ab61eb8043` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--cadbf76ebb6e85d31b9b6490.md) | 244 | `declaration-track:cadbf76ebb6e85d31b9b64908ed80a3d9bc7b0258cf48a6bc699093412746bfa` |
| 21 | `def` | [SpecIso](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/speciso--834cdf252bac441c103f92aa.md) | 248 | `declaration-track:834cdf252bac441c103f92aaf0ad6cf1212c51e8429c6978861f8e1fa501c2c9` |
| 22 | `lemma` | [SpecIso_hom_appTop](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/speciso-hom-apptop--567cdf6cd2641a14dddc91f8.md) | 254 | `result-track:567cdf6cd2641a14dddc91f8cf3c21caef6406c1f6419dc2db6e4e664fffe775` |
| 23 | `lemma` | [SpecIso_inv_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/speciso-inv-apptop-coord--5e828d18509783bbd7749354.md) | 269 | `result-track:5e828d18509783bbd77493546bc568ee3c68b7ad7ad2af3a126f16faf8d03515` |
| 24 | `lemma` | [SpecIso_inv_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/speciso-inv-over--0a56783ad06e27f4e7a2637d.md) | 281 | `result-track:0a56783ad06e27f4e7a2637d4b1567740a5ccb45ebab95b2fe80d5b95d14e0f0` |
| 25 | `def` | [map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map--ec11f38799be6c8fe251c8ce.md) | 295 | `declaration-track:ec11f38799be6c8fe251c8ced405c886c2d710edfcf15c9cb13003023caa2c49` |
| 26 | `lemma` | [map_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-over--30e4f7058986a0ed4f6d8a5d.md) | 299 | `result-track:30e4f7058986a0ed4f6d8a5d43a974471988c29a3825bcae85fde33de5e9318f` |
| 27 | `lemma` | [map_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-apptop-coord--3e9864cbcec54a84c6c6eeb4.md) | 303 | `result-track:3e9864cbcec54a84c6c6eeb484861aa68c0c5466db1e76a698be62771fded845` |
| 28 | `lemma` | [map_toSpecMvPoly](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-tospecmvpoly--5eea081a4df8b8e6cc7ec07b.md) | 308 | `result-track:5eea081a4df8b8e6cc7ec07b4025d78d98407bfa288932bb4e3210a23cd93b3a` |
| 29 | `lemma` | [map_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-id--7b02735ef9d46446327dc301.md) | 315 | `result-track:7b02735ef9d46446327dc301aa0299425b61e75a362b465df86e44c8ed2a4b74` |
| 30 | `lemma` | [map_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-comp--7ab43c8d7ac3f23776755735.md) | 319 | `result-track:7ab43c8d7ac3f237767557350a118fa92790fd05bbb38ff41cc4d616b3563868` |
| 31 | `lemma` | [map_Spec_map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-spec-map--f8d1973f410c250e42a418fc.md) | 325 | `result-track:f8d1973f410c250e42a418fcb815dde55f2cea922e37af5da8d623d90e7ac9fd` |
| 32 | `def` | [mapSpecMap](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/mapspecmap--09323c935636b53ad32f2bbb.md) | 343 | `declaration-track:09323c935636b53ad32f2bbbc09233f5772294d675ebcde530e8a1a94dc8a700` |
| 33 | `lemma` | [isPullback_map](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/ispullback-map--e529a905e88fe8f1daa26f9f.md) | 348 | `result-track:e529a905e88fe8f1daa26f9f3457674b497429daf80564b66f241299b53397e9` |
| 34 | `def` | [reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/reindex--de8d696d012516335c404272.md) | 356 | `declaration-track:de8d696d012516335c40427243bad17323c6aefb8923e8f8a3a7b284993ebf82` |
| 35 | `lemma` | [reindex_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/reindex-over--593c5578a811280b6be37853.md) | 360 | `result-track:593c5578a811280b6be37853a9a9ed8bd276766381d987ba2c15d23acab17554` |
| 36 | `lemma` | [reindex_appTop_coord](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/reindex-apptop-coord--a918814ffd885039bd3efb34.md) | 365 | `result-track:a918814ffd885039bd3efb346acafff0130994a51dc86794dda3843246810000` |
| 37 | `lemma` | [reindex_id](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/reindex-id--11d37445b3d6cb37c2352948.md) | 370 | `result-track:11d37445b3d6cb37c2352948efc84679574961368375aefd0a62d3b0aec8c626` |
| 38 | `lemma` | [reindex_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/reindex-comp--d5464b1f71ae1f266071b1cf.md) | 374 | `result-track:d5464b1f71ae1f266071b1cf23112324392ffc6f1f7a29443d2ec77aacaa5b6b` |
| 39 | `lemma` | [map_reindex](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/map-reindex--80ae49edc78c3f99034427e5.md) | 384 | `result-track:80ae49edc78c3f99034427e5496e5f96d40bf3174305ca24980aab993c8e14e9` |
| 40 | `def` | [functor](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/functor--46b69a23239ccaa9d2326795.md) | 390 | `declaration-track:46b69a23239ccaa9d232679564df86ba3e05a28fbe6ab577a418b92591fb64e9` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--5f81fc55a850222cff8090d3.md) | 399 | `declaration-track:5f81fc55a850222cff8090d3d688f8db7508ea4238677205d85f5fe532ae14e6` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--35634b2cf39ed6cd7f594396.md) | 401 | `declaration-track:35634b2cf39ed6cd7f5943962080225a9cf0c772343db1a5a17043f7d17857b2` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--64b50851fdecc617b4dfaac3.md) | 407 | `declaration-track:64b50851fdecc617b4dfaac32e8562f872dca30380345d9bd57e8378ce55639d` |
| 44 | `lemma` | [isOpenMap_over](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isopenmap-over--c1f234cdd8e5c8ed5e29ab1e.md) | 416 | `result-track:c1f234cdd8e5c8ed5e29ab1e2d051241320035529674f7a1fd5f558c6a0ee3fb` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/instance--157bfb07b8f685cb4d243a2e.md) | 430 | `declaration-track:157bfb07b8f685cb4d243a2e6c9c5b41f2d760d874ca704c65954765a1876498` |
| 46 | `lemma` | [isIntegralHom_over_iff_isEmpty](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/isintegralhom-over-iff-isempty--a4100d3da19cd1dadf13b2a6.md) | 440 | `result-track:a4100d3da19cd1dadf13b2a6313c7e8b0606c4215c60de68b45225355f84357a` |
| 47 | `lemma` | [not_isIntegralHom](../../../../../mathematics/Geometry/AlgebraicGeometry/AffineSpace/Variant42502d0d9fbce566ef30c55b725508991e1f8b3ad187f4993d1d8c3a77d3c6f5.lean/declarations/not-isintegralhom--beb96b66e47153898951fd79.md) | 469 | `result-track:beb96b66e47153898951fd795ac1037aac5216e34e21d828bde3b0f85f211f01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

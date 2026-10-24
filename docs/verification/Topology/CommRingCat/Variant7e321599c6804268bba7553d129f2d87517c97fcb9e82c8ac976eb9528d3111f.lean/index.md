# Verification target: GRWTSK.Topology.CommRingCat.Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bc2af5c7919623710f8831682b9a257b58de714",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/index.md) · [Full source](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bc2af5c7919623710f8831682b9a257b58de714`.

Source path: `GRWTSK/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.FilteredColimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCommRingCat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Stalks` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/example--0e3abeb3bcd49412dddcf390.md) | 53 | `declaration-track:0e3abeb3bcd49412dddcf390f2484317a78fa5a1b618546cba5e01a0b3608fb7` |
| 2 | `abbrev` | [restrictOpenCommRingCat](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/restrictopencommringcat--105169c759f8180188409ccb.md) | 70 | `declaration-track:105169c759f8180188409ccbde208ddc76f35a5e9bbe25f97e3bebf8de45d2ee` |
| 3 | `lemma` | [restrictOpenCommRingCat_apply](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/restrictopencommringcat-apply--aeb583fe9604457ba6e7c2ee.md) | 82 | `result-track:aeb583fe9604457ba6e7c2ee0485da0d4f546e6a442ca63358def202eca88d0a` |
| 4 | `lemma` | [_root_.GRWTSK.Topology.SubmonoidPresheaf.Variant8fbb62d772f43752bc35249a71cac36b5a09fe9d167d3f7689c5c0ddcb03d83c.CommRingCat.presheaf_restrict_restrict](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/root-grwtsk-topology-submonoidpresheaf-variant8fbb62d772f43752bc35249a71--9f8b1860f48886b18e3f4d2b.md) | 90 | `result-track:9f8b1860f48886b18e3f4d2b9f7362a6981ec788dc7ba89204d906d03f6cf0b1` |
| 5 | `structure` | [SubmonoidPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/submonoidpresheaf--8ba126412247e505bda0a276.md) | 105 | `declaration-track:8ba126412247e505bda0a276ba0bf6339b5d9eac3a8c99d3f29e48527cda0960` |
| 6 | `def` | [SubmonoidPresheaf.localizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/submonoidpresheaf-localizationpresheaf--ef05f4b0ee5742d23c41436b.md) | 113 | `declaration-track:ef05f4b0ee5742d23c41436b16c62bfba853cbd81b89da91729ea8ac7e7889ca` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--722f5d205aef1c9b65c0e953.md) | 127 | `declaration-track:722f5d205aef1c9b65c0e9530d1ea62468593baa005fb09f74186ca9e24beea6` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--bdfe4356f9a886070fb79282.md) | 130 | `declaration-track:bdfe4356f9a886070fb7928286ed995abf01093df03c9ee4ef5c662330327873` |
| 9 | `def` | [SubmonoidPresheaf.toLocalizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/submonoidpresheaf-tolocalizationpresheaf--e8f9dacc839acec9f17e833b.md) | 135 | `declaration-track:e8f9dacc839acec9f17e833b0a122379ad601f256923e5c90793851da1d99439` |
| 10 | `instance` | [epi_toLocalizationPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/epi-tolocalizationpresheaf--99aa9d155bb8335c342df5d9.md) | 139 | `declaration-track:99aa9d155bb8335c342df5d902e74846bd7ea869916cf1dd1d73f76920d3982f` |
| 11 | `def` | [submonoidPresheafOfStalk](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/submonoidpresheafofstalk--273896b1601bdf3575b59602.md) | 147 | `declaration-track:273896b1601bdf3575b5960279858e66414f8bf32dc8f03dc9893e364c014068` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--d01898243962784c0aa1727e.md) | 158 | `declaration-track:d01898243962784c0aa1727ec6c62f2dfc73fddcedf137b9b6c3877999b2da07` |
| 13 | `def` | [totalQuotientPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/totalquotientpresheaf--3c97ee918c9452ef12d318ab.md) | 162 | `declaration-track:3c97ee918c9452ef12d318ab6b5c47e7d8ca4b93f221e8f27b39ed9b692e4b08` |
| 14 | `def` | [toTotalQuotientPresheaf](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/tototalquotientpresheaf--f6d31bac454ad931b0ad5545.md) | 166 | `declaration-track:f6d31bac454ad931b0ad55458b0794fba1f0dd9388c382283f01b3d88c3fd4b7` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--f182feb2fe79425305068dbf.md) | 171 | `declaration-track:f182feb2fe79425305068dbfdeaa147021bad277eb78bcce8fc73d3b8966bba1` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--3829f87550547ea28c5af2b5.md) | 173 | `declaration-track:3829f87550547ea28c5af2b56de02e3e488aa78d2cfadb0a3e059d6deb5ccf17` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--2bfa1572a094a3e6d97e12e6.md) | 202 | `declaration-track:2bfa1572a094a3e6d97e12e660e002a89949a39c52279a822e280fa8409fb092` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--cad247360c1c2e1d6fa4da59.md) | 205 | `declaration-track:cad247360c1c2e1d6fa4da59e93f7b7b23279a838a6a1b2e783febab115491a5` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--a9c2f1ca3ad136d2f8069af4.md) | 208 | `declaration-track:a9c2f1ca3ad136d2f8069af4201dd797f080ee26d4df01cf1e0e6c768f962bb7` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--81f78c04d6edbbfede7a8780.md) | 211 | `declaration-track:81f78c04d6edbbfede7a878084c6aa52b44775330b7381a5b87faee3954568d2` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--1ba8bc25571424fc001cb1ec.md) | 214 | `declaration-track:1ba8bc25571424fc001cb1ecb28445cb13937bcff04edf83908f0ffc159ffeab` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--595d639f911db978642ee191.md) | 217 | `declaration-track:595d639f911db978642ee1912c1b89026be9d59fdc6f935531c73a4f70c0594b` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--8549f2319ce468ed9fcddb6e.md) | 220 | `declaration-track:8549f2319ce468ed9fcddb6e31e4fe9256c8b07fd09d1f3eeaf5eff14d92a970` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--bc4ddd149652921c6d9f3ee8.md) | 223 | `declaration-track:bc4ddd149652921c6d9f3ee8dbf4e271d6bd87d9162b461f743ae3dcf711c11e` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--5923166b0f046302722a9c84.md) | 226 | `declaration-track:5923166b0f046302722a9c84417f70443e26f617c97a9c8d594e6a27b97da9f1` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--861644168cc490cabc436564.md) | 229 | `declaration-track:861644168cc490cabc436564ca1a686af54affcfb236bc727a5f9a390be0b93a` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--5d8bbcfc8af60581b9a0c81f.md) | 232 | `declaration-track:5d8bbcfc8af60581b9a0c81fd24e26ba4389a9f21255e87049e36d16b2d215c8` |
| 28 | `instance` | [(anonymous)](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/instance--cb421815075a3c0db79e292d.md) | 235 | `declaration-track:cb421815075a3c0db79e292d69d8aecffb896b521b7fcbb326ffa426497913b4` |
| 29 | `def` | [continuousFunctions](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/continuousfunctions--85e85a819fd1c1ddf0e17198.md) | 243 | `declaration-track:85e85a819fd1c1ddf0e17198cdd5d08ae21da76029bfe6671c40f864cc29341a` |
| 30 | `def` | [pullback](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/pullback--2ea180d6207d1cbbaea45179.md) | 249 | `declaration-track:2ea180d6207d1cbbaea45179d9d5713fb4f14106a31113b92943889a1b53862b` |
| 31 | `def` | [map](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/map--5d85cee40d9bda0d8ecdfe61.md) | 259 | `declaration-track:5d85cee40d9bda0d8ecdfe617b1a0b0f30fd9a057fec0278a4005e00e81b602b` |
| 32 | `def` | [commRingYoneda](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/commringyoneda--a52c2981b896f47692cefca9.md) | 272 | `declaration-track:a52c2981b896f47692cefca96e0ef54386b4cbcf2acb6ef4f89eacad92d7ee6a` |
| 33 | `def` | [presheafToTopCommRing](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/presheaftotopcommring--c07703638bb9348f03ccfac2.md) | 297 | `declaration-track:c07703638bb9348f03ccfac2dd461635706f89f1585886d7affc77324dc1a119` |
| 34 | `instance` | [algebra_section_stalk](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/algebra-section-stalk--cded3499d40d728f2c1601b5.md) | 310 | `declaration-track:cded3499d40d728f2c1601b50e0c97ba161cb19034dba45ecc0bcd95316698e8` |
| 35 | `theorem` | [stalk_open_algebraMap](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/stalk-open-algebramap--0f4a725f8f02bea6e890516c.md) | 315 | `result-track:0f4a725f8f02bea6e890516c23dc3ef50942bdc05fc033b54c0d47b364ace583` |
| 36 | `def` | [objSupIsoProdEqLocus](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus--b41f365847a6b4923efcd9e3.md) | 336 | `declaration-track:b41f365847a6b4923efcd9e3d2ef65d161393a5a952a725c484609da57be2eae` |
| 37 | `theorem` | [objSupIsoProdEqLocus_hom_fst](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus-hom-fst--218187b80713c1f3372a07ab.md) | 346 | `result-track:218187b80713c1f3372a07ab83dc7b704c5fd9976d424ab958fb20809abfff84` |
| 38 | `theorem` | [objSupIsoProdEqLocus_hom_snd](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus-hom-snd--3f753430a89dc8f62d714e91.md) | 353 | `result-track:3f753430a89dc8f62d714e912ceb2d7ab9078df5117a03fbc547a91340fee097` |
| 39 | `theorem` | [objSupIsoProdEqLocus_inv_fst](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus-inv-fst--60b0a0080baa91e226e9e4e2.md) | 360 | `result-track:60b0a0080baa91e226e9e4e2a2e4223f0a2dc2150c70431b2423c03f844f3841` |
| 40 | `theorem` | [objSupIsoProdEqLocus_inv_snd](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus-inv-snd--f13e19a00b0f622abf044a5f.md) | 367 | `result-track:f13e19a00b0f622abf044a5f1c31cc840ecdc22f1ce19c9351820d4a5e33e31e` |
| 41 | `theorem` | [objSupIsoProdEqLocus_inv_eq_iff](../../../../mathematics/Topology/CommRingCat/Variant7e321599c6804268bba7553d129f2d87517c97fcb9e82c8ac976eb9528d3111f.lean/declarations/objsupisoprodeqlocus-inv-eq-iff--918c5d3bdecb4de5aa90fd62.md) | 374 | `result-track:918c5d3bdecb4de5aa90fd62c366f254b84abbf67bda513db8dd055ad3a6721d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

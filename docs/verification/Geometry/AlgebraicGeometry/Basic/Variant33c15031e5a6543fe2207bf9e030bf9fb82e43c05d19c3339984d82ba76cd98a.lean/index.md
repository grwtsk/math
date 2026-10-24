# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "817ed1571c3c72c45bd0935b33f5bc9f1ac84a41",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `817ed1571c3c72c45bd0935b33f5bc9f1ac84a41`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen--d516148805968041011fd831.md) | 52 | `declaration-track:d516148805968041011fd8314e96bb4a0def52ea8d1e441899eb6912d171ebd9` |
| 2 | `theorem` | [mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/mem-basicopen--88b9300b482b39257dd34088.md) | 56 | `result-track:88b9300b482b39257dd34088041b8ddfe21c8fcf4cc17404063026a8e7b832d9` |
| 3 | `theorem` | [basicOpen_one](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-one--d62519c61d72885ce22b59e8.md) | 60 | `result-track:d62519c61d72885ce22b59e80cbe18241707b2563f51506cea98ec5f6fcd2f2e` |
| 4 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-zero--0dcd18874875cad10a94cf6b.md) | 62 | `result-track:0dcd18874875cad10a94cf6b589bad929030e0023faacd2fc1d1b3fa21f7dba1` |
| 5 | `theorem` | [basicOpen_pow](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-pow--82f00edb4ac9394ab64a34fa.md) | 64 | `result-track:82f00edb4ac9394ab64a34fa49ecdaf9ea03df8f1befe120722e4891a89cdfbe` |
| 6 | `theorem` | [basicOpen_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-mul--92980b140d39f8bcab8afbff.md) | 67 | `result-track:92980b140d39f8bcab8afbffd11b64c01b0fcdfb0946798455ac0bdda153a78f` |
| 7 | `theorem` | [basicOpen_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-mono--30b7f7b234b5a6eb706a0b12.md) | 70 | `result-track:30b7f7b234b5a6eb706a0b129c0deb3dd30af126767d640120a771a12fa7abd1` |
| 8 | `theorem` | [basicOpen_eq_iSup_proj](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopen-eq-isup-proj--7a7398ba7b60d8e90344ec8f.md) | 73 | `result-track:7a7398ba7b60d8e90344ec8f4fcb417ea7efaa05689505fc5f52747081d1fe75` |
| 9 | `theorem` | [isBasis_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/isbasis-basicopen--19902fea7bad245ab9039f84.md) | 77 | `result-track:19902fea7bad245ab9039f849aa57c22eacac6b216290db988084936204192c6` |
| 10 | `lemma` | [iSup_basicOpen_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/isup-basicopen-eq-top--5062610068e8ace6a08e4afe.md) | 84 | `result-track:5062610068e8ace6a08e4afed5586ec1f0c2eb45b9637f826cb4c2ce2b8bfdae` |
| 11 | `lemma` | [iSup_basicOpen_eq_top'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/isup-basicopen-eq-top--fd4b7c023f74b11e4df4d00f.md) | 95 | `result-track:fd4b7c023f74b11e4df4d00f000556d3680b991983b385ee6f1d6d6342ea0068` |
| 12 | `def` | [awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/awaytosection--78f6dfeb809ef58861467290.md) | 132 | `declaration-track:78f6dfeb809ef588614672909b6e4dc8dde796b1cccd1d197d6657e7369cfa76` |
| 13 | `def` | [basicOpenToSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopentospec--7fd4331cf5ff63a10124868b.md) | 138 | `declaration-track:7fd4331cf5ff63a10124868b939813859e91a9709c9e789bca4d1aed4f4fc31d` |
| 14 | `lemma` | [basicOpenToSpec_app_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopentospec-app-top--f9602bac76135514fb685566.md) | 141 | `result-track:f9602bac76135514fb68556633559049bad0b14d9b28df8184d3e751e71264d4` |
| 15 | `def` | [toSpecZero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/tospeczero--0db9a2004ffb8d9759d16bf8.md) | 152 | `declaration-track:0db9a2004ffb8d9759d16bf8fd6e5ceff7bbcfc4b33a84cab19ff133022d5856` |
| 16 | `def` | [basicOpenIsoSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopenisospec--a41f84e862516278b7066915.md) | 162 | `declaration-track:a41f84e862516278b706691531afad6bcf69567ccf3314b7783973df50b9d13f` |
| 17 | `def` | [basicOpenIsoAway](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopenisoaway--ae07ea6b24ea90d0a6442f6b.md) | 176 | `declaration-track:ae07ea6b24ea90d0a6442f6bb5ee790d1bb214797a8c9cbaa7cdb88e578eee55` |
| 18 | `def` | [awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/away--a0295784b70a9e9b22eb1d83.md) | 186 | `declaration-track:a0295784b70a9e9b22eb1d83d61da46dac8e9b8d61e2002494801028698754f2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/instance--d2dd765d4e95192507c276fc.md) | 189 | `declaration-track:d2dd765d4e95192507c276fc307b763f8602fce6510ddff2ba4e256be91e22ec` |
| 20 | `lemma` | [opensRange_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/opensrange-away--034fbf405a4e330dc03ff30e.md) | 192 | `result-track:034fbf405a4e330dc03ff30ef1774fbe392b62e722314b451441b834f063d4de` |
| 21 | `lemma` | [isAffineOpen_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/isaffineopen-basicopen--f35b589b1f48828769bd5cf2.md) | 197 | `result-track:f35b589b1f48828769bd5cf2e77ba00a310e6ec3d381d8f9b4c999fa25b5e910` |
| 22 | `lemma` | [awayι_toSpecZero](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/away-tospeczero--d8648b2fd9aafa026eb0c8e3.md) | 202 | `result-track:d8648b2fd9aafa026eb0c8e315a26808a8356e65f388189ff53fecacb186d087` |
| 23 | `lemma` | [awayMap_awayToSection](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/awaymap-awaytosection--beedfc3b1065539fc32b710a.md) | 218 | `result-track:beedfc3b1065539fc32b710a08cd895ed53805595d2ce1bbaaf6246a2b258cd2` |
| 24 | `lemma` | [basicOpenToSpec_SpecMap_awayMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/basicopentospec-specmap-awaymap--927724c88e0d19889255cef3.md) | 236 | `result-track:927724c88e0d19889255cef3d0485920487afb9be47ca7dc091920bbb7ca5da5` |
| 25 | `lemma` | [SpecMap_awayMap_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/specmap-awaymap-away--812ec563737b6c1affc05a26.md) | 244 | `result-track:812ec563737b6c1affc05a26c126dfcdad22704cb6939c6c167cbb5fa6b33d83` |
| 26 | `def` | [pullbackAwayιIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso--ea52aa795f970af4a3378924.md) | 252 | `declaration-track:ea52aa795f970af4a33789245a0e3346df17fcfe22df0a47d1bda54b988b585c` |
| 27 | `lemma` | [pullbackAwayιIso_hom_awayι](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso-hom-away--4229e6d365a26340dbd67695.md) | 262 | `result-track:4229e6d365a26340dbd676958be8db3a4f1c8f4a7c93286ea8e2a84def96ada5` |
| 28 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-left--24ce281dad4b4fdf5424a79d.md) | 269 | `result-track:24ce281dad4b4fdf5424a79dceab9ceb7f8157d4d64c37a71473d58dbb9e4d81` |
| 29 | `lemma` | [pullbackAwayιIso_hom_SpecMap_awayMap_right](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso-hom-specmap-awaymap-right--dd8ee28d3d48c9415c70d321.md) | 276 | `result-track:dd8ee28d3d48c9415c70d321493f6ee5262cccc97a303f825669826c69b0529c` |
| 30 | `lemma` | [pullbackAwayιIso_inv_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso-inv-fst--6784ba7a0dc52246478b03e6.md) | 286 | `result-track:6784ba7a0dc52246478b03e6fe7cb808e027f2e80ece03e98d3666ea810638bb` |
| 31 | `lemma` | [pullbackAwayιIso_inv_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/pullbackaway-iso-inv-snd--0ee8f5800e1d674ae9662c8b.md) | 292 | `result-track:0ee8f5800e1d674ae9662c8b395a0eff471dca707a540e2158ccc7008ceba594` |
| 32 | `def` | [openCoverOfISupEqTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/opencoverofisupeqtop--d5b0385a4b0ae0dd21e160ca.md) | 301 | `declaration-track:d5b0385a4b0ae0dd21e160cadf6b67183d2d8d4097e0e8e47918501e37487846` |
| 33 | `def` | [affineOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/affineopencover--22fa28498c407ba7873e6c16.md) | 316 | `declaration-track:22fa28498c407ba7873e6c16036dea1ee5035e96db3c408a400334796b85d0b0` |
| 34 | `def` | [stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant33c15031e5a6543fe2207bf9e030bf9fb82e43c05d19c3339984d82ba76cd98a.lean/declarations/stalkiso--25c568c86451c9e176e2efaf.md) | 334 | `declaration-track:25c568c86451c9e176e2efafe14e2da221ca8f38af19b2abe547eceb25aa4595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SmallAffineZariski.Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ebcf3231997bf1fd9da427798fb5b3bddc39e0c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ebcf3231997bf1fd9da427798fb5b3bddc39e0c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scheme.AffineZariskiSite](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/scheme-affinezariskisite--ae37432cf15125e6e7c6d411.md) | 54 | `declaration-track:ae37432cf15125e6e7c6d4110a1797c60c558ca1632d77bcb69cb6df9cf8edab` |
| 2 | `abbrev` | [toOpens](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/toopens--a318dd2e64af975df81e9ca0.md) | 59 | `declaration-track:a318dd2e64af975df81e9ca089e3ca0f7df9f34a28292f26623561a5c8a277ae` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--143fd9cc1b3934265b8d9f3e.md) | 61 | `declaration-track:143fd9cc1b3934265b8d9f3e9ffeab0a5e74299d2525d64ecbea31f88cebcdf6` |
| 4 | `lemma` | [toOpens_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/toopens-mono--e31442f1ceb56cb1568443bb.md) | 68 | `result-track:e31442f1ceb56cb1568443bb7664406db1370a0f65a814bd1469343f7793d46e` |
| 5 | `lemma` | [toOpens_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/toopens-injective--e741ce5fc36df843ba3aa2a5.md) | 73 | `result-track:e741ce5fc36df843ba3aa2a53af2b83485df118f5309c594638e0c23abc74442` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--489c7ec905b35dceca1f45ef.md) | 75 | `declaration-track:489c7ec905b35dceca1f45efc6bf37010ca8706cf8bfa88656f65a8c46a43149` |
| 7 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/basicopen--a8e53e92b789719b69af5b83.md) | 79 | `declaration-track:a8e53e92b789719b69af5b83e6c43e08ce450118258b583c3b595e6e41b7a795` |
| 8 | `lemma` | [basicOpen_le](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/basicopen-le--adf004e648edf66ea3433f0f.md) | 82 | `result-track:adf004e648edf66ea3433f0f944d97785380f60701dcae76ee0cb11bfb0cf93d` |
| 9 | `def` | [toOpensFunctor](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/toopensfunctor--593686ae787e452401958a5f.md) | 87 | `declaration-track:593686ae787e452401958a5f04217de70ac3029d6b1459fa947793295ad2112f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--854fcc0bb2d98c67d3ae2d1b.md) | 89 | `declaration-track:854fcc0bb2d98c67d3ae2d1b97037f1a32ab7391bfd034078497782f43d5cd39` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--059f4cbf9979fbd3416deaad.md) | 91 | `declaration-track:059f4cbf9979fbd3416deaadf078fc52e87f0a77dd3ff0faf5098e3ea1043a04` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--da1ae0b40283a06c9f504cca.md) | 99 | `declaration-track:da1ae0b40283a06c9f504cca05f3040f0fcf54c49f12a2140c3eb93ae770cb47` |
| 13 | `def` | [grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/grothendiecktopology--79bcf73a0e07031b587864ac.md) | 108 | `declaration-track:79bcf73a0e07031b587864ac6d68661fd2e8cc9fa161a63cc923c8f1d52433a1` |
| 14 | `lemma` | [mem_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/mem-grothendiecktopology--f857b20f3f6465e78514f9f1.md) | 111 | `result-track:f857b20f3f6465e78514f9f1d844c1cfaa65fb3f87980924367586b370e45a70` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/instance--ae535cf97ec333f489ae1f56.md) | 120 | `declaration-track:ae535cf97ec333f489ae1f568b77bb44feb6484e67cc1433e49c46ec25ec764e` |
| 16 | `def` | [presieveOfSections](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/presieveofsections--191f00af81267b5e825ca398.md) | 126 | `declaration-track:191f00af81267b5e825ca398becaf9d470b518633e5592916b00ab431672aaf0` |
| 17 | `def` | [sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/sectionsofpresieve--0159dd29f4f8ec5067c2a309.md) | 130 | `declaration-track:0159dd29f4f8ec5067c2a30927c7fbc2a3c69a3fe0512a4b7a8d0eb732e95a24` |
| 18 | `lemma` | [presieveOfSections_sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/presieveofsections-sectionsofpresieve--b0b8048806562690f2a5283d.md) | 133 | `result-track:b0b8048806562690f2a5283d25b1423122ea7a827c753fc8383a208e3a695d1c` |
| 19 | `lemma` | [presieveOfSections_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/presieveofsections-surjective--177489c366b05d9bf259d303.md) | 142 | `result-track:177489c366b05d9bf259d3036cb372a8e134eec88bb71d9ffc5615df7074313a` |
| 20 | `lemma` | [presieveOfSections_eq_ofArrows](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/presieveofsections-eq-ofarrows--206b15d46d4546691fc48346.md) | 146 | `result-track:206b15d46d4546691fc48346bf069ed0ed0972ad59175ff5e28f62b98b517051` |
| 21 | `lemma` | [generate_presieveOfSections](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/generate-presieveofsections--0686d7bd5c0c69589a7190ec.md) | 154 | `result-track:0686d7bd5c0c69589a7190ece5eb1b1bf363afc5c2459d55f6b34e311d756021` |
| 22 | `lemma` | [generate_presieveOfSections_mem_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/generate-presieveofsections-mem-grothendiecktopology--114bdb371d71cb2b1af12570.md) | 169 | `result-track:114bdb371d71cb2b1af12570bc933325789f0795adef16772a15ee4fc4da511d` |
| 23 | `lemma` | [mem_grothendieckTopology_iff_sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/mem-grothendiecktopology-iff-sectionsofpresieve--0fed5a1949c1cd60d4a5a07b.md) | 184 | `result-track:0fed5a1949c1cd60d4a5a07bbad7f8a4c71e1517aa538771303ccb4815b536f6` |
| 24 | `abbrev` | [sheafEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantc423c8e731e43f170c75a949ce59ebd6592bfdd4c40585c8f8a8101ba1ec866b.lean/declarations/sheafequiv--88b6c4ff4b9bd7178d587d37.md) | 195 | `declaration-track:88b6c4ff4b9bd7178d587d37e1f59f28c5c0cedca38fb1de3749ec0c294d4f62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

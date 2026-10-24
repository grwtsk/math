# Verification target: GRWTSK.Geometry.AlgebraicGeometry.SmallAffineZariski.Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c80ae9d09ae1705fd7332c94c8401804d7b0bd93",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c80ae9d09ae1705fd7332c94c8401804d7b0bd93`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.DenseSubsite.InducedTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Scheme.AffineZariskiSite](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/scheme-affinezariskisite--52edb495aeb0ffc453f1cb21.md) | 46 | `declaration-track:52edb495aeb0ffc453f1cb21a2d37d0811ca0b53092643a9497a470121b0f4bd` |
| 2 | `abbrev` | [toOpens](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/toopens--2963a1c4abafdd13cb89fb91.md) | 51 | `declaration-track:2963a1c4abafdd13cb89fb9191f73c0a8d866429c340033541226cb255424837` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--53bcb44cdc583748d1d27979.md) | 53 | `declaration-track:53bcb44cdc583748d1d27979cff6751a4238dee9b7b3a9010e34f9bbbe552972` |
| 4 | `lemma` | [toOpens_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/toopens-mono--95985a45945a0a12072e1c3d.md) | 60 | `result-track:95985a45945a0a12072e1c3de2075dde0352f1f3e78f11dd83bff06036b08426` |
| 5 | `lemma` | [toOpens_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/toopens-injective--d734a09460e5402036a6c3ff.md) | 65 | `result-track:d734a09460e5402036a6c3ffcb6275911a82682f7e3223ece60eeae0e6aa3723` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--a40926db597bc1085dfbca44.md) | 67 | `declaration-track:a40926db597bc1085dfbca44604ccaff5c0ca4a3a8c963aff9a2c2ad69400cac` |
| 7 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/basicopen--22615b411fa7f25034b92e28.md) | 71 | `declaration-track:22615b411fa7f25034b92e28bcbb4e6c3394db2f9e1897930063cefed0fe325e` |
| 8 | `lemma` | [basicOpen_le](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/basicopen-le--597518f0353b56a5ce4389f7.md) | 74 | `result-track:597518f0353b56a5ce4389f78f43a44efe4acfc16794bdd4bf6b42a759cd459e` |
| 9 | `def` | [toOpensFunctor](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/toopensfunctor--b364da416dea6ebd3b726e61.md) | 79 | `declaration-track:b364da416dea6ebd3b726e61fbd07c2214ce67a2184636818e4f4d8da729dd33` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--3d449da7767194f7aa7091c0.md) | 81 | `declaration-track:3d449da7767194f7aa7091c01c0f9ec6c10fc9dc27a8fe7a7902d9f71abc08b6` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--fc2c68a8004cbeed9ba8765f.md) | 83 | `declaration-track:fc2c68a8004cbeed9ba8765ff1a20a31aad86a5d353f7e1e531b93196274ed9f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--f5c6dfe02d3034889fb3072c.md) | 91 | `declaration-track:f5c6dfe02d3034889fb3072c31a6e614dc6de293ff7517c3fa7f1feb224356b1` |
| 13 | `def` | [grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/grothendiecktopology--5d69525e246cab4c31277ab3.md) | 100 | `declaration-track:5d69525e246cab4c31277ab30e254ea5c1a292dfbeea37448f8c1952beed9e52` |
| 14 | `lemma` | [mem_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/mem-grothendiecktopology--2d84454aecaadba26140c354.md) | 103 | `result-track:2d84454aecaadba26140c354b695ce7032d9f32c223cfbc5736b7da0007380a4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/instance--d812ef66d4be1ade49df8b64.md) | 112 | `declaration-track:d812ef66d4be1ade49df8b642818d1171157232269523263421300619590e438` |
| 16 | `def` | [presieveOfSections](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/presieveofsections--c7d0e003b4c7721b7a9f979f.md) | 118 | `declaration-track:c7d0e003b4c7721b7a9f979f0c9346966686df4da99526311c30a4fc702b584f` |
| 17 | `def` | [sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/sectionsofpresieve--aae0d43113072e672d8789ba.md) | 122 | `declaration-track:aae0d43113072e672d8789ba5d628351186370c89748ac1839875916f531d7ff` |
| 18 | `lemma` | [presieveOfSections_sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/presieveofsections-sectionsofpresieve--570ca5c94a210a0518d1e9f6.md) | 125 | `result-track:570ca5c94a210a0518d1e9f6a643e857d2850e21e8d01bc8f35d1ded9e4dc54f` |
| 19 | `lemma` | [presieveOfSections_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/presieveofsections-surjective--003c6b6b0e33d316b633dee0.md) | 134 | `result-track:003c6b6b0e33d316b633dee0bd13bec9e286407d8547abed1dc521dc0668697a` |
| 20 | `lemma` | [presieveOfSections_eq_ofArrows](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/presieveofsections-eq-ofarrows--36539130cdd2863904ebe400.md) | 138 | `result-track:36539130cdd2863904ebe400d1a3f0b3123e1f4b980d24c1c729f5e31f32ac8c` |
| 21 | `lemma` | [generate_presieveOfSections](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/generate-presieveofsections--5c8099b3bf078b0453c9c9de.md) | 146 | `result-track:5c8099b3bf078b0453c9c9de57498f9d835efa5e598c2076d3a92312536b004e` |
| 22 | `lemma` | [generate_presieveOfSections_mem_grothendieckTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/generate-presieveofsections-mem-grothendiecktopology--b43f39d9d9062ca8e65a26dd.md) | 161 | `result-track:b43f39d9d9062ca8e65a26ddf802ddbc9889e4dda22f27a4aa9a2dc9afb529f5` |
| 23 | `lemma` | [mem_grothendieckTopology_iff_sectionsOfPresieve](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/mem-grothendiecktopology-iff-sectionsofpresieve--65d794b05db595c6fa181184.md) | 176 | `result-track:65d794b05db595c6fa181184040dde94aec121bf57930de9f76d77cf97705a3e` |
| 24 | `abbrev` | [sheafEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/SmallAffineZariski/Variantd3d465d3fbeb6dea277aca091bce6fb5d56e677a93a86cf400254620fa59ce2f.lean/declarations/sheafequiv--ac55739a4cd42bdfa7d7c396.md) | 187 | `declaration-track:ac55739a4cd42bdfa7d7c396df18ccde95b80b0fcc2b8841bf1de2fe9e80b718` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

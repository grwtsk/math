# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Directed.Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92261c90d0fbb12e437bc43ac8ddb4076f2f47ee",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92261c90d0fbb12e437bc43ac8ddb4076f2f47ee`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/locallydirected--ff2137cfa928ca73404b2abb.md) | 52 | `declaration-track:ff2137cfa928ca73404b2abb26d9875dc677d4dfc452b95e46b4d050517d2e5d` |
| 2 | `def` | [trans](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/trans--c51820bdcdade7bb05ad37cc.md) | 67 | `declaration-track:c51820bdcdade7bb05ad37cccdcd777e876a168abe68f7b809cd2a120e4123de` |
| 3 | `lemma` | [trans_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/trans-map--27d4275feabd3c7a5370cd92.md) | 70 | `result-track:27d4275feabd3c7a5370cd928f35131ea5eca273c670fc43b064d275d480518f` |
| 4 | `lemma` | [trans_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/trans-id--0be7d97a9cd2800ff893cd72.md) | 74 | `result-track:0be7d97a9cd2800ff893cd72284a05ed71ff456a7829166bdcd80c2375ace1f9` |
| 5 | `lemma` | [trans_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/trans-comp--a93460e0f292285b6e4baf69.md) | 77 | `result-track:a93460e0f292285b6e4baf69cedaba71046317af4ce49f126fc1d799507cf7bc` |
| 6 | `lemma` | [exists_lift_trans_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/exists-lift-trans-eq--1e6a11ed30ff4819933463a8.md) | 80 | `result-track:1e6a11ed30ff4819933463a8fa4f5a1fdeaebea179873ad517765d8b0e5ceddd` |
| 7 | `lemma` | [exists_of_f_eq_f](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/exists-of-f-eq-f--4c7f930a25665d5903a2fd44.md) | 86 | `result-track:4c7f930a25665d5903a2fd442b85904e9d29dcf89fa99908779e6f7c34fd3b2d` |
| 8 | `lemma` | [exists_of_trans_eq_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/exists-of-trans-eq-trans--2fd217e0bb903a3da6ce391d.md) | 94 | `result-track:2fd217e0bb903a3da6ce391dc482df7c6d88917ca9c0a926cdaa6d001aa1ee53` |
| 9 | `lemma` | [property_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/property-trans--8475aea9c56c6abd492f8170.md) | 101 | `result-track:8475aea9c56c6abd492f8170e0310904a6d1dce9f1fb3095b2724306d0ab7f80` |
| 10 | `def` | [intersectionOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/intersectionoflocallydirected--c819903ee8abf5ce992f8353.md) | 107 | `declaration-track:c819903ee8abf5ce992f8353f3ac30a9a80987747aaf9a2648f2854a6a20afba` |
| 11 | `def` | [functorOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/functoroflocallydirected--c37d062561062ac403ef3898.md) | 124 | `declaration-track:c37d062561062ac403ef3898658afc7557a181832944695aaaef54df737a3c20` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--0db8568c22821c8210f91306.md) | 130 | `declaration-track:0db8568c22821c8210f91306b58e8172d5301ea9b53de9bc2be991e4c00daa74` |
| 13 | `def` | [functorOfLocallyDirectedHomBase](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/functoroflocallydirectedhombase--970643360f9048a365021bde.md) | 145 | `declaration-track:970643360f9048a365021bde185bf8b3f97507c04dcad95ec9d0655eb4318481` |
| 14 | `def` | [coconeOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/coconeoflocallydirected--0ae95e3487d343aa4ef6e500.md) | 154 | `declaration-track:0ae95e3487d343aa4ef6e50080c0f0124b556274e279f1735af145cb5efcfb15` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--da10ab54be17064a998b592b.md) | 163 | `declaration-track:da10ab54be17064a998b592b052757b89fa2e739d65facfe0b26ef6a1fbf1dd2` |
| 16 | `instance` | [locallyDirectedPullbackCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/locallydirectedpullbackcover--e482c63f29a29302f5ebc669.md) | 167 | `declaration-track:e482c63f29a29302f5ebc6699c985ef1560f8c8423301f6df7c93ec61700814b` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--bfc24e868ff673a3e459384f.md) | 211 | `declaration-track:bfc24e868ff673a3e459384fc07cdec75672542f412a04eceb150cf050d79ec4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--a69dbacd707a2cd097aac100.md) | 214 | `declaration-track:a69dbacd707a2cd097aac100d41201ff95ea3c163f642c9126a2e48333815c0c` |
| 19 | `def` | [glueMorphismsOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/gluemorphismsoflocallydirected--fd7912bcefd0ba63a496d8e6.md) | 224 | `declaration-track:fd7912bcefd0ba63a496d8e6bc3523fc60e09f22adaf82fad78f033bed346234` |
| 20 | `lemma` | [map_glueMorphismsOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/map-gluemorphismsoflocallydirected--830f4ca4ffe388c767b278d4.md) | 234 | `result-track:830f4ca4ffe388c767b278d4a984e1d0946262764d8fa642f6c5be687bbbf2b2` |
| 21 | `def` | [isColimitCoconeOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/iscolimitcoconeoflocallydirected--5c8c9547a62fb387512f6d73.md) | 243 | `declaration-track:5c8c9547a62fb387512f6d731dc18870558bac3a6411ef8e13884296c1b4f405` |
| 22 | `def` | [glueMorphismsOverOfLocallyDirected](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/gluemorphismsoveroflocallydirected--dd2613821ecb64e0ecd7a4e4.md) | 249 | `declaration-track:dd2613821ecb64e0ecd7a4e45538adeaa0bc04826e4f2d24e1f832d18d8dcbb5` |
| 23 | `lemma` | [map_glueMorphismsOverOfLocallyDirected_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/map-gluemorphismsoveroflocallydirected-left--8b34ba552340c1e278103c9b.md) | 261 | `result-track:8b34ba552340c1e278103c9be77eb123024e0951ae1b453ef35f66f0d006cb39` |
| 24 | `def` | [Cover.LocallyDirected.ofIsBasisOpensRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/cover-locallydirected-ofisbasisopensrange--0bf2e485cc2d08c776f169c7.md) | 274 | `declaration-track:0bf2e485cc2d08c776f169c7317d0abbf3bb9d45ccd9ae35a9cd93dfa052338e` |
| 25 | `lemma` | [Cover.LocallyDirected.ofIsBasisOpensRange_le_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/cover-locallydirected-ofisbasisopensrange-le-iff--ab6e5bd1ef9ef1e77af06b6d.md) | 302 | `result-track:ab6e5bd1ef9ef1e77af06b6d739b5f5d4f6cf5c60b7ded7afa66337adc7e4918` |
| 26 | `lemma` | [Cover.LocallyDirected.ofIsBasisOpensRange_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/cover-locallydirected-ofisbasisopensrange-trans--cfc2b8e6bc400b1fbcbf6335.md) | 306 | `result-track:cfc2b8e6bc400b1fbcbf633556c26e5162d6f111abd481a3c411ae4327b306cd` |
| 27 | `def` | [directedAffineCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/directedaffinecover--ee3d549fdd0ede1ca0cd773c.md) | 317 | `declaration-track:ee3d549fdd0ede1ca0cd773c1db02f5c3f85f5e753f3179ef96e95440db0cf61` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--b648928d18cd168b727483dc.md) | 328 | `declaration-track:b648928d18cd168b727483dcd9cdb159f689bc76ccf1741ac91a5865bfd05d6c` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/instance--8ef00e8c6bfce22a3d9b7042.md) | 332 | `declaration-track:8ef00e8c6bfce22a3d9b70427386a7bac35595bf74f3ede7e885d4364a1d0047` |
| 30 | `lemma` | [directedAffineCover_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/Directed/Variantd8b625065d6a09114578c53fef8ee894c111230ad95fbd6497429343d9e3ccce.lean/declarations/directedaffinecover-trans--79418c2097898845c9892338.md) | 338 | `result-track:79418c2097898845c9892338be56e3e25a0de8f359cf5437f2c5e0aa13ef4c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

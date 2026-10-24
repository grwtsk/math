# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Artinian.Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a275ac77ff550dfeb702072d6d2e971259e74468",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a275ac77ff550dfeb702072d6d2e971259e74468`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean.json)

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
| 1 | `class` | [IsLocallyArtinian](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian--64db7fcb3f119d8b038bf5fc.md) | 61 | `declaration-track:64db7fcb3f119d8b038bf5fcdbcaae7c6c4efeaf79eb2631054cdc377d0173a3` |
| 2 | `instance` | [IsLocallyArtinian.isLocallyNoetherian](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-islocallynoetherian--8318090f3d15902fd2fbd0b7.md) | 67 | `declaration-track:8318090f3d15902fd2fbd0b72fcec03f173074c3d07c8f2d0ad302e7b88d2d8a` |
| 3 | `instance` | [IsLocallyArtinian.isArtinianRing_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-isartinianring-of-isaffine--ef8cd62634a3524f5d23763a.md) | 70 | `declaration-track:ef8cd62634a3524f5d23763ac8120b7b214a727a8310a4f97224040aa5b1c207` |
| 4 | `lemma` | [IsLocallyArtinian.of_topologicalKrullDim_le_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-of-topologicalkrulldim-le-zero--6a6bc456fa2b1aa6c4d8e1c1.md) | 74 | `result-track:6a6bc456fa2b1aa6c4d8e1c17bf457e761c36d790c8948c14579f2a409448516` |
| 5 | `theorem` | [IsLocallyArtinian.of_isLocallyNoetherian_of_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-of-islocallynoetherian-of-discretetopology--872fa5de383442f96456ca5e.md) | 84 | `result-track:872fa5de383442f96456ca5e96c18a4797a61acd8f03b8d115d0eb0f7cbeaf9e` |
| 6 | `lemma` | [IsLocallyArtinian.of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-of-isopenimmersion--7e64049095130b9d10bf434e.md) | 90 | `result-track:7e64049095130b9d10bf434e01f929c2238d9cb459ce3e0394a9db6e2ddfce7d` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--236362845e6506015d9978ea.md) | 97 | `declaration-track:236362845e6506015d9978ea2945fec647d2129ce896bf70019f9d4e3883a976` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--3e2461853e15cf1f5a915001.md) | 99 | `declaration-track:3e2461853e15cf1f5a9150015ed1ea856a3c881618f507e9ff6feed525d8cf0e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--c8ba6a6ae2839b343695e232.md) | 103 | `declaration-track:c8ba6a6ae2839b343695e232bea761663bb950d2b3d89586f9cc7324e7d900f6` |
| 10 | `theorem` | [IsLocallyArtinian.iff_isLocallyNoetherian_and_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-iff-islocallynoetherian-and-discretetopology--35453cc0598856cc07ee55d1.md) | 113 | `result-track:35453cc0598856cc07ee55d109d357396f30f33cb65c2ab7af5b134b07ab66a3` |
| 11 | `theorem` | [IsLocallyArtinian.of_isImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-of-isimmersion--c1717baf27c37fde73761959.md) | 118 | `result-track:c1717baf27c37fde73761959b2b89ef6d08f8245ead4cfead0233d85f123d730` |
| 12 | `theorem` | [Scheme.isLocallyArtinianScheme_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/scheme-islocallyartinianscheme-spec--1467c713579f81826a548ce5.md) | 124 | `result-track:1467c713579f81826a548ce54b182fd8ad58f1d0f4469f706534f012e8d754d7` |
| 13 | `theorem` | [isLocallyArtinian_iff_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-iff-opencover--713c8e3059df354ebe1e35c8.md) | 130 | `result-track:713c8e3059df354ebe1e35c86ce698d32d37c4cef5d2020f0a932ff753ed4edc` |
| 14 | `theorem` | [isLocallyArtinian_iff_of_isOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/islocallyartinian-iff-of-isopencover--70a8a8599e63b1e4104b81e4.md) | 140 | `result-track:70a8a8599e63b1e4104b81e4e5140bb6d8e4287ccf35e20d18e4cc8ba7bd015a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--451d234cb8689afaa70b1f85.md) | 148 | `declaration-track:451d234cb8689afaa70b1f856c6b9c6a76386578e43a4ee2f7c91d24bfff80bc` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--d74118405f4dea4c8b068d56.md) | 151 | `declaration-track:d74118405f4dea4c8b068d568760094f03fffa5a0ff779bfb8cf91427f35cef1` |
| 17 | `class` | [IsArtinianScheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/isartinianscheme--92deba32f3ff4bbe17f00bfa.md) | 170 | `declaration-track:92deba32f3ff4bbe17f00bfa77136f5dd0acda8879755b590b5f4da91db13ebc` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--7537a240be7163bb5afb16c5.md) | 173 | `declaration-track:7537a240be7163bb5afb16c5d73b51253c56036a7eaa42dbd7f3ca847f08ffdb` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--2d6096154dfc59e69f5f0845.md) | 176 | `declaration-track:2d6096154dfc59e69f5f084517ffe7e5324aa40293f9ef2b13c88b8c44248e07` |
| 20 | `theorem` | [IsArtinianScheme.iff_isNoetherian_and_discreteTopology](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/isartinianscheme-iff-isnoetherian-and-discretetopology--3f004511c6d47ec6f99b5611.md) | 180 | `result-track:3f004511c6d47ec6f99b5611251946d9e8d384baec2d23a851d5cf65e53ac1ae` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--1c7ba4c342e7d14188bf7685.md) | 185 | `declaration-track:1c7ba4c342e7d14188bf7685dc5801d80850c1ab447ffb8f87d2b1283bd59243` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/instance--62887e8caa238aff53bddf52.md) | 191 | `declaration-track:62887e8caa238aff53bddf526371610420289dab40137330599546faee564dc2` |
| 23 | `theorem` | [Scheme.isArtinianScheme_Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Artinian/Varianta0f7665ce0e40b14977d3956bf8a2b2a75404f92417b6aa4236f5e300881710d.lean/declarations/scheme-isartinianscheme-spec--5b0f2ad2d5495afae2060271.md) | 195 | `result-track:5b0f2ad2d5495afae2060271d2c9b6ad55d3b83acf314a48a5247ade637cb270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

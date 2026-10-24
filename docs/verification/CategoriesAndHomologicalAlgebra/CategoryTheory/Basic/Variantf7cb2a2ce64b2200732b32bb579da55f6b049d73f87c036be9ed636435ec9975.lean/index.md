# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74de478f8ad306d3d614142de1ab59acadf6a9d4",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74de478f8ad306d3d614142de1ab59acadf6a9d4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean.json)

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
| 1 | `class` | [Projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projective--2f628acfd9097f24f53a42d2.md) | 56 | `declaration-track:2f628acfd9097f24f53a42d273decd16cd238daee35b2f2c1976d2fad01b0ce4` |
| 2 | `abbrev` | [isProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/isprojective--3f4dd35ee15298ec39dfdca9.md) | 61 | `declaration-track:3f4dd35ee15298ec39dfdca917e7443c5b15e2fd15d22a100034faba242491fa` |
| 3 | `lemma` | [Limits.IsZero.projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/limits-iszero-projective--69ffd7919ddfbb61899694c1.md) | 63 | `result-track:69ffd7919ddfbb61899694c19c37075ffb9998b59fe6f8c09fb5b4778cbd7f73` |
| 4 | `structure` | [ProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projectivepresentation--5b10328f6a0c29f15f27236f.md) | 71 | `declaration-track:5b10328f6a0c29f15f27236f5567dc638d8ea2e0ec461d1c545f75cce6544559` |
| 5 | `class` | [EnoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/enoughprojectives--ee664f8104c9d07c7b179df4.md) | 85 | `declaration-track:ee664f8104c9d07c7b179df4eaa2d5239d2f9863828fdf09cdda443c75d7337c` |
| 6 | `def` | [factorThru](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/factorthru--fbd5e27e1b7fb8be49a05b4e.md) | 97 | `declaration-track:fbd5e27e1b7fb8be49a05b4ebe61992c7752391125f08906c442a998aa0a7cc2` |
| 7 | `theorem` | [factorThru_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/factorthru-comp--75bc131a391af10dc510689a.md) | 101 | `result-track:75bc131a391af10dc510689a2502095a3b4909af0db04a638a396137811a4e34` |
| 8 | `instance` | [zero_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/zero-projective--102f3c2f349882c109d69e53.md) | 109 | `declaration-track:102f3c2f349882c109d69e53e6e7504761ea1e86d1fcb0edbb7971bd3432a86d` |
| 9 | `theorem` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/of-iso--2167fd2c88c86210b4d36e8c.md) | 114 | `result-track:2167fd2c88c86210b4d36e8c78e610d847c72e5e9990fa474dc94340ffbfc721` |
| 10 | `theorem` | [iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/iso-iff--af94194cd7b3aadada2ae622.md) | 119 | `result-track:af94194cd7b3aadada2ae6220f3d551aac763a649ea575d655919713a371e0f0` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--7934bb3aeb158748d351b286.md) | 123 | `declaration-track:7934bb3aeb158748d351b286241811e39559573b56fedb2777babb293a9d0f74` |
| 12 | `instance` | [Type.enoughProjectives](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/type-enoughprojectives--a5cfcda14a9f40406fcae50d.md) | 128 | `declaration-track:a5cfcda14a9f40406fcae50d3911d8d9517d872dd7135d6d10bbf7be3d1675b9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--4fc9114f65c8313ac8209940.md) | 131 | `declaration-track:4fc9114f65c8313ac8209940f14ca565f0d6b94e5d997265c4e418d32acdeb3f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--a9462d410ba68c109b01702b.md) | 135 | `declaration-track:a9462d410ba68c109b01702bd597ad1b7a6e6f8f884242c7aa70b2619acdafd2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--b4f12855e97a90d8cfba6306.md) | 138 | `declaration-track:b4f12855e97a90d8cfba6306af4606faca49e1a08a24b27c1fd9738debffbc67` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--1c4212d9bb80f97c931ac16b.md) | 143 | `declaration-track:1c4212d9bb80f97c931ac16bd8914db11b88e989c841bb7cda8bfe6ea0551326` |
| 17 | `theorem` | [projective_iff_preservesEpimorphisms_coyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projective-iff-preservesepimorphisms-coyoneda-obj--0f743d8a85a5139ea4e317f4.md) | 147 | `result-track:0f743d8a85a5139ea4e317f45a15475fab05eae28cd70d29c3ba3ea9f17b73ad` |
| 18 | `def` | [over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/over--f76dcafa80f8cae5525671e1.md) | 165 | `declaration-track:f76dcafa80f8cae5525671e115bafbf1a1b469e94dd438c84f71ee0b07030567` |
| 19 | `instance` | [projective_over](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projective-over--48fbc30f5d6263c8763c82f6.md) | 168 | `declaration-track:48fbc30f5d6263c8763c82f61c001339978d71d4971b2a85f230a092b90969f2` |
| 20 | `def` | [π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/anonymous--323647f9877adc7f306cf743.md) | 174 | `declaration-track:323647f9877adc7f306cf743a9987432922eaa95de12f9aaef5c155c3ef9d0cb` |
| 21 | `instance` | [π_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/epi--5e33681c8af7e8554dbfed78.md) | 177 | `declaration-track:5e33681c8af7e8554dbfed7814afafd2c1efa8bcebba8cb5c2695924bdbb59b0` |
| 22 | `def` | [syzygies](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/syzygies--1acda6c7a6902c5a773bb21b.md) | 187 | `declaration-track:1acda6c7a6902c5a773bb21b321abeaac197038a2ccab80abfec5cecc66b1320` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/instance--38325d8daa7cd306f860e376.md) | 189 | `declaration-track:38325d8daa7cd306f860e376f3f7d234165a54e911cb6fcbaadc6a98002c357b` |
| 24 | `abbrev` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/d--5ece34dcc4d30eaba9fd5f06.md) | 197 | `declaration-track:5ece34dcc4d30eaba9fd5f06f46d32d4b8f489d88866c232c0a226ee4bd05e6a` |
| 25 | `theorem` | [map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/map-projective--60eab975868c602c2be759ad.md) | 211 | `result-track:60eab975868c602c2be759adcd9c497372dc65211605cc681b481940c1d585d4` |
| 26 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projective-of-map-projective--79c3a59d3729a80b94e86bc4.md) | 219 | `result-track:79c3a59d3729a80b94e86bc47f73b97d346ad1faa659ae958cd4f5742fad8a47` |
| 27 | `def` | [mapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/mapprojectivepresentation--dfbbd3ccc28b2a2e7a79dc36.md) | 229 | `declaration-track:dfbbd3ccc28b2a2e7a79dc36ca22b95d50564162452788f6adec6515879cf6cf` |
| 28 | `theorem` | [projective_of_map_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projective-of-map-projective--986c67380c63234b47ce3df7.md) | 242 | `result-track:986c67380c63234b47ce3df704539017f8b7670fd75c01472adbe0d4236dc832` |
| 29 | `theorem` | [map_projective_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/map-projective-iff--463167187b915e444a0810dc.md) | 254 | `result-track:463167187b915e444a0810dc837abac0dd58e9a4b708a8496138ae15787af4e8` |
| 30 | `def` | [projectivePresentationOfMapProjectivePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/projectivepresentationofmapprojectivepresentation--42a9d5189a50cca3d6557786.md) | 259 | `declaration-track:42a9d5189a50cca3d6557786b836e3a5915f3c1a0f3d09eb69beab94ce0090b7` |
| 31 | `theorem` | [enoughProjectives_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/enoughprojectives-iff--1a872201592821870b570ea5.md) | 266 | `result-track:1a872201592821870b570ea5b24ac6edcfd0203db9011b2fdadac45593295ffa` |
| 32 | `lemma` | [Retract.projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantf7cb2a2ce64b2200732b32bb579da55f6b049d73f87c036be9ed636435ec9975.lean/declarations/retract-projective--b1ccaa987d44f2086a2db1e0.md) | 276 | `result-track:b1ccaa987d44f2086a2db1e0b3e4ec275b649adc5c13b5200555b0ee2eb7665e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

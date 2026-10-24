# Verification target: GRWTSK.Topology.GeneralTopology.ConstructibleSet.Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f630b519f2e64e96f097f563565af04254b2c9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f630b519f2e64e96f097f563565af04254b2c9`.

Source path: `GRWTSK/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.WithBot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BasicConstructibleSetData](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/basicconstructiblesetdata--24285027e807f344947c3f51.md) | 33 | `declaration-track:24285027e807f344947c3f5133e6f085801aec30324daee3c9d89bad6adf2c09` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/instance--c198072fb2e2487f68086f9b.md) | 43 | `declaration-track:c198072fb2e2487f68086f9b06d076ecbc56af3162daf6807af2320402b05fad` |
| 3 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map--55f2eadf4e209ce1956b998b.md) | 48 | `declaration-track:55f2eadf4e209ce1956b998bbe1a48202a78e9936b55b23e4640ef6ff527ebdc` |
| 4 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-id--19f9ece6427876d56f4c0b79.md) | 54 | `result-track:19f9ece6427876d56f4c0b79ef66f91908359f9f6b7214f482d804b395a39325` |
| 5 | `lemma` | [map_id'](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-id--2d04a4d1974d3ced1bf0353b.md) | 56 | `result-track:2d04a4d1974d3ced1bf0353bc1bd42b84036208f720a7a05e4bdc3c8c077b706` |
| 6 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-comp--e0cf47ab7a03d57bdf4ab8aa.md) | 58 | `result-track:e0cf47ab7a03d57bdf4ab8aaff383bb5e0fe538f376f7ef220cf7bc7714f4a31` |
| 7 | `lemma` | [map_comp'](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-comp--cf46175346497296cec3c1dc.md) | 61 | `result-track:cf46175346497296cec3c1dc679cc28e93384faa259cc36235da18aaac6816dd` |
| 8 | `def` | [toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/toset--4969756c8493ae7eb1da45f1.md) | 66 | `declaration-track:4969756c8493ae7eb1da45f1e0b97d84ce53c63155f84b6fa02bdbd443fc3ec3` |
| 9 | `lemma` | [toSet_map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/toset-map--0fecb7ca562e305fd57ce5d3.md) | 70 | `result-track:0fecb7ca562e305fd57ce5d348870800035c740833e8e9366cc17a985c84c8cd` |
| 10 | `abbrev` | [ConstructibleSetData](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/constructiblesetdata--32586d4a7f22ee1f30ad60fb.md) | 80 | `declaration-track:32586d4a7f22ee1f30ad60fbf6d7ee4c059659783e5d0c4ffda86aec3df34d4f` |
| 11 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map--e574178991ff203ac7820f8b.md) | 86 | `declaration-track:e574178991ff203ac7820f8b4fa91724af6c6437113f3473e51e8a55fa8ec695` |
| 12 | `lemma` | [map_id](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-id--7a3949c404391609e0e4a5d0.md) | 90 | `result-track:7a3949c404391609e0e4a5d0fe683248f7afc1ee1721a45d3942ce885c971890` |
| 13 | `lemma` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/map-comp--f4d682359d4a77e8f0ba96ac.md) | 92 | `result-track:f4d682359d4a77e8f0ba96ac4dabe45af51aea1d834a712fdfe1ff9e3d6e8191` |
| 14 | `def` | [toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/toset--e403f9dc2a2cd5ae2b8a8ef3.md) | 98 | `declaration-track:e403f9dc2a2cd5ae2b8a8ef37a5387e00b2507214e25fb018802ea8151aeeea2` |
| 15 | `lemma` | [toSet_map](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/toset-map--c6115ffafaa49e31c7189325.md) | 101 | `result-track:c6115ffafaa49e31c718932539321aaaba6816e9cf7b7fe2f4f3b135612cc50d` |
| 16 | `def` | [degBound](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/degbound--ffc7f9baef28b8732d05c4bf.md) | 108 | `declaration-track:ffc7f9baef28b8732d05c4bfcd631ba9def9d928d04f7d999b410dcb8e77081e` |
| 17 | `lemma` | [isConstructible_toSet](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/isconstructible-toset--e6f66b02af27c4b34c75d470.md) | 110 | `result-track:e6f66b02af27c4b34c75d47076b729c4b7604feabe75b4333a66f0dfdae3d0ef` |
| 18 | `lemma` | [exists_constructibleSetData_iff](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/exists-constructiblesetdata-iff--fb7c6c74e2e1b5e3371389ba.md) | 122 | `result-track:fb7c6c74e2e1b5e3371389baf79eac2b92cdf1e55acb72d88a51b9b2a8491418` |
| 19 | `lemma` | [exists_range_eq_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/exists-range-eq-of-isconstructible--665672476d65e8cc527e7b1a.md) | 146 | `result-track:665672476d65e8cc527e7b1a297d5e631b0600f10a53c086132f9cdaed985e57` |
| 20 | `lemma` | [isClosed_of_stableUnderSpecialization_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/isclosed-of-stableunderspecialization-of-isconstructible--be1b8f8313b29d1f128cd7a5.md) | 165 | `result-track:be1b8f8313b29d1f128cd7a5aa2897f263d774c3771c3b1f1d2d8407786b131e` |
| 21 | `lemma` | [isOpen_of_stableUnderGeneralization_of_isConstructible](../../../../../mathematics/Topology/GeneralTopology/ConstructibleSet/Variantcdccd8d13c222f6e37c7d08ecf713f60f5316684eca3346f788dbf2877101280.lean/declarations/isopen-of-stableundergeneralization-of-isconstructible--a89eafdbb9bd3f974bc840de.md) | 172 | `result-track:a89eafdbb9bd3f974bc840de332b915fb1de1cea8aaec941b6ef6bd97ffa4ca6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

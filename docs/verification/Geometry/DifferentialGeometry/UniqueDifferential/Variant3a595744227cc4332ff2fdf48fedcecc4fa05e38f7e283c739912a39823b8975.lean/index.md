# Verification target: GRWTSK.Geometry.DifferentialGeometry.UniqueDifferential.Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d6dbd94715a5b75332560c5a936793a9e8ffa75",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d6dbd94715a5b75332560c5a936793a9e8ffa75`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Atlas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UniqueMDiffWithinAt.image_denseRange](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffwithinat-image-denserange--bb6fd177efbd12039feed5f4.md) | 43 | `result-track:bb6fd177efbd12039feed5f456b26b24be5f4fb5a5e0c96ea737ee9fb9f571b3` |
| 2 | `theorem` | [UniqueMDiffOn.image_denseRange'](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-image-denserange--d79555c945366b47f7ed3f85.md) | 58 | `result-track:d79555c945366b47f7ed3f858e02b6ba05c08c4d52342d9f7a0550b7af20dc20` |
| 3 | `theorem` | [UniqueMDiffOn.image_denseRange](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-image-denserange--9c08e5085476e042f241eaf0.md) | 66 | `result-track:9c08e5085476e042f241eaf0fc8a320cf22f1f175dea42b3463e20b097fa2686` |
| 4 | `theorem` | [UniqueMDiffWithinAt.preimage_partialHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffwithinat-preimage-partialhomeomorph--bd32076f020f972c52baecad.md) | 71 | `result-track:bd32076f020f972c52baecad7cfda90074d4204e3594e45830fcc7c1a66aa21c` |
| 5 | `theorem` | [UniqueMDiffOn.uniqueMDiffOn_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-uniquemdiffon-preimage--7a74834ca6d14c89718b5195.md) | 81 | `result-track:7a74834ca6d14c89718b5195e916479fa3e2f666379bdfcd3082cbd0b65ee8ca` |
| 6 | `theorem` | [UniqueMDiffOn.uniqueMDiffOn_target_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-uniquemdiffon-target-inter--415f95fd1412dafe05bead85.md) | 88 | `result-track:415f95fd1412dafe05bead85a6024321324c00f348930c98d0e85842abc5604f` |
| 7 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_target_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-uniquediffon-target-inter--e880029f054cfae8840faecf.md) | 100 | `result-track:e880029f054cfae8840faecfa13859b991758a55700bedf6cff08b1a736e36af` |
| 8 | `theorem` | [UniqueMDiffOn.uniqueDiffWithinAt_range_inter](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-uniquediffwithinat-range-inter--b50eedeb2c49d5e295423edb.md) | 105 | `result-track:b50eedeb2c49d5e295423edb89618c76ed55dfa999b81536a9517e08e5482a6e` |
| 9 | `theorem` | [UniqueMDiffOn.uniqueDiffOn_inter_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-uniquediffon-inter-preimage--b09b5d917d453a2503106734.md) | 115 | `result-track:b09b5d917d453a25031067340ac25be7ebc4f43809786babd57718540c44b376` |
| 10 | `lemma` | [UniqueMDiffWithinAt.bundle_preimage_aux](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffwithinat-bundle-preimage-aux--b01ec380528e9b03e638d56d.md) | 133 | `result-track:b01ec380528e9b03e638d56dd50da3f55872ad0862b5e2216726e578b17bbcde` |
| 11 | `theorem` | [UniqueMDiffWithinAt.bundle_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffwithinat-bundle-preimage--b8f7cb0ea1103536c20e2703.md) | 165 | `result-track:b8f7cb0ea1103536c20e2703b86d7767c0ea34a953d948de4e36b717bb3a7f33` |
| 12 | `theorem` | [UniqueMDiffWithinAt.bundle_preimage'](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffwithinat-bundle-preimage--02fd41d65a6546ad01a882c3.md) | 181 | `result-track:02fd41d65a6546ad01a882c3edc5805e467a57e63572189536ce661f0eb3cb1f` |
| 13 | `theorem` | [UniqueMDiffOn.bundle_preimage](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/uniquemdiffon-bundle-preimage--be3e1e4a1b91e264cacfdd75.md) | 190 | `result-track:be3e1e4a1b91e264cacfdd7579aeff73b5119c1617b1c84cfcc60ae584914816` |
| 14 | `theorem` | [Trivialization.mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/UniqueDifferential/Variant3a595744227cc4332ff2fdf48fedcecc4fa05e38f7e283c739912a39823b8975.lean/declarations/trivialization-mdifferentiable--302b4c69a098185d7d29c5b1.md) | 200 | `result-track:302b4c69a098185d7d29c5b12731005dab49f7a5bc312d2a604b400949ff53b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

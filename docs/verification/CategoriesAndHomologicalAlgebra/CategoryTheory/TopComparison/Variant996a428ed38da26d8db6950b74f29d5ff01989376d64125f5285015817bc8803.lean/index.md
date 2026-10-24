# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TopComparison.Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "988ef792acd8a799f03c716551a2153e06eace0b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `988ef792acd8a799f03c716551a2153e06eace0b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SheafComparison` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Yoneda` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [factorsThrough_of_pullbackCondition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/factorsthrough-of-pullbackcondition--a2ceda5196c655353c8bdb53.md) | 35 | `result-track:a2ceda5196c655353c8bdb536a332dbed16580c2b505513cffe961803f27c758` |
| 2 | `theorem` | [equalizerCondition_yonedaPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/equalizercondition-yonedapresheaf--238203c5292f05e11127ce1e.md) | 60 | `result-track:238203c5292f05e11127ce1e11923d85a64fdf1beafd7792e4687ab4cf2e2c02` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/instance--a5c8b01c5389be99255d2aaf.md) | 88 | `declaration-track:a5c8b01c5389be99255d2aaf260fae1f4fd84b9e6ce73e6fb5922e2fb5584989` |
| 4 | `def` | [TopCat.toSheafCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/topcat-tosheafcomphauslike--8dc7f70e52d8db87581a56bd.md) | 103 | `declaration-track:8dc7f70e52d8db87581a56bd5ec5473069e5f0a329285701d777eff2f0d805cc` |
| 5 | `def` | [topCatToSheafCompHausLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/topcattosheafcomphauslike--40a0e7bb004e0480d4b0a0ed.md) | 121 | `declaration-track:40a0e7bb004e0480d4b0a0ed59290ad21498e307d3224edee6430bea1b4d44ff` |
| 6 | `abbrev` | [TopCat.toCondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/topcat-tocondensedset--027ee2050bf4803e8403f0ac.md) | 133 | `declaration-track:027ee2050bf4803e8403f0ac177cdd845899bf108a7de66aa5edfab82e57eb6e` |
| 7 | `abbrev` | [topCatToCondensedSet](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TopComparison/Variant996a428ed38da26d8db6950b74f29d5ff01989376d64125f5285015817bc8803.lean/declarations/topcattocondensedset--602d18891da8a99d22c12af6.md) | 139 | `declaration-track:602d18891da8a99d22c12af6c49299a4c23e49ebf56e445ef7f219605869b256` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

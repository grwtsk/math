# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Increment.Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4379be155c7ef01f6963ad728fd7b65052b460e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4379be155c7ef01f6963ad728fd7b65052b460e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Regularity.Chunk` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Regularity.Energy` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/increment--148d1d02f8a3c5d99ec83fef.md) | 62 | `declaration-track:148d1d02f8a3c5d99ec83feff5da5453f2a26559da5b4b576182c60df9b2a79d` |
| 2 | `theorem` | [card_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/card-increment--466c2888b08f9438750584d2.md) | 70 | `result-track:466c2888b08f9438750584d20fadeffd93b65fb8a4958a7f57efbace87986100` |
| 3 | `theorem` | [increment_isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/increment-isequipartition--ee669123486e44babb49bce6.md) | 86 | `result-track:ee669123486e44babb49bce6cae13ecc59296b4b164b982e0a544eb4b676bcce` |
| 4 | `def` | [distinctPairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/distinctpairs--b89597835a7aec6cea11bf59.md) | 94 | `declaration-track:b89597835a7aec6cea11bf59e6587e19d98eb7766bb8d2bc87419e8422ccd2e9` |
| 5 | `theorem` | [distinctPairs_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/distinctpairs-increment--d5f393a4ffc89ca5729152c2.md) | 100 | `result-track:d5f393a4ffc89ca5729152c27ad91dfa8f63cef5c1b5a3bd0af5aa3e69cb3275` |
| 6 | `lemma` | [pairwiseDisjoint_distinctPairs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/pairwisedisjoint-distinctpairs--42c86c31ce238c9ffe98d0ce.md) | 112 | `result-track:42c86c31ce238c9ffe98d0ce0a3d5221fe1ca93fd5c48494b2c1532be0c2c924` |
| 7 | `lemma` | [le_sum_distinctPairs_edgeDensity_sq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/le-sum-distinctpairs-edgedensity-sq--b662bfa2aa430fd3057b32b8.md) | 129 | `result-track:b662bfa2aa430fd3057b32b87a9c1e569f551f8ee497a7cdc2d3b67b33f0923e` |
| 8 | `theorem` | [energy_increment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Increment/Variant6dbcd7e6d312cc02d9d88c2acb3c30f79ae5e584cdcdf07423f0364bdfcedf59.lean/declarations/energy-increment--016c75aa121209e1870612c3.md) | 141 | `result-track:016c75aa121209e1870612c3c59e8b0cf4b0a842c44465ec3c18365a8e3bd54b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

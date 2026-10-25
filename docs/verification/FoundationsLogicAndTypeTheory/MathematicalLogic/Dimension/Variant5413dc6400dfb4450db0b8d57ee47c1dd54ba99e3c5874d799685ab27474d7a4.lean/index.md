# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dimension.Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "732e58383896be4ce3350a0404f58ad85a720f32",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `732e58383896be4ce3350a0404f58ad85a720f32`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Ext.EnoughProjectives` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt--bea4df08d43cee97c43145d5.md) | 43 | `declaration-track:bea4df08d43cee97c43145d5cb19bdd1f47123b0c2df7d1dbfce4b1fdece9bea` |
| 2 | `abbrev` | [HasProjectiveDimensionLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionle--55f05a4d82532308f14281e4.md) | 50 | `declaration-track:55f05a4d82532308f14281e411bada258b07f362f0c882c4a8727d1df6ac3b56` |
| 3 | `lemma` | [subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/subsingleton--a6abc143991dcf80afa82b3f.md) | 57 | `result-track:a6abc143991dcf80afa82b3f829464aa506ad9913ac1ee8b4aba937ffe1e3c01` |
| 4 | `lemma` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/mk--8553e91e242c3ce314b5673a.md) | 64 | `result-track:8553e91e242c3ce314b5673a42882f01596ced3f145145d0d180e831663e1a91` |
| 5 | `lemma` | [Abelian.Ext.eq_zero_of_hasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/abelian-ext-eq-zero-of-hasprojectivedimensionlt--e9326da3a8cd60c7661bab09.md) | 73 | `result-track:e9326da3a8cd60c7661bab0907c9822e937db14fdd794aaeca5e0328954fad06` |
| 6 | `lemma` | [hasProjectiveDimensionLT_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-iff--76c19d102eaaedd93f8bc015.md) | 82 | `result-track:76c19d102eaaedd93f8bc015eb6a4163c1157c983d5a977f98b5d6fe19548871` |
| 7 | `lemma` | [Limits.IsZero.hasProjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/limits-iszero-hasprojectivedimensionlt-zero--969ee3c2bd253a823b00497e.md) | 89 | `result-track:969ee3c2bd253a823b00497e550a8113549a293fbeb55c7860a7490df6e17d9e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--019ebbdd742b48a58e0d95c3.md) | 96 | `declaration-track:019ebbdd742b48a58e0d95c395df2d9b8b65cecf93df299d3e4eb6dbef6aafd9` |
| 9 | `lemma` | [isZero_of_hasProjectiveDimensionLT_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/iszero-of-hasprojectivedimensionlt-zero--2e93a8e81b0b6770dacbdded.md) | 99 | `result-track:2e93a8e81b0b6770dacbdded4db41d77c8ac093ba541f2adaa10ddb090cf25da` |
| 10 | `lemma` | [hasProjectiveDimensionLT_of_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-of-ge--8a86abbf02a29fb7635e1dca.md) | 106 | `result-track:8a86abbf02a29fb7635e1dcadf36e1792214efeebcbbe7319fb5b9f9b4a88b86` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--bd5a1acd5d393af9576f28c6.md) | 114 | `declaration-track:bd5a1acd5d393af9576f28c69f5b1328be6c224b21b150fd827e139ff886188f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--9c01acf27044f3c8ec71acad.md) | 118 | `declaration-track:9c01acf27044f3c8ec71acad012f08ea46616d6872857b0b0f19287d7ea9d05a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--4f2f2ae14d3a26e7bf46ef15.md) | 122 | `declaration-track:4f2f2ae14d3a26e7bf46ef155e01ff221659ef1c9410180180b730a3559c7078` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--03aec2e2303c1e1ba3545e43.md) | 126 | `declaration-track:03aec2e2303c1e1ba3545e4305a3531b69a738fcd19c1a6addca2c50a017ad26` |
| 15 | `lemma` | [Retract.hasProjectiveDimensionLT](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/retract-hasprojectivedimensionlt--ac849e0e6d0742dc96ae6fa1.md) | 136 | `result-track:ac849e0e6d0742dc96ae6fa14a6de363de2551f606f14463607b76e5d7fd8058` |
| 16 | `lemma` | [hasProjectiveDimensionLT_of_iso](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-of-iso--c396746b4b2034140ff9fef6.md) | 147 | `result-track:c396746b4b2034140ff9fef67c30432a877c7a962ebd90835f35cb6cd52d60b7` |
| 17 | `lemma` | [hasProjectiveDimensionLT_X₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-x--2f624fd249bc60be82bf2a7a.md) | 163 | `result-track:2f624fd249bc60be82bf2a7a9ddc9de9c67dd7d5078c50d12d5a9e3622459eae` |
| 18 | `lemma` | [hasProjectiveDimensionLT_X₃](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-x--896d3f8dec58c5d480547de3.md) | 173 | `result-track:896d3f8dec58c5d480547de38772d31b216c54e2c8f7485684cfeb99bad6fa03` |
| 19 | `lemma` | [hasProjectiveDimensionLT_X₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-x--f288b5a9c33e2cd0cc5a68b0.md) | 184 | `result-track:f288b5a9c33e2cd0cc5a68b037b5447645e820a6ed570d7f7bb0b6f75dd62f06` |
| 20 | `lemma` | [hasProjectiveDimensionLT_X₃_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/hasprojectivedimensionlt-x-iff--b310c8ad45f698d2ae18176d.md) | 194 | `result-track:b310c8ad45f698d2ae18176d2775eb8d4847636aa3b753b972e11b156cc7984e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variant5413dc6400dfb4450db0b8d57ee47c1dd54ba99e3c5874d799685ab27474d7a4.lean/declarations/instance--79b739dc9fa16de0197e94c5.md) | 203 | `declaration-track:79b739dc9fa16de0197e94c5d080126ab5e1ebc52d2366c68a3ef3f56733af9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.NumberTheory.NumberField.TotallyRealSignApproximation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba778c311687f285edd2a8c02f895e8a9d9059bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba778c311687f285edd2a8c02f895e8a9d9059bc`.

Source path: `GRWTSK/NumberTheory/NumberField/TotallyRealSignApproximation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/NumberField/TotallyRealSignApproximation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [EmbeddingOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/embeddingorder--f063462a72ec04c0fbc4b5b5.md) | 39 | `declaration-track:f063462a72ec04c0fbc4b5b57a255db49d912b063b4fd8aa43f507eee342c9c2` |
| 2 | `def` | [orderedRealEmbedding](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/orderedrealembedding--b32a9412548376d7381c49b3.md) | 43 | `declaration-track:b32a9412548376d7381c49b30fec662aa813d8ced10d413b9400f3a31eaa215d` |
| 3 | `theorem` | [orderedRealEmbedding_complex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/orderedrealembedding-complex--f4fd399fd262e5ab767bf4cf.md) | 48 | `result-track:f4fd399fd262e5ab767bf4cfe5bacc32d1cc993534b14fb9d0c1d33c3ae362a9` |
| 4 | `def` | [realEmbeddingMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/realembeddingmatrix--2f200a4e15d1a21e792fb442.md) | 54 | `declaration-track:2f200a4e15d1a21e792fb442dd36cfd001f53648ccaf8d94c484d55e5c177648` |
| 5 | `theorem` | [realEmbeddingMatrix_complex](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/realembeddingmatrix-complex--14aa3c3f12f3519ca5790fc3.md) | 59 | `result-track:14aa3c3f12f3519ca5790fc319c17690e8eae10f8dc1650deb277a21af9428c2` |
| 6 | `theorem` | [det_realEmbeddingMatrix_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/det-realembeddingmatrix-ne-zero--0a02cfba7208e6728e363e15.md) | 68 | `result-track:0a02cfba7208e6728e363e15fdb695e61c0b20692b995e1ea9d7bfea6f67b5f3` |
| 7 | `def` | [realEmbeddingVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/realembeddingvector--d97cb5c3248309d436f20205.md) | 90 | `declaration-track:d97cb5c3248309d436f20205a93c431652d3ed63525f8bbfdd1d062739b443a6` |
| 8 | `def` | [embeddingMatrixEquiv](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/embeddingmatrixequiv--f785897fc284b7664b8b55e7.md) | 95 | `declaration-track:f785897fc284b7664b8b55e72c67fbc5fcee0f97afb626b7a202eca0c46f6520` |
| 9 | `theorem` | [embeddingMatrixEquiv_rationalCoordinates](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/embeddingmatrixequiv-rationalcoordinates--84456d5e58ea43ab3ce53526.md) | 113 | `result-track:84456d5e58ea43ab3ce53526a6718aabcd3988bc1a6918131e0a40b97dfb56f0` |
| 10 | `theorem` | [realEmbeddingVector_denseRange](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/realembeddingvector-denserange--c876599ac5eec70a28ee199f.md) | 130 | `result-track:c876599ac5eec70a28ee199fbce02708a5682cf836162239c1145d7d3e3cf120` |
| 11 | `def` | [canonicalEmbeddingOrder](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/canonicalembeddingorder--0db2478ccc44344038923254.md) | 150 | `declaration-track:0db2478ccc44344038923254ecdceef882234d2550ddc3accc986c1115bc5b5a` |
| 12 | `def` | [canonicalRealEmbeddingVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/canonicalrealembeddingvector--b4d52753df5f7c0f098e6356.md) | 158 | `declaration-track:b4d52753df5f7c0f098e6356596df979f5a3ce55e13c1b87891518a9f76a45ce` |
| 13 | `theorem` | [canonicalRealEmbeddingVector_denseRange](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/canonicalrealembeddingvector-denserange--58dc1f306eada83c9a88c75f.md) | 163 | `result-track:58dc1f306eada83c9a88c75feb8387429563851af72fd03b5ddb4f4ccb0b63d7` |
| 14 | `structure` | [SignPattern](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/signpattern--19868cb03c5896888ebf0b6f.md) | 168 | `declaration-track:19868cb03c5896888ebf0b6f38b4f6a6e989c12e8675006b5e38d53b9c14ea5f` |
| 15 | `def` | [RealizesSigns](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/realizessigns--ae7f3cd61175a0db9a8fd68f.md) | 173 | `declaration-track:ae7f3cd61175a0db9a8fd68f5ea0175bd35badcea17aab1320ac78c05d9a11a9` |
| 16 | `theorem` | [exists_realEmbeddingVector_realizesSigns](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/exists-realembeddingvector-realizessigns--b3a87affa634926d26ae829e.md) | 180 | `result-track:b3a87affa634926d26ae829ef1cc45e403813266464128860616c8aac1397d61` |
| 17 | `theorem` | [exists_canonicalRealEmbeddingVector_realizesSigns](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/exists-canonicalrealembeddingvector-realizessigns--4350bba5c420f4b19db497ab.md) | 209 | `result-track:4350bba5c420f4b19db497ab779a99e865ef08195ef2ef518cb865cafba9109b` |
| 18 | `theorem` | [ne_zero_of_realizesSigns](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberFields/TotallyRealSignApproximation.lean/declarations/ne-zero-of-realizessigns--fc4ae49523d30a9b607a17e3.md) | 217 | `result-track:fc4ae49523d30a9b607a17e3f6d9b4ee1bd9bc217c0e57d750efb634effa1f00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

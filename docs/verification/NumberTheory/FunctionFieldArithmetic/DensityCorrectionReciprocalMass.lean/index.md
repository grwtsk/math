# Verification target: GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionReciprocalMass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2915321d4453eb7266ccd43e361daff360e067b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2915321d4453eb7266ccd43e361daff360e067b`.

Source path: `GRWTSK/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.FunctionFieldArithmetic.DensityCorrectionPrimeSeries`](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionPrimeSeries.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.EulerProduct.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [densityCorrectionReciprocal](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/densitycorrectionreciprocal--35144b9614db2b76308cf696.md) | 20 | `declaration-track:35144b9614db2b76308cf696269acffb420f962be3f765f397ef1b5149fd3de4` |
| 2 | `def` | [reciprocalSquare](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/reciprocalsquare--bd67efcbe848d09edb6b1546.md) | 21 | `declaration-track:bd67efcbe848d09edb6b1546ae1ac54cb676a88894605706d344d38d84e06f75` |
| 3 | `theorem` | [density_reciprocal_nonneg](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-nonneg--d74f4cb95e4ad1a61dfa2ab1.md) | 23 | `result-track:d74f4cb95e4ad1a61dfa2ab15524a5dbeff9c8cd519e1315687c06683320ab8f` |
| 4 | `theorem` | [density_reciprocal_one](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-one--be249d52bc0d69e9333faf2d.md) | 26 | `result-track:be249d52bc0d69e9333faf2de961c1bd1bfbb41d389a001f77a0ed37f82724ad` |
| 5 | `theorem` | [density_reciprocal_mul](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-mul--016564faf1879ff471c99e37.md) | 29 | `result-track:016564faf1879ff471c99e37dbe65232b0c10244d76551b5e7564002bfa8796b` |
| 6 | `theorem` | [reciprocal_square_mul](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-mul--cdb82356b7537ef5e1462f6d.md) | 35 | `result-track:cdb82356b7537ef5e1462f6d1c713f87c8c4f594c2e72a66030aaf401ef38f98` |
| 7 | `theorem` | [reciprocal_square_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-summable--7444344a9e3957bf21e55cdd.md) | 39 | `result-track:7444344a9e3957bf21e55cdd37d5bf96b8b8326d48bdb5a3072e687a53f418a8` |
| 8 | `theorem` | [density_reciprocal_prime_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-prime-hassum--681303d7322508552f640856.md) | 42 | `result-track:681303d7322508552f640856854b2fa7c66afe1755bc6fe4b3cf91e832cf4f5e` |
| 9 | `theorem` | [reciprocal_square_prime_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/reciprocal-square-prime-hassum--76b96c2fd47ca2bf1c638a46.md) | 53 | `result-track:76b96c2fd47ca2bf1c638a462c9ba1a9e025183ae3619c0e54d98086690f5b8b` |
| 10 | `theorem` | [density_reciprocal_factored_hasSum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-factored-hassum--5dbc5fe030dc42d26931af00.md) | 70 | `result-track:5dbc5fe030dc42d26931af00bdc9dadedc7ed64e0d615410f4bfd26846dacff9` |
| 11 | `theorem` | [density_reciprocal_range_bound](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-range-bound--863e4422acf7cc566f0d457d.md) | 88 | `result-track:863e4422acf7cc566f0d457d0bfe2f2cb6b0912efbbe8fa6c8708a75d74624a6` |
| 12 | `theorem` | [density_reciprocal_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-summable--b2bc4173768f55b5000e0f85.md) | 118 | `result-track:b2bc4173768f55b5000e0f8554560fed328a006136a07d22a0f8fa43208dfa42` |
| 13 | `theorem` | [density_reciprocal_tsum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-reciprocal-tsum--924cbc9b86a95fd866f7db61.md) | 121 | `result-track:924cbc9b86a95fd866f7db619265f3b99044d3287abcf2957375c14af8943011` |
| 14 | `theorem` | [density_positive_reciprocal_summable](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-positive-reciprocal-summable--133454cf418e4c953c49b0c9.md) | 138 | `result-track:133454cf418e4c953c49b0c958ad4c28689d16890bd43a2780e4f5d5cd405668` |
| 15 | `theorem` | [density_positive_reciprocal_tsum](../../../../mathematics/NumberTheory/FunctionFieldArithmetic/DensityCorrectionReciprocalMass.lean/declarations/density-positive-reciprocal-tsum--51a862e00f2c1f645ece869f.md) | 142 | `result-track:51a862e00f2c1f645ece869fff9ada56adfa8d92f83d93537707f6d9568b7a4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

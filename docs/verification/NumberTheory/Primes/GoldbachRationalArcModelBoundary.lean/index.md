# Verification target: GRWTSK.NumberTheory.Primes.GoldbachRationalArcModelBoundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69e435dc1e311e5968d3a801dc598e52257d836d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69e435dc1e311e5968d3a801dc598e52257d836d`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcExpansion`](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcExpansion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.GoldbachResidueClassDecomposition`](../../../../mathematics/NumberTheory/Primes/GoldbachResidueClassDecomposition.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachExactResidueArcModel](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachexactresiduearcmodel--747062c2cf85681d10508f6a.md) | 44 | `declaration-track:747062c2cf85681d10508f6a4ade03ab2db4f234445da458dec5c68cd288bcd7` |
| 2 | `def` | [goldbachExactResidueArcContribution](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachexactresiduearccontribution--e35b2f484ddf2780e9ac9547.md) | 49 | `declaration-track:e35b2f484ddf2780e9ac954748e90efbd3707e758045488bc3a66700bc48e1bb` |
| 3 | `theorem` | [goldbachSingleRationalArcContribution_eq_exactResidue](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachsinglerationalarccontribution-eq-exactresidue--6348f87fceceb6cead701785.md) | 56 | `result-track:6348f87fceceb6cead7017853fe59f513245ec166b2f38b5766f737377c80d7a` |
| 4 | `def` | [goldbachArcModelContribution](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbacharcmodelcontribution--81c7a6caf4ee371876458d99.md) | 73 | `declaration-track:81c7a6caf4ee371876458d99e7cf28a2f08d5408e8a92e6de792c2c02fcfb9c8` |
| 5 | `def` | [goldbachArcModelResidual](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbacharcmodelresidual--afcf970c84ef0e3d660d8496.md) | 80 | `declaration-track:afcf970c84ef0e3d660d84963c08de2f2260a368221584735e168f69f1ee02e1` |
| 6 | `def` | [goldbachArcModelMajorSum](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbacharcmodelmajorsum--547d98498a5be87757322c0d.md) | 87 | `declaration-track:547d98498a5be87757322c0d45962ffa17d9b8084effb8ef098ef1ee380b1c72` |
| 7 | `def` | [goldbachArcModelResidualSum](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbacharcmodelresidualsum--5ca2817962fdb90392bc2bc1.md) | 93 | `declaration-track:5ca2817962fdb90392bc2bc1a1df74237ccad62e90c1c36b31ed194eb8f96d47` |
| 8 | `theorem` | [goldbachSingleArc_eq_model_add_residual](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachsinglearc-eq-model-add-residual--41a0593fe4fe2683cd318c5f.md) | 100 | `result-track:41a0593fe4fe2683cd318c5fbb166d53bf5d201e7f6b36328a6b7b0624ad6212` |
| 9 | `theorem` | [goldbachRationalArcSum_eq_model_add_residual](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachrationalarcsum-eq-model-add-residual--eef8bdb3350627e254f17f32.md) | 111 | `result-track:eef8bdb3350627e254f17f3280c2483f5a0d9d1d3758f5587ae3667982c2a13a` |
| 10 | `theorem` | [goldbachExactResidueArcModel_residual_zero](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachexactresiduearcmodel-residual-zero--74795be01b47c533518a498f.md) | 124 | `result-track:74795be01b47c533518a498f37c0d0b98356e3f7ee8ae56cfc6637c9d52b6e73` |
| 11 | `theorem` | [goldbachArcModelResidualSum_norm_le](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbacharcmodelresidualsum-norm-le--3313c4623258dea4c2e8db66.md) | 135 | `result-track:3313c4623258dea4c2e8db66bddffe0ead1d5d2d4f6814d0e7cedf330212b50e` |
| 12 | `theorem` | [goldbachCount_pos_of_arc_model_bounds](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachcount-pos-of-arc-model-bounds--7b14397e091dd7548f4a0a67.md) | 149 | `result-track:7b14397e091dd7548f4a0a672d227b99ba8d17f8fc80b135007c923a19ab81b4` |
| 13 | `theorem` | [goldbachCount_pos_of_arc_model_truncated_certificate](../../../../mathematics/NumberTheory/Primes/GoldbachRationalArcModelBoundary.lean/declarations/goldbachcount-pos-of-arc-model-truncated-certificate--3d0607bf8cc01c0064dabcd7.md) | 198 | `result-track:3d0607bf8cc01c0064dabcd7eebbd79cd16364e23dbef792721f44d17bf80372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

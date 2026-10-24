# Verification target: GRWTSK.NumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9947c0a84cc53c3e7258e08596fe1e0c71d628c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9947c0a84cc53c3e7258e08596fe1e0c71d628c`.

Source path: `GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_reciprocal_le_abs_weightedMoebius](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/declarations/prime-reciprocal-le-abs-weightedmoebius--3ee698cfdce3146e82348ab6.md) | 24 | `result-track:3ee698cfdce3146e82348ab6e65eb6a7a481d59602da94c0da08231d75cbf27d` |
| 2 | `theorem` | [abs_weightedMoebius_not_summable](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/declarations/abs-weightedmoebius-not-summable--600edd2a8e5b2d7ed61879e7.md) | 43 | `result-track:600edd2a8e5b2d7ed61879e747ac45cca03ad93b1dc06087dcb4d00a78092cad` |
| 3 | `theorem` | [abs_weightedMoebius_sum_zero_eq](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/declarations/abs-weightedmoebius-sum-zero-eq--6f84411927195ed04f5e03fb.md) | 53 | `result-track:6f84411927195ed04f5e03fb9edf4f2bc22e75eaec566d097e5bdfee12bf292e` |
| 4 | `theorem` | [absolute_weighted_mobius_mass_unbounded](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/declarations/absolute-weighted-mobius-mass-unbounded--9bf9f5dc18711216bc55e9d4.md) | 69 | `result-track:9bf9f5dc18711216bc55e9d4c49f526305a5c6819c84a831cfc8f698ec238312` |
| 5 | `theorem` | [absolute_weighted_mobius_mass_not_tail_bounded](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbf50a15f7d38492417cc92186557b6696ccb0343c38855b969def5de36ab831c.lean/declarations/absolute-weighted-mobius-mass-not-tail-bounded--053a519a44ac6a51b72af6bc.md) | 97 | `result-track:053a519a44ac6a51b72af6bc2df5711afd7c6ecfd111ff9baa6eb534734085e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

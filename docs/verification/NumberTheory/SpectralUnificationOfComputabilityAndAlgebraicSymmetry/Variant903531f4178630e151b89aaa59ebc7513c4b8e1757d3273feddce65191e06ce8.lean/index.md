# Verification target: GRWTSK.NumberTheory.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6deb99900b4d3250a24a4017bacdb01d9cf6821b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6deb99900b4d3250a24a4017bacdb01d9cf6821b`.

Source path: `GRWTSK/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedMobiusPairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_reciprocal_le_abs_weightedMoebius](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/declarations/prime-reciprocal-le-abs-weightedmoebius--737a51418e7bff661ccc1d05.md) | 32 | `result-track:737a51418e7bff661ccc1d054d1222e00f6f6482732c49143b61fe5074b5671d` |
| 2 | `theorem` | [abs_weightedMoebius_not_summable](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/declarations/abs-weightedmoebius-not-summable--3271ec5f43b758d9417484d5.md) | 51 | `result-track:3271ec5f43b758d9417484d5e6b643f9857b0de05958117c3b12a83d6da75c11` |
| 3 | `theorem` | [abs_weightedMoebius_sum_zero_eq](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/declarations/abs-weightedmoebius-sum-zero-eq--d4dddfd74b9aa21bde478af6.md) | 61 | `result-track:d4dddfd74b9aa21bde478af6c58999a5211c7731fddfd97e693e9f96aa1bc28f` |
| 4 | `theorem` | [absolute_weighted_mobius_mass_unbounded](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/declarations/absolute-weighted-mobius-mass-unbounded--45c0f941763a1bf2cf4a8fbd.md) | 77 | `result-track:45c0f941763a1bf2cf4a8fbd6f11caad8e33c33b37995aea9ecd983d5fbbd398` |
| 5 | `theorem` | [absolute_weighted_mobius_mass_not_tail_bounded](../../../../mathematics/NumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant903531f4178630e151b89aaa59ebc7513c4b8e1757d3273feddce65191e06ce8.lean/declarations/absolute-weighted-mobius-mass-not-tail-bounded--db4670ac5646ed5f47a58cb5.md) | 105 | `result-track:db4670ac5646ed5f47a58cb54c7b9495cfeb4bc087eca4a0ee8e3a4a41575c54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

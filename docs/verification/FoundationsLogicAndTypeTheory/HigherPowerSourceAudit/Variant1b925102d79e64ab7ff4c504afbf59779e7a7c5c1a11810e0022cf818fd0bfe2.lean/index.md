# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSourceAudit.Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8463cd2d6637b0dc6cf1a00e28883146cd7859c2",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8463cd2d6637b0dc6cf1a00e28883146cd7859c2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/ishigherprimepower--d20deb9b5cac5105133b0ca3.md) | 24 | `declaration-track:d20deb9b5cac5105133b0ca38001207115f9673183a9c937d86c0036e6df2fda` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/higherprimepowerindices--5ad4f9800f0fea0f296b90f0.md) | 27 | `declaration-track:5ad4f9800f0fea0f296b90f06dec7d54fd48457c4143f5f9d4f3f938e2a1cae5` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/higherprimepowercontribution--ff5082c16f36e99e07399a09.md) | 32 | `declaration-track:ff5082c16f36e99e07399a09382832dcd44239f5ac6bf6d17ff9c93fcaf9dbb3` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/prime-power-representation-unique--29d921cb13b6905d099bf3c9.md) | 38 | `result-track:29d921cb13b6905d099bf3c90b78c6ff2e293014f51b61bb3fa53310cc5e9e05` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/primesquare-not-higher--0d02108431d59427e5f10edc.md) | 44 | `result-track:0d02108431d59427e5f10edcaadff4f8beb1e96fb905747fa1e66d917cc3a2fd` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/primesquare-not-prime--caf4927cba086463006b3cb0.md) | 52 | `result-track:caf4927cba086463006b3cb05c2e308cd24c536916b63728370db372c570be04` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/higher-not-prime--2e35c9fc9f6af4bd026ff450.md) | 57 | `result-track:2e35c9fc9f6af4bd026ff4502e55ca0b7968a5b285a13b0476f885caa6f2ab5f` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/nonprime-primepower-iff--d5005daa86b68f5ac1f86d35.md) | 62 | `result-track:d5005daa86b68f5ac1f86d3552ddf265af412e6a6d5bf27d4274c0716ba360d8` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/nonprime-weight-zero-of-outside--f6358fc2553d40c72629420e.md) | 82 | `result-track:f6358fc2553d40c72629420e9d3aad910a9ee761546cdcec3a69dfe9eb7bc88f` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/primesquare-higher-indices-disjoint--e90892d2d96333fa6bbb5d05.md) | 90 | `result-track:e90892d2d96333fa6bbb5d05917f57781475344e5a733237c3ee66061f298d7d` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/properprimepowercontribution-eq-square-add-higher--91b0ee13c3dbd6fbcf47e852.md) | 98 | `result-track:91b0ee13c3dbd6fbcf47e852e372d86d74f9944d020b52800d5d5e0e112e792f` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/primepowercontribution-eq-prime-square-higher--ca5cfd891683c37faddab4f5.md) | 119 | `result-track:ca5cfd891683c37faddab4f5587c25d3e3a41e6bd2f8b9701899b69a80d67389` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/eight-higher-not-square--03bd10ca7262d38c0afd1dbf.md) | 127 | `result-track:03bd10ca7262d38c0afd1dbf2f60c4e53ba43dca5a51c8bc2a876c4f7de370b0` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/declarations/eight-mem-higherprimepowerindices-iff--160e4aa5a32c468a6e1606ea.md) | 132 | `result-track:160e4aa5a32c468a6e1606ea4d0e1bc18b6b878da1c40d34cf7019d111b64c33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

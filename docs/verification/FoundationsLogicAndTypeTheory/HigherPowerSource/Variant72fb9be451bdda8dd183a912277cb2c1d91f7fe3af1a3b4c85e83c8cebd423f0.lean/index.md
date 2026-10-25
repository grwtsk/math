# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSource.Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce702a4837bdf00b651a29d5e30b1f72afebdcb6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce702a4837bdf00b651a29d5e30b1f72afebdcb6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/ishigherprimepower--c0732c232bc7adc43f673f85.md) | 16 | `declaration-track:c0732c232bc7adc43f673f85257485460b9a4358d164f2690697cdd161032f7d` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/higherprimepowerindices--02faae305691cac6b729bba4.md) | 19 | `declaration-track:02faae305691cac6b729bba4d26f1c7094c21887f93319da2f1f09557cfb2aa2` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/higherprimepowercontribution--434b92855ac5d28b26d77ae3.md) | 24 | `declaration-track:434b92855ac5d28b26d77ae3cd31b03be4097c5c1c5313deb08c4f85cf621639` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/prime-power-representation-unique--c5deb1ce2e007f61b9ce0b9a.md) | 30 | `result-track:c5deb1ce2e007f61b9ce0b9a7493bdaa159c58bfa24b908ad63f4fdcaabd225d` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/primesquare-not-higher--79d1c7d3bfa7b230d8b85d6a.md) | 36 | `result-track:79d1c7d3bfa7b230d8b85d6aa7815260bed4ef55458ed1ff7822c7b8cb380f67` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/primesquare-not-prime--a59fdb543d7f52d1d2f7852a.md) | 44 | `result-track:a59fdb543d7f52d1d2f7852ab4d6d59b43f7c337ae76d9fb0c66866f3056d7a5` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/higher-not-prime--766ada6ae5b57d590d4b373c.md) | 49 | `result-track:766ada6ae5b57d590d4b373c5098811e92d24d6954c79fb1f920f9c71cc1d60f` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/nonprime-primepower-iff--1f53e5eed7c83f4290a33b76.md) | 54 | `result-track:1f53e5eed7c83f4290a33b765ce6c1a9ba15c3af52a0cce1296c2ce94abbae85` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/nonprime-weight-zero-of-outside--1b9a5f3c58ad1e4cd5916563.md) | 74 | `result-track:1b9a5f3c58ad1e4cd591656382e39be6977c5be6aa0d31ca68c49c69581f2939` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/primesquare-higher-indices-disjoint--4e002a0944cf1ce6b5533475.md) | 82 | `result-track:4e002a0944cf1ce6b5533475a2319e83d6c0d86ae54996b748148ea27e5a2174` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/properprimepowercontribution-eq-square-add-higher--ea7372a74e6b1d8ab6adff33.md) | 90 | `result-track:ea7372a74e6b1d8ab6adff3328a15da2734ae023aabfb1016818f17aee102353` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/primepowercontribution-eq-prime-square-higher--56b5065ad6c07e328635f7b7.md) | 111 | `result-track:56b5065ad6c07e328635f7b700bf833fa4cd90b4233780d68b09c157ada2a13e` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/eight-higher-not-square--e93494cbc4bc0485bc99f329.md) | 119 | `result-track:e93494cbc4bc0485bc99f329372d4c2db78fed7d89f05a70a8349ca1aa7488d4` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant72fb9be451bdda8dd183a912277cb2c1d91f7fe3af1a3b4c85e83c8cebd423f0.lean/declarations/eight-mem-higherprimepowerindices-iff--43e4579e7580d8617b899f66.md) | 124 | `result-track:43e4579e7580d8617b899f668be45f6529dca8c6b159e07df33a1555011d210a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

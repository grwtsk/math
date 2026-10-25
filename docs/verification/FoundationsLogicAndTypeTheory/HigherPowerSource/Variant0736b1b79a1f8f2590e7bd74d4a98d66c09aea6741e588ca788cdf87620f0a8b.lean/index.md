# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.HigherPowerSource.Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b69257196a7d59b9ab2a003edc6add38e5659fa6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b69257196a7d59b9ab2a003edc6add38e5659fa6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean.json)

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
| 1 | `def` | [IsHigherPrimePower](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/ishigherprimepower--e80fa8e5f5d5a9934c190e1b.md) | 24 | `declaration-track:e80fa8e5f5d5a9934c190e1b52cb41fc58fc774cb80c28deadfb11cddd05005e` |
| 2 | `def` | [higherPrimePowerIndices](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/higherprimepowerindices--96e5a57ce29395ec6781a5a8.md) | 27 | `declaration-track:96e5a57ce29395ec6781a5a8e684bd9b59997315caeec6cab69c99a924c3c05d` |
| 3 | `def` | [higherPrimePowerContribution](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/higherprimepowercontribution--67c1d3f61659df4efe018d4b.md) | 32 | `declaration-track:67c1d3f61659df4efe018d4b6e771b1dff209cef01f533a64400bfadafa0f758` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/prime-power-representation-unique--dbb78d7e8260d2b022ed60d5.md) | 38 | `result-track:dbb78d7e8260d2b022ed60d5dbf1d63e721866e4fdd4e26dd79b568f71aaa061` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/primesquare-not-higher--1ba0363adf12f279975864fd.md) | 44 | `result-track:1ba0363adf12f279975864fd59a767635ea13aeee813ccb1433ef114ba71fcad` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/primesquare-not-prime--3b9c8ed2406a5d2175aa3cbb.md) | 52 | `result-track:3b9c8ed2406a5d2175aa3cbb8b418b6cdb54d36bceb95ec1eb5e0a21f45946e2` |
| 7 | `theorem` | [higher_not_prime](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/higher-not-prime--961a52f9937534ff72f8cd64.md) | 57 | `result-track:961a52f9937534ff72f8cd64f2c40055b27a0bd4c3a11ac3c1f833bcc47dfce4` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/nonprime-primepower-iff--cd48227ae096bbd0c844972a.md) | 62 | `result-track:cd48227ae096bbd0c844972ad82857d51ef8e2558ba5ef207d2db393f43c075e` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/nonprime-weight-zero-of-outside--dabf63f6a4840183b372b3d7.md) | 82 | `result-track:dabf63f6a4840183b372b3d79ff6da1365388b50e341230ab6c3b0db546008b6` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/primesquare-higher-indices-disjoint--2feaada8172aa98b2bb66b42.md) | 90 | `result-track:2feaada8172aa98b2bb66b427befa6412465045def6b441691584f01ef0a900d` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/properprimepowercontribution-eq-square-add-higher--becb83900a8cc16b74b9765f.md) | 98 | `result-track:becb83900a8cc16b74b9765f88ee460008afa1fc488f9656158158568509bf9c` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/primepowercontribution-eq-prime-square-higher--8d1ae388d9b40d243ae23156.md) | 119 | `result-track:8d1ae388d9b40d243ae23156a724b2807a7650d6a638e98ccbd9b79da00d4c2f` |
| 13 | `theorem` | [eight_higher_not_square](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/eight-higher-not-square--3d1475b5936b45ad08fbec20.md) | 127 | `result-track:3d1475b5936b45ad08fbec206121bd55cb4d910ed10a9de32ead9cf0b8a57019` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/HigherPowerSource/Variant0736b1b79a1f8f2590e7bd74d4a98d66c09aea6741e588ca788cdf87620f0a8b.lean/declarations/eight-mem-higherprimepowerindices-iff--8dbcec316f9db552d322b7f8.md) | 132 | `result-track:8dbcec316f9db552d322b7f8d71bde6ef624f12798d2e337856da1e779cc6fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

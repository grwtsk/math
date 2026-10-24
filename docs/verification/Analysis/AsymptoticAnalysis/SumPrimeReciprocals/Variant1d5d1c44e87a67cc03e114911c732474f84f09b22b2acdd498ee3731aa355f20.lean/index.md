# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SumPrimeReciprocals.Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9772c89445487fd37a8c18f60de7f5279b980581",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9772c89445487fd37a8c18f60de7f5279b980581`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Nat.roughNumbersUpTo_card_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/declarations/nat-roughnumbersupto-card-le--311a45c0fe96ec34c8421600.md) | 33 | `result-track:311a45c0fe96ec34c8421600f0b21e0f3cb5331970f7c59144b01ad36fee2004` |
| 2 | `lemma` | [one_half_le_sum_primes_ge_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/declarations/one-half-le-sum-primes-ge-one-div--5d9c7797b926734caf60c378.md) | 41 | `result-track:5d9c7797b926734caf60c37875bf60e93244441218d1440a3a3a07b611357d1a` |
| 3 | `theorem` | [not_summable_one_div_on_primes](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/declarations/not-summable-one-div-on-primes--0a6695954f62b27906473f27.md) | 65 | `result-track:0a6695954f62b27906473f27758675c5cd43068b76d8e0c3702d32b26795255f` |
| 4 | `theorem` | [Nat.Primes.not_summable_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/declarations/nat-primes-not-summable-one-div--0646fd17942aea51df3830a6.md) | 83 | `result-track:0646fd17942aea51df3830a6b91bfe80f3c1beaf9a0f2e8fe21a43c0dc29b70a` |
| 5 | `theorem` | [Nat.Primes.summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant1d5d1c44e87a67cc03e114911c732474f84f09b22b2acdd498ee3731aa355f20.lean/declarations/nat-primes-summable-rpow--69fd6c0e52c462c0a029ffe2.md) | 87 | `result-track:69fd6c0e52c462c0a029ffe2f7c162d4d1a21662d07e202b5c9b3e00d4f6addc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

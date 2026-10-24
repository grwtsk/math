# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.SumPrimeReciprocals.Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f40f04889c9e0c1073bc67f2ec6176f582295b1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f40f04889c9e0c1073bc67f2ec6176f582295b1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SmoothNumbers` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Nat.roughNumbersUpTo_card_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/declarations/nat-roughnumbersupto-card-le--bc55f3d601778413c0220871.md) | 41 | `result-track:bc55f3d601778413c02208714952375781478f049eb9916628dd2a1146f26c0a` |
| 2 | `lemma` | [one_half_le_sum_primes_ge_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/declarations/one-half-le-sum-primes-ge-one-div--bec70be1f93cce9bc391a820.md) | 49 | `result-track:bec70be1f93cce9bc391a8206e982200ca18bcabf76751c41e3f85332a3fb7c3` |
| 3 | `theorem` | [not_summable_one_div_on_primes](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/declarations/not-summable-one-div-on-primes--c9584aef6d33d3899a447a60.md) | 73 | `result-track:c9584aef6d33d3899a447a6060ae0f23ebe21e2961846435fd2f7c54c030ce8f` |
| 4 | `theorem` | [Nat.Primes.not_summable_one_div](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/declarations/nat-primes-not-summable-one-div--5f543d20415e9e1001879fb9.md) | 91 | `result-track:5f543d20415e9e1001879fb925b28bfdd6adf20984979cbe51083b8a34540364` |
| 5 | `theorem` | [Nat.Primes.summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/SumPrimeReciprocals/Variant3016fcbcf10282c475b6b8ad1b6d010b0360078213ca30604617b2a74fe8a114.lean/declarations/nat-primes-summable-rpow--ee393a8015d4d5d800b19bd6.md) | 95 | `result-track:ee393a8015d4d5d800b19bd67ee3a7f699297d167b99a0066309087c5cfad80c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

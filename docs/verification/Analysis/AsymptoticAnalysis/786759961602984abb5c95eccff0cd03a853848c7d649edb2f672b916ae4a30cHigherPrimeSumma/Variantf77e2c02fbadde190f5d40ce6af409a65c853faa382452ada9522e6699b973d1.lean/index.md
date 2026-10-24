# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma.Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "624b234ace6b95c789cb23023337af8959fcedc0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `624b234ace6b95c789cb23023337af8959fcedc0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/declarations/sqrt-nat-pow--e16883eb91459c04810a2ad7.md) | 21 | `result-track:e16883eb91459c04810a2ad70d15b0b505c667e28ed46aa25ff5288250882e1a` |
| 2 | `theorem` | [log_div_sqrt_cube_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/declarations/log-div-sqrt-cube-le--3ade0529e173e978451a81ff.md) | 27 | `result-track:3ade0529e173e978451a81fff9526838b86892bd0b880f3e6bb401ee456da60b` |
| 3 | `theorem` | [prime_inv_sqrt_le_three_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/declarations/prime-inv-sqrt-le-three-quarters--aea5362d872c41d1c790655d.md) | 46 | `result-track:aea5362d872c41d1c790655dcd7b11adecbb30c4f366f0d56c907dac9547f607` |
| 4 | `theorem` | [higher_prime_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/declarations/higher-prime-weight-le--a7693eaacb5468077b243078.md) | 55 | `result-track:a7693eaacb5468077b243078a2b66dee6f888e02247d85bdcb8469a0bd7c3a8b` |
| 5 | `theorem` | [summable_higher_prime_weights](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variantf77e2c02fbadde190f5d40ce6af409a65c853faa382452ada9522e6699b973d1.lean/declarations/summable-higher-prime-weights--4e982d922b8b317e7a25ae3b.md) | 72 | `result-track:4e982d922b8b317e7a25ae3b5628a8771bbfd0697c517158beb8164ff2622581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

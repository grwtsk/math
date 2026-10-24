# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma.Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "415e2952a347c83f7cfbb86641a03829b550becf",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `415e2952a347c83f7cfbb86641a03829b550becf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.PrimePow` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/declarations/sqrt-nat-pow--e65f521c59a403158d7b3865.md) | 13 | `result-track:e65f521c59a403158d7b38657c005acfc810a652c21c99a4706a0ae69165bf83` |
| 2 | `theorem` | [log_div_sqrt_cube_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/declarations/log-div-sqrt-cube-le--e06bb6f64fc1d09457e4a8bd.md) | 19 | `result-track:e06bb6f64fc1d09457e4a8bd78794ee3a2c6c8d08fcd415d25d6cb8887334998` |
| 3 | `theorem` | [prime_inv_sqrt_le_three_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/declarations/prime-inv-sqrt-le-three-quarters--a14d92290fc0428d57f1ae59.md) | 38 | `result-track:a14d92290fc0428d57f1ae5982b6074a7f39e32033480eaaff32055c7ae83b3b` |
| 4 | `theorem` | [higher_prime_weight_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/declarations/higher-prime-weight-le--868009cfe54b6b30823dca68.md) | 47 | `result-track:868009cfe54b6b30823dca68c7ec21b2effb8bdc9ebc0c52903b412e5b8e279e` |
| 5 | `theorem` | [summable_higher_prime_weights](../../../../../mathematics/Analysis/AsymptoticAnalysis/786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30cHigherPrimeSumma/Variant786759961602984abb5c95eccff0cd03a853848c7d649edb2f672b916ae4a30c.lean/declarations/summable-higher-prime-weights--cc9ed5af370477069e2e5d3a.md) | 64 | `result-track:cc9ed5af370477069e2e5d3a2e9a362bf7563e017d1410e19fe8a52540b4804c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

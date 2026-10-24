# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Count.Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19e729bcf45f4bbc9b3242b0b26b8ffc54858cf8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail.Basic` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 35; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inv_pow_three_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/inv-pow-three-step--ba2da919fc47b21115d14fdd.md) | 49 | `result-track:ba2da919fc47b21115d14fddfea278fc35e20862e1c10774d429c2b80a6b4d9b` |
| 2 | `lemma` | [inv_pow_two_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/inv-pow-two-step--6013ba26506a96d88dd3dc96.md) | 57 | `result-track:6013ba26506a96d88dd3dc9623906557d245ce0bafae9829a58f6a48de8499a9` |
| 3 | `lemma` | [sum_inv_pow_three_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-inv-pow-three-le-telescope--d4af8fbc95f63d25d89d41ba.md) | 64 | `result-track:d4af8fbc95f63d25d89d41ba25cd92000ddedda66bcd4f16baf1ec34582dd03b` |
| 4 | `lemma` | [sum_inv_pow_two_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-inv-pow-two-le-telescope--c80b49edcc0e0f06ed5c3fad.md) | 77 | `result-track:c80b49edcc0e0f06ed5c3fad31f98ce5aa0a0b1669d106ccbd99071d73601af5` |
| 5 | `lemma` | [sum_inv_pow_three_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-inv-pow-three-le--ea4de2419713820516eda7f0.md) | 91 | `result-track:ea4de2419713820516eda7f031d36473b9ee163661a660aad6198e907d1da466` |
| 6 | `lemma` | [sum_inv_pow_two_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-inv-pow-two-le--ce691ba40cc5aa855727de07.md) | 101 | `result-track:ce691ba40cc5aa855727de074a154841e46c38f0074d2cd3326c174a7f8470c2` |
| 7 | `lemma` | [log_add_le_log_add_div](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/log-add-le-log-add-div--65e275bd06aa74148708d36d.md) | 111 | `result-track:65e275bd06aa74148708d36d6d315e19d87d7d51051a9ec4348ca492e0915f07` |
| 8 | `lemma` | [sum_window_weights_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-window-weights-le--10bb22d16a7991fafcc3dceb.md) | 122 | `result-track:10bb22d16a7991fafcc3dceb9c13c9c1c6a59a55714f75f967b27696a6cca2ee` |
| 9 | `lemma` | [one_side_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/one-side-sum-le--0c039f9181b14b3d7e53c16f.md) | 208 | `result-track:0c039f9181b14b3d7e53c16f310dc70d9bd91a5b16dfac064d50342d898c6160` |
| 10 | `lemma` | [one_le_log_four_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/one-le-log-four-mul--e6e61ddc78a37cbdbd7fca99.md) | 253 | `result-track:e6e61ddc78a37cbdbd7fca990e238bc2043b2e006f2393e22fddd645cd9c4a8b` |
| 11 | `lemma` | [two_sides_numeric](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/two-sides-numeric--4dc86030747ecae1617850e3.md) | 260 | `result-track:4dc86030747ecae1617850e3159d3a3ddb33d23dca8089fc7e935f960d5d4546` |
| 12 | `theorem` | [tail_count_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/tail-count-sum-le--fffa42f674715fac8656a5dd.md) | 302 | `result-track:fffa42f674715fac8656a5dd8fcb7d8ce423fd9dbb86c90b308e42f33b92988c` |
| 13 | `lemma` | [sum_mult_le_of_windows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/sum-mult-le-of-windows--82c6b37256750a1230eb2411.md) | 403 | `result-track:82c6b37256750a1230eb241123dac6e8eff2fc389ecdf33b69e82d3ee6d2f47c` |
| 14 | `theorem` | [boundary_count_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant2a2e95b06ebd3a886725a4e1cf96410ed8a8bcf7de4a8fafca7073ae2d57a4c5.lean/declarations/boundary-count-le--b5314e054d0e7cb4c68c5bb5.md) | 418 | `result-track:b5314e054d0e7cb4c68c5bb57d7a55fb3e2916cbfaceea00d30f15b0a232826b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

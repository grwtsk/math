# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Count.Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b9921557758c132db22727b91adfc063f9ca5a3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b9921557758c132db22727b91adfc063f9ca5a3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Tail.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Field` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inv_pow_three_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/inv-pow-three-step--30176f7103d18ad77baf6460.md) | 41 | `result-track:30176f7103d18ad77baf64607689fa4cdcfac41bd1a3eecdd93f1386fc306dc1` |
| 2 | `lemma` | [inv_pow_two_step](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/inv-pow-two-step--62faeed0661791057953b3e5.md) | 49 | `result-track:62faeed0661791057953b3e54d6c24250a01c217a727bf0ed45509a387bb25d1` |
| 3 | `lemma` | [sum_inv_pow_three_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-inv-pow-three-le-telescope--863b105ec98a42cf13e38364.md) | 56 | `result-track:863b105ec98a42cf13e3836454ee3ddc778f1317fdbc95e95c2f7d29bba980cd` |
| 4 | `lemma` | [sum_inv_pow_two_le_telescope](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-inv-pow-two-le-telescope--b61ea5e1be950195a1cc1c98.md) | 69 | `result-track:b61ea5e1be950195a1cc1c98dd3d5144dde69f30c3d3d22df7ea01110a407967` |
| 5 | `lemma` | [sum_inv_pow_three_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-inv-pow-three-le--4ff2645a60f7570387be3e05.md) | 83 | `result-track:4ff2645a60f7570387be3e0517d99f4fb72ee208606974f8d93b1971ff3a8452` |
| 6 | `lemma` | [sum_inv_pow_two_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-inv-pow-two-le--49b0af77e50c6a022f6ef904.md) | 93 | `result-track:49b0af77e50c6a022f6ef904f6e64747d51c06ff43b027dafd00531817d7f121` |
| 7 | `lemma` | [log_add_le_log_add_div](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/log-add-le-log-add-div--5ac67702b8d6fc45bfc2fb39.md) | 103 | `result-track:5ac67702b8d6fc45bfc2fb39c280fdf592c1d33f46123b89bdad5508ce4e8934` |
| 8 | `lemma` | [sum_window_weights_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-window-weights-le--c738009f4e43530213d77565.md) | 114 | `result-track:c738009f4e43530213d775654e630fbb0d91908ebe73e102fa82dce51bec2b9f` |
| 9 | `lemma` | [one_side_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/one-side-sum-le--e6744c848b89b19cd2a0a54c.md) | 200 | `result-track:e6744c848b89b19cd2a0a54ccdd02bdbc4a6ea8f40c405691b24c8e19a687ab6` |
| 10 | `lemma` | [one_le_log_four_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/one-le-log-four-mul--98083a7f88d9a1eaba45ea43.md) | 245 | `result-track:98083a7f88d9a1eaba45ea4377a26df7c6e99a7709b2858ca9faa2b733a9aa3b` |
| 11 | `lemma` | [two_sides_numeric](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/two-sides-numeric--4effbe1fe9cbf4e61bd6f196.md) | 252 | `result-track:4effbe1fe9cbf4e61bd6f19688fa204c8b0ee80ed2df63b722b8f6f92f022081` |
| 12 | `theorem` | [tail_count_sum_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/tail-count-sum-le--8d0c59c3a54a03655d1e14fb.md) | 294 | `result-track:8d0c59c3a54a03655d1e14fbf768ba44700fcdfa24ee7f0a0d2bccf0302cced7` |
| 13 | `lemma` | [sum_mult_le_of_windows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/sum-mult-le-of-windows--16ca1af37094124d3762f484.md) | 395 | `result-track:16ca1af37094124d3762f484da543d92855214fc99645140ba97ba1b2b8d12f4` |
| 14 | `theorem` | [boundary_count_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Count/Variant737b90b4b51a1a68c0c36d924b06672b684cc8b144bd1511a569ebc2228b163d.lean/declarations/boundary-count-le--a61a41ec9f492c58f1605974.md) | 410 | `result-track:a61a41ec9f492c58f16059742b5dea564cba61d7d3e1c9fba4f3d4a73da7799d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

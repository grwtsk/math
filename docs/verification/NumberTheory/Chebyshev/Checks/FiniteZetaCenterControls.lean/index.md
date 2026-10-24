# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.FiniteZetaCenterControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4ae099606ba54170bb4d0bdc95bc6922ae6732b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4ae099606ba54170bb4d0bdc95bc6922ae6732b`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteNewtonCenter`](../../../../../mathematics/NumberTheory/Zeta/Riemann/FiniteNewtonCenter.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_cutoff](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/empty-cutoff--3b69eb1be62acfd76527e6f5.md) | 17 | `result-track:3b69eb1be62acfd76527e6f55e56d3bcddc51fe9750d0002c082c833a0cbb1cb` |
| 2 | `theorem` | [one_term_cutoff](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/one-term-cutoff--59755a3879f5bb58da33b6e9.md) | 19 | `result-track:59755a3879f5bb58da33b6e93c70bdd0b4b69149571d617d84bbaaea8c67046b` |
| 3 | `theorem` | [empty_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/empty-value--a3eb14d46b01a8cdf08e3ead.md) | 22 | `result-track:a3eb14d46b01a8cdf08e3eadf4db8412957d6ea02a145b99306424e593380ec5` |
| 4 | `theorem` | [empty_slope](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/empty-slope--5b1ccdd92942bedeb04dffd5.md) | 26 | `result-track:5b1ccdd92942bedeb04dffd562939fd953c021ad770d95144640b151cb72dea4` |
| 5 | `theorem` | [pointwise_zero_tail_nonzero_slope](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/pointwise-zero-tail-nonzero-slope--32b283d41085982b71f2455c.md) | 31 | `result-track:32b283d41085982b71f2455cf86c922721473df424f198827a5e83fd5fdd8d11` |
| 6 | `theorem` | [zero_radius_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/zero-radius-rejected--0628515569dcc903b5539994.md) | 35 | `result-track:0628515569dcc903b5539994e60102fa2216217495bb3c4819d31aabae160026` |
| 7 | `theorem` | [outside_halfplane_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/outside-halfplane-rejected--171ddfd72b6546dc6076dccf.md) | 37 | `result-track:171ddfd72b6546dc6076dccf399062507fb2574f06ac7488edc59499d1849f23` |
| 8 | `theorem` | [pole_guard_rejects](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/pole-guard-rejects--918d5a7b604eb558518fe262.md) | 40 | `result-track:918d5a7b604eb558518fe26266346c38207ae2ea6c7ce245b477f6dad3133af3` |
| 9 | `theorem` | [tail_at_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/tail-at-two--a161822c9c0ba912966a6672.md) | 43 | `result-track:a161822c9c0ba912966a66721ca29cebfd7df64c1d0adce119f49d19fd0d7aaf` |
| 10 | `theorem` | [tail_at_two_one_term](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/tail-at-two-one-term--ce55f43364206a4150ea9149.md) | 47 | `result-track:ce55f43364206a4150ea91498f3d22fb7bf76117946f070de09658210145ceb9` |
| 11 | `theorem` | [two_error_allowances](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/two-error-allowances--60c9a9c3c8be3ba9b3c17aaf.md) | 51 | `result-track:60c9a9c3c8be3ba9b3c17aaf94bed1b8533d33b6c8798ad16c6b9c8b5d359705` |
| 12 | `theorem` | [cubic_value_zero_derivative_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/FiniteZetaCenterControls.lean/declarations/cubic-value-zero-derivative-nonzero--270715223d1fc500b70eb7c7.md) | 54 | `result-track:270715223d1fc500b70eb7c7751cc2e1b7128c831fab46023b4023943a521841` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

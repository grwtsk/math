# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CubicCircleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47e794e1e1b7c33a7d30966b45d02ef1cf705793",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47e794e1e1b7c33a7d30966b45d02ef1cf705793`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Real.CubicEulerMaclaurin`](../../../../../mathematics/Analysis/RealAnalysis/CubicEulerMaclaurin.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicCircleGeometry`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicCircleGeometry.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [third_quarter_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/third-quarter-nonzero--fb3d9f1099a28320d945297e.md) | 17 | `result-track:fb3d9f1099a28320d945297ebaae2cbab5d622efbd9d012aff2793febed60aa9` |
| 2 | `theorem` | [third_three_quarters_negative](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/third-three-quarters-negative--9519e6ece36aa8bf72901f4e.md) | 19 | `result-track:9519e6ece36aa8bf72901f4e24fa8f634844bb5e110a78cc2945cc2c17d2aaf3` |
| 3 | `theorem` | [unnormalized_cubic_is_six_times](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/unnormalized-cubic-is-six-times--64a312167dcd2bea62e60c9c.md) | 22 | `result-track:64a312167dcd2bea62e60c9cc5871421961ed155f58b7e370ea2a5059ff36d1d` |
| 4 | `theorem` | [quartic_balance](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/quartic-balance--efafad2ae359bdfc8d59b7c9.md) | 26 | `result-track:efafad2ae359bdfc8d59b7c9b924a2f0e7543b0570b66d3716c1513596a88605` |
| 5 | `theorem` | [quartic_omitted_remainder_fails](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/quartic-omitted-remainder-fails--798f1421ad66e47d5d6517a8.md) | 29 | `result-track:798f1421ad66e47d5d6517a8cff14caf4843fc88b219753c76d5522b8bbb2844` |
| 6 | `theorem` | [cubic_budget_at_one_fails](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/cubic-budget-at-one-fails--d773684055666410ce9eefee.md) | 33 | `result-track:d773684055666410ce9eefee391d75930c5ead6ce66ed8ebb39420f40b448457` |
| 7 | `theorem` | [outer_leftmost_real_part](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/outer-leftmost-real-part--7f2d34ebfbf06e6881f146b9.md) | 37 | `result-track:7f2d34ebfbf06e6881f146b997df18e2314b27fe40b00eb7c914dc7e6e2beaab` |
| 8 | `theorem` | [cubic_factor_at_minus_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicCircleControls.lean/declarations/cubic-factor-at-minus-one--10ccf6ec223878a32c388d5c.md) | 40 | `result-track:10ccf6ec223878a32c388d5c183ea1ee613321377df971aa69030e9a1875f38a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

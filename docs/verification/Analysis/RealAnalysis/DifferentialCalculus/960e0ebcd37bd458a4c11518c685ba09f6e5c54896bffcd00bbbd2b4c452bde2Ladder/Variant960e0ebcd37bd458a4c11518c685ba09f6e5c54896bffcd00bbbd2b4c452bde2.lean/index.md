# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder.Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "081f1025daa730b30a5d2f8ad44acbb8f15f3028",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `081f1025daa730b30a5d2f8ad44acbb8f15f3028`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/differentiable-thetatail--f5d84ce6aa0c18499d95a8e6.md) | 10 | `result-track:f5d84ce6aa0c18499d95a8e6e03ad6d6ca22d3aaa8b91f3572d5e35351bf4849` |
| 2 | `theorem` | [deriv_thetaTail_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/deriv-thetatail-integrableon--10499145c97cfba3bba7f905.md) | 16 | `result-track:10499145c97cfba3bba7f90528c8b5a6bcaccafd1badb4ab7d3cf494fd17cdc3` |
| 3 | `theorem` | [thetaTail_succ_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/thetatail-succ-eq-integral--661800d6402dc1be86b6ce54.md) | 25 | `result-track:661800d6402dc1be86b6ce54b68956a01caf5856599d47438ac4d018f65c18a8` |
| 4 | `theorem` | [thetaTail_succ_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/thetatail-succ-integral-add--830961fa6ab35597f9fcddd6.md) | 36 | `result-track:830961fa6ab35597f9fcddd60181f77a7d414ab04687a2360e45a09367a4d380` |
| 5 | `theorem` | [thetaTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/thetatail-logslope-antitone--25f8353a9a1547931f935328.md) | 42 | `result-track:25f8353a9a1547931f9353280cbb99a937e2d4d46ef9ee416f4de566694376fa` |
| 6 | `theorem` | [thetaTail_succ_div_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variant960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2.lean/declarations/thetatail-succ-div-antitone--c469470e34b694bb0646ef95.md) | 63 | `result-track:c469470e34b694bb0646ef956719935538b46b1e36f4101bc606ad0cde19e3ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

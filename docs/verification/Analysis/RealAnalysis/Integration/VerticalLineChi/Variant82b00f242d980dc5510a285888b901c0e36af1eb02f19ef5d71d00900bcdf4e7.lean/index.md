# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.VerticalLineChi.Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b02623e04e65e37288e68b82a1ed1d32090612",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b02623e04e65e37288e68b82a1ed1d32090612`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.VerticalLine` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LandauChi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [neg_logDeriv_LFunction_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/declarations/neg-logderiv-lfunction-eq--be7dab288b2da7c44f814921.md) | 30 | `result-track:be7dab288b2da7c44f8149214346ce6feab6eb0dc005a69b7af3462e93beb79a` |
| 2 | `theorem` | [integrand_eq_tsum_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/declarations/integrand-eq-tsum-chi--d276a94b33094ba8577657e9.md) | 46 | `result-track:d276a94b33094ba8577657e960f47a010fada6e5b5f471e5765fc9ad9fd3425a` |
| 3 | `theorem` | [per_n_line_integral_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/declarations/per-n-line-integral-chi--9dcf9ba90de490542989dfcc.md) | 58 | `result-track:9dcf9ba90de490542989dfcc1d4632368b68ba63f11303416c7dc1f318ffa1b0` |
| 4 | `theorem` | [line_integral_swap_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/declarations/line-integral-swap-chi--2e0533bcc01cd4b72a5e2665.md) | 124 | `result-track:2e0533bcc01cd4b72a5e2665109f9f9f992c9d9fb388760795735e062eb9ca38` |
| 5 | `theorem` | [prime_side_line_chi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/VerticalLineChi/Variant82b00f242d980dc5510a285888b901c0e36af1eb02f19ef5d71d00900bcdf4e7.lean/declarations/prime-side-line-chi--2f721a42548c0f20124b06fa.md) | 204 | `result-track:2f721a42548c0f20124b06fad38d281abd716e2ca3437adfa45f400e90f292b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ArgBound.Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d423497ad4094e1b0ce85926c78132fbe710c7ba",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d423497ad4094e1b0ce85926c78132fbe710c7ba`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_im_integral_logDeriv_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/abs-im-integral-logderiv-le-pi--b5b5b9f46e2108ae0c6b1001.md) | 33 | `result-track:b5b5b9f46e2108ae0c6b1001777e3e3ba5a6c200d40d2b292d813c5662a184ed` |
| 2 | `lemma` | [hasDerivAt_vertical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/hasderivat-vertical--50978ffd2b34c168225ab22a.md) | 63 | `result-track:50978ffd2b34c168225ab22aa991fa07b1797554d53fff6f9f0f1eac7824932b` |
| 3 | `lemma` | [hasDerivAt_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/hasderivat-horizontal--b8fd05197674ea03ae9788b6.md) | 68 | `result-track:b8fd05197674ea03ae9788b67854e07d50e1ef9bec01bc696f7b027b32349042` |
| 4 | `theorem` | [abs_im_integral_logDeriv_vertical_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/abs-im-integral-logderiv-vertical-le-pi--dff487fbbea61cbc0b723bcc.md) | 73 | `result-track:dff487fbbea61cbc0b723bcce8e650bb5316d8391faf6b7601c6b578c87087d6` |
| 5 | `theorem` | [abs_im_integral_logDeriv_horizontal_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/abs-im-integral-logderiv-horizontal-le-pi--c928f01b08a7f1761ce26d0d.md) | 95 | `result-track:c928f01b08a7f1761ce26d0d9783a231c9c03b9cb9aa01d6c09a0c0493c7347f` |
| 6 | `lemma` | [continuousOn_inv_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/continuouson-inv-sub--4bdc987190f3bc0783bdd51b.md) | 118 | `result-track:4bdc987190f3bc0783bdd51b9b36caf00c81662eba4af11863e85920fb5d66d9` |
| 7 | `theorem` | [intervalIntegrable_inv_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/intervalintegrable-inv-sub--bf9c61eb591eb1c9cd74c1ec.md) | 124 | `result-track:bf9c61eb591eb1c9cd74c1ec16f0fc184e168ada80ab6e98133bf9cbc4a6e6f1` |
| 8 | `theorem` | [abs_im_integral_inv_sub_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant351bae368ba1d236d4572d52132913006ba8cf873001e309c6c1d92c18adf7c8.lean/declarations/abs-im-integral-inv-sub-le-pi--227835d4e516932bfe1a788e.md) | 129 | `result-track:227835d4e516932bfe1a788ee6417fffb9633eca378ee5ff09ab9a4c15677690` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.JapaneseBracket.Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a773a828ece6ab3cd804d5fff49379f5accdab59",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a773a828ece6ab3cd804d5fff49379f5accdab59`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.EqHaar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sqrt_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/sqrt-one-add-norm-sq-le--694faff2f37b90bb9fe6d2ce.md) | 34 | `result-track:694faff2f37b90bb9fe6d2ce6c4535a61e45f1d0a3f914c43f531766052d2dc3` |
| 2 | `theorem` | [one_add_norm_le_sqrt_two_mul_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/one-add-norm-le-sqrt-two-mul-sqrt--cc97e83ec3b22b8cb3c6df70.md) | 38 | `result-track:cc97e83ec3b22b8cb3c6df709b59329e70cf656e1828a4d80c953fcf1d1a5306` |
| 3 | `theorem` | [rpow_neg_one_add_norm_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/rpow-neg-one-add-norm-sq-le--912ce72d90c19174dae82660.md) | 45 | `result-track:912ce72d90c19174dae82660f26ff5a86534a30cfce1948a9481f160fca9eb4b` |
| 4 | `theorem` | [le_rpow_one_add_norm_iff_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/le-rpow-one-add-norm-iff-norm-le--5cb213c959fc70c2ec598bcb.md) | 57 | `result-track:5cb213c959fc70c2ec598bcb35e136616aedeb303f8e2c6c8acbb15a71ae0fb1` |
| 5 | `theorem` | [closedBall_rpow_sub_one_eq_empty_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/closedball-rpow-sub-one-eq-empty-aux--d82c9eee7d07314c2e7759e3.md) | 64 | `result-track:d82c9eee7d07314c2e7759e33a1274131ff8145333014a75228cfacd20bd4b99` |
| 6 | `theorem` | [finite_integral_rpow_sub_one_pow_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/finite-integral-rpow-sub-one-pow-aux--0406a9642462450bd1bc3877.md) | 72 | `result-track:0406a9642462450bd1bc38776d9aa1c6ff6b42506a4e7bcff074f79fef2fa782` |
| 7 | `theorem` | [finite_integral_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/finite-integral-one-add-norm--e0d4448485b11775fa307a59.md) | 91 | `result-track:e0d4448485b11775fa307a59cb2d70760eea801dfd2a801397f6d76b3131bb0a` |
| 8 | `theorem` | [integrable_one_add_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/integrable-one-add-norm--9ae22c0316e69fcbcf58c60b.md) | 130 | `result-track:9ae22c0316e69fcbcf58c60b3b58682a08e1abd3a739415264b34f09433c409c` |
| 9 | `theorem` | [integrable_rpow_neg_one_add_norm_sq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant3ce82037eef58d0fdf1e9bc0088d0b8005a7af74e10621b51d0f1752937476f6.lean/declarations/integrable-rpow-neg-one-add-norm-sq--5f1196c2b95e0a9fe430b308.md) | 140 | `result-track:5f1196c2b95e0a9fe430b308a183665ddadcbb9417e6e53a11ea8542fb4ebb42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

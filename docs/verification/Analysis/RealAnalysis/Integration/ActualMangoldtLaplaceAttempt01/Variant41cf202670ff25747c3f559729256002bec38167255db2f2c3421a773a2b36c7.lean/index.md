# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualMangoldtLaplaceAttempt01.Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ec267b64658778bf201ed0d864bda8382a43746",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ec267b64658778bf201ed0d864bda8382a43746`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldtWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/mangoldtweight--99e785a0546391bdeeebe6c5.md) | 26 | `declaration-track:99e785a0546391bdeeebe6c5b9b48ff46a077c9e1515f6a58a8d303993748561` |
| 2 | `def` | [laplaceAtom](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/laplaceatom--56c045eac974db5d155ab9eb.md) | 29 | `declaration-track:56c045eac974db5d155ab9eb0abbd2fc4e16de62b43d7a772a206580abf4dbb7` |
| 3 | `theorem` | [onset_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/onset-pos--92266284a045fec608d53c34.md) | 33 | `result-track:92266284a045fec608d53c34935fed30d509f351c120c8b9fd0136cd3cf94807` |
| 4 | `theorem` | [weight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/weight-nonneg--8a692cca55369db8272802c0.md) | 36 | `result-track:8a692cca55369db8272802c0fa5125164becdce842d99a4f6cd8aa9b3a50eee1` |
| 5 | `theorem` | [atom_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/atom-nonneg--fccb14b1bfd689bbdfcc7b57.md) | 40 | `result-track:fccb14b1bfd689bbdfcc7b57269d8acea92fbcf8d222c339a047a2b46902a3b1` |
| 6 | `theorem` | [atom_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/atom-measurable--0cc455cd96cb916db632e5d4.md) | 43 | `result-track:0cc455cd96cb916db632e5d415606ad2741b4c54790d477055dec806df209a88` |
| 7 | `theorem` | [atom_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/atom-integrable--70fc5891da5978fcf581e70a.md) | 48 | `result-track:70fc5891da5978fcf581e70acb70d28a6d76ae7aacfbc3ac2f23381fad2291b7` |
| 8 | `theorem` | [atom_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/atom-integral--ff80609a00d1c6c0ad213197.md) | 55 | `result-track:ff80609a00d1c6c0ad213197d9f05673f65bbb78c1d6903ecc40d33b346518aa` |
| 9 | `theorem` | [weighted_exp_eq_norm_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/weighted-exp-eq-norm-term--96bef171886d619c6bcc30f8.md) | 63 | `result-track:96bef171886d619c6bcc30f8f374790990e50df50fb0fccf1e69d2978ed59d5f` |
| 10 | `theorem` | [atom_norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualMangoldtLaplaceAttempt01/Variant41cf202670ff25747c3f559729256002bec38167255db2f2c3421a773a2b36c7.lean/declarations/atom-norm-integrals-summable--8c0c236d8f02fda04a07b276.md) | 76 | `result-track:8c0c236d8f02fda04a07b27617536738051c4485a3d0d17db83f763d92aee98d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

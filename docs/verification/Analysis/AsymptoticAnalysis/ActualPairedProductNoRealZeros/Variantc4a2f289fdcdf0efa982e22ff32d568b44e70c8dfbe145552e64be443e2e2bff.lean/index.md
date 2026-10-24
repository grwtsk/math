# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualPairedProductNoRealZeros.Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20524e95786b7a57d28806272d7dfa253f85ec3a`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ActualPairedProductOccurrences` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [etaPairTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/etapairterm--69c1e4a23d44eee35c077201.md) | 36 | `declaration-track:69c1e4a23d44eee35c077201a97ee360dc1bcb44c6e1a16ff9ead3a0922bb66f` |
| 2 | `def` | [realEtaPairTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/realetapairterm--cd896791712f33ac9a8afb3d.md) | 40 | `declaration-track:cd896791712f33ac9a8afb3d3679ec37231aeebc9588c034cd3695eebcf2abed` |
| 3 | `def` | [pairedEta](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta--2601f90e173ede1ae3f461a2.md) | 44 | `declaration-track:2601f90e173ede1ae3f461a29d5126be576cd6b721dc68d06aed822f4c15d257` |
| 4 | `def` | [etaZetaFactor](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/etazetafactor--52e4dceeefd5b390a2e57c3b.md) | 47 | `declaration-track:52e4dceeefd5b390a2e57c3b492f5a1a9426ff37527c33cc2c77dfdfba7ddd8c` |
| 5 | `theorem` | [etaPairTerm_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/etapairterm-norm-le--cbc019b76148dd74c1a1108e.md) | 50 | `result-track:cbc019b76148dd74c1a1108e8715d3ca0cec047d6053580871fe4a58c376cbf4` |
| 6 | `theorem` | [etaPairTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/etapairterm-summable--492b00524c5eae719e76fc3f.md) | 94 | `result-track:492b00524c5eae719e76fc3f19b7ece0155e28c8359b67c28986bfb4f48da293` |
| 7 | `theorem` | [differentiableOn_pairedEta](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/differentiableon-pairedeta--d4d473bdcd8f4dbbe8a8390d.md) | 129 | `result-track:d4d473bdcd8f4dbbe8a8390d349db4e86606001611f602be2f3729387880c04b` |
| 8 | `theorem` | [pairedEta_eq_factor_of_one_lt_re](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta-eq-factor-of-one-lt-re--5dad2a0c07d9f72035581aee.md) | 193 | `result-track:5dad2a0c07d9f72035581aee61b492de12b2c1f70be91fe9a4ba5fe0b6dae19a` |
| 9 | `theorem` | [pairedEta_eq_factor_upper](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta-eq-factor-upper--999346bf14c388e7fc8dd9e3.md) | 256 | `result-track:999346bf14c388e7fc8dd9e30ecbadbe9a56856955bacdd4539dfca5cb9f971c` |
| 10 | `theorem` | [pairedEta_eq_factor_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta-eq-factor-of-real--81eb3750c3a69325c49715af.md) | 297 | `result-track:81eb3750c3a69325c49715af3f787f95d197e693b431343d3da59453c6c760fa` |
| 11 | `theorem` | [etaPairTerm_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/etapairterm-of-real--60122a006054e5c49c31e998.md) | 353 | `result-track:60122a006054e5c49c31e998b7382cec0f9df1d4a3f1771776c151c1d1fec134` |
| 12 | `theorem` | [realEtaPairTerm_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/realetapairterm-pos--3e9e7a0dab09a91f7f24c224.md) | 362 | `result-track:3e9e7a0dab09a91f7f24c2249f59933cebfc962a856c437e4a6bd82843ddf80e` |
| 13 | `theorem` | [realEtaPairTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/realetapairterm-summable--8e3132c8092698f2af496efc.md) | 371 | `result-track:8e3132c8092698f2af496efc989647738491bb06081f196a15061100baa603c3` |
| 14 | `theorem` | [pairedEta_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta-of-real--ebee57e6e9117bf82581e5fb.md) | 377 | `result-track:ebee57e6e9117bf82581e5fba1476f21eb08a5a2d220787adfbd8b2a8f0e532f` |
| 15 | `theorem` | [pairedEta_re_pos_of_real](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/pairedeta-re-pos-of-real--8208edcc51eb35014d8a7e13.md) | 388 | `result-track:8208edcc51eb35014d8a7e13cfc6fe820798d6bac14c180e677a444a739c0e0e` |
| 16 | `theorem` | [riemannZeta_ofReal_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/riemannzeta-ofreal-neg--90a0d203c2872beea64e720e.md) | 398 | `result-track:90a0d203c2872beea64e720eb9cfdfbd78a2e0c5294522d0a9b7bf1f84cdc703` |
| 17 | `theorem` | [noRealNontrivialZeros_holds](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/declarations/norealnontrivialzeros-holds--002a409b759ddd2a0a9443ad.md) | 432 | `result-track:002a409b759ddd2a0a9443ade4cf5919cd0bf13f6dad300bbed3c34054249ba6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

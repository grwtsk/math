# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Bridge.Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db88fa3fedc657aa5a64c7ccf4d29a9c09a5be3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ExplicitFormula` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Poisson.PaperFT` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.JapaneseBracket` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_abs_le_of_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/exists-abs-le-of-hascompactsupport--617c93bb4a3ee26c6e441e4c.md) | 41 | `result-track:617c93bb4a3ee26c6e441e4c4a45f5ed551dfa3b832f59a781b882431e87bb54` |
| 2 | `theorem` | [norm_fourier_mul_one_add_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/norm-fourier-mul-one-add-sq-le--f87672d558cfdc09c31ce78e.md) | 50 | `result-track:f87672d558cfdc09c31ce78e2086e4aa92302142f9e9458233e2ed7f8cbdf09f` |
| 3 | `theorem` | [continuous_fourier_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/continuous-fourier-of-integrable--78d0aa75459c64f1d8978973.md) | 73 | `result-track:78d0aa75459c64f1d897897330b8860cdd6785f4556e4a46a9ae059973a4a5c3` |
| 4 | `theorem` | [integrable_fourier_of_contDiff_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/integrable-fourier-of-contdiff-two--08261a6906fcc50bf4704a99.md) | 77 | `result-track:08261a6906fcc50bf4704a99b8462e56e9632ee89f1db5ce7fc7e6bac2c476d9` |
| 5 | `theorem` | [norm_paperFT_mul_one_add_sq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/norm-paperft-mul-one-add-sq-le--0240fdb05ce0b06495a81b8b.md) | 88 | `result-track:0240fdb05ce0b06495a81b8bd8dce19b7f7d99822a89aa48914191e1bd195be8` |
| 6 | `theorem` | [abs_mu_le_of_gammaFacts](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/abs-mu-le-of-gammafacts--35fe6bf983e8e75aa0c6d5bb.md) | 102 | `result-track:35fe6bf983e8e75aa0c6d5bb9afa6f3449849cd3837f2da59dfc14a4d6d40dc7` |
| 7 | `theorem` | [integrable_paperFT_mul_mu](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/integrable-paperft-mul-mu--e0f4a464e5a28f5fd1377a3b.md) | 166 | `result-track:e0f4a464e5a28f5fd1377a3b47f58f37e47d402f01908267e0e61c9ca88d125f` |
| 8 | `theorem` | [explicitFormulaPaper_of_lit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variantaf2ceda76821ff83585fb257c8f80480c183c08a4a3eb7dc8c2dca4519acfe57.lean/declarations/explicitformulapaper-of-lit--b0477e9244891e5d8955dd95.md) | 199 | `result-track:b0477e9244891e5d8955dd959e2601eae30bf348d11bc3c540b0fa026b88dd05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

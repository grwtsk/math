# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.Seam.Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f0c197f8cc3ed0a120abd676a2cbd34a9efb31",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f0c197f8cc3ed0a120abd676a2cbd34a9efb31`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [riemannZeta_analyticOnNhd_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/riemannzeta-analyticonnhd-compl-one--d1a0121eaa53f0fcf87c66bb.md) | 30 | `result-track:d1a0121eaa53f0fcf87c66bb21d87c21c90703cd80470158dcec896ab75915a9` |
| 2 | `lemma` | [isConnected_compl_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/isconnected-compl-one--13b07cc007d92b10df0bfaf5.md) | 36 | `result-track:13b07cc007d92b10df0bfaf5c0d03fcec4ae436be1638792a4a21aa64fcb9d67` |
| 3 | `lemma` | [analyticOrderAt_riemannZeta_ne_top](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/analyticorderat-riemannzeta-ne-top--6661a99e0ea769c6fe4cecab.md) | 40 | `result-track:6661a99e0ea769c6fe4cecab5a065578841f12774fb90432d1f0f80158cda7aa` |
| 4 | `theorem` | [ZetaSeam.one_le_mult_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/zetaseam-one-le-mult-holds--21e83987e650daaeff27dea8.md) | 50 | `result-track:21e83987e650daaeff27dea8c1b2494bc77dd61f23ec44fa4c8f5185f72b2fc6` |
| 5 | `lemma` | [riemannZeta_zeros_locallyFinite](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/riemannzeta-zeros-locallyfinite--db07d76f0cc928f57fa95087.md) | 63 | `result-track:db07d76f0cc928f57fa950874bf2a992aa0163df31687f456a81160b4592cfa5` |
| 6 | `theorem` | [ZetaSeam.finite_window_holds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/zetaseam-finite-window-holds--c34af5de476eb2c0952aca97.md) | 91 | `result-track:c34af5de476eb2c0952aca9720554f2b187b8bdb558010fb81055d9c87d5bc75` |
| 7 | `theorem` | [ZetaSeam.of_reflect](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Seam/Variant101a3c80d41cad7c4c4164d8763b9babeb94cfac03eb16490c041aaade5d5606.lean/declarations/zetaseam-of-reflect--4507a4eaeff35b12fbfba23b.md) | 108 | `result-track:4507a4eaeff35b12fbfba23b5c1a357deacbfdb718f0cb13973a191be548ac09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

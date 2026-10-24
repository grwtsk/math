# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Basic.Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a9c3d59ca18209ec683669224554e2f2b020ae",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a9c3d59ca18209ec683669224554e2f2b020ae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Seam` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Halving` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [window_union](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/window-union--7d3853e9af35e6aa9fd75d1e.md) | 35 | `result-track:7d3853e9af35e6aa9fd75d1e7fed283c5f7e90b33025f2d1fbc584876f6aae1f` |
| 2 | `lemma` | [N_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/n-add--adcb9ce9ca7c8d202b700821.md) | 48 | `result-track:adcb9ce9ca7c8d202b7008215515ed6940917f93d50ed6182c58f0a228bec578` |
| 3 | `lemma` | [N_mono](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/n-mono--77ccd216cb065906771b3c99.md) | 56 | `result-track:77ccd216cb065906771b3c991ee3d907f89869a7af9eb7fa0555ed5dd03fe400` |
| 4 | `lemma` | [one_le_log_add_three](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/one-le-log-add-three--42c7ea95085e2a727a70ba74.md) | 66 | `result-track:42c7ea95085e2a727a70ba741fb3a94a08194677b33a2dc64533bd70838124ae` |
| 5 | `lemma` | [continuousAt_logDeriv_of_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/continuousat-logderiv-of-analyticat--0bd3d4cb4e2bf00a37920a7d.md) | 72 | `result-track:0bd3d4cb4e2bf00a37920a7d5b3f75b6ecc14fa4494caac869c32126e2199117` |
| 6 | `lemma` | [N_unit_windows](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variantb9e6c5dc4ccdcf8aff455f536756b70b53509167c75897bf265b9a3656801557.lean/declarations/n-unit-windows--78edb245a877c919fcac265d.md) | 78 | `result-track:78edb245a877c919fcac265d8dd341e1fe7a75f32be8c039010199681355d461` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

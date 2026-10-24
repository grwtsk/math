# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti.Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0541375e404448f64801a18da5d3fab04805cbb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0541375e404448f64801a18da5d3fab04805cbb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredXi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/declarations/centeredxi--62394cadc95ec92944c8e472.md) | 18 | `declaration-track:62394cadc95ec92944c8e4722bb13b338a27abe493def72375c3094fee3808f4` |
| 2 | `theorem` | [iteratedDeriv_centeredXi_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/declarations/iteratedderiv-centeredxi-zero--3d9fc888bd4a2332deaf178d.md) | 21 | `result-track:3d9fc888bd4a2332deaf178dff01ec1fa8b2fbfe6b010b30b2bb8d3aa5e4fda4` |
| 3 | `theorem` | [iteratedDeriv_cosh_linear_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6ed2b7cf357178937d2eeef64114e0c2e7a0a988f135d659345157d1d631f6e8DerivativeIdenti/Variantdb5c2af70bbda9bd8632ebcc51152b2450f1a96220fdb4897eee335f726c8bf0.lean/declarations/iteratedderiv-cosh-linear-zero--2a65add16d937e669875c2b2.md) | 28 | `result-track:2a65add16d937e669875c2b20c496883808c01d7fe85fcafb7a6f2f791a322d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

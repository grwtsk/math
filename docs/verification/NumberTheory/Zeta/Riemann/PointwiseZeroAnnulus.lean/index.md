# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PointwiseZeroAnnulus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6c9e8ab3e5725882496ad07a0b783ff1269238e",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6c9e8ab3e5725882496ad07a0b783ff1269238e`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PointwiseFiniteZeroHead`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseFiniteZeroHead.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalHighCounting.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_pointwiseZeroTerm_le_of_height](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/declarations/norm-pointwisezeroterm-le-of-height--2417979a7289c27507959dc5.md) | 26 | `result-track:2417979a7289c27507959dc5ac9fcb6096e03d5ed1776912a0c83fd4dcee5400` |
| 2 | `def` | [pointwiseAnnulusBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/declarations/pointwiseannulusbudget--0124f05931ca4935459d2d44.md) | 41 | `declaration-track:0124f05931ca4935459d2d444a23b3896f1e06493e0e1a2faae4e243c9027a54` |
| 3 | `theorem` | [norm_finiteHeightZeroHead_sub_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/declarations/norm-finiteheightzerohead-sub-le--20679219593049c7c5f9ea9c.md) | 46 | `result-track:20679219593049c7c5f9ea9c19f094df0f7ceb948ee40bd8e8f68d6da6aaee6d` |
| 4 | `theorem` | [pointwiseAnnulusBudget_dyadic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/declarations/pointwiseannulusbudget-dyadic--25432c77fdd055516091d266.md) | 87 | `result-track:25432c77fdd055516091d266bc510e82b0116b79003ab6b470bac3b7574c8ffc` |
| 5 | `theorem` | [pointwiseAnnulusBudget_dyadic_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PointwiseZeroAnnulus.lean/declarations/pointwiseannulusbudget-dyadic-lower--82e5b70fe69ffbf42bc696c5.md) | 92 | `result-track:82e5b70fe69ffbf42bc696c56ecef5949c30f45b3b07a3de0a99ba86332470cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.RadiusLiminf.Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f86e5ee5b7046c12be12f8c0c0d49a0bcc44c2ef",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f86e5ee5b7046c12be12f8c0c0d49a0bcc44c2ef`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.NNReal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/declarations/macro-rules--fa3d802b7b15ad19db88e836.md) | 30 | `declaration-track:fa3d802b7b15ad19db88e8366420fe29d0d2efbbfeef9eb9009cfb75f38dfd0c` |
| 2 | `theorem` | [radius_eq_liminf](../../../../../mathematics/Analysis/AsymptoticAnalysis/RadiusLiminf/Variantc4d8330723117863a4a40dbd46bed526e25e2fd5769d8ee685aca95459aadf07.lean/declarations/radius-eq-liminf--a7d0c549bd45f3bb7893b054.md) | 37 | `result-track:a7d0c549bd45f3bb7893b05418c353c7b45671b6babfc45d7165a7d7f663ec2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

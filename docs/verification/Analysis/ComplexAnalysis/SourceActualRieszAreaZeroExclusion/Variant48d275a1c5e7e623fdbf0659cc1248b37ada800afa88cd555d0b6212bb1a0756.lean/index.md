# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93d5f60d77607ead7fa8dbe25e611d7cccfc1dff",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93d5f60d77607ead7fa8dbe25e611d7cccfc1dff`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticHolomorphy` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszZeroPole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/extensionnumerator--7159c9c5d0d59ac3c0ac2dd8.md) | 31 | `declaration-track:7159c9c5d0d59ac3c0ac2dd8775b56f0f588f20cf262186d06590531a9e5ed35` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/polecleared-analyticat--b6547d17fcd26d382b80f164.md) | 36 | `result-track:b6547d17fcd26d382b80f164e336508f0baee876e20e981fadc0b61b8ad51f1d` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/polecleared-deriv--9912570c5d8b3d9edbcfc829.md) | 45 | `result-track:9912570c5d8b3d9edbcfc8290c465ac620f3888be9f593aa60af6bfc5c7f2226` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/extension-initial--1014ab8b57d3a52b550cdddb.md) | 55 | `result-track:1014ab8b57d3a52b550cdddba632f30ef970b981646aae3dc8aec72a47c9282a` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/extension-analytic--5f6f73decdb498f014c9aeee.md) | 82 | `result-track:5f6f73decdb498f014c9aeee354f345d40525b885e2ca1e701958d640b663b8e` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--3c3b6e2ea536e66bcbfdd57b.md) | 97 | `result-track:3c3b6e2ea536e66bcbfdd57b9acf4421e87f9955ff5b32c9f8ab0d2b6458ccaa` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant48d275a1c5e7e623fdbf0659cc1248b37ada800afa88cd555d0b6212bb1a0756.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--7decca07de1534f69c41238f.md) | 126 | `result-track:7decca07de1534f69c41238fdea102edad13a167f7b7d6bd0a16e12a321ced0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

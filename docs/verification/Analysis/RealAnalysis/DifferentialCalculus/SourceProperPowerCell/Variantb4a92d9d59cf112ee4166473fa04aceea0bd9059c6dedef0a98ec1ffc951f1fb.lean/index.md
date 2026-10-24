# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceProperPowerCell.Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33b665085d492cab4126554d1b72e8b17d315e31",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33b665085d492cab4126554d1b72e8b17d315e31`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeMertens` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerTailBudget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/powertailbudget--73ad3cc288f899c4745501d9.md) | 24 | `declaration-track:73ad3cc288f899c4745501d976eea30de2e1396656571105fe375352cc5c4b1e` |
| 2 | `theorem` | [log_le_half_sub_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/log-le-half-sub-inv--b022a02eded3821fe442ee55.md) | 26 | `result-track:b022a02eded3821fe442ee550aec0c1188d557a2795a6d885e16d5fcba8af2c7` |
| 3 | `theorem` | [powerTailBudget_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/powertailbudget-nonneg--66a8832a157dbaf51cc5c606.md) | 47 | `result-track:66a8832a157dbaf51cc5c606e4a20fc33f8298cd12e3608c067e4310dd409b1c` |
| 4 | `theorem` | [integer_cell_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/integer-cell-le--c25bfc9812cac7e64b0161dc.md) | 53 | `result-track:c25bfc9812cac7e64b0161dcf40f9183fbd7f979ad7d685f9042e09b65854ee6` |
| 5 | `theorem` | [finite_integer_tail_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/finite-integer-tail-le--69f51679f43f8a2c2dd40bb7.md) | 74 | `result-track:69f51679f43f8a2c2dd40bb79cf7c26a061b7fe691b8009b5262e75efe294663` |
| 6 | `theorem` | [finite_integer_tail_budget](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceProperPowerCell/Variantb4a92d9d59cf112ee4166473fa04aceea0bd9059c6dedef0a98ec1ffc951f1fb.lean/declarations/finite-integer-tail-budget--7aae29fb77a7198fff0ac368.md) | 85 | `result-track:7aae29fb77a7198fff0ac368e2476af0fa8a5fae714b3be2c095abe5bbcac6be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

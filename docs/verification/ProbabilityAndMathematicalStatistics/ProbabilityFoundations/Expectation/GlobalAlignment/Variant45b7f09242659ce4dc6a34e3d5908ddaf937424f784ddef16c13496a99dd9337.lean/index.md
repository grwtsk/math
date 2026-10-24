# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GlobalAlignment.Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51abcde400b571cf23a655c5d5275931f3295472",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51abcde400b571cf23a655c5d5275931f3295472`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.GlobalIndexNonzero` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.TransportInvariance` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.CanonicalPath.IndexSpectralBridge` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalPathProgram](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/declarations/canonicalpathprogram--e8c01d9f55f9ee103c2e5432.md) | 28 | `declaration-track:e8c01d9f55f9ee103c2e54328a686df6782f917c7c0ab22a49a18e7406a4520f` |
| 2 | `theorem` | [canonical_path_transport_invariant](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/declarations/canonical-path-transport-invariant--8424ccbb2604e59f22bdfeed.md) | 41 | `result-track:8424ccbb2604e59f22bdfeed923410aa5c4d918f438e7e4c876a9516b7409fe6` |
| 3 | `theorem` | [canonical_path_global_index_nonzero](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/declarations/canonical-path-global-index-nonzero--120ff03585222fdd415c6e3c.md) | 47 | `result-track:120ff03585222fdd415c6e3c7fd9f53dc63e63e31ca12f34e45dea40cc434c82` |
| 4 | `theorem` | [canonical_path_spectral_alignment](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/declarations/canonical-path-spectral-alignment--d07baf9363ea15a3c1f47425.md) | 55 | `result-track:d07baf9363ea15a3c1f4742583f12f718f4049cfe690baa901592ce3e548e2e7` |
| 5 | `theorem` | [conditional_global_spectral_alignment_from_supplied_bridge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GlobalAlignment/Variant45b7f09242659ce4dc6a34e3d5908ddaf937424f784ddef16c13496a99dd9337.lean/declarations/conditional-global-spectral-alignment-from-supplied-bridge--bca894aaaa3a981af001200b.md) | 64 | `result-track:bca894aaaa3a981af001200b95762fd51422b9e40d90c5cf9d9f83010cc00f20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

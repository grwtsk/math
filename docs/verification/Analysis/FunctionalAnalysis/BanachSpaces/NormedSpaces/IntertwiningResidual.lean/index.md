# Verification target: GRWTSK.Analysis.NormedSpace.IntertwiningResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeaf0e89be3d900a4e6a7345cc1058879c63c599",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/NormedSpace/IntertwiningResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeaf0e89be3d900a4e6a7345cc1058879c63c599`.

Source path: `GRWTSK/Analysis/NormedSpace/IntertwiningResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/NormedSpace/IntertwiningResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual`](../../../../../../mathematics/Analysis/InnerProductSpace/VariationalResidual.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DomainEmbedding](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/domainembedding--84a4c406ec8a21bb57661737.md) | 24 | `declaration-track:84a4c406ec8a21bb57661737116552530180cde95f8b8bf47c6c42801b00ab22` |
| 2 | `def` | [defect](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/defect--074263c51e0c58a894e32f82.md) | 31 | `declaration-track:074263c51e0c58a894e32f8292d41055382951dcb77fb0661d9d5da5bb549b64` |
| 3 | `theorem` | [full_residual_identity](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/full-residual-identity--ed61b2c35129ac8a991c6991.md) | 33 | `result-track:ed61b2c35129ac8a991c6991788c0d0ca81fbdfcd2d9e77a9a82924eaa651af3` |
| 4 | `theorem` | [full_residual_bound](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/full-residual-bound--94078ef125c12946e2dedd9a.md) | 39 | `result-track:94078ef125c12946e2dedd9a27b11561b4561671e452ea29cd21a576de88efae` |
| 5 | `theorem` | [reading_difference_identity](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/reading-difference-identity--48e82647d079d1c2ababef44.md) | 53 | `result-track:48e82647d079d1c2ababef448b517c31097b2442b40c0928a3b52bce1a9edba4` |
| 6 | `theorem` | [reading_difference_bound](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/reading-difference-bound--691771b9de976067dbbe4eb5.md) | 62 | `result-track:691771b9de976067dbbe4eb5767b837eb2abd0416e08feb4305c36066abbfa34` |
| 7 | `theorem` | [full_operator_enclosure](../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/IntertwiningResidual.lean/declarations/full-operator-enclosure--bb2046b7286dd4dac9adbc9e.md) | 91 | `result-track:bb2046b7286dd4dac9adbc9eb3e5db80cf4e73e28da56a67cfe864cfcc109e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

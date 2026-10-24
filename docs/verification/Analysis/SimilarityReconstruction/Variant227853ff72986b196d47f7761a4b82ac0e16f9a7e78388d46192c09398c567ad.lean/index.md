# Verification target: GRWTSK.Analysis.SimilarityReconstruction.Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71cb6da724528108be732f12b16a6c30f815fb64",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/index.md) · [Full source](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71cb6da724528108be732f12b16a6c30f815fb64`.

Source path: `GRWTSK/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 2; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic`](../../../../mathematics/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrence3e43388b6b8bc2751b565a33.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_eq](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/declarations/source-eq--99cf9150fcfb285d7f9b44cc.md) | 18 | `result-track:99cf9150fcfb285d7f9b44ccee98f590361cc72700f3e3851860c860f9a904d0` |
| 2 | `theorem` | [norm_return](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/declarations/norm-return--f37a16d0d538cc438d545d20.md) | 26 | `result-track:f37a16d0d538cc438d545d20ee95a944d4fc047fb64d5244dbbb954e80b55434` |
| 3 | `theorem` | [log_budget](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/declarations/log-budget--ed38e458b6c9625ddadf55aa.md) | 39 | `result-track:ed38e458b6c9625ddadf55aae9059d5464c9a99cbfbad0c450e6c682140a8960` |
| 4 | `theorem` | [relative_upperSublinear](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/declarations/relative-uppersublinear--2c46e377e1320ba30ed63775.md) | 48 | `result-track:2c46e377e1320ba30ed63775581e6fe9cfa19013e5027d6311128d70a9ee6aee` |
| 5 | `theorem` | [sublinear_log_of_tensor_budget](../../../../mathematics/Analysis/SimilarityReconstruction/Variant227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad.lean/declarations/sublinear-log-of-tensor-budget--b75960fdbe7f83d94596b9cc.md) | 59 | `result-track:b75960fdbe7f83d94596b9cce9f8fe8e83a592af2133332f0ae60421e19cdca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

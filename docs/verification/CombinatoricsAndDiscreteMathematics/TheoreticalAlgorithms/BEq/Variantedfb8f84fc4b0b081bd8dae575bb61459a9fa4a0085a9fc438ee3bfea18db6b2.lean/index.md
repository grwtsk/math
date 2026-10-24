# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BEq.Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4734b8adab9cc0448e3000874d3d6d8209f8a0f8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4734b8adab9cc0448e3000874d3d6d8209f8a0f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEqv_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean/declarations/iseqv-eq-decide--ba781962eca21c31c08eaddf.md) | 30 | `result-track:ba781962eca21c31c08eaddfb774ad8b6289d55f0b4e22ff27ba99294c3731b1` |
| 2 | `theorem` | [beq_eq_isEqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean/declarations/beq-eq-iseqv--a8be29409988e93880993fa8.md) | 45 | `result-track:a8be29409988e93880993fa81bd74bd9c58c31064cf8c8e9b22f1419d3cf7b5b` |
| 3 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantedfb8f84fc4b0b081bd8dae575bb61459a9fa4a0085a9fc438ee3bfea18db6b2.lean/declarations/beq-eq-decide--6bcefc6601503ceef9b0144a.md) | 58 | `result-track:6bcefc6601503ceef9b0144af1cb7ce2ca4e47cc5ec5256a5922e73be086657f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BEq.Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b1f9a66947f9d4304620549864646adb3989add",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b1f9a66947f9d4304620549864646adb3989add`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEqv_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean/declarations/iseqv-eq-decide--962d770da6c39b64e62b1ab7.md) | 22 | `result-track:962d770da6c39b64e62b1ab73f9982bfc4261ba700274d4d222539c164bbadca` |
| 2 | `theorem` | [beq_eq_isEqv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean/declarations/beq-eq-iseqv--689711fd3a60474685385613.md) | 37 | `result-track:689711fd3a6047468538561311aa02409deda3218e4f77d93aafd4750aa444c2` |
| 3 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BEq/Variantbdb8c6d694737c5e4a64cdda0208cab4dfd90d4cf72fbb0880ce2241bbca281b.lean/declarations/beq-eq-decide--5ad1980ac5dae7243d13ec20.md) | 50 | `result-track:5ad1980ac5dae7243d13ec200f3e94b3a4b632f54a3e0079fa141e87f5ff28db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

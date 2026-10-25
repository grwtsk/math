# Verification target: GRWTSK.Logic.FiniteCoverage.Checks.Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67a6cd069b3fb1f60f8bbf38844f266708814bc4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/FiniteCoverage/Checks/Audit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/index.md) · [Full source](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67a6cd069b3fb1f60f8bbf38844f266708814bc4`.

Source path: `GRWTSK/Logic/FiniteCoverage/Checks/Audit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/FiniteCoverage/Checks/Audit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.FiniteCoverage`](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrenced97c5903260a047eb8479618.lean/index.md) — import line 1; pinned internal source present.
- `Lean` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coverage_consumer](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/declarations/coverage-consumer--b52ddde9d2e921bf4bad4fe1.md) | 5 | `result-track:b52ddde9d2e921bf4bad4fe13b0e8b94df996b4a762b9f45fa0606ba6388ffa0` |
| 2 | `theorem` | [tail_consumer](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/declarations/tail-consumer--a98e8d5e73ba558b7b300e6c.md) | 9 | `result-track:a98e8d5e73ba558b7b300e6ca4f6592112e8655e5638e908617f5d48fab879af` |
| 3 | `theorem` | [ray_counterexample_consumer](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/declarations/ray-counterexample-consumer--7334ba4af62bac9048d9a5c9.md) | 13 | `result-track:7334ba4af62bac9048d9a5c902cbd0fdf64996ee3b97ca54ed756692229fa739` |
| 4 | `theorem` | [endpoint_counterexample_consumer](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/declarations/endpoint-counterexample-consumer--8f031d5541b9130bd291b8d5.md) | 16 | `result-track:8f031d5541b9130bd291b8d519f0c0311e893c09a85036af29c9dd16cbd378a0` |
| 5 | `elab` | [(anonymous)](../../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage/Checks/Audit__SourceOccurrenceff858ca6db1d9e8cb081afcb.lean/declarations/elab--c4c4dadc762915b30f3858d2.md) | 19 | `declaration-track:c4c4dadc762915b30f3858d2dea5eafb9bf68b9a695a18e49d5520b0d8dce936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

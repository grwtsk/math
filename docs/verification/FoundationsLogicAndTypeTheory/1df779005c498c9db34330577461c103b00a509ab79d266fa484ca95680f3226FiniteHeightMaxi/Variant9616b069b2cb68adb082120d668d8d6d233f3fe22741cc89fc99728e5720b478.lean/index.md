# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi.Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2203a945ea307fc54b0c2a99bd0c4676cf45e1d3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2203a945ea307fc54b0c2a99bd0c4676cf45e1d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MaximalDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximizer_of_finite_values](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/declarations/exists-maximizer-of-finite-values--75f4a63680fff0414298bd8f.md) | 29 | `result-track:75f4a63680fff0414298bd8f296b1537b6ae6e60fa929e0ee3136b3048f6b17c` |
| 2 | `theorem` | [exists_unique_greatest_maximizer_of_bounded_rank](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/declarations/exists-unique-greatest-maximizer-of-bounded-rank--96a7df5f7a46c9cbb03aca6a.md) | 43 | `result-track:96a7df5f7a46c9cbb03aca6ad4a4b2cecfc232bda4718a9d5ce20d8786e55cee` |
| 3 | `theorem` | [exists_greatest_maximizer_fixed_of_bounded_rank](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/declarations/exists-greatest-maximizer-fixed-of-bounded-rank--00d3ad0e948d8605e371b6d3.md) | 75 | `result-track:00d3ad0e948d8605e371b6d3b9e523458b9fc65d974c082d43c5bcd18886fdfe` |
| 4 | `theorem` | [exists_greatest_maximizer_fixed_of_finite_values_bounded_rank](../../../../mathematics/FoundationsLogicAndTypeTheory/1df779005c498c9db34330577461c103b00a509ab79d266fa484ca95680f3226FiniteHeightMaxi/Variant9616b069b2cb68adb082120d668d8d6d233f3fe22741cc89fc99728e5720b478.lean/declarations/exists-greatest-maximizer-fixed-of-finite-values-bounded-rank--ae3a072352d382eab27c25c9.md) | 88 | `result-track:ae3a072352d382eab27c25c90ddd0998969ab95ceea0c118af45660e5bf914d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

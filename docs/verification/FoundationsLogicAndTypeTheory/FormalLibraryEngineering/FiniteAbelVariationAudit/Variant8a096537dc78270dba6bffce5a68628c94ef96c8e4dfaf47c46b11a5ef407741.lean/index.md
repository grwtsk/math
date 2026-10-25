# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAbelVariationAudit.Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26d4bf6134934f2ddad1ccb65946c732b07007ca",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26d4bf6134934f2ddad1ccb65946c732b07007ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_Icc_mul_by_parts_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/sum-icc-mul-by-parts-ico--7d4d93915d359af4e73979ba.md) | 26 | `result-track:7d4d93915d359af4e73979ba81625f4bb6d885f3824cc9d42b7a3fd4dce119e2` |
| 2 | `theorem` | [sum_Icc_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/sum-icc-mul-by-parts--1969e5cf3eeec0809327c928.md) | 42 | `result-track:1969e5cf3eeec0809327c9281cc5f93c91fa68e6a52f63c6a8c563754750a1b7` |
| 3 | `theorem` | [centered_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/centered-sum--dd24643b4ec80d812b88ef0c.md) | 52 | `result-track:dd24643b4ec80d812b88ef0c931249eecb1758018fdb56e81aa7f29fe8c06ca6` |
| 4 | `theorem` | [centered_sum_mul_by_parts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/centered-sum-mul-by-parts--0820ce93f0eacacfa87c601d.md) | 57 | `result-track:0820ce93f0eacacfa87c601d5578ef9c5421f08624ead1aa85b3d1eccb1e244b` |
| 5 | `theorem` | [weighted_error_abs_le_sqrt_variation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/weighted-error-abs-le-sqrt-variation--6aea7e683752a05bf61f2473.md) | 66 | `result-track:6aea7e683752a05bf61f24736355756464ed0af1fedd286310d7b9b3d89ea292` |
| 6 | `theorem` | [weighted_error_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteAbelVariationAudit/Variant8a096537dc78270dba6bffce5a68628c94ef96c8e4dfaf47c46b11a5ef407741.lean/declarations/weighted-error-zero--72c5e3692521baee49aab197.md) | 106 | `result-track:72c5e3692521baee49aab19752fb59e9b5d9748e8bfc679a946e2bf89708c2c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

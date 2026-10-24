# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.ObservationalBooleanLaws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aac05a01c3df14e6d8cf1d3fb8eafc59fd4d596d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean/index.md) · [Full source](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aac05a01c3df14e6d8cf1d3fb8eafc59fd4d596d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Algebra.LinearAlgebra.FiniteBooleanStructure.Variant41f0242ace5e0ac7.PointwiseSpecifications`](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/PointwiseSpecifications.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [andInPlace_comm_toMatrix](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean/declarations/andinplace-comm-tomatrix--404b125602354a98bf7210bf.md) | 59 | `result-track:404b125602354a98bf7210bf87a7e13c1b8ee37893ad790c278b3be8103d48f3` |
| 2 | `theorem` | [andInPlace_assoc_toMatrix](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean/declarations/andinplace-assoc-tomatrix--5e238cf6faab651d97297aa2.md) | 66 | `result-track:5e238cf6faab651d97297aa26420e54923fc816579171999db576c1f15f27123` |
| 3 | `theorem` | [notInPlace_involutive_toMatrix](../../../../../../mathematics/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/ObservationalBooleanLaws.lean/declarations/notinplace-involutive-tomatrix--c4cd6ce0caf14619a1161d5a.md) | 74 | `result-track:c4cd6ce0caf14619a1161d5aa2939b9c614fbe1b84af619a5fff78c46abc79eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

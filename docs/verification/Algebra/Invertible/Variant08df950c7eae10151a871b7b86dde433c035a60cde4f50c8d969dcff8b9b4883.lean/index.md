# Verification target: GRWTSK.Algebra.Invertible.Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b13ff060fa5a3260620416186e4322feb79e19f7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/index.md) · [Full source](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b13ff060fa5a3260620416186e4322feb79e19f7`.

Source path: `GRWTSK/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [invOf_pos](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/invof-pos--75c1ea1ec4ed90b9552c6b88.md) | 25 | `result-track:75c1ea1ec4ed90b9552c6b884ea0b84fcbf21d8ea90554370b06a99312aa7701` |
| 2 | `theorem` | [invOf_nonpos](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/invof-nonpos--5a3317269efb7b3c62aaf402.md) | 30 | `result-track:5a3317269efb7b3c62aaf402966660ace72bb834b46486b667f88c1a1d14fe0f` |
| 3 | `theorem` | [invOf_nonneg](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/invof-nonneg--b9830d8a36ff965c03ee3867.md) | 33 | `result-track:b9830d8a36ff965c03ee386701ac17ba7f4fc2fa797572b292653ffcba7d5784` |
| 4 | `theorem` | [invOf_lt_zero](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/invof-lt-zero--a936e8a296e87be0a7c8d5de.md) | 38 | `result-track:a936e8a296e87be0a7c8d5de19bc8dda2c6d3b0003f3d748e5329f6b56d99ca7` |
| 5 | `theorem` | [invOf_le_one](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/invof-le-one--f1887ae571831335df9c50f6.md) | 41 | `result-track:f1887ae571831335df9c50f6bfa8c975492649c2b4b2c4958064ef42e8eeb814` |
| 6 | `theorem` | [pos_invOf_of_invertible_cast](../../../../mathematics/Algebra/Invertible/Variant08df950c7eae10151a871b7b86dde433c035a60cde4f50c8d969dcff8b9b4883.lean/declarations/pos-invof-of-invertible-cast--42fe18564c08d66b02715088.md) | 44 | `result-track:42fe18564c08d66b0271508808d95a7c5c1312829da037382f346cc16f8c6c57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

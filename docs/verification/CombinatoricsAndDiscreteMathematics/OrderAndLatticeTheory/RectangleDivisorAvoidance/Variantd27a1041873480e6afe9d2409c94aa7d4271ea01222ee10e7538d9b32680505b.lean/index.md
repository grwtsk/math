# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RectangleDivisorAvoidance.Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5fc24f3bc074d3f1cdb208a0a2374faed6dc9f6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5fc24f3bc074d3f1cdb208a0a2374faed6dc9f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_height_avoiding_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/declarations/exists-height-avoiding-finite--3525f73bce5d6e1ce2f82d02.md) | 31 | `result-track:3525f73bce5d6e1ce2f82d02cc90affea26b39d76d7537b056a4ddeb6e43f969` |
| 2 | `theorem` | [exists_real_avoiding_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/declarations/exists-real-avoiding-finite--6ed2be53da7dd5caa4c2e013.md) | 42 | `result-track:6ed2be53da7dd5caa4c2e013e2db4596bc1e57096654668e10755335c79a76eb` |
| 3 | `theorem` | [exists_height_avoiding_rectangleDivisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/declarations/exists-height-avoiding-rectangledivisor--3923b8ce2179ba48abf7d5a8.md) | 54 | `result-track:3923b8ce2179ba48abf7d5a82d342376e3475d4f0cbcb31cf1d6883687eaafd7` |
| 4 | `theorem` | [exists_real_avoiding_rectangleDivisor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RectangleDivisorAvoidance/Variantd27a1041873480e6afe9d2409c94aa7d4271ea01222ee10e7538d9b32680505b.lean/declarations/exists-real-avoiding-rectangledivisor--11809372757d63e83a02d0ed.md) | 69 | `result-track:11809372757d63e83a02d0edf995d6e41cb46ffc5e02eda153c4928f9eb75ce5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

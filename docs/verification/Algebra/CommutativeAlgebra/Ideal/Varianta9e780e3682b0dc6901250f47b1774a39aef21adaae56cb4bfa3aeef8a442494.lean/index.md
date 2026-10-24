# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Ideal.Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59b56e39b35448657a14d285bb52694f3908ceec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59b56e39b35448657a14d285bb52694f3908ceec`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.RingDivision` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Polynomial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_span_C_X_sub_C_X_sub_C_iff_eval_eval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/declarations/mem-span-c-x-sub-c-x-sub-c-iff-eval-eval-eq-zero--c5a144c70bbd8a9898089f04.md) | 26 | `result-track:c5a144c70bbd8a9898089f04dafd551b5d280aa41f93a74137ddf40a7eb784cd` |
| 2 | `theorem` | [ker_evalRingHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/declarations/ker-evalringhom--ea183324ff62ec00b6cf9af1.md) | 36 | `result-track:ea183324ff62ec00b6cf9af185e7022d70105aa8c72860d4fa080e465a27389a` |
| 3 | `theorem` | [ker_modByMonicHom](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/declarations/ker-modbymonichom--589b13d8ebe18b0e53cf2318.md) | 41 | `result-track:589b13d8ebe18b0e53cf2318a53f3b3909087ef0ca0d47679d97bde4a9d3ce7b` |
| 4 | `lemma` | [_root_.Algebra.mem_ideal_map_adjoin](../../../../../mathematics/Algebra/CommutativeAlgebra/Ideal/Varianta9e780e3682b0dc6901250f47b1774a39aef21adaae56cb4bfa3aeef8a442494.lean/declarations/root-algebra-mem-ideal-map-adjoin--2a3ab4e2064aa8ce103f9fc6.md) | 46 | `result-track:2a3ab4e2064aa8ce103f9fc620c8b8cdd6705aa2947834f6c38dbc857221108b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

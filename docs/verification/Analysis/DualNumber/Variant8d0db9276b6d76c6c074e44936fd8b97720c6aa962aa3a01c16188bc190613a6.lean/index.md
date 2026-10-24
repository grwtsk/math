# Verification target: GRWTSK.Analysis.DualNumber.Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ff413ae1f35b1fbe5e09ca36a303d691c11b1b",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean/index.md) · [Full source](../../../../mathematics/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ff413ae1f35b1fbe5e09ca36a303d691c11b1b`.

Source path: `GRWTSK/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DualNumber` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Algebra.TrivSqZeroExt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_eps](../../../../mathematics/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean/declarations/exp-eps--6c75b1107c5099a52764c214.md) | 39 | `result-track:6c75b1107c5099a52764c214ecb7ef47a7d614452a2c3c0140a46af5e60d8d42` |
| 2 | `theorem` | [exp_smul_eps](../../../../mathematics/Analysis/DualNumber/Variant8d0db9276b6d76c6c074e44936fd8b97720c6aa962aa3a01c16188bc190613a6.lean/declarations/exp-smul-eps--2bfa974f748c529d721e5c1b.md) | 43 | `result-track:2bfa974f748c529d721e5c1b59e3fb8cd3caf0e9bf4dfdc556b88d04fa26c19f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

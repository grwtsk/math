# Verification target: GRWTSK.Algebra.Nilpotent.Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e525c3e73158224d34c49de353a082e076d5a11",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e525c3e73158224d34c49de353a082e076d5a11`.

Source path: `GRWTSK/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ideal.isRadical_iff_quotient_reduced](../../../../mathematics/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean/declarations/ideal-isradical-iff-quotient-reduced--945700340bc66768ab6f83a9.md) | 21 | `result-track:945700340bc66768ab6f83a9c2eafc3963111fcf76b7829ab08ff301bfb0eca9` |
| 2 | `theorem` | [Ideal.IsNilpotent.induction_on](../../../../mathematics/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean/declarations/ideal-isnilpotent-induction-on--ddba42c08e5e5ee4ade9734d.md) | 30 | `result-track:ddba42c08e5e5ee4ade9734d8a5abe398156b56d795070a2f16aa293a55dba49` |
| 3 | `theorem` | [IsNilpotent.isUnit_quotient_mk_iff](../../../../mathematics/Algebra/Nilpotent/Variantd9925cda91dbc3c81450385c377c084994930c770557266f7f73f75158d3aa98.lean/declarations/isnilpotent-isunit-quotient-mk-iff--95ea508f0571119cb391d7ac.md) | 57 | `result-track:95ea508f0571119cb391d7ac4def89feb6210efd7056a1eddc13c04f9ac29e40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.MeasureTheory.FinalValueAttempt01.Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3360930523e6eef0dc7059ab3874a22534b2e8c",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3360930523e6eef0dc7059ab3874a22534b2e8c`.

Source path: `GRWTSK/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [laplace_rescale](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/declarations/laplace-rescale--a30ab0b9e517ce5cc23d508f.md) | 22 | `result-track:a30ab0b9e517ce5cc23d508f41c039b969d76c64afedb9e2c7994d274525e849` |
| 2 | `theorem` | [bounded_final_value](../../../../../mathematics/Analysis/MeasureTheory/FinalValueAttempt01/Variant8ff300590eb3a8b6f48f93234c6232d0a7f69314379051fb75e95bf9a28d1200.lean/declarations/bounded-final-value--5143624525e644f40f4722c3.md) | 36 | `result-track:5143624525e644f40f4722c3907c184b82d16385de7178bc0a07a7ef5886eb6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

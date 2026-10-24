# Verification target: GRWTSK.NumberTheory.Chebyshev.CanonicalTentRecordEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "442bae71fd5c5f01d571f42de331aa098e0dd214",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `442bae71fd5c5f01d571f42de331aa098e0dd214`.

Source path: `GRWTSK/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.TentKernelEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion`](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentPrimeCriterion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluatedHead](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/evaluatedhead--f1a70caebfcb9fee41ee3762.md) | 31 | `declaration-track:f1a70caebfcb9fee41ee3762e7114cbd4988a1d55aaa766afededf85bd87ad7b` |
| 2 | `def` | [headError](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/headerror--189ce278d53a86d9c1a6801f.md) | 37 | `declaration-track:189ce278d53a86d9c1a6801fce264e8687f75fedee732ace504e643257df9943` |
| 3 | `theorem` | [norm_head_sub_evaluated_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/norm-head-sub-evaluated-le--d8976923bb0faea7616e1ed2.md) | 43 | `result-track:d8976923bb0faea7616e1ed2832e0a0ecb218239922869616b71ed77d9545016` |
| 4 | `theorem` | [headError_nonneg](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/headerror-nonneg--355d870d00d0bf7f80d0d861.md) | 63 | `result-track:355d870d00d0bf7f80d0d86175d53bee2af62d14f785b0032f1ced99f665aed2` |
| 5 | `theorem` | [norm_head_sub_rounded_le](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/norm-head-sub-rounded-le--befeca1a3e9274560557961f.md) | 69 | `result-track:befeca1a3e9274560557961f68f6f811b3853fcb6a4ee031e9d181a082702eae` |
| 6 | `theorem` | [head_re_upper](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/head-re-upper--0ca00fdfc0aba25c7f0eabe3.md) | 84 | `result-track:0ca00fdfc0aba25c7f0eabe3310d90376a6792623d378d69778983b067754457` |
| 7 | `theorem` | [prime_in_square_of_records](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/prime-in-square-of-records--0148db4f19ddd3540bc7769c.md) | 95 | `result-track:0148db4f19ddd3540bc7769c8e4b983c58f1a8f51607cdde5e6d6f9471d0dc2e` |
| 8 | `theorem` | [prime_in_square_of_rounded_records](../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentRecordEvaluation.lean/declarations/prime-in-square-of-rounded-records--6a168d14c7a510e66d0ecb12.md) | 106 | `result-track:6a168d14c7a510e66d0ecb121d274702482ade9753e209e9cf9151cda0b725ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

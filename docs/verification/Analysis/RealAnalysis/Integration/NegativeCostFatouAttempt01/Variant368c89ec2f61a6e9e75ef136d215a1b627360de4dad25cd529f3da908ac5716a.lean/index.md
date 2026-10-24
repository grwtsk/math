# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt01.Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33750408c4382ae87afe4424dce8081b5d464c33",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33750408c4382ae87afe4424dce8081b5d464c33`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--e3cc1c53c8466c6bbdfdcd1f.md) | 15 | `result-track:e3cc1c53c8466c6bbdfdcd1fc74de9cb747dc3c06c65397d107a020eeda73e26` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt01/Variant368c89ec2f61a6e9e75ef136d215a1b627360de4dad25cd529f3da908ac5716a.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--54f77fb1c7d6ad3260dab6d6.md) | 34 | `result-track:54f77fb1c7d6ad3260dab6d683ac927420b6fdd93f8ffad8bb0b9b8d5a2e70e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

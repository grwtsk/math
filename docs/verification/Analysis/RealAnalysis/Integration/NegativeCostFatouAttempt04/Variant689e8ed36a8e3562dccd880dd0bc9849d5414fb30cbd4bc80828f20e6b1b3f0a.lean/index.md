# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeCostFatouAttempt04.Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "668ba410335b353fdb9feaa3c442959623864707",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `668ba410335b353fdb9feaa3c442959623864707`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L1Space.Integrable` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_limit_of_nonnegative_uniform_integrals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean/declarations/integrable-limit-of-nonnegative-uniform-integrals--4df81a6a9a93800d16628e62.md) | 16 | `result-track:4df81a6a9a93800d16628e62a474bc126deb46015ace64527fa57cff70bcd282` |
| 2 | `theorem` | [no_uniform_nonnegative_integrals_of_nonintegrable_limit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean/declarations/no-uniform-nonnegative-integrals-of-nonintegrable-limit--5b92eb1f46d0a2c47df78ffb.md) | 35 | `result-track:5b92eb1f46d0a2c47df78ffb67f66a646714b85dbfd93c9c92de220ce1e80c7f` |
| 3 | `theorem` | [not_integrableOn_of_positive_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeCostFatouAttempt04/Variant689e8ed36a8e3562dccd880dd0bc9849d5414fb30cbd4bc80828f20e6b1b3f0a.lean/declarations/not-integrableon-of-positive-tail--7ec600875ddfc9a611789c22.md) | 46 | `result-track:7ec600875ddfc9a611789c221201afef9ebcc5743508288eaec0165b02aa8b39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

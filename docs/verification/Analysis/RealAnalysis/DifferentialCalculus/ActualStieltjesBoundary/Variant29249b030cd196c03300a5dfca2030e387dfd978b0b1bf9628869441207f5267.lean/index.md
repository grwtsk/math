# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesBoundary.Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25658903cd7af540c3a1df52b78b230db9ab8e9f",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25658903cd7af540c3a1df52b78b230db9ab8e9f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_termTSum_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/declarations/actual-termtsum-one--978fc6e337aaab59d03617c7.md) | 24 | `result-track:978fc6e337aaab59d03617c7ddc7d726c9ffe121258580a8820e2704dce7b735` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/declarations/actual-regular-zeta-real-right--c2966eb0ad9073a0e29107b7.md) | 28 | `result-track:c2966eb0ad9073a0e29107b7278e601e5c6c84159466d6c65282124257a61308` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/declarations/actual-real-regular-derivative-of-termtsum--5fe18b7b8d4178922e81c31a.md) | 47 | `result-track:5fe18b7b8d4178922e81c31a7f3e2c0d1f1d05ef72b4cd96110970f475dad628` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/declarations/actual-regular-zeta-derivative-of-termtsum--79132c9989797bf2088a19dc.md) | 58 | `result-track:79132c9989797bf2088a19dc60861f8c0a16d5bba837282f099f01a75b776a74` |
| 5 | `theorem` | [actual_regular_zeta_hasDerivAt_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant29249b030cd196c03300a5dfca2030e387dfd978b0b1bf9628869441207f5267.lean/declarations/actual-regular-zeta-hasderivat-of-termtsum--f87aa3c216d68f24040c9706.md) | 74 | `result-track:f87aa3c216d68f24040c970647c269be666b77430c214c793f45255cd327da01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

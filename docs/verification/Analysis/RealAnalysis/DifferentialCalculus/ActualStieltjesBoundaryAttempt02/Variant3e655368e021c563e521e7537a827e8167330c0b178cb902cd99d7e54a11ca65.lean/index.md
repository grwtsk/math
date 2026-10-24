# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesBoundaryAttempt02.Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e95e22d433559cc816512761bb965a91f619c9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e95e22d433559cc816512761bb965a91f619c9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean.json)

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
| 1 | `theorem` | [actual_termTSum_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/declarations/actual-termtsum-one--e70612910d1608a147d6ec49.md) | 24 | `result-track:e70612910d1608a147d6ec4988413f3d2e108494d00e64091887e62f1c6584c4` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/declarations/actual-regular-zeta-real-right--f5203581e03ccf2c71d8da8b.md) | 28 | `result-track:f5203581e03ccf2c71d8da8bb60b3dc39215f2753e6ba74e082c286f6d874bf2` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/declarations/actual-real-regular-derivative-of-termtsum--f46e9c1bcf5b924ba2147010.md) | 47 | `result-track:f46e9c1bcf5b924ba2147010748c9425e7ff94433eba8437ba450c1bf5fafe31` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt02/Variant3e655368e021c563e521e7537a827e8167330c0b178cb902cd99d7e54a11ca65.lean/declarations/actual-regular-zeta-derivative-of-termtsum--a1126228b11f2d0f8782da04.md) | 57 | `result-track:a1126228b11f2d0f8782da0418c395726417562a5de169831a8edf6687b11dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

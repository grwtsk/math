# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Gaussian.Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0510773eea21971eda7d23406c6de7c77f8b4a88",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0510773eea21971eda7d23406c6de7c77f8b4a88`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Hermite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_gaussian_eq_hermite_mul_gaussian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean/declarations/deriv-gaussian-eq-hermite-mul-gaussian--e39af53296b44e301ce2aebc.md) | 46 | `result-track:e39af53296b44e301ce2aebc078cc83ecedad8f5275a00020836f9659fc3ee9d` |
| 2 | `theorem` | [hermite_eq_deriv_gaussian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean/declarations/hermite-eq-deriv-gaussian--09e9afb3245eaa0f714702b2.md) | 63 | `result-track:09e9afb3245eaa0f714702b2b88463219ae62f4d6a689cac7d9f87d0e5771bfd` |
| 3 | `theorem` | [hermite_eq_deriv_gaussian'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Gaussian/Variant93200acae0f4262b7034720570affa8792872e035c25d72eed6dc4e0c6e8cd35.lean/declarations/hermite-eq-deriv-gaussian--a68e777c986132339d39fb00.md) | 71 | `result-track:a68e777c986132339d39fb00de39fb78d5eba2d8a9113a26071cf7528c12763e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

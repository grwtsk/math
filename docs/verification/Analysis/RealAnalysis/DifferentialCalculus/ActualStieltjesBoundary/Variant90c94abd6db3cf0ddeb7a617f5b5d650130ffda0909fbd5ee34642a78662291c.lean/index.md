# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualStieltjesBoundary.Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b52855a8e34d77f916f6b637864302c6e00eea2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b52855a8e34d77f916f6b637864302c6e00eea2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_termTSum_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/declarations/actual-termtsum-one--74975c329573f651324749da.md) | 16 | `result-track:74975c329573f651324749da14dfe9aa815d9fe65cbb002110e393c8d5dfb74b` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/declarations/actual-regular-zeta-real-right--b5dcb208b049dd7b4f77f4b0.md) | 20 | `result-track:b5dcb208b049dd7b4f77f4b092914c7b9104d8d474cad46b8b4ba62e952120c3` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/declarations/actual-real-regular-derivative-of-termtsum--042228fc3b45d8109ba36fbd.md) | 39 | `result-track:042228fc3b45d8109ba36fbdf86b67463bf8efdd3b8dc134fe358728d4e4c893` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/declarations/actual-regular-zeta-derivative-of-termtsum--87d07177562215b7a2922ddc.md) | 50 | `result-track:87d07177562215b7a2922ddc599da63737d640fc5d92007e44b4d7e72da1917f` |
| 5 | `theorem` | [actual_regular_zeta_hasDerivAt_of_termTSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundary/Variant90c94abd6db3cf0ddeb7a617f5b5d650130ffda0909fbd5ee34642a78662291c.lean/declarations/actual-regular-zeta-hasderivat-of-termtsum--1f315b6552b2c7be3eb0532a.md) | 66 | `result-track:1f315b6552b2c7be3eb0532a9b52e468e5036dc193ad8c9de67f17f5324a3b91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

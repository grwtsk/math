# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Liouville.Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76b8e66cf88bb3cddfd967f414ca23724babe49c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76b8e66cf88bb3cddfd967f414ca23724babe49c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_eq_smul_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/deriv-eq-smul-circleintegral--8a48962620616ee04dcd5a9a.md) | 51 | `result-track:8a48962620616ee04dcd5a9a5633f939ed81abeaa0ddea5e3b85da7915a2bbb7` |
| 2 | `theorem` | [norm_deriv_le_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/norm-deriv-le-aux--a29c07c3bee7e92fbbf3d7ae.md) | 58 | `result-track:a29c07c3bee7e92fbbf3d7aef0c27a1434bed23326e8469d7823fe573fd4c0d6` |
| 3 | `theorem` | [norm_deriv_le_of_forall_mem_sphere_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/norm-deriv-le-of-forall-mem-sphere-norm-le--e06a25a33d16780b7b911053.md) | 75 | `result-track:e06a25a33d16780b7b9110537dd493a9275d3396644296693b7d8d0e6f1bf90d` |
| 4 | `theorem` | [liouville_theorem_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/liouville-theorem-aux--33d2368dbecb3b88d3c45e10.md) | 91 | `result-track:33d2368dbecb3b88d3c45e10a070b0b78450dae150244b5cdfa88728bb1440cb` |
| 5 | `theorem` | [apply_eq_apply_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/apply-eq-apply-of-bounded--4af00d7ef0b4adfdd7c8b6f3.md) | 113 | `result-track:4af00d7ef0b4adfdd7c8b6f30a6c1dff5054a8f8ace7da362c17f8259292f3f7` |
| 6 | `theorem` | [exists_const_forall_eq_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/exists-const-forall-eq-of-bounded--8ec20b151fc03f60b5cdd78e.md) | 122 | `result-track:8ec20b151fc03f60b5cdd78eb48ff9e1a97591ca2e3f795223167f4a0308ed3f` |
| 7 | `theorem` | [exists_eq_const_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/exists-eq-const-of-bounded--278d2b101268d2cbad7e7518.md) | 127 | `result-track:278d2b101268d2cbad7e751885f397f9074d57cccd09480f8acb87a365890b0c` |
| 8 | `theorem` | [eq_const_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/eq-const-of-tendsto-cocompact--ad47f5a372312b8c5fd7e285.md) | 133 | `result-track:ad47f5a372312b8c5fd7e285dea3140c5e24b36d9ba21ec95a62084a1feb56c7` |
| 9 | `theorem` | [apply_eq_of_tendsto_cocompact](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Liouville/Variantc5a208ee39ce6cb2a85be616b5152f7dfc7520733fc9354b5c6e9aba8f2a970f.lean/declarations/apply-eq-of-tendsto-cocompact--3425f417459c52736dbb0472.md) | 148 | `result-track:3425f417459c52736dbb04729f2756978c06e3b0329f7de28978ac232db4082f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
